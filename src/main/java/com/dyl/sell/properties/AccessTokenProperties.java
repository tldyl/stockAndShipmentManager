package com.dyl.sell.properties;

import java.util.concurrent.TimeUnit;

public class AccessTokenProperties {
    private Integer expiredIn = 7200;
    private TimeUnit timeUnit = TimeUnit.SECONDS;

    public Integer getExpiredIn() {
        return expiredIn;
    }
    public void setExpiredIn(Integer expiredIn) {
        this.expiredIn = expiredIn;
    }
    public TimeUnit getTimeUnit() {
        return timeUnit;
    }
    public void setTimeUnit(TimeUnit timeUnit) {
        this.timeUnit = timeUnit;
    }
}
