package com.dyl.sell.controller;

import com.dyl.sell.dto.DataToClientContainer;
import com.dyl.sell.dto.IndexChart;
import com.dyl.sell.enums.ErrorEnums;
import com.dyl.sell.service.OperationAuthorityCheck;
import com.dyl.sell.util.DataToClient;
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
}
