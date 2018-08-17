package com.dyl.sell.async;

import com.dyl.sell.domain.GrossSaleDaily;
import com.dyl.sell.repository.GrossSaleDailyRepository;
import com.dyl.sell.service.DailySalesCounter;
import com.dyl.sell.util.TimerUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@SuppressWarnings("InfiniteLoopStatement")
public class GrossSalesCounterClearer implements Runnable {

    private final Logger logger = LoggerFactory.getLogger(GrossSalesCounterClearer.class);
    private GrossSaleDailyRepository grossSaleDailyRepository;

    public GrossSalesCounterClearer(GrossSaleDailyRepository grossSaleDailyRepository) {
        this.grossSaleDailyRepository = grossSaleDailyRepository;
    }

    @Override
    public void run() {

        logger.info("Running...");

        while (true) {
            try {
                Thread.sleep(3000);
            } catch (InterruptedException e) {
                e.printStackTrace();
                logger.error("睡眠被意外打断");
            }
            if (TimerUtil.getTomorrowZeroSeconds() <= 5) {
                Double grossSales = DailySalesCounter.getGrossSales();
                logger.info("午时已到，当日的销售总额:{}", grossSales);
                GrossSaleDaily grossSaleDaily = new GrossSaleDaily();
                grossSaleDaily.setDay(TimerUtil.getCurrentYearMonthDayString("-"));
                grossSaleDaily.setAmount(grossSales);
                grossSaleDailyRepository.save(grossSaleDaily);
                DailySalesCounter.clear();
                logger.info("已清除当日的销售总额");
            }
        }
    }
}
