package com.dyl.sell.controller;

import com.dyl.sell.async.DetailSalesRecorderClearer;
import com.dyl.sell.async.GrossSalesCounterClearer;
import com.dyl.sell.async.GrossTradeCounterClearer;
import com.dyl.sell.dto.DataToClientContainer;
import com.dyl.sell.dto.Good;
import com.dyl.sell.dto.IndexChart;
import com.dyl.sell.dto.SellDataCommit;
import com.dyl.sell.enums.ErrorEnums;
import com.dyl.sell.enums.UserOperationCode;
import com.dyl.sell.repository.*;
import com.dyl.sell.service.DailySalesCounter;
import com.dyl.sell.service.DailyTradeCounter;
import com.dyl.sell.service.OperationAuthorityCheck;
import com.dyl.sell.service.SellInfoRecorder;
import com.dyl.sell.service.sellAchievementRole.AbstractRole;
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

    private GrossSaleDailyRepository grossSaleDailyRepository;
    private GrossTradeDailyRepository grossTradeDailyRepository;
    private GrossSaleMonthlyRepository grossSaleMonthlyRepository;
    private GrossTradeMonthlyRepository grossTradeMonthlyRepository;
    private SellDetailedRepository sellDetailedRepository;
    private DetailSaleDailyRepository detailSaleDailyRepository;
    private DetailSaleMonthlyRepository detailSaleMonthlyRepository;

    /*
     * 初始化开始
     */
    @Autowired
    public SellController(GrossSaleDailyRepository grossSaleDailyRepository,
                          GrossTradeDailyRepository grossTradeDailyRepository,
                          GrossSaleMonthlyRepository grossSaleMonthlyRepository,
                          GrossTradeMonthlyRepository grossTradeMonthlyRepository,
                          SellDetailedRepository sellDetailedRepository,
                          DetailSaleDailyRepository detailSaleDailyRepository,
                          DetailSaleMonthlyRepository detailSaleMonthlyRepository) {
        logger.info("Initializing SellController...");

        this.grossSaleDailyRepository = grossSaleDailyRepository;
        this.grossTradeDailyRepository = grossTradeDailyRepository;
        this.grossSaleMonthlyRepository = grossSaleMonthlyRepository;
        this.grossTradeMonthlyRepository = grossTradeMonthlyRepository;
        this.sellDetailedRepository = sellDetailedRepository;
        this.detailSaleDailyRepository = detailSaleDailyRepository;
        this.detailSaleMonthlyRepository = detailSaleMonthlyRepository;

        //启动日总销售额刷新监听器
        logger.info("Starting GrossSalesCounterClearer...");
        GrossSalesCounterClearer grossSalesCounterClearer = new GrossSalesCounterClearer(grossSaleDailyRepository,grossSaleMonthlyRepository);
        Thread grossSalesCounterClearerListener = new Thread(grossSalesCounterClearer);
        grossSalesCounterClearerListener.start();
        //启动日交易笔数刷新监听器
        logger.info("Starting GrossTradeCounterClearer...");
        GrossTradeCounterClearer grossTradeCounterClearer = new GrossTradeCounterClearer(grossTradeDailyRepository,grossTradeMonthlyRepository);
        Thread grossTradeCounterClearerListener = new Thread(grossTradeCounterClearer);
        grossTradeCounterClearerListener.start();
        //启动日销售额明细刷新监视器
        logger.info("Starting DetailSalesRecorderClearer...");
        DetailSalesRecorderClearer detailSalesRecorderClearer = new DetailSalesRecorderClearer(detailSaleDailyRepository,detailSaleMonthlyRepository);
        Thread detailSalesRecorderClearerListener = new Thread(detailSalesRecorderClearer);
        detailSalesRecorderClearerListener.start();
        //初始化日明细销售额记录器
        SellInfoRecorder.setSellDetailedRepository(sellDetailedRepository);

        logger.info("Initialize complete.");
    }
    /*
     * 初始化结束
     */

    /**
     * 获取月销售产品占比信息
     * @param accessToken 需要提供accessToken才可以使用这个服务
     * @param role 分类规则
     * @return 指定的统计信息
     */
    @GetMapping("/getSellAchievement/products/monthly")
    @ResponseBody
    public DataToClientContainer getSellAchievementMonthly(@RequestParam(required = false) String accessToken, String role)
            throws ClassNotFoundException, IllegalAccessException, InstantiationException {
        if (OperationAuthorityCheck.hasAuthority(accessToken,UserOperationCode.ACCESS_STAT_DATA.getCode())) {
            Class<?> cls = Class.forName("com.dyl.sell.service.sellAchievementRole.abstractRoleImpl." + role);
            AbstractRole sRole = (AbstractRole) cls.newInstance();

            sRole.setDetailSaleMonthlyRepository(detailSaleMonthlyRepository);
            IndexChart indexChart = sRole.monthlyCollect();
            return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(),indexChart);
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(),ErrorEnums.NO_AUTHORITY.getMsg(),null);
    }

    /**
     * 获取日销售产品占比信息
     * @param accessToken 需要提供accessToken才可以使用这个服务
     * @param role 分类规则
     * @return 指定的统计信息
     */
    @GetMapping("/getSellAchievement/products/daily")
    @ResponseBody
    public DataToClientContainer getSellAchievementDaily(@RequestParam(required = false) String accessToken, String role)
            throws ClassNotFoundException, IllegalAccessException, InstantiationException {
        if (OperationAuthorityCheck.hasAuthority(accessToken,UserOperationCode.ACCESS_STAT_DATA.getCode())) {
            Class<?> cls = Class.forName("com.dyl.sell.service.sellAchievementRole.abstractRoleImpl." + role);
            AbstractRole sRole = (AbstractRole) cls.newInstance();

            sRole.setDetailSaleDailyRepository(detailSaleDailyRepository);
            IndexChart indexChart = sRole.dailyCollect();
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
     * @param dataCommit 单笔销售单
     * @return 提交情况
     */
    @PostMapping("/count/sale")
    public DataToClientContainer countSale(@RequestParam(required = false) String accessToken, SellDataCommit dataCommit) {
        if (OperationAuthorityCheck.hasAuthority(accessToken,UserOperationCode.SALE_COMMIT.getCode())) {
            if (dataCommit.getAmount() != null) {
                DailySalesCounter.count(dataCommit.getAmount());
                DailyTradeCounter.count();
                for (Good good : dataCommit.getGoods()) {
                    SellInfoRecorder.record(good);
                }
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
