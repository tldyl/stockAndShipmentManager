package com.dyl.sell.service.sellAchievementRole;

import com.dyl.sell.dto.IndexChart;
import com.dyl.sell.repository.DetailSaleDailyRepository;
import com.dyl.sell.repository.DetailSaleMonthlyRepository;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AbstractRole {
    public IndexChart monthlyCollect();
    public IndexChart dailyCollect();
    public void setDetailSaleDailyRepository(DetailSaleDailyRepository repository);
    public void setDetailSaleMonthlyRepository(DetailSaleMonthlyRepository repository);
}
