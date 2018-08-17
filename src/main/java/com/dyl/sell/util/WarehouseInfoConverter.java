package com.dyl.sell.util;

import com.dyl.sell.domain.WarehouseDetailed;
import com.dyl.sell.domain.WarehouseMain;
import com.dyl.sell.repository.WarehouseDetailedRepository;
import com.dyl.sell.repository.WarehouseMainRepository;

import java.util.ArrayList;
import java.util.List;

/**
 * @author tldyl
 * @since 2018-8-13
 *
 * WarehouseMain与WarehouseDetailed之间的互相转换(通过billCode字段)。
 *
 * 该转换器需要实例化后才能使用，并需要向其提供warehouseMainRepository和
 * warehouseDetailedRepository。
 */
public class WarehouseInfoConverter {

    private WarehouseMainRepository warehouseMainRepository;
    private WarehouseDetailedRepository warehouseDetailedRepository;

    /* Constructor */
    public WarehouseInfoConverter(WarehouseMainRepository warehouseMainRepository,
                                  WarehouseDetailedRepository warehouseDetailedRepository) {
        this.warehouseMainRepository = warehouseMainRepository;
        this.warehouseDetailedRepository = warehouseDetailedRepository;
    }
    /* ----------- */


    public WarehouseMain toWarehouseMain(WarehouseDetailed warehouseDetailed) {
        return warehouseMainRepository.findByBillCode(warehouseDetailed.getBillCode());
    }

    public List<WarehouseMain> toWarehouseMain(List<WarehouseDetailed> warehouseDetailedList) {
        ArrayList<WarehouseMain> result = new ArrayList<>();
        for (WarehouseDetailed warehouseDetailed : warehouseDetailedList) {
            result.add(warehouseMainRepository.findByBillCode(warehouseDetailed.getBillCode()));
        }
        return result;
    }

    public WarehouseDetailed toWarehouseDetailed(WarehouseMain warehouseMain) {
        return warehouseDetailedRepository.findByBillCode(warehouseMain.getBillCode());
    }

    public List<WarehouseDetailed> toWarehouseDetailed(List<WarehouseMain> warehouseMainList) {
        ArrayList<WarehouseDetailed> result = new ArrayList<>();
        for (WarehouseMain warehouseMain : warehouseMainList) {
            result.add(warehouseDetailedRepository.findByBillCode(warehouseMain.getBillCode()));
        }
        return result;
    }
}
