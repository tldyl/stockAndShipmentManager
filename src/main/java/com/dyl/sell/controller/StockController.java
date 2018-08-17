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
import com.dyl.sell.service.FindWarehouseInfo;
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
        if (OperationAuthorityCheck.hasAuthority(accessToken,UserOperationCode.WAREHOUSE_ADD.getCode())) {
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

    /**
     * 删除进货记录(仅超级管理员有权限进行操作)
     * @param accessToken 需要提供accessToken才可以使用这个服务
     * @param billCode 根据进货单编号来删除记录
     * @return 执行情况
     */
    @PostMapping("/warehouseInfo/delete")
    @ResponseBody
    public DataToClientContainer deleteWarehouseInfo(@RequestParam(required = false) String accessToken, String billCode) {
        if (OperationAuthorityCheck.hasAuthority(accessToken,UserOperationCode.ADMINISTRATOR.getCode())) {
            WarehouseMain warehouseMain = warehouseMainRepository.findByBillCode(billCode);
            WarehouseDetailed warehouseDetailed = warehouseDetailedRepository.findByBillCode(billCode);
            boolean isSuccessed = true;
            String errorInfo = "";
            if (warehouseMain != null) {
                warehouseMainRepository.delete(warehouseMain);
            } else {
                isSuccessed = false;
                errorInfo = "未在进货主表中找到相关记录！";
            }
            if (warehouseDetailed != null) {
                warehouseDetailedRepository.delete(warehouseDetailed);
            } else {
                isSuccessed = false;
                errorInfo = errorInfo + "未在进货明细表中找到相关记录！";
            }
            if (isSuccessed) {
                return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(),null);
            } else {
                return DataToClient.send(ErrorEnums.UNKNOWN_ERROR.getCode(),errorInfo,null);
            }
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(),ErrorEnums.NO_AUTHORITY.getMsg(),null);
    }

    /**
     * 修改进货记录
     * @param accessToken 需要提供accessToken才可以使用这个服务
     * @param clientWarehouseDetailed 已修改的记录
     * @return
     */
    public DataToClientContainer updateWarehouseInfo(@RequestParam(required = false) String accessToken,
                                                     ClientWarehouseDetailed clientWarehouseDetailed) {
        if (OperationAuthorityCheck.hasAuthority(accessToken,UserOperationCode.WAREHOUSE_COMPILE.getCode())) {
            try {
                addWarehouseInfo(accessToken, clientWarehouseDetailed);
            } catch (Exception e) {
                return DataToClient.send(ErrorEnums.UNKNOWN_ERROR.getCode(),"修改进货信息出错！",null);
            }
            return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(),null);
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(),ErrorEnums.NO_AUTHORITY.getMsg(),null);
    }

    /**
     * 查询进货记录
     * @param accessToken 需要提供accessToken才可以使用这个服务
     * @param warehouseDetailed 搜索关键字
     * @return
     */
    public DataToClientContainer searchWarehouseInfo(@RequestParam(required = false) String accessToken,
                                                     ClientWarehouseDetailed warehouseDetailed,
                                                     boolean isFindOne) {
        if (OperationAuthorityCheck.hasAuthority(accessToken,null)) {
            if (isFindOne) { //仅通过billCode或tradeCode查找一条记录
                return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(),
                        FindWarehouseInfo.findOne(warehouseDetailed,warehouseDetailedRepository));
            }
            return DataToClient.send(ErrorEnums.SUCCESS.getCode(),ErrorEnums.SUCCESS.getMsg(),
                    FindWarehouseInfo.find(warehouseDetailed,warehouseDetailedRepository,warehouseMainRepository));
        }
        return DataToClient.send(ErrorEnums.NO_AUTHORITY.getCode(),ErrorEnums.NO_AUTHORITY.getMsg(),null);
    }
}
