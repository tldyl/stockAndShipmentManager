package com.dyl.sell.async;

import com.dyl.sell.bean.RedisTemplateBean;
import com.dyl.sell.domain.DetailSaleDaily;
import com.dyl.sell.domain.DetailSaleMonthly;
import com.dyl.sell.repository.DetailSaleDailyRepository;
import com.dyl.sell.repository.DetailSaleMonthlyRepository;
import com.dyl.sell.util.TimerUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.redis.core.RedisTemplate;

/**
 * @author tldyl
 * @since 2018-8-18
 *
 * 将redis里面记录的销售额详细信息写入MySQL，每日一次。
 */
@SuppressWarnings("InfiniteLoopStatement")
public class DetailSalesRecorderClearer implements Runnable {

    private static final RedisTemplate redisTemplate = RedisTemplateBean.getRedisTemplate();
    private static final Logger logger = LoggerFactory.getLogger(DetailSalesRecorderClearer.class);
    private DetailSaleDailyRepository detailSaleDailyRepository;
    private DetailSaleMonthlyRepository detailSaleMonthlyRepository;

    public DetailSalesRecorderClearer(DetailSaleDailyRepository detailSaleDailyRepository,
                                      DetailSaleMonthlyRepository detailSaleMonthlyRepository) {
        this.detailSaleDailyRepository = detailSaleDailyRepository;
        this.detailSaleMonthlyRepository = detailSaleMonthlyRepository;
    }

    @Override
    public void run() {

        logger.info("Running...");

        while (true) {
            try {
                Thread.sleep(3000);
            } catch (InterruptedException e) {
                e.printStackTrace();
                logger.error("睡眠被意外中断");
            }
            if (TimerUtil.getTomorrowZeroSeconds() <= 5) {
                String goodList = ((String)redisTemplate.opsForValue().get("count:dailySale:goodsList"));
                if (goodList != null) {
                    String currentDate = TimerUtil.getCurrentYearMonthDayString("-");
                    goodList = goodList.substring(0,goodList.length() - 1);
                    String[] goodsList = goodList.split(",");
                    for (String k : goodsList) {
                        DetailSaleDaily detailSaleDaily = new DetailSaleDaily();
                        Double amount = (Double)redisTemplate.opsForValue().get("count:dailySale:" + k);
                        detailSaleDaily.setDay(currentDate);
                        detailSaleDaily.setType(k.split(":")[0]);
                        detailSaleDaily.setFullName(k.split(":")[1]);
                        detailSaleDaily.setAmount(amount);
                        detailSaleDailyRepository.save(detailSaleDaily);

                        DetailSaleMonthly detailSaleMonthly = detailSaleMonthlyRepository.findByFullName(k.split(":")[1]);
                        if (detailSaleMonthly == null) {
                            detailSaleMonthly = new DetailSaleMonthly();
                            detailSaleMonthly.setDay(currentDate.substring(0,7));
                            detailSaleMonthly.setType(k.split(":")[0]);
                            detailSaleMonthly.setFullName(k.split(":")[1]);
                            detailSaleMonthly.setAmount(0.0);
                        }
                        detailSaleMonthly.setAmount(detailSaleMonthly.getAmount() + amount);
                        detailSaleMonthlyRepository.save(detailSaleMonthly);
                    }
                }
            }
        }
    }
}
