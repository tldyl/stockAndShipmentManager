package com.dyl.sell.controller;

import com.dyl.sell.async.GrossSalesCounterClearer;
import com.dyl.sell.async.GrossTradeCounterClearer;
import com.dyl.sell.dto.DataToClientContainer;
import com.dyl.sell.dto.IndexChart;
import com.dyl.sell.enums.ErrorEnums;
import com.dyl.sell.enums.UserOperationCode;
import com.dyl.sell.repository.GrossSaleDailyRepository;
import com.dyl.sell.repository.GrossTradeDailyRepository;
import com.dyl.sell.service.DailySalesCounter;
import com.dyl.sell.service.DailyTradeCounter;
import com.dyl.sell.service.OperationAuthorityCheck;
import com.dyl.sell.util.DataToClient;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author tldyl
 * @since 2018-8-16
 *
 * 商品销售相关的Controller
 */

@Controller
@Component
public class SellController {

    private static final Logger logger = LoggerFactory.getLogger(SellController.class);

    @Autowired
    public SellController(GrossSaleDailyRepository grossSaleDailyRepository,
                          GrossTradeDailyRepository grossTradeDailyRepository) {
        logger.info("Initializing SellController...");

        //启动日总销售额刷新监听器
        logger.info("Starting GrossSalesCounterClearer...");
        GrossSalesCounterClearer grossSalesCounterClearer = new GrossSalesCounterClearer(grossSaleDailyRepository);
        Thread grossSalesCounterClearerListener = new Thread(grossSalesCounterClearer);
        grossSalesCounterClearerListener.run();
        //启动日交易笔数刷新监听器
        logger.info("Starting GrossTradeCounterClearer...");
        GrossTradeCounterClearer grossTradeCounterClearer = new GrossTradeCounterClearer(grossTradeDailyRepository);
        Thread grossTradeCounterClearerListener = new Thread(grossTradeCounterClearer);
        grossTradeCounterClearerListener.run();

        logger.info("Initialize complete.");
    }

    /**
     * 获取销售业绩等统计信息(TODO)
     * @param accessToken 需要提供accessToken才可以使用这个服务
     * @return 指定的统计信息
     */
    @GetMapping("/getSellAchievement")
    @ResponseBody
    public DataToClientContainer getStockAchievement(@RequestParam(required = false) String accessToken) {
        if (OperationAuthorityCheck.hasAuthority(accessToken,null)) {
            //TODO
            Integer[] achievements = {132,5123,5152,6123,4384,5321,6123,5423,4285,1764,2314,1023};
            String[] months = {"January", "February", "March", "April", "May", "June","July","August","September","October","November","December"};
            IndexChart indexChart = new IndexChart();
            indexChart.setXpos(months);
            indexChart.setYpos(achievements);
            return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(),indexChart);
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(),ErrorEnums.NO_AUTHORITY.getMsg(),null);
    }

    /**
     * 获取日销售总额
     * @param accessToken 需要提供accessToken才可以使用这个服务
     * @return 日销售总额
     */
    @GetMapping("/getGrossSales/daily")
    public DataToClientContainer getSellSumPerDay(@RequestParam(required = false) String accessToken) {
        if (OperationAuthorityCheck.hasAuthority(accessToken,UserOperationCode.ENTER_DATA_CENTRE_PAGE.getCode())) {
            return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(), DailySalesCounter.getGrossSales());
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(),ErrorEnums.NO_AUTHORITY.getMsg(),null);
    }

    /**
     * 获取日交易笔数
     * @param accessToken 需要提供accessToken才可以使用这个服务
     * @return 日交易笔数
     */
    @GetMapping("/getGrossTrade/daily")
    public DataToClientContainer getTradeSumPerDay(@RequestParam(required = false) String accessToken) {
        if (OperationAuthorityCheck.hasAuthority(accessToken,UserOperationCode.ENTER_DATA_CENTRE_PAGE.getCode())) {
            return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(), DailyTradeCounter.getGrossTrade());
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(),ErrorEnums.NO_AUTHORITY.getMsg(),null);
    }

    /**
     * 提交一笔销售额数据
     * @param accessToken 需要提供accessToken才可以使用这个服务
     * @param amount 单笔销售额
     * @return 提交情况
     */
    @PostMapping("/count/sale")
    public DataToClientContainer countSale(@RequestParam(required = false) String accessToken,Double amount) {
        if (OperationAuthorityCheck.hasAuthority(accessToken,UserOperationCode.SALE_COMMIT.getCode())) {
            if (amount != null) {
                DailySalesCounter.count(amount);
                DailyTradeCounter.count();
                return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(),null);
            }
            return DataToClient.send(ErrorEnums.NULL_DATA.getCode(),ErrorEnums.NULL_DATA.getMsg(),null);
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(),ErrorEnums.NO_AUTHORITY.getMsg(),null);
    }

    /**
     * 统计数据的恢复操作，以防因后台程序的意外关闭而导致当日总销售额等统计数据丢失，仅超级管理员有权恢复
     * @param accessToken 需要提供accessToken才可以使用这个服务
     * @return 恢复情况
     */
    @GetMapping("/count/restore")
    public DataToClientContainer countRestore(@RequestParam(required = false) String accessToken) {
        if (OperationAuthorityCheck.hasAuthority(accessToken,UserOperationCode.ADMINISTRATOR.getCode())) {
            logger.info("正在恢复统计信息……");
            DailySalesCounter.restore();
            DailyTradeCounter.restore();
            logger.info("恢复完成。");
            return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(),null);
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(),ErrorEnums.NO_AUTHORITY.getMsg(),null);
    }
}
