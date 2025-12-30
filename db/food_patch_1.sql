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

-- 订单号唯一
ALTER TABLE caipin_order
ADD UNIQUE KEY uq_caipin_order_no (order_no);

-- 触发器：下单前校验库存+自动算总价；下单后扣库存
DROP TRIGGER IF EXISTS trg_caipin_order_bi;
DROP TRIGGER IF EXISTS trg_caipin_order_ai;

DELIMITER //

CREATE TRIGGER trg_caipin_order_bi
BEFORE INSERT ON caipin_order
FOR EACH ROW
BEGIN
  DECLARE cur_stock INT;
  DECLARE cur_price DECIMAL(10,2);

  SELECT stock, price INTO cur_stock, cur_price
  FROM caipin
  WHERE id = NEW.caipin_id
  FOR UPDATE;

  IF cur_stock IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '菜品不存在';
  END IF;

  IF NEW.qty <= 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '数量必须大于0';
  END IF;

  IF cur_stock < NEW.qty THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '库存不足';
  END IF;

  SET NEW.total_price = cur_price * NEW.qty;
END//

CREATE TRIGGER trg_caipin_order_ai
AFTER INSERT ON caipin_order
FOR EACH ROW
BEGIN
  UPDATE caipin
  SET stock = stock - NEW.qty
  WHERE id = NEW.caipin_id;
END//

DELIMITER ;