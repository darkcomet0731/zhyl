/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80041 (8.0.41)
 Source Host           : localhost:3306
 Source Schema         : db_zhyl

 Target Server Type    : MySQL
 Target Server Version : 80041 (8.0.41)
 File Encoding         : 65001

 Date: 14/05/2025 15:19:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bingli
-- ----------------------------
DROP TABLE IF EXISTS `bingli`;
CREATE TABLE `bingli`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bingli_uuid_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '病例编号 Search111 ',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `yayi_id` int NULL DEFAULT NULL COMMENT '牙医',
  `bingren_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '病人名称  Search111 ',
  `sex_types` int NULL DEFAULT NULL COMMENT '性别',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  `bingli_zhusu_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '主诉',
  `bingli_xianbingshi_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '现病史',
  `bingli_jiwangshi_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '既往史',
  `bingli_tijianjieguo_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '体检结果',
  `bingli_fuzhujieguo_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '辅助检查结果',
  `bingli_chubuzhenduan_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '初步诊断',
  `bingli_zhiliaoyijian_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '治疗意见',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '病例' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bingli
-- ----------------------------
INSERT INTO `bingli` VALUES (1, '1681722389235', 1, 3, '病人名称1', 2, 99, '主诉1', '现病史1', '既往史1', '体检结果1', '辅助检查结果1', '初步诊断1', '治疗意见1', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `bingli` VALUES (2, '1681722389196', 1, 2, '病人名称2', 1, 417, '主诉2', '现病史2', '既往史2', '体检结果2', '辅助检查结果2', '初步诊断2', '治疗意见2', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `bingli` VALUES (3, '1681722389229', 1, 1, '病人名称3', 2, 138, '主诉3', '现病史3', '既往史3', '体检结果3', '辅助检查结果3', '初步诊断3', '治疗意见3', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `bingli` VALUES (4, '1681722389239', 2, 3, '病人名称4', 2, 394, '主诉4', '现病史4', '既往史4', '体检结果4', '辅助检查结果4', '初步诊断4', '治疗意见4', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `bingli` VALUES (5, '1681722389178', 1, 2, '病人名称5', 2, 312, '主诉5', '现病史5', '既往史5', '体检结果5', '辅助检查结果5', '初步诊断5', '治疗意见5', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `bingli` VALUES (6, '1681722389251', 2, 2, '病人名称6', 2, 443, '主诉6', '现病史6', '既往史6', '体检结果6', '辅助检查结果6', '初步诊断6', '治疗意见6', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `bingli` VALUES (7, '1681722389188', 3, 1, '病人名称7', 2, 419, '主诉7', '现病史7', '既往史7', '体检结果7', '辅助检查结果7', '初步诊断7', '治疗意见7', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `bingli` VALUES (8, '1681722389219', 1, 2, '病人名称8', 2, 379, '主诉8', '现病史8', '既往史8', '体检结果8', '辅助检查结果8', '初步诊断8', '治疗意见8', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `bingli` VALUES (9, '1681722389262', 1, 2, '病人名称9', 2, 437, '主诉9', '现病史9', '既往史9', '体检结果9', '辅助检查结果9', '初步诊断9', '治疗意见9', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `bingli` VALUES (10, '1681722389184', 3, 1, '病人名称10', 1, 285, '主诉10', '现病史10', '既往史10', '体检结果10', '辅助检查结果10', '初步诊断10', '治疗意见10', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `bingli` VALUES (11, '1681722389196', 1, 2, '病人名称11', 2, 494, '主诉11', '现病史11', '既往史11', '体检结果11', '辅助检查结果11', '初步诊断11', '治疗意见11', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `bingli` VALUES (12, '1681722389238', 3, 1, '病人名称12', 2, 277, '主诉12', '现病史12', '既往史12', '体检结果12', '辅助检查结果12', '初步诊断12', '治疗意见12', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `bingli` VALUES (13, '1681722389179', 2, 2, '病人名称13', 1, 327, '主诉13', '现病史13', '既往史13', '体检结果13', '辅助检查结果13', '初步诊断13', '治疗意见13', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `bingli` VALUES (14, '1681722389238', 3, 3, '病人名称14', 2, 19, '<p>主诉14</p>', '<p>现病史14</p>', '<p>既往史14</p>', '<p>体检结果14</p>', '<p>辅助检查结果14</p>', '<p>初步诊断14</p>', '<p>治疗意见14</p>', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `bingli` VALUES (15, '1681781886833', 4, 1, '张三', 1, 18, '<p>第四十发顺丰好</p>', '<p>和京津冀军军</p>', '<p>丰东股份代沟的</p>', '<p>该好好干丰富感觉</p>', '<p>规范化防火规范健康卡</p>', '<p>华工科技很快就</p>', '<p>很快就高考回家</p>', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `bingli` VALUES (16, '1743051751644', 1, 4, '1', 1, 2, '<p>2</p>', '<p>3</p>', '<p>4</p>', '<p>5</p>', '<p>6</p>', '<p>7</p>', '<p>8</p>', '2025-03-27 13:02:44', '2025-03-27 13:02:44');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '配置文件' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, '轮播图1广东省第三个', 'upload/config1.jpg');
INSERT INTO `config` VALUES (2, '轮播图2', 'upload/config2.jpg');
INSERT INTO `config` VALUES (3, '轮播图3', 'upload/config3.jpg');

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '字段名',
  `code_index` int NULL DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int NULL DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '字典' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (3, 'jinyong_types', '账户状态', 1, '启用', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (4, 'jinyong_types', '账户状态', 2, '禁用', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (5, 'gonggao_types', '公告类型', 1, '通知', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (6, 'gonggao_types', '公告类型', 2, '热门', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (7, 'zhiwei_types', '服务类型', 1, '服务类型1', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (8, 'zhiwei_types', '服务类型', 2, '服务类型2', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (9, 'yayi_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (10, 'yayi_order_types', '订单类型', 101, '已预约', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (11, 'yayi_order_types', '订单类型', 102, '已取消预约', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (12, 'yayi_order_types', '订单类型', 103, '已使用', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (13, 'yayi_order_types', '订单类型', 105, '已评价', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (14, 'yayi_order_yuyue_types', '预约类型', 101, '首次诊疗', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (15, 'yayi_order_yuyue_types', '预约类型', 102, '复诊', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (16, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (17, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (18, 'yaopin_types', '药品类型', 1, '药品类型1', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (19, 'yaopin_types', '药品类型', 2, '药品类型2', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (20, 'yaopin_types', '药品类型', 3, '药品类型3', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (21, 'yaopin_types', '药品类型', 4, '西药', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (22, 'yaopin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (23, 'yaopin_order_types', '订单类型', 101, '已支付', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (24, 'yaopin_order_types', '订单类型', 102, '已退款', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (25, 'yaopin_order_types', '订单类型', 103, '已取走', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (26, 'yaopin_order_types', '订单类型', 104, '已确认', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (27, 'yaopin_order_types', '订单类型', 105, '已评价', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (28, 'yaopin_order_payment_types', '订单支付类型', 1, '余额', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (29, 'bingli_types', '状态', 1, '未缴费', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (30, 'bingli_types', '状态', 2, '已缴费', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (31, 'yaopin_types', '药品类型', 5, '中药', NULL, '', '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (32, 'yaopin2_types', '菜品类型', 1, '类型1', NULL, '', '2025-05-14 14:16:49');
INSERT INTO `dictionary` VALUES (33, 'yaopin2_order_payment_types', '订单支付类型', 1, '余额', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (34, 'yaopin2_order_types', '订单类型', 101, '已支付', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (35, 'yaopin2_order_types', '订单类型', 102, '已退款', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (36, 'yaopin2_order_types', '订单类型', 103, '已取走', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (37, 'yaopin2_order_types', '订单类型', 104, '已确认', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (38, 'yaopin2_order_types', '订单类型', 105, '已评价', NULL, NULL, '2025-04-04 17:06:29');
INSERT INTO `dictionary` VALUES (39, 'yaopin2_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2025-04-04 17:06:29');

-- ----------------------------
-- Table structure for gonggao
-- ----------------------------
DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE `gonggao`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '公告' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gonggao
-- ----------------------------
INSERT INTO `gonggao` VALUES (1, '公告名称1', 'upload/gonggao1.jpg', 1, '2025-04-04 17:06:29', '公告详情1', '2025-04-04 17:06:29');
INSERT INTO `gonggao` VALUES (2, '公告名称2', 'upload/gonggao2.jpg', 2, '2025-04-04 17:06:29', '公告详情2', '2025-04-04 17:06:29');
INSERT INTO `gonggao` VALUES (3, '公告名称3', 'upload/gonggao3.jpg', 1, '2025-04-04 17:06:29', '公告详情3', '2025-04-04 17:06:29');
INSERT INTO `gonggao` VALUES (4, '公告名称4', 'upload/gonggao4.jpg', 2, '2025-04-04 17:06:29', '公告详情4', '2025-04-04 17:06:29');
INSERT INTO `gonggao` VALUES (5, '公告名称5', '/upload/1743050123553.jpeg', 1, '2025-04-04 17:06:29', '<p>公告详情5</p>', '2025-04-04 17:06:29');
INSERT INTO `gonggao` VALUES (6, '公告名称6', '/upload/1743050115191.jpeg', 1, '2025-04-04 17:06:29', '<p>公告详情6</p>', '2025-04-04 17:06:29');
INSERT INTO `gonggao` VALUES (7, '公告名称7', '/upload/1743050107455.png', 1, '2025-04-04 17:06:29', '<p>公告详情7</p>', '2025-04-04 17:06:29');
INSERT INTO `gonggao` VALUES (8, '公告名称8', '/upload/1743050098753.jpg', 1, '2025-04-04 17:06:29', '<p>公告详情8</p>', '2025-04-04 17:06:29');
INSERT INTO `gonggao` VALUES (9, '公告名称9', '/upload/1743050088423.jpeg', 2, '2025-04-04 17:06:29', '<p>公告详情9</p>', '2025-04-04 17:06:29');
INSERT INTO `gonggao` VALUES (10, '公告名称10', '/upload/1743050080801.jpeg', 2, '2025-04-04 17:06:29', '<p>公告详情10</p>', '2025-04-04 17:06:29');
INSERT INTO `gonggao` VALUES (11, '公告名称11', '/upload/1743050071901.png', 1, '2025-04-04 17:06:29', '<p>公告详情11</p>', '2025-04-04 17:06:29');
INSERT INTO `gonggao` VALUES (12, '公告名称12', '/upload/1743050059280.jpeg', 2, '2025-04-04 17:06:29', '<p>公告详情12</p>', '2025-04-04 17:06:29');
INSERT INTO `gonggao` VALUES (13, '公告名称13', '/upload/1743050049474.jpeg', 2, '2025-04-04 17:06:29', '<p>公告详情13</p>', '2025-04-04 17:06:29');
INSERT INTO `gonggao` VALUES (14, '公告名称14', '/upload/1743050040896.gif', 2, '2025-04-04 17:06:29', '<p>公告详情14</p>', '2025-04-04 17:06:29');

-- ----------------------------
-- Table structure for gonggao2
-- ----------------------------
DROP TABLE IF EXISTS `gonggao2`;
CREATE TABLE `gonggao2`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao2_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '名称 Search111',
  `gonggao2_photo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `gonggao2_types` int NOT NULL COMMENT '类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `gonggao2_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '公告' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gonggao2
-- ----------------------------
INSERT INTO `gonggao2` VALUES (15, '用户姓名11发起紧急求助', '', 1, '2025-05-11 17:45:40', '<p>紧急求助，请及时处理！</p>', '2025-05-11 17:45:40');
INSERT INTO `gonggao2` VALUES (16, '用户姓名11发起紧急求助', '', 1, '2025-05-11 17:48:50', '<p>紧急求助，请及时处理！</p>', '2025-05-11 17:48:50');
INSERT INTO `gonggao2` VALUES (17, '用户姓名11发起紧急求助', '', 1, '2025-05-11 17:48:52', '<p>紧急求助，请及时处理！</p>', '2025-05-11 17:48:52');
INSERT INTO `gonggao2` VALUES (18, '用户姓名11发起紧急求助', '', 1, '2025-05-14 15:16:54', '<p>紧急求助，请及时处理！</p>', '2025-05-14 15:16:54');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '员工id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '员工名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'a1', 'yonghu', '用户', 'c8mcjr07r0rj2mywrldd9lrglp2pnym2', '2025-04-04 17:06:29', '2025-05-14 16:17:22');
INSERT INTO `token` VALUES (2, 1, 'a1', 'yayi', '牙医', 'xjh5f4i0bm4wy7f58t4mheo0nm6wwagq', '2025-04-04 17:06:29', '2025-03-27 14:10:45');
INSERT INTO `token` VALUES (3, 4, 'a5', 'yonghu', '用户', 'bn2oca6zn3krhcqi23y8hzux15i162ni', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `token` VALUES (4, 1, 'admin', 'users', '管理员', 'bzncg0fzmsecko5i6la3ddepiaun8nel', '2025-04-04 17:06:29', '2025-05-14 16:15:19');
INSERT INTO `token` VALUES (5, 4, '123', 'yayi', '牙医', 'y6scm762t82lequi6biu8hf2syejmv2s', '2025-03-27 13:01:30', '2025-03-27 14:10:50');
INSERT INTO `token` VALUES (6, 1, '医生1', 'yayi', '医生', 'p4mvn1yaw5x6n0q75z060o270wnh98yk', '2025-04-06 17:32:31', '2025-04-06 18:40:13');
INSERT INTO `token` VALUES (7, 2, '用户2', 'yonghu', '用户', '1m0ha81w24je1p0da9hmck25v6rj6jj5', '2025-05-07 21:14:34', '2025-05-14 15:49:15');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '员工名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', '管理员', '2025-04-04 17:06:29');

-- ----------------------------
-- Table structure for yaodan
-- ----------------------------
DROP TABLE IF EXISTS `yaodan`;
CREATE TABLE `yaodan`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaodan_uuid_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '药单编号 Search111 ',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `yayi_id` int NULL DEFAULT NULL COMMENT '牙医',
  `jiancha_time` timestamp NULL DEFAULT NULL COMMENT '检查时间',
  `bingrenzishu_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '病人自述',
  `jianchajieguo_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '检查结果',
  `yishengkaifang_yaopin_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '药品信息',
  `yishengkaifang_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '医生开方',
  `yishengjianyi_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '医生建议',
  `huafeijine` decimal(10, 2) NULL DEFAULT NULL COMMENT '花费金额',
  `xiacijiuzhen_time` timestamp NULL DEFAULT NULL COMMENT '下次就诊时间',
  `bingli_types` int NULL DEFAULT NULL COMMENT '状态 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '药单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yaodan
-- ----------------------------
INSERT INTO `yaodan` VALUES (1, '1681722389260', 2, 1, '2025-04-04 17:06:29', '病人自述1', '检查结果1', '药品信息1', '医生开方1', '医生建议1', 824.10, '2025-04-04 17:06:29', 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaodan` VALUES (2, '1681722389192', 3, 1, '2025-04-04 17:06:29', '病人自述2', '检查结果2', '药品信息2', '医生开方2', '医生建议2', 922.38, '2025-04-04 17:06:29', 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaodan` VALUES (3, '1681722389231', 1, 1, '2025-04-04 17:06:29', '病人自述3', '检查结果3', '药品信息3', '医生开方3', '医生建议3', 212.40, '2025-04-04 17:06:29', 2, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaodan` VALUES (4, '1681722389284', 3, 2, '2025-04-04 17:06:29', '病人自述4', '检查结果4', '药品信息4', '医生开方4', '医生建议4', 386.71, '2025-04-04 17:06:29', 2, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaodan` VALUES (5, '1681722389254', 2, 2, '2025-04-04 17:06:29', '病人自述5', '检查结果5', '药品信息5', '医生开方5', '医生建议5', 707.53, '2025-04-04 17:06:29', 2, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaodan` VALUES (6, '1681722389233', 2, 3, '2025-04-04 17:06:29', '病人自述6', '检查结果6', '药品信息6', '医生开方6', '医生建议6', 585.47, '2025-04-04 17:06:29', 2, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaodan` VALUES (7, '1681722389266', 3, 1, '2025-04-04 17:06:29', '病人自述7', '检查结果7', '药品信息7', '医生开方7', '医生建议7', 28.93, '2025-04-04 17:06:29', 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaodan` VALUES (8, '1681722389214', 2, 3, '2025-04-04 17:06:29', '病人自述8', '检查结果8', '药品信息8', '医生开方8', '医生建议8', 263.93, '2025-04-04 17:06:29', 2, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaodan` VALUES (9, '1681722389196', 1, 1, '2025-04-04 17:06:29', '病人自述9', '检查结果9', '药品信息9', '医生开方9', '医生建议9', 358.82, '2025-04-04 17:06:29', 2, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaodan` VALUES (10, '1681722389213', 1, 1, '2025-04-04 17:06:29', '病人自述10', '检查结果10', '药品信息10', '医生开方10', '医生建议10', 396.05, '2025-04-04 17:06:29', 2, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaodan` VALUES (11, '1681722389221', 3, 2, '2025-04-04 17:06:29', '病人自述11', '检查结果11', '药品信息11', '医生开方11', '医生建议11', 556.26, '2025-04-04 17:06:29', 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaodan` VALUES (12, '1681722389212', 1, 2, '2025-04-04 17:06:29', '病人自述12', '检查结果12', '药品信息12', '医生开方12', '医生建议12', 189.58, '2025-04-04 17:06:29', 2, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaodan` VALUES (13, '1681722389264', 3, 1, '2025-04-04 17:06:29', '病人自述13', '检查结果13', '药品信息13', '医生开方13', '医生建议13', 392.65, '2025-04-04 17:06:29', 2, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaodan` VALUES (14, '1681722389225', 3, 2, '2025-04-04 17:06:29', '病人自述14', '检查结果14', '药品信息14', '医生开方14', '医生建议14', 965.64, '2025-04-04 17:06:29', 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaodan` VALUES (15, '1681781857992', 4, 1, '2025-04-04 17:06:29', '<p>发的好地方和</p>', '<p>和规范化规范化规范化</p>', '<p>是的发送到发所发生的</p>', '<p>哼哼唧唧军军</p>', '<p>得粉身碎骨但是跟</p>', 999.00, '2025-04-04 17:06:29', 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaodan` VALUES (16, '1743051725733', 1, 4, '2025-03-27 13:02:11', '<p>1</p>', '<p>2</p>', '<p>3</p>', '<p>4</p>', '<p>5</p>', 200.00, '2025-03-28 00:00:00', 2, '2025-03-27 13:02:27', '2025-03-27 13:02:27');
INSERT INTO `yaodan` VALUES (17, '1743052302970', 1, 4, '2025-03-28 00:00:00', '<p>7</p>', '<p>8</p>', '<p>9</p>', '<p>7</p>', '<p>6</p>', 500.00, '2025-03-27 13:11:57', 2, '2025-03-27 13:12:00', '2025-03-27 13:12:00');

-- ----------------------------
-- Table structure for yaopin
-- ----------------------------
DROP TABLE IF EXISTS `yaopin`;
CREATE TABLE `yaopin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yaopin_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '药品名称  Search111 ',
  `yaopin_uuid_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '药品编号',
  `yaopin_photo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '药品照片',
  `yaopin_types` int NULL DEFAULT NULL COMMENT '药品类型 Search111',
  `yaopin_kucun_number` int NULL DEFAULT NULL COMMENT '药品库存',
  `yaopin_old_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '药品原价 ',
  `yaopin_new_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '现价 ',
  `yaopin_cangku` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '所属仓库 Search111',
  `yaopin_clicknum` int NULL DEFAULT NULL COMMENT '药品热度',
  `yaopin_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '药品介绍',
  `yaopin_jinji_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '禁忌',
  `yaopin_gongxiao_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '功效',
  `yaopin_shuomingshu_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '说明书 ',
  `shangxia_types` int NULL DEFAULT NULL COMMENT '是否上架 ',
  `yaopin_delete` int NULL DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '药品' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yaopin
-- ----------------------------
INSERT INTO `yaopin` VALUES (1, '药品名称1', '1681722389197', 'upload/yaopin1.jpg', 3, 101, 775.49, 325.51, '所属仓库1', 14, '药品介绍1', '禁忌1', '功效1', '说明书1', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin` VALUES (2, '药品名称2', '1681722389235', 'upload/yaopin2.jpg', 4, 98, 589.49, 445.38, '所属仓库2', 438, '药品介绍2', '禁忌2', '功效2', '说明书2', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin` VALUES (3, '药品名称3', '1681722389230', 'upload/yaopin3.jpg', 3, 103, 898.31, 133.54, '所属仓库3', 52, '药品介绍3', '禁忌3', '功效3', '说明书3', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin` VALUES (4, '药品名称4', '1681722389289', 'upload/yaopin4.jpg', 4, 104, 935.78, 133.92, '所属仓库4', 52, '药品介绍4', '禁忌4', '功效4', '说明书4', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin` VALUES (5, '药品名称5', '1681722389239', 'upload/yaopin5.jpg', 3, 105, 553.08, 337.25, '所属仓库5', 301, '药品介绍5', '禁忌5', '功效5', '说明书5', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin` VALUES (6, '药品名称6', '1681722389233', 'upload/yaopin6.jpg', 3, 106, 770.77, 131.16, '所属仓库6', 386, '药品介绍6', '禁忌6', '功效6', '说明书6', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin` VALUES (7, '药品名称7', '1681722389226', 'upload/yaopin7.jpg', 4, 107, 755.44, 241.66, '所属仓库7', 295, '药品介绍7', '禁忌7', '功效7', '说明书7', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin` VALUES (8, '药品名称8', '1681722389196', 'upload/yaopin8.jpg', 3, 108, 528.59, 334.59, '所属仓库8', 199, '药品介绍8', '禁忌8', '功效8', '说明书8', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin` VALUES (9, '药品名称9', '1681722389273', 'upload/yaopin9.jpg', 4, 109, 654.92, 184.71, '所属仓库9', 254, '药品介绍9', '禁忌9', '功效9', '说明书9', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin` VALUES (10, '药品名称10', '1681722389222', 'upload/yaopin10.jpg', 4, 1005, 682.66, 322.36, '所属仓库10', 497, '药品介绍10', '禁忌10', '功效10', '说明书10', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin` VALUES (11, '药品名称11', '1681722389204', 'upload/yaopin11.jpg', 3, 1011, 763.88, 130.52, '所属仓库11', 81, '药品介绍11', '禁忌11', '功效11', '说明书11', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin` VALUES (12, '药品名称12', '1681722389266', 'upload/yaopin12.jpg', 1, 1012, 512.39, 473.01, '所属仓库12', 331, '药品介绍12', '禁忌12', '功效12', '说明书12', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin` VALUES (13, '药品名称13', '1681722389223', 'upload/yaopin13.jpg', 4, 1013, 549.18, 24.19, '所属仓库13', 145, '药品介绍13', '禁忌13', '功效13', '说明书13', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin` VALUES (14, '药品名称14', '1681722389270', 'upload/yaopin14.jpg', 2, 1014, 760.92, 96.79, '所属仓库14', 384, '药品介绍14', '禁忌14', '功效14', '说明书14', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');

-- ----------------------------
-- Table structure for yaopin2
-- ----------------------------
DROP TABLE IF EXISTS `yaopin2`;
CREATE TABLE `yaopin2`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yaopin2_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '药品名称  Search111',
  `yaopin2_uuid_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '药品编号',
  `yaopin2_photo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '药品照片',
  `yaopin2_types` int NULL DEFAULT NULL COMMENT '药品类型 Search111',
  `yaopin2_kucun_number` int NULL DEFAULT NULL COMMENT '药品库存',
  `yaopin2_old_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '药品原价',
  `yaopin2_new_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '现价',
  `yaopin2_cangku` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '所属仓库 Search111',
  `yaopin2_clicknum` int NULL DEFAULT NULL COMMENT '药品热度',
  `yaopin2_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '药品介绍',
  `yaopin2_jinji_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '禁忌',
  `yaopin2_gongxiao_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '功效',
  `yaopin2_shuomingshu_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '说明书',
  `shangxia_types` int NULL DEFAULT NULL COMMENT '是否上架 ',
  `yaopin2_delete` int NULL DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '药品' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yaopin2
-- ----------------------------
INSERT INTO `yaopin2` VALUES (1, '菜品名称1', '1681722389197', '/upload/1747205564726.jpg', 1, 101, 775.49, 325.51, '所属仓库1', 14, '<p>药品介绍1</p>', '<p>禁忌1</p>', '<p>功效1</p>', '<p>说明书1</p>', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin2` VALUES (2, '菜品名称2', '1681722389235', '/upload/1747205552306.jpg', 1, 97, 589.49, 445.38, '所属仓库2', 442, '<p>药品介绍2</p>', '<p>禁忌2</p>', '<p>功效2</p>', '<p>说明书2</p>', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin2` VALUES (3, '菜品名称3', '1681722389230', '/upload/1747205540180.jpg', 1, 103, 898.31, 133.54, '所属仓库3', 52, '<p>药品介绍3</p>', '<p>禁忌3</p>', '<p>功效3</p>', '<p>说明书3</p>', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin2` VALUES (4, '菜品名称4', '1681722389289', '/upload/1747205529764.jpeg', 1, 103, 935.78, 133.92, '所属仓库4', 55, '<p>药品介绍4</p>', '<p>禁忌4</p>', '<p>功效4</p>', '<p>说明书4</p>', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin2` VALUES (5, '菜品名称5', '1681722389239', '/upload/1747205514185.jpg', 1, 105, 553.08, 337.25, '所属仓库5', 301, '<p>药品介绍5</p>', '<p>禁忌5</p>', '<p>功效5</p>', '<p>说明书5</p>', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin2` VALUES (6, '菜品名称6', '1681722389233', '/upload/1747205499980.jpg', 1, 106, 770.77, 131.16, '所属仓库6', 386, '<p>药品介绍6</p>', '<p>禁忌6</p>', '<p>功效6</p>', '<p>说明书6</p>', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin2` VALUES (7, '菜品名称7', '1681722389226', '/upload/1747205488363.jpeg', 1, 106, 755.44, 241.66, '所属仓库7', 296, '<p>药品介绍7</p>', '<p>禁忌7</p>', '<p>功效7</p>', '<p>说明书7</p>', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin2` VALUES (8, '菜品名称8', '1681722389196', '/upload/1747205475939.jpg', 1, 108, 528.59, 334.59, '所属仓库8', 199, '<p>药品介绍8</p>', '<p>禁忌8</p>', '<p>功效8</p>', '<p>说明书8</p>', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin2` VALUES (9, '菜品名称9', '1681722389273', '/upload/1747205465590.jpeg', 1, 109, 654.92, 184.71, '所属仓库9', 254, '<p>药品介绍9</p>', '<p>禁忌9</p>', '<p>功效9</p>', '<p>说明书9</p>', 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');

-- ----------------------------
-- Table structure for yaopin2_collection
-- ----------------------------
DROP TABLE IF EXISTS `yaopin2_collection`;
CREATE TABLE `yaopin2_collection`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin2_id` int NULL DEFAULT NULL COMMENT '药品',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `yaopin2_collection_types` int NULL DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '药品收藏' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yaopin2_collection
-- ----------------------------
INSERT INTO `yaopin2_collection` VALUES (16, 4, 2, 1, '2025-05-14 14:55:23', '2025-05-14 14:55:23');

-- ----------------------------
-- Table structure for yaopin2_commentback
-- ----------------------------
DROP TABLE IF EXISTS `yaopin2_commentback`;
CREATE TABLE `yaopin2_commentback`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin2_id` int NULL DEFAULT NULL COMMENT '药品',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `yaopin2_commentback_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '药品评价' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yaopin2_commentback
-- ----------------------------
INSERT INTO `yaopin2_commentback` VALUES (15, 2, 2, '哈哈哈哈哈', '2025-05-14 14:54:22', NULL, NULL, '2025-05-14 14:54:22');

-- ----------------------------
-- Table structure for yaopin2_order
-- ----------------------------
DROP TABLE IF EXISTS `yaopin2_order`;
CREATE TABLE `yaopin2_order`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin2_order_uuid_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单编号 Search111',
  `yaopin2_id` int NULL DEFAULT NULL COMMENT '药品',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `buy_number` int NULL DEFAULT NULL COMMENT '购买数量',
  `yaopin2_order_true_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '实付价格',
  `yaopin2_order_types` int NULL DEFAULT NULL COMMENT '订单类型 Search111',
  `yaopin2_order_payment_types` int NULL DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '药品订单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yaopin2_order
-- ----------------------------
INSERT INTO `yaopin2_order` VALUES (6, '1747205608134', 2, 2, 1, 445.38, 105, 1, '2025-05-14 14:53:28', '2025-05-14 14:53:28');
INSERT INTO `yaopin2_order` VALUES (7, '1747206316191', 7, 1, 1, 241.66, 101, 1, '2025-05-14 15:05:16', '2025-05-14 15:05:16');
INSERT INTO `yaopin2_order` VALUES (8, '1747206639099', 4, 1, 1, 133.92, 101, 1, '2025-05-14 15:10:39', '2025-05-14 15:10:39');

-- ----------------------------
-- Table structure for yaopin_collection
-- ----------------------------
DROP TABLE IF EXISTS `yaopin_collection`;
CREATE TABLE `yaopin_collection`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin_id` int NULL DEFAULT NULL COMMENT '药品',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `yaopin_collection_types` int NULL DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '药品收藏' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yaopin_collection
-- ----------------------------
INSERT INTO `yaopin_collection` VALUES (1, 1, 3, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_collection` VALUES (2, 2, 3, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_collection` VALUES (3, 3, 3, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_collection` VALUES (4, 4, 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_collection` VALUES (5, 5, 3, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_collection` VALUES (6, 6, 2, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_collection` VALUES (7, 7, 3, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_collection` VALUES (8, 8, 2, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_collection` VALUES (9, 9, 2, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_collection` VALUES (10, 10, 2, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_collection` VALUES (11, 11, 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_collection` VALUES (12, 12, 3, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_collection` VALUES (13, 13, 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_collection` VALUES (14, 14, 3, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_collection` VALUES (15, 10, 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');

-- ----------------------------
-- Table structure for yaopin_commentback
-- ----------------------------
DROP TABLE IF EXISTS `yaopin_commentback`;
CREATE TABLE `yaopin_commentback`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin_id` int NULL DEFAULT NULL COMMENT '药品',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `yaopin_commentback_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '药品评价' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yaopin_commentback
-- ----------------------------
INSERT INTO `yaopin_commentback` VALUES (1, 1, 2, '评价内容1', '2025-04-04 17:06:29', '回复信息1', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_commentback` VALUES (2, 2, 3, '评价内容2', '2025-04-04 17:06:29', '回复信息2', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_commentback` VALUES (3, 3, 2, '评价内容3', '2025-04-04 17:06:29', '回复信息3', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_commentback` VALUES (4, 4, 1, '评价内容4', '2025-04-04 17:06:29', '回复信息4', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_commentback` VALUES (5, 5, 2, '评价内容5', '2025-04-04 17:06:29', '回复信息5', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_commentback` VALUES (6, 6, 1, '评价内容6', '2025-04-04 17:06:29', '回复信息6', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_commentback` VALUES (7, 7, 3, '评价内容7', '2025-04-04 17:06:29', '回复信息7', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_commentback` VALUES (8, 8, 1, '评价内容8', '2025-04-04 17:06:29', '回复信息8', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_commentback` VALUES (9, 9, 2, '评价内容9', '2025-04-04 17:06:29', '回复信息9', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_commentback` VALUES (10, 10, 3, '评价内容10', '2025-04-04 17:06:29', '回复信息10', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_commentback` VALUES (11, 11, 1, '评价内容11', '2025-04-04 17:06:29', '回复信息11', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_commentback` VALUES (12, 12, 2, '评价内容12', '2025-04-04 17:06:29', '回复信息12', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_commentback` VALUES (13, 13, 3, '评价内容13', '2025-04-04 17:06:29', '回复信息13', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_commentback` VALUES (14, 14, 3, '评价内容14', '2025-04-04 17:06:29', '回复信息14', '2025-04-04 17:06:29', '2025-04-04 17:06:29');

-- ----------------------------
-- Table structure for yaopin_order
-- ----------------------------
DROP TABLE IF EXISTS `yaopin_order`;
CREATE TABLE `yaopin_order`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yaopin_order_uuid_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单编号 Search111 ',
  `yaopin_id` int NULL DEFAULT NULL COMMENT '药品',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `buy_number` int NULL DEFAULT NULL COMMENT '购买数量',
  `yaopin_order_true_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '实付价格',
  `yaopin_order_types` int NULL DEFAULT NULL COMMENT '订单类型 Search111 ',
  `yaopin_order_payment_types` int NULL DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '药品订单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yaopin_order
-- ----------------------------
INSERT INTO `yaopin_order` VALUES (1, '1681781317969', 2, 1, 2, 890.76, 101, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_order` VALUES (2, '1681781694587', 2, 4, 2, 890.76, 103, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_order` VALUES (3, '1723446979981', 10, 1, 1, 322.36, 101, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yaopin_order` VALUES (4, '1746794885316', 10, 2, 2, 644.72, 101, 1, '2025-05-09 20:48:05', '2025-05-09 20:48:05');
INSERT INTO `yaopin_order` VALUES (5, '1746795831777', 10, 1, 2, 644.72, 101, 1, '2025-05-09 21:03:52', '2025-05-09 21:03:52');

-- ----------------------------
-- Table structure for yayi
-- ----------------------------
DROP TABLE IF EXISTS `yayi`;
CREATE TABLE `yayi`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账户',
  `password` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '密码',
  `yayi_uuid_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '牙医编号 Search111 ',
  `yayi_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '牙医姓名 Search111 ',
  `yayi_phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '牙医手机号',
  `yayi_id_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '牙医身份证号',
  `yayi_photo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '牙医头像',
  `sex_types` int NULL DEFAULT NULL COMMENT '性别',
  `yayi_email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '牙医邮箱',
  `new_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '挂号费用',
  `zhiwei_types` int NULL DEFAULT NULL COMMENT '职位 Search111 ',
  `yayi_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '医生介绍',
  `yayi_shanchang_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '擅长',
  `yayi_rongyu_content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '所获荣誉',
  `jinyong_types` int NULL DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '牙医' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yayi
-- ----------------------------
INSERT INTO `yayi` VALUES (1, '医生1', '123456', '1681722389220', '医生姓名1', '17703786901', '410224199010102001', '/upload/1743050175697.jpg', 1, '1@qq.com', 415.52, 1, '<p>医生介绍1sdgdsgsdgsd恢复好得很</p>', '<p>擅长1经济纠纷大家都飞</p>', '<p>所获荣誉1地方梵蒂冈地方和</p>', 1, '2025-04-04 17:06:29');
INSERT INTO `yayi` VALUES (2, '医生2', '123456', '1681722389267', '医生姓名2', '17703786902', '410224199010102002', '/upload/1743050165953.jpg', 2, '2@qq.com', 586.68, 1, '<p>医生介绍2</p>', '<p>擅长2</p>', '<p>所获荣誉2</p>', 1, '2025-04-04 17:06:29');
INSERT INTO `yayi` VALUES (3, '医生3', '123456', '1681722389255', '医生姓名3', '17703786903', '410224199010102003', '/upload/1743050153127.jpeg', 2, '3@qq.com', 999.41, 2, '<p>医生介绍3</p>', '<p>擅长3</p>', '<p>所获荣誉3</p>', 2, '2025-04-04 17:06:29');
INSERT INTO `yayi` VALUES (4, '123', '123456', '1743050262139', '强强', '17375446658', '340321200002136998', '/upload/1743050293551.jpeg', 1, '2017122314330@qq.com', 20.00, 1, '<p>1</p>', '<p>2</p>', '<p>3</p>', 1, '2025-03-27 12:38:32');

-- ----------------------------
-- Table structure for yayi_collection
-- ----------------------------
DROP TABLE IF EXISTS `yayi_collection`;
CREATE TABLE `yayi_collection`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yayi_id` int NULL DEFAULT NULL COMMENT '牙医',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `yayi_collection_types` int NULL DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '牙医收藏' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yayi_collection
-- ----------------------------
INSERT INTO `yayi_collection` VALUES (1, 1, 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_collection` VALUES (2, 1, 3, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_collection` VALUES (3, 2, 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_collection` VALUES (4, 3, 3, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_collection` VALUES (5, 3, 2, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_collection` VALUES (6, 1, 3, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_collection` VALUES (7, 1, 2, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_collection` VALUES (8, 2, 2, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_collection` VALUES (10, 3, 2, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_collection` VALUES (11, 2, 3, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_collection` VALUES (12, 2, 2, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_collection` VALUES (14, 2, 2, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_collection` VALUES (15, 1, 4, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_collection` VALUES (16, 3, 1, 1, '2025-04-04 17:06:29', '2025-04-04 17:06:29');

-- ----------------------------
-- Table structure for yayi_commentback
-- ----------------------------
DROP TABLE IF EXISTS `yayi_commentback`;
CREATE TABLE `yayi_commentback`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yayi_id` int NULL DEFAULT NULL COMMENT '牙医',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `yayi_commentback_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '牙医评价' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yayi_commentback
-- ----------------------------
INSERT INTO `yayi_commentback` VALUES (1, 3, 2, '评价内容1', '2025-04-04 17:06:29', '回复信息1', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_commentback` VALUES (2, 2, 3, '评价内容2', '2025-04-04 17:06:29', '回复信息2', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_commentback` VALUES (3, 3, 2, '评价内容3', '2025-04-04 17:06:29', '回复信息3', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_commentback` VALUES (4, 3, 3, '评价内容4', '2025-04-04 17:06:29', '回复信息4', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_commentback` VALUES (5, 2, 1, '评价内容5', '2025-04-04 17:06:29', '回复信息5', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_commentback` VALUES (6, 3, 3, '评价内容6', '2025-04-04 17:06:29', '回复信息6', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_commentback` VALUES (7, 1, 3, '评价内容7', '2025-04-04 17:06:29', '回复信息7', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_commentback` VALUES (8, 1, 3, '评价内容8', '2025-04-04 17:06:29', '回复信息8', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_commentback` VALUES (9, 3, 2, '评价内容9', '2025-04-04 17:06:29', '回复信息9', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_commentback` VALUES (10, 2, 2, '评价内容10', '2025-04-04 17:06:29', '回复信息10', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_commentback` VALUES (11, 3, 1, '评价内容11', '2025-04-04 17:06:29', '回复信息11', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_commentback` VALUES (12, 2, 2, '评价内容12', '2025-04-04 17:06:29', '回复信息12', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_commentback` VALUES (13, 2, 1, '评价内容13', '2025-04-04 17:06:29', '回复信息13', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_commentback` VALUES (14, 2, 3, '评价内容14', '2025-04-04 17:06:29', '回复信息14', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_commentback` VALUES (15, 1, 1, '归档第三个', '2025-04-04 17:06:29', '发挥地方低功耗', '2025-04-04 17:06:29', '2025-04-04 17:06:29');
INSERT INTO `yayi_commentback` VALUES (16, 4, 1, '666666', '2025-03-27 13:03:35', '33333', '2025-03-27 13:03:56', '2025-03-27 13:03:35');

-- ----------------------------
-- Table structure for yayi_order
-- ----------------------------
DROP TABLE IF EXISTS `yayi_order`;
CREATE TABLE `yayi_order`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yayi_order_uuid_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单编号 Search111 ',
  `yayi_id` int NULL DEFAULT NULL COMMENT '牙医',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `yayi_order_yuyue_types` int NULL DEFAULT NULL COMMENT '预约类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `yayi_order_time` date NULL DEFAULT NULL COMMENT '预约日期',
  `yayi_order_types` int NULL DEFAULT NULL COMMENT '预约状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '牙医挂号' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yayi_order
-- ----------------------------
INSERT INTO `yayi_order` VALUES (1, '1681779985273', 1, 1, 101, '2025-04-04 17:06:29', '2025-04-04', 105, '2025-04-04 17:06:29');
INSERT INTO `yayi_order` VALUES (2, '1681781674677', 1, 4, 101, '2025-04-04 17:06:29', '2025-04-04', 101, '2025-04-04 17:06:29');
INSERT INTO `yayi_order` VALUES (3, '1681781708377', 1, 4, 101, '2025-04-04 17:06:29', '2025-04-04', 103, '2025-04-04 17:06:29');
INSERT INTO `yayi_order` VALUES (4, '1743051159995', 4, 1, 101, '2025-03-27 12:52:40', '2025-03-27', 105, '2025-03-27 12:52:40');
INSERT INTO `yayi_order` VALUES (5, '1743052212396', 4, 1, 102, '2025-03-27 13:10:12', '2025-03-27', 103, '2025-03-27 13:10:12');
INSERT INTO `yayi_order` VALUES (9, '1746797424704', 2, 2, 102, '2025-05-09 21:30:25', '2025-05-09', 101, '2025-05-09 21:30:25');
INSERT INTO `yayi_order` VALUES (14, '1746799573422', 3, 1, 102, '2025-05-09 22:06:13', '2025-05-09', 101, '2025-05-09 22:06:13');
INSERT INTO `yayi_order` VALUES (15, '1747207003442', 4, 1, 101, '2025-05-14 15:16:43', '2025-05-14', 101, '2025-05-14 15:16:43');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账户',
  `password` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `sex_types` int NULL DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '余额 ',
  `jinyong_types` int NULL DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1, '用户1', '123456', '1681722389298', '用户姓名11', '17703786901', '410224199010102001', '/upload/1747206248530.jpg', 1, '1@qq.com', 78605.01, 1, '2025-04-04 17:06:29');
INSERT INTO `yonghu` VALUES (2, '用户2', '123456', '1681722389293', '用户姓名2', '17703786902', '410224199010102002', '/upload/1743050220391.jpeg', 2, '2@qq.com', 331.22, 1, '2025-04-04 17:06:29');
INSERT INTO `yonghu` VALUES (3, '用户3', '123456', '1681722389223', '用户姓名3', '17703786903', '410224199010102003', '/upload/1743050212844.jpg', 2, '3@qq.com', 361.99, 1, '2025-04-04 17:06:29');
INSERT INTO `yonghu` VALUES (4, '用户4', '123456', '1681781628840', '张5', '17788889999', '340321200002136002', '/upload/1743050190785.jpg', 2, '5@qq.com', 98277.20, 2, '2025-04-04 17:06:29');

SET FOREIGN_KEY_CHECKS = 1;
