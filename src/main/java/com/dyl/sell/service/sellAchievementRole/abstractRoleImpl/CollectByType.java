package com.dyl.sell.service.sellAchievementRole.abstractRoleImpl;

import com.dyl.sell.domain.DetailSaleDaily;
import com.dyl.sell.domain.DetailSaleMonthly;
import com.dyl.sell.dto.IndexChart;
import com.dyl.sell.repository.DetailSaleDailyRepository;
import com.dyl.sell.repository.DetailSaleMonthlyRepository;
import com.dyl.sell.service.sellAchievementRole.AbstractRole;
import com.dyl.sell.util.TimerUtil;

import java.util.ArrayList;
import java.util.List;

/**
 * @author tldyl
 * @since 2018-8-19
 *
 * 收集月销售额产品占比信息(按商品类型分)
 */
@SuppressWarnings("unused")
public class CollectByType implements AbstractRole {

    private static DetailSaleMonthlyRepository detailSaleMonthlyRepository;
    private static DetailSaleDailyRepository detailSaleDailyRepository;

    @Override
    public IndexChart monthlyCollect() {
        IndexChart result = new IndexChart();
        List<Double> sum = new ArrayList<>();
        String[] xpos;
        Double[] ypos;
        List<String> typeList = new ArrayList<>();
        List<DetailSaleMonthly> goodsList = detailSaleMonthlyRepository.findByDayOrderByType(TimerUtil.getCurrentYearMonthDayString("-").substring(0,7));
        if (goodsList.size() != 0) {
            String currentType = goodsList.get(0).getType();
            typeList.add(currentType);
            sum.add(0.0);
            for (DetailSaleMonthly detailSaleMonthly : goodsList) {
                if (!detailSaleMonthly.getType().equals(currentType)) {
                    currentType = detailSaleMonthly.getType();
                    typeList.add(currentType);
                    sum.add(0.0);
                }
                sum.set(typeList.indexOf(currentType),
                        sum.get(typeList.indexOf(currentType)) + detailSaleMonthly.getAmount());
            }
            xpos = (String[]) typeList.toArray();
            ypos = (Double[]) sum.toArray();
        } else {
            xpos = new String[]{ "无销售记录" };
            ypos = new Double[]{ 0.0 };
        }
        result.setXpos(xpos);
        result.setYpos(ypos);
        return result;
    }

    @Override
    public IndexChart dailyCollect() {
        IndexChart result = new IndexChart();
        List<Double> sum = new ArrayList<>();
        String[] xpos;
        Double[] ypos;
        List<String> typeList = new ArrayList<>();
        List<DetailSaleDaily> goodsList = detailSaleDailyRepository.findByDayOrderByType(TimerUtil.getCurrentYearMonthDayString("-"));
        if (goodsList.size() != 0) {
            String currentType = goodsList.get(0).getType();
            typeList.add(currentType);
            sum.add(0.0);
            for (DetailSaleDaily detailSaleDaily : goodsList) {
                if (!detailSaleDaily.getType().equals(currentType)) {
                    currentType = detailSaleDaily.getType();
                    typeList.add(currentType);
                    sum.add(0.0);
                }
                sum.set(typeList.indexOf(currentType),
                        sum.get(typeList.indexOf(currentType)) + detailSaleDaily.getAmount());
            }
            xpos = (String[]) typeList.toArray();
            ypos = (Double[]) sum.toArray();
        } else {
            xpos = new String[]{ "无销售记录" };
            ypos = new Double[]{ 0.0 };
        }
        result.setXpos(xpos);
        result.setYpos(ypos);
        return result;
    }

    @Override
    public void setDetailSaleDailyRepository(DetailSaleDailyRepository repository) {
        detailSaleDailyRepository = repository;
    }

    @Override
    public void setDetailSaleMonthlyRepository(DetailSaleMonthlyRepository repository) {
        detailSaleMonthlyRepository = repository;
    }


}
