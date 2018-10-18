package com.dyl.sell.util;

import com.dyl.sell.domain.SellDetailed;
import com.dyl.sell.domain.SellMain;
import com.dyl.sell.dto.ClientWarehouseDetailed;
import com.dyl.sell.repository.SellDetailedRepository;
import com.dyl.sell.repository.SellMainRepository;
import com.dyl.sell.repository.StockRepository;

import java.util.ArrayList;
import java.util.List;

/**
 * @author tldyl
 * @since 2018-8-22
 *
 * 将Stock类转换为SellMain或SellDetailed类，通常用于商品上下架
 * 待上架商品的信息存储于进货表中，有没有库存查库存表就可以了
 * 该转换器需要实例化后才能使用，并需要向其提供sellMainRepository、sellDetailedRepository
 * 和StockRepository。
 */
public class SellInfoConverter {

    private SellMainRepository sellMainRepository;
    private SellDetailedRepository sellDetailedRepository;
    private StockRepository stockRepository;

    public SellInfoConverter(SellMainRepository sellMainRepository,
                             SellDetailedRepository sellDetailedRepository,
                             StockRepository stockRepository) {
        this.sellMainRepository = sellMainRepository;
        this.sellDetailedRepository = sellDetailedRepository;
        this.stockRepository = stockRepository;
    }

    /**
     * 库存记录批量转销售记录(只负责转换，不会关心库存)
     * @param details
     * @param dates
     * @return
     */
    public List<SellMain> toSellMain(List<ClientWarehouseDetailed> details, List<String> dates) {
        List<SellMain> result = new ArrayList<>();
        for (ClientWarehouseDetailed detail : details) {
            SellMain sellMain = new SellMain();
            sellMain.setBillCode(detail.getBillCode());
            String date = dates.get(details.indexOf(detail));
            sellMain.setBillDate(TimerUtil.toSqlDate(date.substring(0,4),date.substring(4,6),date.substring(6,8)));
            sellMain.setHandle(detail.getHandle());
            sellMain.setFullPayment(detail.getFullPayment());
            sellMain.setPayment(detail.getPayment());
            sellMain.setSummary(detail.getSummary());
            result.add(sellMain);
        }
        return result;
    }

    public List<SellDetailed> toSellDetailed(List<SellMain> mainList) {
        //TODO
        return null;
    }

}
