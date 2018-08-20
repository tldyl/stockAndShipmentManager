package com.dyl.sell.async;

import com.dyl.sell.domain.GrossTradeDaily;
import com.dyl.sell.domain.GrossTradeMonthly;
import com.dyl.sell.repository.GrossTradeDailyRepository;
import com.dyl.sell.repository.GrossTradeMonthlyRepository;
import com.dyl.sell.service.DailyTradeCounter;
import com.dyl.sell.util.TimerUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@SuppressWarnings("InfiniteLoopStatement")
public class GrossTradeCounterClearer implements Runnable {

    private final Logger logger = LoggerFactory.getLogger(GrossTradeCounterClearer.class);
    private GrossTradeDailyRepository grossTradeDailyRepository;
    private GrossTradeMonthlyRepository grossTradeMonthlyRepository;

    public GrossTradeCounterClearer(GrossTradeDailyRepository grossTradeDailyRepository,
                                    GrossTradeMonthlyRepository grossTradeMonthlyRepository) {
        this.grossTradeDailyRepository = grossTradeDailyRepository;
        this.grossTradeMonthlyRepository = grossTradeMonthlyRepository;
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

                GrossTradeMonthly grossTradeMonthly = grossTradeMonthlyRepository.findByMonth(TimerUtil.getCurrentYearMonthDayString("-").substring(0,7));
                if (grossTradeMonthly == null) {
                    grossTradeMonthly = new GrossTradeMonthly();
                    grossTradeMonthly.setMonth(TimerUtil.getCurrentYearMonthDayString("-").substring(0,7));
                    grossTradeMonthly.setAmount(0);
                }
                grossTradeMonthly.setAmount(grossTradeMonthly.getAmount() + grossTrade);
                grossTradeMonthlyRepository.save(grossTradeMonthly);

                DailyTradeCounter.clear();
                logger.info("已清除当日的交易笔数");
            }
        }
    }
}
