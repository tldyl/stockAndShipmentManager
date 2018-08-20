package com.dyl.sell.service;

import com.dyl.sell.domain.WarehouseDetailed;
import com.dyl.sell.domain.WarehouseMain;
import com.dyl.sell.dto.ClientWarehouseDetailed;
import com.dyl.sell.repository.WarehouseDetailedRepository;
import com.dyl.sell.repository.WarehouseMainRepository;
import com.dyl.sell.util.WarehouseInfoConverter;

import java.util.*;

public class FindWarehouseInfo {

    private static WarehouseInfoConverter converter;

    public static WarehouseDetailed findOne(ClientWarehouseDetailed cWarehouseDetailed, WarehouseDetailedRepository detailedRepository) {
        WarehouseDetailed warehouseDetailed;
        warehouseDetailed = detailedRepository.findByBillCode(cWarehouseDetailed.getBillCode());
        if (warehouseDetailed == null) {
            warehouseDetailed = detailedRepository.findByTradeCode(cWarehouseDetailed.getTradeCode());
        }
        return warehouseDetailed;
    }

    public static List<WarehouseDetailed> find(ClientWarehouseDetailed cWarehouseDetailed,
                                               WarehouseDetailedRepository warehouseDetailedRepository,
                                               WarehouseMainRepository warehouseMainRepository) {
        if (converter == null) {
            converter = new WarehouseInfoConverter(warehouseMainRepository, warehouseDetailedRepository);
        }

        boolean isSkipped = true;
        List<WarehouseDetailed> result = new ArrayList<>();
        if (cWarehouseDetailed.getBillDate() != null) {
            isSkipped = false;
            result = warehouseDetailedRepository.findByBillDate(cWarehouseDetailed.getBillDate());
        }
        if (!"-".equals(cWarehouseDetailed.getUnits())) {
            if (isSkipped) {
                result = converter.toWarehouseDetailed(warehouseMainRepository.findByUnits(cWarehouseDetailed.getUnits()));
            } else {
                List<WarehouseMain> resultMain = converter.toWarehouseMain(result);
                int index = 0;
                for (WarehouseMain warehouseMain : resultMain) {
                    if (!cWarehouseDetailed.getUnits().equals(warehouseMain.getUnits())) {
                        result.remove(index);
                        resultMain.remove(warehouseMain);
                        index--;
                    }
                    index++;
                }
            }
            isSkipped = false;
        }
        if (!"-".equals(cWarehouseDetailed.getHandle())) {
            if (isSkipped) {
                result.addAll(converter.toWarehouseDetailed(warehouseMainRepository.findByHandleContaining(cWarehouseDetailed.getHandle())));
            } else {
                List<WarehouseMain> resultMain = converter.toWarehouseMain(result);
                int index = 0;
                for (WarehouseMain warehouseMain : resultMain) {
                    if (!warehouseMain.getHandle().contains(cWarehouseDetailed.getHandle())) {
                        result.remove(index);
                        resultMain.remove(warehouseMain);
                        index--;
                    }
                    index++;
                }
            }
            isSkipped = false;
        }
        if (!"-".equals(cWarehouseDetailed.getFullName())) {
            if (isSkipped) {
                result.addAll(warehouseDetailedRepository.findByFullNameContaining(cWarehouseDetailed.getFullName()));
            } else {
                for (WarehouseDetailed warehouseDetailed : result) {
                    if (!cWarehouseDetailed.getFullName().contains(warehouseDetailed.getFullName())) {
                        result.remove(warehouseDetailed);
                    }
                }
            }
            isSkipped = false;
        }
        if (!"-".equals(cWarehouseDetailed.getType())) {
            if (isSkipped) {
                result.addAll(warehouseDetailedRepository.findByFullNameContaining(cWarehouseDetailed.getType()));
            } else {
                for (WarehouseDetailed warehouseDetailed : result) {
                    if (!cWarehouseDetailed.getType().equals(warehouseDetailed.getType())) {
                        result.remove(warehouseDetailed);
                    }
                }
            }
            isSkipped = false;
        }
        if (!"-".equals(cWarehouseDetailed.getProduce())) {
            if (isSkipped) {
                result.addAll(warehouseDetailedRepository.findByFullNameContaining(cWarehouseDetailed.getProduce()));
            } else {
                for (WarehouseDetailed warehouseDetailed : result) {
                    if (!cWarehouseDetailed.getType().equals(warehouseDetailed.getProduce())) {
                        result.remove(warehouseDetailed);
                    }
                }
            }
            //isSkipped = false;
        }

        return result;
    }
}
