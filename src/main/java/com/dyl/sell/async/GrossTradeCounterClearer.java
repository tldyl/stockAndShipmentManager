package com.dyl.sell.async;

import com.dyl.sell.domain.GrossTradeDaily;
import com.dyl.sell.repository.GrossTradeDailyRepository;
import com.dyl.sell.service.DailyTradeCounter;
import com.dyl.sell.util.TimerUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@SuppressWarnings("InfiniteLoopStatement")
public class GrossTradeCounterClearer implements Runnable {

    private final Logger logger = LoggerFactory.getLogger(GrossTradeCounterClearer.class);
    private GrossTradeDailyRepository grossTradeDailyRepository;

    public GrossTradeCounterClearer(GrossTradeDailyRepository grossTradeDailyRepository) {
        this.grossTradeDailyRepository = grossTradeDailyRepository;
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
                Integer grossTrade = DailyTradeCounter.getGrossTrade();
                logger.info("午时已到，当日的交易笔数:{}", grossTrade);
                GrossTradeDaily grossTradeDaily = new GrossTradeDaily();
                grossTradeDaily.setDay(TimerUtil.getCurrentYearMonthDayString("-"));
                grossTradeDaily.setAmount(grossTrade);
                grossTradeDailyRepository.save(grossTradeDaily);
                DailyTradeCounter.clear();
                logger.info("已清除当日的交易笔数");
            }
        }
    }
}
