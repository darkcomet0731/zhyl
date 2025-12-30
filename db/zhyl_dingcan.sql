USE zhyl;

-- 菜品表
CREATE TABLE IF NOT EXISTS `caipin` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` VARCHAR(200) NULL COMMENT '菜品名称',
  `type` VARCHAR(50) NULL COMMENT '分类(早餐/午餐/晚餐/其他)',
  `price` DECIMAL(10,2) NOT NULL DEFAULT 0.00 COMMENT '价格',
  `stock` INT NOT NULL DEFAULT 0 COMMENT '库存/份数',
  `description` TEXT NULL COMMENT '描述',
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 订餐订单表
CREATE TABLE IF NOT EXISTS `caipin_order` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_no` VARCHAR(64) NOT NULL COMMENT '订单号',
  `yonghu_id` INT NOT NULL COMMENT '下单人(对应yonghu.id)',
  `caipin_id` INT NOT NULL COMMENT '菜品(对应caipin.id)',
  `qty` INT NOT NULL DEFAULT 1 COMMENT '数量',
  `total_price` DECIMAL(10,2) NOT NULL DEFAULT 0.00 COMMENT '总价',
  `status` VARCHAR(30) NOT NULL DEFAULT 'PAID' COMMENT '状态(PAID/CANCELLED/DONE)',
  `order_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  PRIMARY KEY (`id`),
  INDEX `idx_order_yonghu` (`yonghu_id`),
  INDEX `idx_order_caipin` (`caipin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;