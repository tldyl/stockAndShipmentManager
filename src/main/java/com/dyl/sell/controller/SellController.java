package com.dyl.sell.controller;

import com.dyl.sell.async.DetailSalesRecorderClearer;
import com.dyl.sell.async.GrossSalesCounterClearer;
import com.dyl.sell.async.GrossTradeCounterClearer;
import com.dyl.sell.domain.SellMain;
import com.dyl.sell.domain.Stock;
import com.dyl.sell.domain.WarehouseDetailed;
import com.dyl.sell.domain.WarehouseMain;
import com.dyl.sell.dto.*;
import com.dyl.sell.enums.ErrorEnums;
import com.dyl.sell.enums.UserOperationCode;
import com.dyl.sell.repository.*;
import com.dyl.sell.service.*;
import com.dyl.sell.service.sellAchievementRole.AbstractRole;
import com.dyl.sell.util.DataToClient;
import com.dyl.sell.util.SellInfoConverter;
import com.dyl.sell.util.WarehouseInfoConverter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

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
    private SellMainRepository sellMainRepository;
    private SellDetailedRepository sellDetailedRepository;
    private DetailSaleDailyRepository detailSaleDailyRepository;
    private DetailSaleMonthlyRepository detailSaleMonthlyRepository;
    private StockRepository stockRepository;
    private WarehouseMainRepository warehouseMainRepository;
    private WarehouseDetailedRepository warehouseDetailedRepository;

    /*
     * 初始化开始
     */
    @Autowired
    public SellController(GrossSaleDailyRepository grossSaleDailyRepository,
                          GrossTradeDailyRepository grossTradeDailyRepository,
                          GrossSaleMonthlyRepository grossSaleMonthlyRepository,
                          GrossTradeMonthlyRepository grossTradeMonthlyRepository,
                          SellMainRepository sellMainRepository,
                          SellDetailedRepository sellDetailedRepository,
                          DetailSaleDailyRepository detailSaleDailyRepository,
                          DetailSaleMonthlyRepository detailSaleMonthlyRepository,
                          StockRepository stockRepository,
                          WarehouseMainRepository warehouseMainRepository,
                          WarehouseDetailedRepository warehouseDetailedRepository) {
        logger.info("Initializing SellController...");

        this.grossSaleDailyRepository = grossSaleDailyRepository;
        this.grossTradeDailyRepository = grossTradeDailyRepository;
        this.grossSaleMonthlyRepository = grossSaleMonthlyRepository;
        this.grossTradeMonthlyRepository = grossTradeMonthlyRepository;
        this.sellMainRepository = sellMainRepository;
        this.sellDetailedRepository = sellDetailedRepository;
        this.detailSaleDailyRepository = detailSaleDailyRepository;
        this.detailSaleMonthlyRepository = detailSaleMonthlyRepository;
        this.stockRepository = stockRepository;
        this.warehouseMainRepository = warehouseMainRepository;
        this.warehouseDetailedRepository = warehouseDetailedRepository;

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

    /**
     * 商品的批量上架操作
     * @param accessToken 需要提供accessToken才可以使用这个服务
     * @param goods 需要上架的商品列表
     * @param dates 对应的上架日期(格式：YYMMDD)
     * @return 上架情况
     */
    @PostMapping("/sell/onShelf")
    public DataToClientContainer onShelf(@RequestParam(required = false) String accessToken, List<Good> goods, List<String> dates) {
        if (OperationAuthorityCheck.hasAuthority(accessToken,UserOperationCode.SELL_MANAGE.getCode())) {
            WarehouseInfoConverter warehouseInfoConverter = new WarehouseInfoConverter(warehouseMainRepository, warehouseDetailedRepository);
            SellInfoConverter sellInfoConverter = new SellInfoConverter(sellMainRepository,sellDetailedRepository,stockRepository);
            List<ClientWarehouseDetailed> clientWarehouseDetailedList = new ArrayList<>();
            for (Good good : goods) {
                clientWarehouseDetailedList.add(warehouseInfoConverter.concat(good.getTradeCode()));
            }
            //库存检查
            int ctr = 0;
            for (ClientWarehouseDetailed warehouseDetailed : clientWarehouseDetailedList) {
                if (stockRepository.findByTradeCode(warehouseDetailed.getTradeCode()) == null) {
                    return DataToClient.send(ErrorEnums.LOW_STOCK.getCode(),ErrorEnums.LOW_STOCK.getMsg(),ctr);
                }
                ctr++;
            }
            List<SellMain> sellMainList = sellInfoConverter.toSellMain(clientWarehouseDetailedList, dates);
            sellMainRepository.saveAll(sellMainList);
            return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(),null);
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(),ErrorEnums.NO_AUTHORITY.getMsg(),null);
    }
    //下架offShelf
}
