package com.dyl.sell.controller;

import com.dyl.sell.enums.UserOperationCode;
import com.dyl.sell.service.OperationAuthorityCheck;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Component
public class DataAnalysisController {
    @GetMapping("/dataCentre")
    public String dataCentrePage(@RequestParam(required = false) String accessToken) {
        if (OperationAuthorityCheck.hasAuthority(accessToken, UserOperationCode.ENTER_DATA_CENTRE_PAGE.getCode())) {
            return "/analysisPage.html";
        }
        return "/403.html";
    }
}
