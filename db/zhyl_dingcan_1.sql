USE zhyl;

DROP TRIGGER IF EXISTS trg_caipin_order_bi;
DROP TRIGGER IF EXISTS trg_caipin_order_ai;

DELIMITER //

-- 下单前：检查库存 + 自动计算总价
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

-- 下单后：扣库存
CREATE TRIGGER trg_caipin_order_ai
AFTER INSERT ON caipin_order
FOR EACH ROW
BEGIN
  UPDATE caipin
  SET stock = stock - NEW.qty
  WHERE id = NEW.caipin_id;
END//

DELIMITER ;