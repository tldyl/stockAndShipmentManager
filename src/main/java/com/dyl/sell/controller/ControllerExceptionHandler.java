package com.dyl.sell.controller;

import com.dyl.sell.dto.DataToClientContainer;
import com.dyl.sell.exception.SearchArgumentException;
import com.dyl.sell.exception.StockException;
import com.dyl.sell.util.DataToClient;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class ControllerExceptionHandler {

    @ExceptionHandler(SearchArgumentException.class)
    @ResponseBody
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public DataToClientContainer handleSearchArgumentException(SearchArgumentException e) {
        return DataToClient.send(e.getCode(),e.getMessage(),null);
    }

    @ExceptionHandler(StockException.class)
    @ResponseBody
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public DataToClientContainer handleStockException(StockException e) {
        return DataToClient.send(e.getCode(),e.getMessage(),null);
    }

    @ExceptionHandler(ClassNotFoundException.class)
    @ResponseBody
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public DataToClientContainer handleClassNotFoundException(StockException e) {
        return DataToClient.send(e.getCode(),e.getMessage(),null);
    }

    @ExceptionHandler(IllegalAccessException.class)
    @ResponseBody
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public DataToClientContainer handleIllegalAccessException(StockException e) {
        return DataToClient.send(e.getCode(),e.getMessage(),null);
    }

    @ExceptionHandler(InstantiationException.class)
    @ResponseBody
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public DataToClientContainer handleInstantiationException(StockException e) {
        return DataToClient.send(e.getCode(),e.getMessage(),null);
    }

}
