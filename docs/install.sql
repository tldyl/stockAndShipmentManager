DROP TABLE IF EXISTS `warehouse_main`;
DROP TABLE IF EXISTS `warehouse_detailed`;
DROP TABLE IF EXISTS `units`;
DROP TABLE IF EXISTS `unit`;
DROP TABLE IF EXISTS `temp`;
DROP TABLE IF EXISTS `stock`;
DROP TABLE IF EXISTS `sell_main`;
DROP TABLE IF EXISTS `sell_detailed`;
DROP TABLE IF EXISTS `sell_desc`;
DROP TABLE IF EXISTS `rewarehouse_main`;
DROP TABLE IF EXISTS `rewarehouse_detailed`;
DROP TABLE IF EXISTS `resell_main`;
DROP TABLE IF EXISTS `resell_detailed`;
DROP TABLE IF EXISTS `current_account`;
DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `user_sign_in`;
DROP TABLE IF EXISTS `charactor_and_authority`;
DROP TABLE IF EXISTS `charactor_and_home_page`;
DROP TABLE IF EXISTS `department`;
DROP TABLE IF EXISTS `gross_sale_daily`;
DROP TABLE IF EXISTS `gross_trade_daily`;
DROP TABLE IF EXISTS `gross_sale_monthly`;
DROP TABLE IF EXISTS `gross_trade_monthly`;
DROP TABLE IF EXISTS `detail_sale_daily`;
DROP TABLE IF EXISTS `detail_sale_monthly`;
DROP TABLE IF EXISTS `product_type`;

-- 进货主表
CREATE TABLE `warehouse_main`(
  `id` int(0) NOT NULL,
  `bill_date` datetime(0) NOT NULL COMMENT '进货日期',
  `bill_code` varchar(255) NOT NULL COMMENT '进货单编号',
  `units` varchar(30) NOT NULL COMMENT '供应商名称',
  `handle` varchar(10) NOT NULL COMMENT '经手人',
  `summary` varchar(255) NOT NULL COMMENT '摘要',
  `full_payment` float(255, 2) NOT NULL COMMENT '应付金额',
  `payment` float(255, 2) NOT NULL COMMENT '实付金额',
  PRIMARY KEY (`id`)
);
-- 进货明细表
CREATE TABLE `warehouse_detailed`(
  `bill_code`   varchar(30)   NOT NULL COMMENT '进货单编号',
  `bill_date`   datetime  NOT NULL COMMENT '进货日期',
  `trade_code`  varchar(30)   NOT NULL COMMENT '商品编号',
  `full_name`   varchar(64)   NOT NULL COMMENT '商品名称',
  `type`        varchar(16)   NOT NULL COMMENT '商品型号',
  `standard`    varchar(10)   NOT NULL COMMENT '商品规格',
  `produce`     varchar(128)   NOT NULL COMMENT '商品产地',
  `unit`        varchar(128)   NOT NULL COMMENT '商品单位',
  `amount`      int       NOT NULL COMMENT '商品数量',
  `price`       float(255, 2)     NOT NULL COMMENT '商品进价',
  `total_price` float(255, 2)     NOT NULL COMMENT '进货总金额',
  PRIMARY KEY(`trade_code`)
);
-- 往来单位信息表
CREATE TABLE `units`(
  `unit_code`   int       NOT NULL COMMENT '单位编号',
  `full_name`   varchar(128)   NOT NULL COMMENT '单位全称',
  `name`        varchar(32)    COMMENT '单位简称',
  `fax`         varchar(16)    COMMENT '传真',
  `telephone_number` varchar(16) NOT NULL COMMENT '电话',
  `link_man`    varchar(10)   NOT NULL COMMENT '法人代表',
  `address`     varchar(128)   NOT NULL COMMENT '单位地址',
  `accounts`    varchar(32)   NOT NULL COMMENT '单位银行账户号码',
  `spell`       varchar(16)    COMMENT '拼音简码',
  PRIMARY KEY(`full_name`)
);
-- 本单位信息表
CREATE TABLE `unit`(
  `full_name`   varchar(128)  NOT NULL COMMENT '单位全称',
  `address`     varchar(128)  NOT NULL COMMENT  '联系地址',
  `link_man`    varchar(10)   NOT NULL COMMENT  '法人代表',
  `telephone_number`  varchar(16) NOT NULL COMMENT '电话',
  `accounts`    varchar(32)   NOT NULL COMMENT '开户银行账号',
  `website`     varchar(48)   COMMENT '网址',
  `tax_code`    varchar(64)   NOT NULL COMMENT '纳税号',
  PRIMARY KEY(`full_name`)
);
-- 月销售分析临时表
-- CREATE TABLE `temp`;
-- 库存商品信息表
CREATE TABLE `stock`(
  `trade_code`  varchar(30)   NOT NULL COMMENT '商品编号',
  `full_name`   varchar(64)   NOT NULL COMMENT '商品名称',
  `name`        varchar(16)    COMMENT '商品简称',
  `type`        varchar(16)   NOT NULL COMMENT '商品型号',
  `standard`    varchar(10)   NOT NULL COMMENT '商品规格',
  `unit`        varchar(128)   NOT NULL COMMENT '商品单位',
  `produce`     varchar(128)   NOT NULL COMMENT '商品产地',
  `amount`      int       NOT NULL COMMENT '库存数量',
  `last_price`  float(255, 2)     NOT NULL COMMENT '最后一次进货价格',
  `average_price` float(255, 2)   NOT NULL COMMENT '加权平均价',
  `last_sell_price` float(255, 2) NOT NULL COMMENT '最后一次销售价格',
  `stock_check` float(255, 2)     NOT NULL COMMENT '盘点数量',
  `upper_limit` int       NOT NULL COMMENT '库存上限',
  `lower_limit` int       NOT NULL COMMENT '库存下限',
  `provide_info`  varchar(128) NOT NULL COMMENT '商品供货信息',
  `comment`     varchar(64)    COMMENT '备注信息',
  `spell`       varchar(16)    COMMENT '拼音简码',
  PRIMARY KEY(`trade_code`)
);
-- 销售主表
CREATE TABLE `sell_main`(
  `id`          int       NOT NULL AUTO_INCREMENT,
  `bill_date`   datetime  NOT NULL COMMENT '销售日期',
  `bill_code`   varchar(30)   NOT NULL COMMENT '销售单编号',
  `handle`      varchar(10) NOT NULL COMMENT '经手人',
  `summary`     varchar(255)   NOT NULL COMMENT '摘要',
  `full_payment`  float(255, 2)   NOT NULL COMMENT '应收金额',
  `payment`     float(255, 2)     NOT NULL COMMENT '实收金额',
  PRIMARY KEY(`id`)
);
-- 销售明细表
CREATE TABLE `sell_detailed`(
  `bill_code`   varchar(30)   NOT NULL COMMENT '销售单编号',
  `bill_date`   datetime   NOT NULL COMMENT '销售日期',
  `trade_code`  varchar(30)   NOT NULL COMMENT '商品编号',
  `full_name`   varchar(64)   NOT NULL COMMENT '商品名称',
  `type`        varchar(16)   NOT NULL COMMENT '商品类型',
  `standard`    varchar(10)   NOT NULL COMMENT '商品规格',
  `produce`     varchar(128)   NOT NULL COMMENT '商品产地',
  `unit`        varchar(128)   NOT NULL COMMENT '商品单位',
  `amount`      int       NOT NULL COMMENT '销售数量',
  `price`       float(255, 2)     NOT NULL COMMENT '销售单价',
  `total_price` float(255, 2)     NOT NULL COMMENT '销售总价',
  PRIMARY KEY(`trade_code`)
);
-- 销售排行表
CREATE TABLE `sell_desc` (
  `trade_code`  varchar(30) NOT NULL COMMENT '商品编号',
  `full_name`   varchar(64) NOT NULL COMMENT '商品全称',
  `amount`      int         NOT NULL COMMENT '销售数量',
  `total_price` float(255, 2) NOT NULL COMMENT '销售总金额',
  PRIMARY KEY(`trade_code`)
);
-- 进货退货主表
CREATE TABLE `rewarehouse_main`(
  `id`          int       NOT NULL AUTO_INCREMENT,
  `bill_date`   datetime  NOT NULL COMMENT '退货日期',
  `bill_code`   varchar(30)   NOT NULL COMMENT '销售单编号',
  `unit`       varchar(128)   NOT NULL COMMENT '商品单位',
  `handle`      varchar(10) NOT NULL COMMENT '经手人',
  `summary`     varchar(255)   NOT NULL COMMENT '摘要',
  `full_payment`  float(255, 2)   NOT NULL COMMENT '应退金额',
  `payment`     float(255, 2)     NOT NULL COMMENT '实退金额',
  PRIMARY KEY(`id`)
);
-- 进货退货明细表
CREATE TABLE `rewarehouse_detailed`(
  `bill_code` varchar(30)   NOT NULL COMMENT '进货单编号',
  `bill_date` datetime  NOT NULL COMMENT '退货日期',
  `trade_code` varchar(30)  NOT NULL COMMENT '商品编号',
  `full_name` varchar(64)   NOT NULL COMMENT '商品名称',
  `type`      varchar(16)   NOT NULL COMMENT '商品类型',
  `standard`  varchar(10)   NOT NULL COMMENT '商品规格',
  `produce`   varchar(128)   NOT NULL COMMENT '商品产地',
  `unit`      varchar(128)   NOT NULL COMMENT '商品单位',
  `amount`    int       NOT NULL COMMENT '商品数量',
  `price`     float(255, 2)     NOT NULL COMMENT '商品单价',
  `total_price` float(255, 2)   NOT NULL COMMENT '商品总价',
  PRIMARY KEY(`trade_code`)
);
-- 销售退货主表
CREATE TABLE `resell_main`(
  `id`          int       NOT NULL AUTO_INCREMENT,
  `bill_date` datetime  NOT NULL COMMENT '退货日期',
  `bill_code` varchar(30)   NOT NULL COMMENT '销售单编号',
  `unit`     varchar(128)   NOT NULL COMMENT '商品单位',
  `handle`    varchar(10) NOT NULL COMMENT '经手人',
  `summary`   varchar(255)   NOT NULL COMMENT '摘要',
  `full_payment`  float(255, 2) NOT NULL COMMENT '应退金额',
  `payment`   float(255, 2)   NOT NULL COMMENT '实退金额',
  PRIMARY KEY(`id`)
);
-- 销售退货明细表
CREATE TABLE `resell_detailed`(
  `bill_code` varchar(30)   NOT NULL COMMENT '销售单编号',
  `trade_code`  varchar(30) NOT NULL COMMENT '商品编号',
  `full_name` varchar(64)   NOT NULL COMMENT '商品名称',
  `standard`  varchar(10)   NOT NULL COMMENT '商品规格',
  `type`      varchar(16)   NOT NULL COMMENT '商品类型',
  `produce`   varchar(128)   NOT NULL COMMENT '商品产地',
  `unit`      varchar(128)   NOT NULL COMMENT '商品单位',
  `amount`    int       NOT NULL COMMENT '商品数量',
  `price`     float(255, 2)     NOT NULL COMMENT '商品单价',
  `total_price` float(255, 2)   NOT NULL COMMENT '商品总价',
  PRIMARY KEY(`trade_code`)
);
-- 往来对账明细表
CREATE TABLE `current_account`(
  `bill_date` datetime  NOT NULL COMMENT '进货日期',
  `bill_code` varchar(30)   NOT NULL COMMENT '进货单编号',
  `summary`   varchar(255)   NOT NULL COMMENT '摘要',
  `add_gathering` float(255, 2) NOT NULL COMMENT '本期应付金额',
  `fact_add_fee` float(255, 2)  NOT NULL COMMENT '本期新增应付金额',
  `fact_fee`  float(255, 2)     NOT NULL COMMENT '实付金额',
  `reduce_gathering` float(255, 2) NOT NULL COMMENT '应付款余额',
  `balance`   int       NOT NULL COMMENT '核对情况',
  `units`     varchar(128)   NOT NULL COMMENT '往来单位全称',
  PRIMARY KEY(`bill_code`)
);
-- 用户表
CREATE TABLE `user` (
  `uid`     int     NOT NULL AUTO_INCREMENT,
  `username`  varchar(20) NOT NULL,
  `password`  varchar(128)  NOT NULL,
  `department_id` int NOT NULL,
  `sex`       varchar(1)  NOT NULL,
  `phone_number`  varchar(16) NOT NULL,
  `charactor` varchar(255)  DEFAULT 'employee' NOT NULL,
  `status`    int   DEFAULT 0 NOT NULL,
  PRIMARY KEY(`uid`)
);
-- 用户签到状况表
CREATE TABLE `user_sign_in` (
  `uid`     int   NOT NULL,
  `sign_in_date`  varchar(255)  NOT NULL,
  `sign_in_status`  varchar(1)  NOT NULL,
  PRIMARY KEY(`uid`)
);
-- 角色权限关系表
CREATE TABLE `charactor_and_authority` (
  `charactor` varchar(240)  DEFAULT 'employee'  NOT NULL,
  `has_authority` varchar(255)  DEFAULT '100'  NOT NULL,
  `level`   int,
  PRIMARY KEY(`charactor`)
);
-- 角色主页关系表
CREATE TABLE `charactor_and_home_page` (
  `charactor` varchar(32)  DEFAULT 'employee'  NOT NULL,
  `home_page` varchar(64),
  `page_weight` int,
  PRIMARY KEY(`charactor`)
);
-- 部门表
CREATE TABLE `department` (
  `department_id`   int  NOT NULL  AUTO_INCREMENT,
  `department_name` varchar(16) NOT NULL,
  PRIMARY KEY(`department_id`)
);
-- 日销售总额统计表
CREATE TABLE `gross_sale_daily`(
  `day`   varchar(10)     NOT NULL COMMENT '日期',
  `amount`  float(255, 2) NOT NULL COMMENT '当日销售总额',
  PRIMARY KEY(`day`)
);
-- 日交易笔数统计表
CREATE TABLE `gross_trade_daily`(
  `day`   varchar(10)   NOT NULL COMMENT '日期',
  `amount`  int         NOT NULL COMMENT '当日交易笔数',
  PRIMARY KEY(`day`)
);
-- 月销售总额统计表
CREATE TABLE `gross_sale_monthly`(
  `month`   varchar(10)     NOT NULL COMMENT '日期',
  `amount`  float(255, 2) NOT NULL COMMENT '当月销售总额',
  PRIMARY KEY(`month`)
);
-- 月交易笔数统计表
CREATE TABLE `gross_trade_monthly`(
  `month`   varchar(10)   NOT NULL COMMENT '日期',
  `amount`  int         NOT NULL COMMENT '当月交易笔数',
  PRIMARY KEY(`month`)
);
-- 日销售总额统计明细表
CREATE TABLE `detail_sale_daily`(
  `day`   varchar(10)   NOT NULL COMMENT '日期',
  `type`  varchar(16)   NOT NULL COMMENT '商品类型',
  `full_name` varchar(64) NOT NULL COMMENT '商品全称',
  `amount`  float(255, 2) NOT NULL COMMENT '当日销售额',
  PRIMARY KEY(`full_name`)
);
-- 月销售总额统计明细表
CREATE TABLE `detail_sale_monthly`(
  `day`   varchar(10)   NOT NULL COMMENT '日期',
  `type`  varchar(16)   NOT NULL COMMENT '商品类型',
  `full_name` varchar(64) NOT NULL COMMENT '商品全称',
  `amount`  float(255, 2) NOT NULL COMMENT '当月销售额',
  PRIMARY KEY(`full_name`)
);
-- 商品类型代号表
CREATE TABLE `product_type` (
  `code`  int   NOT NULL COMMENT '商品类型代号',
  `type`  varchar(16) NOT NULL COMMENT '商品类型',
  PRIMARY KEY(`code`)
);