package com.dyl.sell.controller;

import com.dyl.sell.domain.WarehouseDetailed;
import com.dyl.sell.domain.WarehouseMain;
import com.dyl.sell.dto.ClientWarehouseDetailed;
import com.dyl.sell.dto.DataToClientContainer;
import com.dyl.sell.dto.IndexChart;
import com.dyl.sell.enums.ErrorEnums;
import com.dyl.sell.enums.UserOperationCode;
import com.dyl.sell.exception.StockException;
import com.dyl.sell.repository.WarehouseDetailedRepository;
import com.dyl.sell.repository.WarehouseMainRepository;
import com.dyl.sell.service.OperationAuthorityCheck;
import com.dyl.sell.util.DataToClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author tldyl
 * @since 2018-7-6
 *
 * 货品的入仓管理相关的Controller
 */
@Controller
@Component
public class StockController {

    private WarehouseMainRepository warehouseMainRepository;
    private WarehouseDetailedRepository warehouseDetailedRepository;

    @Autowired
    public StockController(WarehouseMainRepository warehouseMainRepository,
                           WarehouseDetailedRepository warehouseDetailedRepository) {
        this.warehouseMainRepository = warehouseMainRepository;
        this.warehouseDetailedRepository = warehouseDetailedRepository;
    }

    @GetMapping("/stockManage")
    public String stock(@RequestParam(required = false) String accessToken) {
        if (OperationAuthorityCheck.hasAuthority(accessToken,null)) {
            return "/stock.html"; //名称暂时未定
        }
        return "/403.html";
    }

    /**
     * 获取销售业绩等统计信息(TODO)
     * @param accessToken 需要提供accessToken才可以使用这个服务
     * @return 指定的统计信息
     */
    @GetMapping("/getStockAchievement")
    @ResponseBody
    public DataToClientContainer getStockAchievement(@RequestParam(required = false) String accessToken) {
        if (OperationAuthorityCheck.hasAuthority(accessToken,null)) {
            //TODO
            Integer[] achievements = {132,5123,5152,6123,4384,5321,6123,5423,4285,1764,2314,1023};
            String[] months = {"January", "February", "March", "April", "May", "June","July","August","September","October","November","December"};
            IndexChart indexChart = new IndexChart();
            indexChart.setXpos(months);
            indexChart.setYpos(achievements);
            return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(),indexChart);
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(),ErrorEnums.NO_AUTHORITY.getMsg(),null);
    }

    /**
     * 添加进货记录
     * @param accessToken 需要提供accessToken才可以使用这个服务
     * @param clientWarehouseDetailed 进货明细信息
     * @return 保存情况
     * @throws StockException 没有正确保存时会抛出这个异常
     */
    @PostMapping("/warehouseInfo/add")
    @ResponseBody
    public DataToClientContainer addWarehouseInfo(@RequestParam(required = false) String accessToken,
                                                  ClientWarehouseDetailed clientWarehouseDetailed) throws StockException {
        if (OperationAuthorityCheck.hasAuthority(accessToken,UserOperationCode.WAREHOUSE_COMPILE.getCode())) {
            if (clientWarehouseDetailed != null) {
                WarehouseMain warehouseMain = new WarehouseMain();
                WarehouseDetailed warehouseDetailed = new WarehouseDetailed();

                warehouseMain.setBillDate(clientWarehouseDetailed.getBillDate());
                warehouseMain.setBillCode(clientWarehouseDetailed.getBillCode());
                warehouseMain.setUnits(clientWarehouseDetailed.getUnits());
                warehouseMain.setHandle(clientWarehouseDetailed.getHandle());
                warehouseMain.setSummary(clientWarehouseDetailed.getSummary());
                warehouseMain.setFullPayment(clientWarehouseDetailed.getFullPayment());
                warehouseMain.setPayment(clientWarehouseDetailed.getPayment());

                try {
                    warehouseMainRepository.save(warehouseMain);
                } catch (Exception e) {
                    throw new StockException(ErrorEnums.ADD_WAREHOUSEINFO_ERROR.getCode(),ErrorEnums.ADD_WAREHOUSEINFO_ERROR.getMsg());
                }

                warehouseDetailed.setBillDate(clientWarehouseDetailed.getBillDate());
                warehouseDetailed.setBillCode(clientWarehouseDetailed.getBillCode());
                warehouseDetailed.setTradeCode(clientWarehouseDetailed.getTradeCode());
                warehouseDetailed.setFullName(clientWarehouseDetailed.getFullName());
                warehouseDetailed.setType(clientWarehouseDetailed.getType());
                warehouseDetailed.setStandard(clientWarehouseDetailed.getStandard());
                warehouseDetailed.setProduce(clientWarehouseDetailed.getProduce());
                warehouseDetailed.setUnit(clientWarehouseDetailed.getUnit());
                warehouseDetailed.setAmount(clientWarehouseDetailed.getAmount());
                warehouseDetailed.setPrice(clientWarehouseDetailed.getPrice());
                warehouseDetailed.setTotalPrice(clientWarehouseDetailed.getTotalPrice());

                try {
                    warehouseDetailedRepository.save(warehouseDetailed);
                } catch (Exception e) {
                    warehouseMainRepository.delete(warehouseMain);
                    throw new StockException(ErrorEnums.ADD_WAREHOUSEINFO_ERROR.getCode(),ErrorEnums.ADD_WAREHOUSEINFO_ERROR.getMsg());
                }

                return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(),null);
            }
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(),ErrorEnums.NO_AUTHORITY.getMsg(),null);
    }
}
