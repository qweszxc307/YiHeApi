/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : yihe1

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 02/03/2020 14:08:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accept_address
-- ----------------------------
DROP TABLE IF EXISTS `accept_address`;
CREATE TABLE `accept_address`  (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `c_id` int(20) UNSIGNED NOT NULL COMMENT '用户id',
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'openid',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '收货姓名',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '手机号码',
  `province` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '市',
  `district` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '县(区)',
  `street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '街道',
  `status` smallint(1) NULL DEFAULT NULL COMMENT '状态：(0默认，1不默认)',
  `create_time` timestamp(0) NOT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收货地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accept_address
-- ----------------------------
INSERT INTO `accept_address` VALUES (1, 6, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', 'wang2', '18722334455', '山西省', '大同市', '新荣区', 'fdsfsdfewfrew2', 1, '2019-11-23 22:20:17', '2019-12-16 14:37:42');
INSERT INTO `accept_address` VALUES (3, 6, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', 'rewr3', '18755662233', '黑龙江省', '黑河市', '北安市', 'rewrwerwr', 0, '2019-11-23 22:52:57', '2019-12-16 14:37:45');
INSERT INTO `accept_address` VALUES (5, 6, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', '11111', '12345678910', '北京市', '市辖区', '东城区', 'vbdfhfsghsfdtfghbchfgh', 1, '2019-11-26 15:27:01', '2019-11-26 15:27:01');
INSERT INTO `accept_address` VALUES (7, 10, 'o7sMs5IYarmR7dAeP-WUDtPKH1mI', '马永凯', '15150900060', '上海市', '市辖区', '嘉定区', '好好说说吧', 0, '2019-11-29 17:18:59', '2019-11-29 17:19:02');
INSERT INTO `accept_address` VALUES (8, 7, 'o7sMs5BxWyqTouC8PFnRgyxh6VOI', '张文浩', '18221865646', '北京市', '市辖区', '东城区', '敬民谋', 0, '2019-12-11 14:44:40', '2019-12-23 14:27:02');
INSERT INTO `accept_address` VALUES (9, 7, 'o7sMs5BxWyqTouC8PFnRgyxh6VOI', '来看看咯', '18221865646', '北京市', '市辖区', '东城区', '哦婆婆哦婆婆哦哦哦', 1, '2019-12-16 14:29:47', '2019-12-23 14:27:02');

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '区域表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES (1, '华北区');
INSERT INTO `area` VALUES (2, '东北区');
INSERT INTO `area` VALUES (3, '华中区');
INSERT INTO `area` VALUES (4, '华南区');
INSERT INTO `area` VALUES (5, '西南区');
INSERT INTO `area` VALUES (6, '西北区');
INSERT INTO `area` VALUES (7, '华东区');

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌名',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_uid` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_uid` int(11) NULL DEFAULT NULL COMMENT '修改人',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '序号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '品牌表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (1, 'b_test1', 0, '2019-11-14 12:36:27', 1, '2019-12-19 17:39:45', 1, 1);
INSERT INTO `brand` VALUES (2, 'b_test2', 0, '2019-11-14 12:36:47', 1, '2019-12-19 17:39:50', 1, 2);
INSERT INTO `brand` VALUES (3, 'b_test3', 0, '2019-11-14 12:36:57', 1, '2019-12-19 17:39:55', 1, 3);
INSERT INTO `brand` VALUES (4, 'b_test4', 0, '2019-11-14 15:59:07', 1, '2019-12-19 17:39:59', 1, 4);

-- ----------------------------
-- Table structure for brand_image
-- ----------------------------
DROP TABLE IF EXISTS `brand_image`;
CREATE TABLE `brand_image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `b_id` int(11) NULL DEFAULT NULL COMMENT '品牌id',
  `img_id` int(11) NULL DEFAULT NULL COMMENT '图片id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '品牌_图片关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand_image
-- ----------------------------
INSERT INTO `brand_image` VALUES (1, 1, 308);
INSERT INTO `brand_image` VALUES (2, 2, 309);
INSERT INTO `brand_image` VALUES (3, 3, 310);
INSERT INTO `brand_image` VALUES (4, 4, 311);

-- ----------------------------
-- Table structure for carriage
-- ----------------------------
DROP TABLE IF EXISTS `carriage`;
CREATE TABLE `carriage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '策略名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_uid` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_uid` int(11) NULL DEFAULT NULL COMMENT '修改人id',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '序号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品运费策略信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carriage
-- ----------------------------
INSERT INTO `carriage` VALUES (4, 'c_test1', '2019-11-17 16:06:52', 1, '2019-11-19 20:46:45', 1, 1);
INSERT INTO `carriage` VALUES (5, 'c_test2', '2019-11-19 20:46:54', 1, '2019-11-19 20:46:54', 1, 2);

-- ----------------------------
-- Table structure for carriage_area_city
-- ----------------------------
DROP TABLE IF EXISTS `carriage_area_city`;
CREATE TABLE `carriage_area_city`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `city_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区id',
  `config_id` int(11) NULL DEFAULT NULL COMMENT '运费策略配置id',
  `carriage_id` int(11) NULL DEFAULT NULL COMMENT '运费策略模板id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '运费策略区域配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carriage_area_city
-- ----------------------------
INSERT INTO `carriage_area_city` VALUES (25, '1', 7, 4);
INSERT INTO `carriage_area_city` VALUES (26, '2', 7, 4);
INSERT INTO `carriage_area_city` VALUES (27, '3', 7, 4);
INSERT INTO `carriage_area_city` VALUES (28, '4', 7, 4);
INSERT INTO `carriage_area_city` VALUES (29, '5', 7, 4);

-- ----------------------------
-- Table structure for carriage_config
-- ----------------------------
DROP TABLE IF EXISTS `carriage_config`;
CREATE TABLE `carriage_config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `c_id` int(11) NULL DEFAULT NULL COMMENT '策略id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '策略名称',
  `free_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '满免价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '运费策略配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carriage_config
-- ----------------------------
INSERT INTO `carriage_config` VALUES (7, 4, '1', 12.00);
INSERT INTO `carriage_config` VALUES (8, 4, 'ewwe', 234.00);
INSERT INTO `carriage_config` VALUES (9, 4, '1', 112.00);
INSERT INTO `carriage_config` VALUES (10, 4, '1', 1.00);
INSERT INTO `carriage_config` VALUES (16, 4, '2121', 321.00);
INSERT INTO `carriage_config` VALUES (18, 5, '12121', 122121.00);
INSERT INTO `carriage_config` VALUES (19, 5, '3232', 122121.00);

-- ----------------------------
-- Table structure for carriage_config_price
-- ----------------------------
DROP TABLE IF EXISTS `carriage_config_price`;
CREATE TABLE `carriage_config_price`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `s_num` int(11) NULL DEFAULT NULL COMMENT '起始区间数量',
  `e_num` int(11) NULL DEFAULT NULL COMMENT '结束区间数量',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `config_id` int(11) NULL DEFAULT NULL COMMENT '运费配置表id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '运费策略价格表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carriage_config_price
-- ----------------------------
INSERT INTO `carriage_config_price` VALUES (12, 1, 1, 1.00, 9);
INSERT INTO `carriage_config_price` VALUES (13, 1, 1, 1.00, 10);
INSERT INTO `carriage_config_price` VALUES (24, 1, 1, 123.00, 16);
INSERT INTO `carriage_config_price` VALUES (25, 123, 32, 1321.00, 16);
INSERT INTO `carriage_config_price` VALUES (51, 1, 1, 1.00, 18);
INSERT INTO `carriage_config_price` VALUES (52, 2, 2, 2.00, 18);
INSERT INTO `carriage_config_price` VALUES (53, 3, 3, 3.00, 18);
INSERT INTO `carriage_config_price` VALUES (54, 1, 1, 1.00, 19);
INSERT INTO `carriage_config_price` VALUES (55, 2, 2, 2.00, 19);
INSERT INTO `carriage_config_price` VALUES (71, 1, 12, 12.00, 7);
INSERT INTO `carriage_config_price` VALUES (72, 13, 20, 10.00, 7);
INSERT INTO `carriage_config_price` VALUES (73, 21, 999, 5.00, 7);
INSERT INTO `carriage_config_price` VALUES (74, 1, 24, 32.00, 8);
INSERT INTO `carriage_config_price` VALUES (75, 25, 34, 54.00, 8);
INSERT INTO `carriage_config_price` VALUES (76, 35, 31, 32.00, 8);

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `area_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '当前地名的编码',
  `area_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '地名',
  `parent_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '上级地名的编码',
  `aid` int(11) NULL DEFAULT NULL COMMENT '区域id',
  `city_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'city_id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3524 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '省，市，区，联动表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, '110000', '北京市', '0', 1, 'b69039ed5e2549ed8270318d7dc34dcd');
INSERT INTO `city` VALUES (2, '120000', '天津市', '0', 1, '322b2d3f862243f3ba35391974c8a4e2');
INSERT INTO `city` VALUES (3, '130000', '河北省', '0', 1, '5459efcfb33448449c5c5bab0cf14dbc');
INSERT INTO `city` VALUES (4, '140000', '山西省', '0', 1, 'f8a645d325ab44938ded9d0593f73a32');
INSERT INTO `city` VALUES (5, '150000', '内蒙古自治区', '0', 1, '47a278dbdf544634949a085ad926bfbb');
INSERT INTO `city` VALUES (6, '210000', '辽宁省', '0', 2, '2434b09bcac74ccf983b006e5f7b43b8');
INSERT INTO `city` VALUES (7, '220000', '吉林省', '0', 2, 'b54b9349d2744db4a637d1ee637b7078');
INSERT INTO `city` VALUES (8, '230000', '黑龙江省', '0', 2, '4e4444068e524af7a47c038fa003d66b');
INSERT INTO `city` VALUES (9, '310000', '上海市', '0', 7, 'ea440f837a684a33919f94254d77a744');
INSERT INTO `city` VALUES (10, '320000', '江苏省', '0', 7, 'a05848bf17f544fd92163297793a405f');
INSERT INTO `city` VALUES (11, '330000', '浙江省', '0', 7, '5e9f827bdf594f679c6c87d68e1b4681');
INSERT INTO `city` VALUES (12, '340000', '安徽省', '0', 7, '5d7b100a03f34fd29b840cec393838f3');
INSERT INTO `city` VALUES (13, '350000', '福建省', '0', 7, '1236a53315414204b190229482f20f30');
INSERT INTO `city` VALUES (14, '360000', '江西省', '0', 7, '90ec9676ad5a4fd999e4d2f56bc957f9');
INSERT INTO `city` VALUES (15, '370000', '山东省', '0', 7, '5fde057c5932423396673701b93aff71');
INSERT INTO `city` VALUES (16, '410000', '河南省', '0', 3, 'ebbd24eaf06b496b9b921cef4bb1c294');
INSERT INTO `city` VALUES (17, '420000', '湖北省', '0', 3, '8b58df5eb7d14d76a527415890fb73ad');
INSERT INTO `city` VALUES (18, '430000', '湖南省', '0', 3, '61d7fa0dd25f4024aecedf749a981e0d');
INSERT INTO `city` VALUES (19, '440000', '广东省', '0', 4, '339c68cf5f93461980bb7da2cdaa342c');
INSERT INTO `city` VALUES (20, '450000', '广西壮族自治区', '0', 4, '9c072d128edd43378d279de12758f90d');
INSERT INTO `city` VALUES (21, '460000', '海南省', '0', 4, 'a6799530ac564b64a69d741408ef79e9');
INSERT INTO `city` VALUES (22, '500000', '重庆市', '0', 5, 'da152527a2fd4fc38d7153cab2781f41');
INSERT INTO `city` VALUES (23, '510000', '四川省', '0', 5, '6a8ea93488764102b1bc7bb3a09ac6b8');
INSERT INTO `city` VALUES (24, '520000', '贵州省', '0', 5, 'ca3ce2e564d6402b9835436bc956e691');
INSERT INTO `city` VALUES (25, '530000', '云南省', '0', 5, 'b101a4c18fca452085df6ca7ddb95c03');
INSERT INTO `city` VALUES (26, '540000', '西藏自治区', '0', 5, '54a85222aede4a4da8efb2a357a6e75e');
INSERT INTO `city` VALUES (27, '610000', '陕西省', '0', 6, 'e0ac1325514842539e0223d1391fa616');
INSERT INTO `city` VALUES (28, '620000', '甘肃省', '0', 6, 'd74dc35d7e90464eb56c11c804184124');
INSERT INTO `city` VALUES (29, '630000', '青海省', '0', 6, '7fe3ccc4aa584808b8b889b6f2d58d5f');
INSERT INTO `city` VALUES (30, '640000', '宁夏回族自治区', '0', 6, 'ce6236a135b3439cb54ab1c0bbbbea14');
INSERT INTO `city` VALUES (31, '650000', '新疆维吾尔自治区', '0', 6, 'a947e34090fd47f991abd41b0c99ecf4');
INSERT INTO `city` VALUES (32, '710000', '台湾省', '0', 0, NULL);
INSERT INTO `city` VALUES (33, '810000', '香港特别行政区', '0', 0, NULL);
INSERT INTO `city` VALUES (34, '820000', '澳门特别行政区', '0', 0, NULL);
INSERT INTO `city` VALUES (35, '110100', '市辖区', '110000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (37, '120100', '市辖区', '120000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (39, '130100', '石家庄市', '130000', NULL, '5c982d9625274282a0ca610a2e36bf2d');
INSERT INTO `city` VALUES (40, '130200', '唐山市', '130000', NULL, 'f592e51d786148328062de37e6c65c2a');
INSERT INTO `city` VALUES (41, '130300', '秦皇岛市', '130000', NULL, '9fe9845ee25c4075bb4aed30cedb2481');
INSERT INTO `city` VALUES (42, '130400', '邯郸市', '130000', NULL, 'bdb4df4a50af40cc8572a2407d4c09b7');
INSERT INTO `city` VALUES (43, '130500', '邢台市', '130000', NULL, '8a844e3d129a4fd4b5b7c9cf8dda6b53');
INSERT INTO `city` VALUES (44, '130600', '保定市', '130000', NULL, '0556b653051846dc85175ab6c54dda90');
INSERT INTO `city` VALUES (45, '130700', '张家口市', '130000', NULL, '807e30c9a8dc45a892784794668e062c');
INSERT INTO `city` VALUES (46, '130800', '承德市', '130000', NULL, '0f93ca03c15744848423fb91875fd8dc');
INSERT INTO `city` VALUES (47, '130900', '沧州市', '130000', NULL, '0ff27bcf4e394136a2f6678d19487aba');
INSERT INTO `city` VALUES (48, '131000', '廊坊市', '130000', NULL, '3b8330c4aa284130a25bf16f34a0b442');
INSERT INTO `city` VALUES (49, '131100', '衡水市', '130000', NULL, '882cc8ffca1c4f26af656c4146fb9df2');
INSERT INTO `city` VALUES (50, '140100', '太原市', '140000', NULL, '545fbb987d7548018bf2ced624308f37');
INSERT INTO `city` VALUES (51, '140200', '大同市', '140000', NULL, '62b0ab47481243da835a51925fd10057');
INSERT INTO `city` VALUES (52, '140300', '阳泉市', '140000', NULL, 'bfb445c737264a87ac705be31fb5c288');
INSERT INTO `city` VALUES (53, '140400', '长治市', '140000', NULL, '9e047f62c6424ce2ad8490fa9782fb94');
INSERT INTO `city` VALUES (54, '140500', '晋城市', '140000', NULL, '2574afb23f2748a99004a98f744f83f3');
INSERT INTO `city` VALUES (55, '140600', '朔州市', '140000', NULL, 'c9bffa6324ea44dfbd2be750e819ca65');
INSERT INTO `city` VALUES (56, '140700', '晋中市', '140000', NULL, '28f04d0ab0694367a400daed0c798189');
INSERT INTO `city` VALUES (57, '140800', '运城市', '140000', NULL, 'e547f4bcfb9646a18aa15f56c92dc9d4');
INSERT INTO `city` VALUES (58, '140900', '忻州市', '140000', NULL, '929c78b60285432aa07b5a7029c95e7f');
INSERT INTO `city` VALUES (59, '141000', '临汾市', '140000', NULL, '8a3e52bf8b474c5c9f85164a4390b762');
INSERT INTO `city` VALUES (60, '141100', '吕梁市', '140000', NULL, 'e82e6e31691a4a04872ccc57993b75e8');
INSERT INTO `city` VALUES (61, '150100', '呼和浩特市', '150000', NULL, '49e26e38b96f4b748354014673a1cbed');
INSERT INTO `city` VALUES (62, '150200', '包头市', '150000', NULL, 'f51c0c6cdcb1405daa40675ebb990f81');
INSERT INTO `city` VALUES (63, '150300', '乌海市', '150000', NULL, 'ea0098b0374f4038bf96f79f23175750');
INSERT INTO `city` VALUES (64, '150400', '赤峰市', '150000', NULL, 'c789e4c9cb87428c94e2b4831858f936');
INSERT INTO `city` VALUES (65, '150500', '通辽市', '150000', NULL, '0dfc80db51234ee3ac0a94eb1302b151');
INSERT INTO `city` VALUES (66, '150600', '鄂尔多斯市', '150000', NULL, '3058f684ab2343f2838f195c13000005');
INSERT INTO `city` VALUES (67, '150700', '呼伦贝尔市', '150000', NULL, '02cce3cfcce24c0fb0011f5ba7d5665f');
INSERT INTO `city` VALUES (68, '150800', '巴彦淖尔市', '150000', NULL, 'e8e82c8f6c25464199dc97c0b132638a');
INSERT INTO `city` VALUES (69, '150900', '乌兰察布市', '150000', NULL, '51e8a0ea8c244aa7bf794032c4439f6d');
INSERT INTO `city` VALUES (70, '152200', '兴安盟', '150000', NULL, '4191def8ee7844c4a14a8958301168c3');
INSERT INTO `city` VALUES (71, '152500', '锡林郭勒盟', '150000', NULL, 'e3b867fe14f04e24a913b2fec1013050');
INSERT INTO `city` VALUES (72, '152900', '阿拉善盟', '150000', NULL, '170b8a42eac847879692c84ebfa08e57');
INSERT INTO `city` VALUES (73, '210100', '沈阳市', '210000', NULL, '40401db234c94218a6e915800affc3f8');
INSERT INTO `city` VALUES (74, '210200', '大连市', '210000', NULL, '3f0fc282c2124129a04d78d839f4d4da');
INSERT INTO `city` VALUES (75, '210300', '鞍山市', '210000', NULL, 'a5016ec8827847afb1d982f746784c7e');
INSERT INTO `city` VALUES (76, '210400', '抚顺市', '210000', NULL, '4c0ccf57113e4488b4f61256f738400c');
INSERT INTO `city` VALUES (77, '210500', '本溪市', '210000', NULL, 'dae09380214b45f6aa31118c292f5183');
INSERT INTO `city` VALUES (78, '210600', '丹东市', '210000', NULL, '66ab09cce39b4fcdb26c8958d7c4a765');
INSERT INTO `city` VALUES (79, '210700', '锦州市', '210000', NULL, 'ae325040bd6044e2b083fa6321b4d36e');
INSERT INTO `city` VALUES (80, '210800', '营口市', '210000', NULL, 'bb12f95740bd41b1820d3f7f8112bbe5');
INSERT INTO `city` VALUES (81, '210900', '阜新市', '210000', NULL, 'ec7e22eb39c74acc8632be2fd28268e1');
INSERT INTO `city` VALUES (82, '211000', '辽阳市', '210000', NULL, '7fe8da7ff7d9488fb3700ed34b37cf7a');
INSERT INTO `city` VALUES (83, '211100', '盘锦市', '210000', NULL, '91f555424aa142e7af2fdb9e8a1fc49b');
INSERT INTO `city` VALUES (84, '211200', '铁岭市', '210000', NULL, 'bc4ac542cab04aacb847860505de81a1');
INSERT INTO `city` VALUES (85, '211300', '朝阳市', '210000', NULL, 'e185fd06e65d4458b23edbf85c03adfe');
INSERT INTO `city` VALUES (86, '211400', '葫芦岛市', '210000', NULL, '4b28b34d6e674f1e9de9d2912d542135');
INSERT INTO `city` VALUES (87, '220100', '长春市', '220000', NULL, '9ebe9826a95b4119bb5bd4863d38c02d');
INSERT INTO `city` VALUES (88, '220200', '吉林市', '220000', NULL, 'dc8951efa2fa4418ab17707d294f5d44');
INSERT INTO `city` VALUES (89, '220300', '四平市', '220000', NULL, 'ca79883b866e4ae7adead5187d3336c7');
INSERT INTO `city` VALUES (90, '220400', '辽源市', '220000', NULL, '70325ef2e871411b8086794af0f35f1d');
INSERT INTO `city` VALUES (91, '220500', '通化市', '220000', NULL, 'f96b0c3d88b94e29b1e96dc80a905df2');
INSERT INTO `city` VALUES (92, '220600', '白山市', '220000', NULL, 'f4de12432cb34bcda803adcadaa531e4');
INSERT INTO `city` VALUES (93, '220700', '松原市', '220000', NULL, '3f6538baa4694c2db11f98f87a6f9265');
INSERT INTO `city` VALUES (94, '220800', '白城市', '220000', NULL, '6fe4cfd7d8cc461cb5b4a085539f79f0');
INSERT INTO `city` VALUES (95, '222400', '延边朝鲜族自治州', '220000', NULL, '56d6dcfac4df435bb4d0686baa9cbcee');
INSERT INTO `city` VALUES (96, '230100', '哈尔滨市', '230000', NULL, 'f690351e77de4c45bd6346792d6396b0');
INSERT INTO `city` VALUES (97, '230200', '齐齐哈尔市', '230000', NULL, '33ca12ad316e4665a193e038f4b6b030');
INSERT INTO `city` VALUES (98, '230300', '鸡西市', '230000', NULL, '3d72bd94746d4f2d9543b7a2006763f7');
INSERT INTO `city` VALUES (99, '230400', '鹤岗市', '230000', NULL, 'add8dda278ea4f31993cfeb140d7f5cb');
INSERT INTO `city` VALUES (100, '230500', '双鸭山市', '230000', NULL, 'bc62140ba86445e8a3f594f98a0d816b');
INSERT INTO `city` VALUES (101, '230600', '大庆市', '230000', NULL, '70586960c10f4119893521c990edc880');
INSERT INTO `city` VALUES (102, '230700', '伊春市', '230000', NULL, '4275dd5fad8946858aff31829ccbe5c2');
INSERT INTO `city` VALUES (103, '230800', '佳木斯市', '230000', NULL, 'eb3f5cda885e49dba208d845d105b01c');
INSERT INTO `city` VALUES (104, '230900', '七台河市', '230000', NULL, 'cb026f894a5747bcbf291a7313f40415');
INSERT INTO `city` VALUES (105, '231000', '牡丹江市', '230000', NULL, 'a0421e350ec14eedabef868b88c6c03f');
INSERT INTO `city` VALUES (106, '231100', '黑河市', '230000', NULL, '093d5ae327434788ac235e1c8ef1995b');
INSERT INTO `city` VALUES (107, '231200', '绥化市', '230000', NULL, '56b8194ab2ef40a6993db81582e20010');
INSERT INTO `city` VALUES (108, '232700', '大兴安岭地区', '230000', NULL, '85743825e1ea4059820abed9b3ac2646');
INSERT INTO `city` VALUES (109, '310100', '市辖区', '310000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (111, '320100', '南京市', '320000', NULL, 'a88ca5bfbb9b4454887f4064e6c72c39');
INSERT INTO `city` VALUES (112, '320200', '无锡市', '320000', NULL, 'a3ea3f1c86854a629ed288366169d511');
INSERT INTO `city` VALUES (113, '320300', '徐州市', '320000', NULL, '9b6172ac276d4dbabfd968ba9b491e1c');
INSERT INTO `city` VALUES (114, '320400', '常州市', '320000', NULL, '29ef6eba4e9b4b2bbc36f9d6cb18267c');
INSERT INTO `city` VALUES (115, '320500', '苏州市', '320000', NULL, '10b3226a272c43d4ad230430cabf8e70');
INSERT INTO `city` VALUES (116, '320600', '南通市', '320000', NULL, 'ed6eee41bf304549b70e086369210ba8');
INSERT INTO `city` VALUES (117, '320700', '连云港市', '320000', NULL, '9275570bcdbb44a1bfd70c354c8e90ae');
INSERT INTO `city` VALUES (118, '320800', '淮安市', '320000', NULL, 'ba28bef1493c4d48a92dfa2d3155fbdc');
INSERT INTO `city` VALUES (119, '320900', '盐城市', '320000', NULL, 'bf950a5074b9443f80482adc8d14c0a4');
INSERT INTO `city` VALUES (120, '321000', '扬州市', '320000', NULL, 'd457b515c9bf4368ade8407e3653624c');
INSERT INTO `city` VALUES (121, '321100', '镇江市', '320000', NULL, '26abaf7fc3754451a3130087ec12aeba');
INSERT INTO `city` VALUES (122, '321200', '泰州市', '320000', NULL, '17fb9c56bd41410a9ff41a13bb165b8c');
INSERT INTO `city` VALUES (123, '321300', '宿迁市', '320000', NULL, '18d0273f9c2c4703af3586ea80dc63ea');
INSERT INTO `city` VALUES (124, '330100', '杭州市', '330000', NULL, '7182bd13ee094d70bf238f1509ba8bb1');
INSERT INTO `city` VALUES (125, '330200', '宁波市', '330000', NULL, 'a042f8932d2b41c1911572291236d3ae');
INSERT INTO `city` VALUES (126, '330300', '温州市', '330000', NULL, 'b69f65de201f423a9889c53f5b40d60a');
INSERT INTO `city` VALUES (127, '330400', '嘉兴市', '330000', NULL, '5c38c775d0c443cf92c9b22cec923cc2');
INSERT INTO `city` VALUES (128, '330500', '湖州市', '330000', NULL, '72c498d7dfc14ce39e3d3e97702a131d');
INSERT INTO `city` VALUES (129, '330600', '绍兴市', '330000', NULL, 'a66cb45ad8b7477289da6c63ad8d2e6c');
INSERT INTO `city` VALUES (130, '330700', '金华市', '330000', NULL, 'd0382b37309a440ba99868054e92d7e3');
INSERT INTO `city` VALUES (131, '330800', '衢州市', '330000', NULL, '72af8b73551a4c5eb509b45c94dac6bb');
INSERT INTO `city` VALUES (132, '330900', '舟山市', '330000', NULL, '093e85aba655429dbbee4fe2e5203c7d');
INSERT INTO `city` VALUES (133, '331000', '台州市', '330000', NULL, '38379c02c44c4dc6bb8226929dcafdf3');
INSERT INTO `city` VALUES (134, '331100', '丽水市', '330000', NULL, '2052fd70cf204b01b9683de5c2f49436');
INSERT INTO `city` VALUES (135, '340100', '合肥市', '340000', NULL, '2236340918d04a21beaf56183dd851f7');
INSERT INTO `city` VALUES (136, '340200', '芜湖市', '340000', NULL, 'e5f7bf9247134e79a9896e5b07624382');
INSERT INTO `city` VALUES (137, '340300', '蚌埠市', '340000', NULL, 'c9ec2d902add48f4b93cf84deaf3975f');
INSERT INTO `city` VALUES (138, '340400', '淮南市', '340000', NULL, '428f8ea41aad435991f7d612b44765dd');
INSERT INTO `city` VALUES (139, '340500', '马鞍山市', '340000', NULL, '3f5fb893c56b4204bce04a9c576bba9e');
INSERT INTO `city` VALUES (140, '340600', '淮北市', '340000', NULL, '109ad8ff28b94c3183f3bc565b31869c');
INSERT INTO `city` VALUES (141, '340700', '铜陵市', '340000', NULL, '3ff65e0911144a2cb848a1910c3eab81');
INSERT INTO `city` VALUES (142, '340800', '安庆市', '340000', NULL, 'aceac87cef014ef2921310ba564c11d1');
INSERT INTO `city` VALUES (143, '341000', '黄山市', '340000', NULL, '3a73615b11a84adc9a800a71bb2a178b');
INSERT INTO `city` VALUES (144, '341100', '滁州市', '340000', NULL, 'b77ff1b3dd7c47eaaa64649328133c3c');
INSERT INTO `city` VALUES (145, '341200', '阜阳市', '340000', NULL, 'afaff808b4014550b35b6eb23c633c2a');
INSERT INTO `city` VALUES (146, '341300', '宿州市', '340000', NULL, '76552ec978304f08b10f5bd90a0ed8ff');
INSERT INTO `city` VALUES (147, '341400', '巢湖市', '340000', NULL, '7883576d97114144b381c37c02a07471');
INSERT INTO `city` VALUES (148, '341500', '六安市', '340000', NULL, 'd51eed1697c947b7b7053544ecb81dc3');
INSERT INTO `city` VALUES (149, '341600', '亳州市', '340000', NULL, '833f8241994a496495f9545fec1ddf20');
INSERT INTO `city` VALUES (150, '341700', '池州市', '340000', NULL, '53a789881d4741e980c81973fd6e8d43');
INSERT INTO `city` VALUES (151, '341800', '宣城市', '340000', NULL, '357e8d369afa4f948cf714adb824ac00');
INSERT INTO `city` VALUES (152, '350100', '福州市', '350000', NULL, 'b28d51ab2b9d4abba1be0424735b29fd');
INSERT INTO `city` VALUES (153, '350200', '厦门市', '350000', NULL, 'cb62fec2d04b4744b4ae0fd35a4bd949');
INSERT INTO `city` VALUES (154, '350300', '莆田市', '350000', NULL, 'e8c89e42b0894a228d285e54a86c7a1e');
INSERT INTO `city` VALUES (155, '350400', '三明市', '350000', NULL, '6674f97cf3504f9695526f6d73f7d220');
INSERT INTO `city` VALUES (156, '350500', '泉州市', '350000', NULL, '92d9fed678ec4d01be8206393246e8e3');
INSERT INTO `city` VALUES (157, '350600', '漳州市', '350000', NULL, '91ddb6f2bccf473dbe4a6af877e66355');
INSERT INTO `city` VALUES (158, '350700', '南平市', '350000', NULL, '2fe1043aa172443389a9494422f874b8');
INSERT INTO `city` VALUES (159, '350800', '龙岩市', '350000', NULL, '08f5b5f2fa194eef89582de112cc8cb2');
INSERT INTO `city` VALUES (160, '350900', '宁德市', '350000', NULL, 'd942b58206954dd6b748174d3853c975');
INSERT INTO `city` VALUES (161, '360100', '南昌市', '360000', NULL, '21fcba333bc24e779082586c4c79969d');
INSERT INTO `city` VALUES (162, '360200', '景德镇市', '360000', NULL, 'ff70856f68ce435290f2aa51a04710b3');
INSERT INTO `city` VALUES (163, '360300', '萍乡市', '360000', NULL, 'eff6b1edf17847f8b93fe12ffbd10642');
INSERT INTO `city` VALUES (164, '360400', '九江市', '360000', NULL, '4be48f52e66f4a4490067a0578eb768c');
INSERT INTO `city` VALUES (165, '360500', '新余市', '360000', NULL, '2e5d7e940fa543c8afb84e10f5ffb178');
INSERT INTO `city` VALUES (166, '360600', '鹰潭市', '360000', NULL, '80eddfd30d0f4275a57caa4989a16169');
INSERT INTO `city` VALUES (167, '360700', '赣州市', '360000', NULL, '73f791e1ce4f48e29daf9a8e83b4fc65');
INSERT INTO `city` VALUES (168, '360800', '吉安市', '360000', NULL, '6947631f52b849e1ba4f2bbc69d9f2c8');
INSERT INTO `city` VALUES (169, '360900', '宜春市', '360000', NULL, '586554fbb9764a4e80aeefd700369183');
INSERT INTO `city` VALUES (170, '361000', '抚州市', '360000', NULL, '8656b38aaaa54973b8835692b2f8e6dc');
INSERT INTO `city` VALUES (171, '361100', '上饶市', '360000', NULL, 'b9dd9ff598a84d6d8d04b9857ca99d97');
INSERT INTO `city` VALUES (172, '370100', '济南市', '370000', NULL, '2089241b08e74071afd7da6270c8a6b4');
INSERT INTO `city` VALUES (173, '370200', '青岛市', '370000', NULL, 'fbfd71b2c0f74e718c646e90284da236');
INSERT INTO `city` VALUES (174, '370300', '淄博市', '370000', NULL, '1715b2839b8940d3b8b686bceb890577');
INSERT INTO `city` VALUES (175, '370400', '枣庄市', '370000', NULL, 'ed9a3763a9844604afee8a96089681e5');
INSERT INTO `city` VALUES (176, '370500', '东营市', '370000', NULL, '61c2fba9a65c4c2da8bb312d1a7850d3');
INSERT INTO `city` VALUES (177, '370600', '烟台市', '370000', NULL, 'ed11c97c0bb0485aa1719a2d48cbc2a3');
INSERT INTO `city` VALUES (178, '370700', '潍坊市', '370000', NULL, '387ea29f182d403580d84c2ede1311ac');
INSERT INTO `city` VALUES (179, '370800', '济宁市', '370000', NULL, '4f5b975893844b5a89fa27c0e11b7c41');
INSERT INTO `city` VALUES (180, '370900', '泰安市', '370000', NULL, '465eb6b071404ddfaeb6b03f789609c9');
INSERT INTO `city` VALUES (181, '371000', '威海市', '370000', NULL, 'f196a3b905474cb3a9ab0e91944d9d41');
INSERT INTO `city` VALUES (182, '371100', '日照市', '370000', NULL, '32f83489bee145c4a96c77962658f928');
INSERT INTO `city` VALUES (183, '371200', '莱芜市', '370000', NULL, '36a3fc504c1344f8a2061367d04cc0c1');
INSERT INTO `city` VALUES (184, '371300', '临沂市', '370000', NULL, '308ce9059c154376a0d787a6d80c2f87');
INSERT INTO `city` VALUES (185, '371400', '德州市', '370000', NULL, '607cf78cb64f4c4c8d17058d4f4ec872');
INSERT INTO `city` VALUES (186, '371500', '聊城市', '370000', NULL, '0784b4ec813a49d099484449852b43a6');
INSERT INTO `city` VALUES (187, '371600', '滨州市', '370000', NULL, '89d31a18c25c4f9faf15266d7a66f346');
INSERT INTO `city` VALUES (188, '371700', '荷泽市', '370000', NULL, NULL);
INSERT INTO `city` VALUES (189, '410100', '郑州市', '410000', NULL, '2bb9c2e115b84fcfaa0c1c90c6c2040e');
INSERT INTO `city` VALUES (190, '410200', '开封市', '410000', NULL, '71295bc6505c4e13a71088312806b332');
INSERT INTO `city` VALUES (191, '410300', '洛阳市', '410000', NULL, 'ddfbb9b63da44efcae26ab85a85a2156');
INSERT INTO `city` VALUES (192, '410400', '平顶山市', '410000', NULL, '5b4a3ba33985416aae06d0e0319390f2');
INSERT INTO `city` VALUES (193, '410500', '安阳市', '410000', NULL, '4ff0edc0f1a241dbbf892e284063803b');
INSERT INTO `city` VALUES (194, '410600', '鹤壁市', '410000', NULL, '997a88787f804ffda8042572a1f21a94');
INSERT INTO `city` VALUES (195, '410700', '新乡市', '410000', NULL, 'bf481b475fe14208ac76eebd13e12a1f');
INSERT INTO `city` VALUES (196, '410800', '焦作市', '410000', NULL, 'bab9a2a01c964d3dabab1d7229e5de50');
INSERT INTO `city` VALUES (197, '410900', '濮阳市', '410000', NULL, '49051f27516e4d7792024eb39242d72c');
INSERT INTO `city` VALUES (198, '411000', '许昌市', '410000', NULL, '2f59796186d048e8bd2ae7b329da1122');
INSERT INTO `city` VALUES (199, '411100', '漯河市', '410000', NULL, '9df57dc7c3af4137a1c681bd81ffd11e');
INSERT INTO `city` VALUES (200, '411200', '三门峡市', '410000', NULL, '7c580b4b390b4d50a34982014467676a');
INSERT INTO `city` VALUES (201, '411300', '南阳市', '410000', NULL, '1a5303b0a21c47adb55b566b87a970e7');
INSERT INTO `city` VALUES (202, '411400', '商丘市', '410000', NULL, '26d4ca1018ea4198b2dc86d6498125fb');
INSERT INTO `city` VALUES (203, '411500', '信阳市', '410000', NULL, '62c57a8edae141bca463fa7e1abfb149');
INSERT INTO `city` VALUES (204, '411600', '周口市', '410000', NULL, '8ddb4c1c2b63449ba8397006b19bded9');
INSERT INTO `city` VALUES (205, '411700', '驻马店市', '410000', NULL, '2fc665ae049f4273907f5757ada425ab');
INSERT INTO `city` VALUES (206, '420100', '武汉市', '420000', NULL, '24ad83196654484099f8001725d343d4');
INSERT INTO `city` VALUES (207, '420200', '黄石市', '420000', NULL, '25390ade683244f6b31e1081638aed86');
INSERT INTO `city` VALUES (208, '420300', '十堰市', '420000', NULL, 'f5d3847c917c4f48a281bae058961979');
INSERT INTO `city` VALUES (209, '420500', '宜昌市', '420000', NULL, '945b0442e50e4726a040f5ddbf987c3d');
INSERT INTO `city` VALUES (210, '420600', '襄樊市', '420000', NULL, NULL);
INSERT INTO `city` VALUES (211, '420700', '鄂州市', '420000', NULL, '5112dee0213942a1b5ee640d56844a25');
INSERT INTO `city` VALUES (212, '420800', '荆门市', '420000', NULL, '2f749b1ca96d4a6e919053d2a7511b18');
INSERT INTO `city` VALUES (213, '420900', '孝感市', '420000', NULL, 'dc85e7acba0746a3b23b473ea625ae9d');
INSERT INTO `city` VALUES (214, '421000', '荆州市', '420000', NULL, 'efdc06f726ce4a60bedf7fb6aeca878f');
INSERT INTO `city` VALUES (215, '421100', '黄冈市', '420000', NULL, 'bb745c80a5284a49b486fd3a66b5eca5');
INSERT INTO `city` VALUES (216, '421200', '咸宁市', '420000', NULL, '444aa5d11c0f466689e190f4f46b8bde');
INSERT INTO `city` VALUES (217, '421300', '随州市', '420000', NULL, '80ea99a0f9824aa1b8f66ee65996e18d');
INSERT INTO `city` VALUES (218, '422800', '恩施土家族苗族自治州', '420000', NULL, '92bc0f168b1f460e819f2d5237ee294d');
INSERT INTO `city` VALUES (219, '429000', '省直辖行政单位', '420000', NULL, NULL);
INSERT INTO `city` VALUES (220, '430100', '长沙市', '430000', NULL, 'b4368013d9eb444b8b00fb345d542e48');
INSERT INTO `city` VALUES (221, '430200', '株洲市', '430000', NULL, '78e23f30c3ce493bb90024b5e6a21de3');
INSERT INTO `city` VALUES (222, '430300', '湘潭市', '430000', NULL, '6aeca2fbe2744b5a84f3144f80bca26e');
INSERT INTO `city` VALUES (223, '430400', '衡阳市', '430000', NULL, '69621a41bd9f4435bf27944a38386ca6');
INSERT INTO `city` VALUES (224, '430500', '邵阳市', '430000', NULL, 'a263f6d339eb4bf3984c0c2b517dbdf3');
INSERT INTO `city` VALUES (225, '430600', '岳阳市', '430000', NULL, 'efd49cf9516c43c681a7a153424792bc');
INSERT INTO `city` VALUES (226, '430700', '常德市', '430000', NULL, '0fc73f919e0d4762ad53ff0a0f14c01f');
INSERT INTO `city` VALUES (227, '430800', '张家界市', '430000', NULL, '36b5f09300b8406f9d53a44724c8aa4d');
INSERT INTO `city` VALUES (228, '430900', '益阳市', '430000', NULL, '16e05b6960a247ab9c109ec2cf9a4f98');
INSERT INTO `city` VALUES (229, '431000', '郴州市', '430000', NULL, '654cad8cfe05420eac9029195a2b07ce');
INSERT INTO `city` VALUES (230, '431100', '永州市', '430000', NULL, '41b955d6887f407f83e5ab0dd14d8e36');
INSERT INTO `city` VALUES (231, '431200', '怀化市', '430000', NULL, '582798309a3e48a5b61ebf4da36d17b3');
INSERT INTO `city` VALUES (232, '431300', '娄底市', '430000', NULL, 'deb0d89158fa40e29b76023b53fe40c9');
INSERT INTO `city` VALUES (233, '433100', '湘西土家族苗族自治州', '430000', NULL, 'fb3d64b38eef4c63b2d04565479e1b41');
INSERT INTO `city` VALUES (234, '440100', '广州市', '440000', NULL, '243757eb1f0b458ba9467fddc92505a9');
INSERT INTO `city` VALUES (235, '440200', '韶关市', '440000', NULL, '348645e87e6d43f680b166f98fbad56c');
INSERT INTO `city` VALUES (236, '440300', '深圳市', '440000', NULL, '2134eebe647547c68c57a40051888eef');
INSERT INTO `city` VALUES (237, '440400', '珠海市', '440000', NULL, 'b3358a86d9c54720ac5c4d906bf9954a');
INSERT INTO `city` VALUES (238, '440500', '汕头市', '440000', NULL, '0715c528001d4b1782a9b3c53c6f4a80');
INSERT INTO `city` VALUES (239, '440600', '佛山市', '440000', NULL, '78f30744c4c04fa4b7bffce5724e3457');
INSERT INTO `city` VALUES (240, '440700', '江门市', '440000', NULL, 'ccb478f3de444311a25e8e96be94ad33');
INSERT INTO `city` VALUES (241, '440800', '湛江市', '440000', NULL, '96d5829429734358b7d82ac91ce3bfb1');
INSERT INTO `city` VALUES (242, '440900', '茂名市', '440000', NULL, '4bab09c2988d4df2b7f99a841b5f9cdc');
INSERT INTO `city` VALUES (243, '441200', '肇庆市', '440000', NULL, '202505ecf8234e0eb1b4bfb1828c3f72');
INSERT INTO `city` VALUES (244, '441300', '惠州市', '440000', NULL, '9faca0a2b3434e78ad67037f4751513f');
INSERT INTO `city` VALUES (245, '441400', '梅州市', '440000', NULL, '318a60664c0f461f805c0792db73d6ca');
INSERT INTO `city` VALUES (246, '441500', '汕尾市', '440000', NULL, '2676feebed44417a8d4ed9d64192c659');
INSERT INTO `city` VALUES (247, '441600', '河源市', '440000', NULL, '130882bbe3e447639fa42b8575c3f27c');
INSERT INTO `city` VALUES (248, '441700', '阳江市', '440000', NULL, '91f1d477c4564ec0981c4073fa218e47');
INSERT INTO `city` VALUES (249, '441800', '清远市', '440000', NULL, 'a090f6e663af4eb7bbaf7577b1803321');
INSERT INTO `city` VALUES (250, '441900', '东莞市', '440000', NULL, '7890c6c2d4884d5c937a21f1cf8ba076');
INSERT INTO `city` VALUES (251, '442000', '中山市', '440000', NULL, '63f69043c053488cb67033bb66ac13d0');
INSERT INTO `city` VALUES (252, '445100', '潮州市', '440000', NULL, '1cd91481f853409abd567378e90cdcca');
INSERT INTO `city` VALUES (253, '445200', '揭阳市', '440000', NULL, 'b3edd5a0ba9b425ba289133102fcd7fb');
INSERT INTO `city` VALUES (254, '445300', '云浮市', '440000', NULL, 'b68406dba0e540fdaaa711b23bccb5f9');
INSERT INTO `city` VALUES (255, '450100', '南宁市', '450000', NULL, '6a755165ef764b10ba0d158d9ed1de86');
INSERT INTO `city` VALUES (256, '450200', '柳州市', '450000', NULL, '5bcf8a0b3f1344939f376a1d260d5bf4');
INSERT INTO `city` VALUES (257, '450300', '桂林市', '450000', NULL, 'e855152bcdc145c5aaa89fb0d38c5d7f');
INSERT INTO `city` VALUES (258, '450400', '梧州市', '450000', NULL, 'e6244361dcb047b183b4667c9ca9813d');
INSERT INTO `city` VALUES (259, '450500', '北海市', '450000', NULL, '6081e76b805043f9929818dae0a480d8');
INSERT INTO `city` VALUES (260, '450600', '防城港市', '450000', NULL, 'f7739790a3ed476db0610d4cc286bd6e');
INSERT INTO `city` VALUES (261, '450700', '钦州市', '450000', NULL, '96c9ab1385b048ea9e39688610b99bad');
INSERT INTO `city` VALUES (262, '450800', '贵港市', '450000', NULL, '4f66766fa35141d381edad58a5baf326');
INSERT INTO `city` VALUES (263, '450900', '玉林市', '450000', NULL, '2a76e4a072334526a4114846b89076a4');
INSERT INTO `city` VALUES (264, '451000', '百色市', '450000', NULL, '27db37b0ab81474eb46d47475d76b527');
INSERT INTO `city` VALUES (265, '451100', '贺州市', '450000', NULL, '927ce2cc207f44638575da9ad49807c4');
INSERT INTO `city` VALUES (266, '451200', '河池市', '450000', NULL, 'e38baaef07aa4dab94a5736a2fc1c960');
INSERT INTO `city` VALUES (267, '451300', '来宾市', '450000', NULL, 'c2a44df627fc45f9a2947b2d10c52f06');
INSERT INTO `city` VALUES (268, '451400', '崇左市', '450000', NULL, '2426f60784834d1a9d0d6a349179ecd3');
INSERT INTO `city` VALUES (269, '460100', '海口市', '460000', NULL, '31ef473b384a4190807d92d40b7844a2');
INSERT INTO `city` VALUES (270, '460200', '三亚市', '460000', NULL, '7ebde53385e8489fa1823c9294f2ada3');
INSERT INTO `city` VALUES (271, '469000', '省直辖县级行政单位', '460000', NULL, NULL);
INSERT INTO `city` VALUES (272, '500100', '市辖区', '500000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (273, '500200', '县', '500000', NULL, '8abde229b12a48cf86a93f7d916b252d');
INSERT INTO `city` VALUES (274, '500300', '市', '500000', NULL, NULL);
INSERT INTO `city` VALUES (275, '510100', '成都市', '510000', NULL, '3255f040abf04b02b63120f011bd555b');
INSERT INTO `city` VALUES (276, '510300', '自贡市', '510000', NULL, 'd74174b5046242849ca0ebca35eaefa1');
INSERT INTO `city` VALUES (277, '510400', '攀枝花市', '510000', NULL, 'ab74359779b7474dbf0e79338a71bbb1');
INSERT INTO `city` VALUES (278, '510500', '泸州市', '510000', NULL, 'd2ba462e9c0c42e18c4e354a9d3b2f1c');
INSERT INTO `city` VALUES (279, '510600', '德阳市', '510000', NULL, 'c8e9cf276a0c435a83beed050e93240c');
INSERT INTO `city` VALUES (280, '510700', '绵阳市', '510000', NULL, '48080ffa782c4e078d493a9504e980c9');
INSERT INTO `city` VALUES (281, '510800', '广元市', '510000', NULL, 'd337550637de4b31896d384b4cb08932');
INSERT INTO `city` VALUES (282, '510900', '遂宁市', '510000', NULL, '61a5db9718f441b7ad9ebae033cafc1c');
INSERT INTO `city` VALUES (283, '511000', '内江市', '510000', NULL, '0dd90148debd41c4b8c65afa8047ca57');
INSERT INTO `city` VALUES (284, '511100', '乐山市', '510000', NULL, '4bf28a3dc6cb4ba3bf0fd166e0a2a260');
INSERT INTO `city` VALUES (285, '511300', '南充市', '510000', NULL, 'd388082017ec407d94a8d71f89c835a0');
INSERT INTO `city` VALUES (286, '511400', '眉山市', '510000', NULL, 'e3bb96080a9e43a3afd563a3e83dc946');
INSERT INTO `city` VALUES (287, '511500', '宜宾市', '510000', NULL, '1da08c3a560340f9b2abdfa7f0e344b0');
INSERT INTO `city` VALUES (288, '511600', '广安市', '510000', NULL, 'b246501415434a009903c20707244f06');
INSERT INTO `city` VALUES (289, '511700', '达州市', '510000', NULL, 'f6bba22419a84801beb0d82505b1524b');
INSERT INTO `city` VALUES (290, '511800', '雅安市', '510000', NULL, '368f82a58e1944aaa593567c52dac114');
INSERT INTO `city` VALUES (291, '511900', '巴中市', '510000', NULL, '1213eabe64204195aa27407b1cb71d17');
INSERT INTO `city` VALUES (292, '512000', '资阳市', '510000', NULL, '6c175851e5f84571a28a807efc76d7b5');
INSERT INTO `city` VALUES (293, '513200', '阿坝藏族羌族自治州', '510000', NULL, 'b2c4597e9e614daf970ae0335582f01e');
INSERT INTO `city` VALUES (294, '513300', '甘孜藏族自治州', '510000', NULL, '6dfff9e159e64936b4dee9ab07a19084');
INSERT INTO `city` VALUES (295, '513400', '凉山彝族自治州', '510000', NULL, '4aede628240443c496b7a997fcecee39');
INSERT INTO `city` VALUES (296, '520100', '贵阳市', '520000', NULL, '52754daf958a424e928a0094d6d75392');
INSERT INTO `city` VALUES (297, '520200', '六盘水市', '520000', NULL, '14ed862235ef47f6be48332e47bef6e5');
INSERT INTO `city` VALUES (298, '520300', '遵义市', '520000', NULL, '8f64ef26b2464f7592d86c597c788045');
INSERT INTO `city` VALUES (299, '520400', '安顺市', '520000', NULL, '5a909dfc290845cc84ea2a770047994f');
INSERT INTO `city` VALUES (300, '522200', '铜仁地区', '520000', NULL, NULL);
INSERT INTO `city` VALUES (301, '522300', '黔西南布依族苗族自治州', '520000', NULL, '443c2365679440bba2c5988a12914e91');
INSERT INTO `city` VALUES (302, '522400', '毕节地区', '520000', NULL, NULL);
INSERT INTO `city` VALUES (303, '522600', '黔东南苗族侗族自治州', '520000', NULL, '0321432cfa7146eebcb47ed10735d526');
INSERT INTO `city` VALUES (304, '522700', '黔南布依族苗族自治州', '520000', NULL, '85d46d0e15c44b64b75ab12413156a06');
INSERT INTO `city` VALUES (305, '530100', '昆明市', '530000', NULL, 'ad9f89b265c046e0a1c846690a3af9ff');
INSERT INTO `city` VALUES (306, '530300', '曲靖市', '530000', NULL, '255af7a4c84d4d0380120c5f75055eec');
INSERT INTO `city` VALUES (307, '530400', '玉溪市', '530000', NULL, '3a9063e16de244e1882317af7eddb151');
INSERT INTO `city` VALUES (308, '530500', '保山市', '530000', NULL, '003b4cb25ba24d99b5d9dfc64bf58ad9');
INSERT INTO `city` VALUES (309, '530600', '昭通市', '530000', NULL, 'd8790c0da8bb48469985a2db80256b9e');
INSERT INTO `city` VALUES (310, '530700', '丽江市', '530000', NULL, '36c007ed69c445839d890af76defff1f');
INSERT INTO `city` VALUES (311, '530800', '思茅市', '530000', NULL, NULL);
INSERT INTO `city` VALUES (312, '530900', '临沧市', '530000', NULL, '0a2465217f2548de9b5adca71a59f885');
INSERT INTO `city` VALUES (313, '532300', '楚雄彝族自治州', '530000', NULL, '51cd0d1ba10248db8187b4bc6632d9c2');
INSERT INTO `city` VALUES (314, '532500', '红河哈尼族彝族自治州', '530000', NULL, 'c5f31d985f3d4842a6876fa69713cf19');
INSERT INTO `city` VALUES (315, '532600', '文山壮族苗族自治州', '530000', NULL, '877b9ead312e4be482fe1506368da73c');
INSERT INTO `city` VALUES (316, '532800', '西双版纳傣族自治州', '530000', NULL, '4e1f267307484a80ae22b11abfef47d5');
INSERT INTO `city` VALUES (317, '532900', '大理白族自治州', '530000', NULL, '67463908d949427597ada520296ac001');
INSERT INTO `city` VALUES (318, '533100', '德宏傣族景颇族自治州', '530000', NULL, '88b7694f4535455e94db0227c02e29b9');
INSERT INTO `city` VALUES (319, '533300', '怒江傈僳族自治州', '530000', NULL, '24fab96e760b4811a2e225408f617833');
INSERT INTO `city` VALUES (320, '533400', '迪庆藏族自治州', '530000', NULL, '01a541f97fa644438f43ba2c12cc7535');
INSERT INTO `city` VALUES (321, '540100', '拉萨市', '540000', NULL, 'f7e3a31041af4c7b9287620869ecbd99');
INSERT INTO `city` VALUES (322, '542100', '昌都地区', '540000', NULL, NULL);
INSERT INTO `city` VALUES (323, '542200', '山南地区', '540000', NULL, NULL);
INSERT INTO `city` VALUES (324, '542300', '日喀则地区', '540000', NULL, NULL);
INSERT INTO `city` VALUES (325, '542400', '那曲地区', '540000', NULL, '49caff67345e47a48833c8c4f39d9a06');
INSERT INTO `city` VALUES (326, '542500', '阿里地区', '540000', NULL, '353fcff718024a3aae9e64322ea9bd7b');
INSERT INTO `city` VALUES (327, '542600', '林芝地区', '540000', NULL, NULL);
INSERT INTO `city` VALUES (328, '610100', '西安市', '610000', NULL, 'c2dec2d9734d477a9d13ccd05fc6a213');
INSERT INTO `city` VALUES (329, '610200', '铜川市', '610000', NULL, '452d7b351efb4ca18a568f3bfde526b7');
INSERT INTO `city` VALUES (330, '610300', '宝鸡市', '610000', NULL, 'd610fbf762ff42cabf7b4893bb21f520');
INSERT INTO `city` VALUES (331, '610400', '咸阳市', '610000', NULL, '53baaffdb91f451e813fbbbd9e639401');
INSERT INTO `city` VALUES (332, '610500', '渭南市', '610000', NULL, 'b70ee78080604f22963602aa3b24ed11');
INSERT INTO `city` VALUES (333, '610600', '延安市', '610000', NULL, '35278349efe4447687de833236f4c894');
INSERT INTO `city` VALUES (334, '610700', '汉中市', '610000', NULL, 'afe39eb0e8d24b649b9e282f98223509');
INSERT INTO `city` VALUES (335, '610800', '榆林市', '610000', NULL, '8647f954feba4b768504faa53d7d61e4');
INSERT INTO `city` VALUES (336, '610900', '安康市', '610000', NULL, '714c3d301c004764aa969e1de7d7651e');
INSERT INTO `city` VALUES (337, '611000', '商洛市', '610000', NULL, '88c4c93a9b8e4f0b955708471f84d332');
INSERT INTO `city` VALUES (338, '620100', '兰州市', '620000', NULL, '86bfdcc7d6dc481e80dba2c98d62e95a');
INSERT INTO `city` VALUES (339, '620200', '嘉峪关市', '620000', NULL, 'ad5ff262b2764354bd49bd256dde3412');
INSERT INTO `city` VALUES (340, '620300', '金昌市', '620000', NULL, 'dbca4c0e677f46a5b5e33b21392cb5bb');
INSERT INTO `city` VALUES (341, '620400', '白银市', '620000', NULL, '957ecdb8d5cb42c79f0b710ef1413334');
INSERT INTO `city` VALUES (342, '620500', '天水市', '620000', NULL, '8a254df3bc804c44bc05ee15a97c9a15');
INSERT INTO `city` VALUES (343, '620600', '武威市', '620000', NULL, '1b88edcbdb6e4e0097a93e2b41a1b53b');
INSERT INTO `city` VALUES (344, '620700', '张掖市', '620000', NULL, 'c198a0dff0394c8e98572b1f6973dc65');
INSERT INTO `city` VALUES (345, '620800', '平凉市', '620000', NULL, '12193511021e43dda4b7426e522b2a40');
INSERT INTO `city` VALUES (346, '620900', '酒泉市', '620000', NULL, 'f071740cfa964c4584a4115be08114a0');
INSERT INTO `city` VALUES (347, '621000', '庆阳市', '620000', NULL, '372822ac0c2f44638a0e00a1a799ffb6');
INSERT INTO `city` VALUES (348, '621100', '定西市', '620000', NULL, '9834053280ba48629ca0b725de592cbc');
INSERT INTO `city` VALUES (349, '621200', '陇南市', '620000', NULL, 'efb238aebaf94571858b62d35034c37a');
INSERT INTO `city` VALUES (350, '622900', '临夏回族自治州', '620000', NULL, '2fd93cc33b1743e18c1bfbe018c76f47');
INSERT INTO `city` VALUES (351, '623000', '甘南藏族自治州', '620000', NULL, '1d5ccf74738c4e4783b5701a7e48112b');
INSERT INTO `city` VALUES (352, '630100', '西宁市', '630000', NULL, '2720cc41d41446b4b1bbaf848b9c449b');
INSERT INTO `city` VALUES (353, '632100', '海东地区', '630000', NULL, NULL);
INSERT INTO `city` VALUES (354, '632200', '海北藏族自治州', '630000', NULL, '532d2868dc4e44279f8727d6a7d33fa8');
INSERT INTO `city` VALUES (355, '632300', '黄南藏族自治州', '630000', NULL, 'c85a345cc5da4e789ffd002fc3d3cfb9');
INSERT INTO `city` VALUES (356, '632500', '海南藏族自治州', '630000', NULL, '0543773f78aa43b7b7f35d67bbb6870d');
INSERT INTO `city` VALUES (357, '632600', '果洛藏族自治州', '630000', NULL, 'ab99d1cef9364ce08831ff1365513465');
INSERT INTO `city` VALUES (358, '632700', '玉树藏族自治州', '630000', NULL, '7aa299f87c3c4cb5a7d2b7e60b65bd96');
INSERT INTO `city` VALUES (359, '632800', '海西蒙古族藏族自治州', '630000', NULL, '9c559fcc0f444106a625b2781198bb11');
INSERT INTO `city` VALUES (360, '640100', '银川市', '640000', NULL, 'b618e04aaffc4784972ed8b3c6dd5e08');
INSERT INTO `city` VALUES (361, '640200', '石嘴山市', '640000', NULL, 'ab3f160e3c9e4caab4b072ed9b924a2c');
INSERT INTO `city` VALUES (362, '640300', '吴忠市', '640000', NULL, 'a9b6f49f02a241cf8a7d7e3f84699eb0');
INSERT INTO `city` VALUES (363, '640400', '固原市', '640000', NULL, '7c8c6e86ee26419c8876b209c377424e');
INSERT INTO `city` VALUES (364, '640500', '中卫市', '640000', NULL, '6c13bd8e527947b7a475b50a16f4ab6b');
INSERT INTO `city` VALUES (365, '650100', '乌鲁木齐市', '650000', NULL, '59290433b199486d94d83eeae961ad7f');
INSERT INTO `city` VALUES (366, '650200', '克拉玛依市', '650000', NULL, '9199a72dd6884d88b1b41c1a40b1cb6b');
INSERT INTO `city` VALUES (367, '652100', '吐鲁番地区', '650000', NULL, NULL);
INSERT INTO `city` VALUES (368, '652200', '哈密地区', '650000', NULL, NULL);
INSERT INTO `city` VALUES (369, '652300', '昌吉回族自治州', '650000', NULL, '429f37fc445845f5982cac2cb387fa8f');
INSERT INTO `city` VALUES (370, '652700', '博尔塔拉蒙古自治州', '650000', NULL, 'e722bfa8800f4927b42a17940e6681c5');
INSERT INTO `city` VALUES (371, '652800', '巴音郭楞蒙古自治州', '650000', NULL, '2f5ec1eb598b492b931e88cc368a732f');
INSERT INTO `city` VALUES (372, '652900', '阿克苏地区', '650000', NULL, 'b36d1a74762d494987b61a743905c339');
INSERT INTO `city` VALUES (373, '653000', '克孜勒苏柯尔克孜自治州', '650000', NULL, '5cec6ba55b7c4a21ad13a5ddc703174a');
INSERT INTO `city` VALUES (374, '653100', '喀什地区', '650000', NULL, 'e938e70b807b4c65ac8672941a563b27');
INSERT INTO `city` VALUES (375, '653200', '和田地区', '650000', NULL, 'f75a3222842e46d5a92b99635dfc4be3');
INSERT INTO `city` VALUES (376, '654000', '伊犁哈萨克自治州', '650000', NULL, '40440bd5b9714c908f95bb6eef716f06');
INSERT INTO `city` VALUES (377, '654200', '塔城地区', '650000', NULL, 'b8990fba0ff9424291daf6945d6fe263');
INSERT INTO `city` VALUES (378, '654300', '阿勒泰地区', '650000', NULL, '62c6dc3545994cbf895554aa7b781261');
INSERT INTO `city` VALUES (379, '659000', '省直辖行政单位', '650000', NULL, NULL);
INSERT INTO `city` VALUES (380, '110101', '东城区', '110100', NULL, NULL);
INSERT INTO `city` VALUES (381, '110102', '西城区', '110100', NULL, NULL);
INSERT INTO `city` VALUES (382, '110103', '崇文区', '110100', NULL, NULL);
INSERT INTO `city` VALUES (383, '110104', '宣武区', '110100', NULL, NULL);
INSERT INTO `city` VALUES (384, '110105', '朝阳区', '110100', NULL, '47918eb849094a2ab32876f44f03cd86');
INSERT INTO `city` VALUES (385, '110106', '丰台区', '110100', NULL, NULL);
INSERT INTO `city` VALUES (386, '110107', '石景山区', '110100', NULL, NULL);
INSERT INTO `city` VALUES (387, '110108', '海淀区', '110100', NULL, NULL);
INSERT INTO `city` VALUES (388, '110109', '门头沟区', '110100', NULL, NULL);
INSERT INTO `city` VALUES (389, '110111', '房山区', '110100', NULL, NULL);
INSERT INTO `city` VALUES (390, '110112', '通州区', '110100', NULL, '891c1573f208480da5df75dcf80eea1f');
INSERT INTO `city` VALUES (391, '110113', '顺义区', '110100', NULL, NULL);
INSERT INTO `city` VALUES (392, '110114', '昌平区', '110100', NULL, NULL);
INSERT INTO `city` VALUES (393, '110115', '大兴区', '110100', NULL, NULL);
INSERT INTO `city` VALUES (394, '110116', '怀柔区', '110100', NULL, NULL);
INSERT INTO `city` VALUES (395, '110117', '平谷区', '110100', NULL, NULL);
INSERT INTO `city` VALUES (396, '110228', '密云区', '110100', NULL, NULL);
INSERT INTO `city` VALUES (397, '110229', '延庆区', '110100', NULL, NULL);
INSERT INTO `city` VALUES (398, '120101', '和平区', '120100', NULL, 'dfc26813ac444c929ffe53bd281f895b');
INSERT INTO `city` VALUES (399, '120102', '河东区', '120100', NULL, '359bda53ca334623b167bd3e59bd5016');
INSERT INTO `city` VALUES (400, '120103', '河西区', '120100', NULL, NULL);
INSERT INTO `city` VALUES (401, '120104', '南开区', '120100', NULL, NULL);
INSERT INTO `city` VALUES (402, '120105', '河北区', '120100', NULL, NULL);
INSERT INTO `city` VALUES (403, '120106', '红桥区', '120100', NULL, NULL);
INSERT INTO `city` VALUES (404, '120107', '塘沽区', '120100', NULL, NULL);
INSERT INTO `city` VALUES (405, '120108', '汉沽区', '120100', NULL, NULL);
INSERT INTO `city` VALUES (406, '120109', '大港区', '120100', NULL, NULL);
INSERT INTO `city` VALUES (407, '120110', '东丽区', '120100', NULL, NULL);
INSERT INTO `city` VALUES (408, '120111', '西青区', '120100', NULL, NULL);
INSERT INTO `city` VALUES (409, '120112', '津南区', '120100', NULL, NULL);
INSERT INTO `city` VALUES (410, '120113', '北辰区', '120100', NULL, NULL);
INSERT INTO `city` VALUES (411, '120114', '武清区', '120100', NULL, NULL);
INSERT INTO `city` VALUES (412, '120115', '宝坻区', '120100', NULL, NULL);
INSERT INTO `city` VALUES (413, '120221', '宁河区', '120100', NULL, NULL);
INSERT INTO `city` VALUES (414, '120223', '静海区', '120100', NULL, NULL);
INSERT INTO `city` VALUES (415, '120225', '蓟州区', '120100', NULL, NULL);
INSERT INTO `city` VALUES (416, '130101', '市辖区', '130100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (417, '130102', '长安区', '130100', NULL, '036bf39d7bd2498eaceb3807a63e9aeb');
INSERT INTO `city` VALUES (418, '130103', '桥东区', '130100', NULL, '454d0ad5c7bb476999612e1eb30da3ee');
INSERT INTO `city` VALUES (419, '130104', '桥西区', '130100', NULL, '1f8f839f6a6547cba09323703e83ae48');
INSERT INTO `city` VALUES (420, '130105', '新华区', '130100', NULL, '214edff483824643a38f66e551f46a40');
INSERT INTO `city` VALUES (421, '130107', '井陉矿区', '130100', NULL, '832f1e1489374cd28717da7dd10ffa80');
INSERT INTO `city` VALUES (422, '130108', '裕华区', '130100', NULL, 'f82439d9c64440169f2427bd66a3bb58');
INSERT INTO `city` VALUES (423, '130121', '井陉县', '130100', NULL, 'b6e2320c25794771a830a409215b5d00');
INSERT INTO `city` VALUES (424, '130123', '正定县', '130100', NULL, 'a834a540a98f43d3bef6ea10949e3cc3');
INSERT INTO `city` VALUES (425, '130124', '栾城县', '130100', NULL, NULL);
INSERT INTO `city` VALUES (426, '130125', '行唐县', '130100', NULL, '0853d327d48d4e96b6f0d884345dc5d2');
INSERT INTO `city` VALUES (427, '130126', '灵寿县', '130100', NULL, 'be312dfa60f84222a4183bc39de56490');
INSERT INTO `city` VALUES (428, '130127', '高邑县', '130100', NULL, '261be6956ad24f48ad8bc316ac29f14a');
INSERT INTO `city` VALUES (429, '130128', '深泽县', '130100', NULL, '732e9e23a09a480b86db4b0fec461999');
INSERT INTO `city` VALUES (430, '130129', '赞皇县', '130100', NULL, '4fee3a11cad74cf3916e312753952dfe');
INSERT INTO `city` VALUES (431, '130130', '无极县', '130100', NULL, '3bad808f9e1b42b6a89527d13043c6a8');
INSERT INTO `city` VALUES (432, '130131', '平山县', '130100', NULL, 'ffef111a962e4b98a3f24de7cf8c0fbf');
INSERT INTO `city` VALUES (433, '130132', '元氏县', '130100', NULL, '45ed47b5f3fc4d38931e7b59ef9f6aac');
INSERT INTO `city` VALUES (434, '130133', '赵　县', '130100', NULL, NULL);
INSERT INTO `city` VALUES (435, '130181', '辛集市', '130100', NULL, '98fbdec38ad24910a8da1b26062413d1');
INSERT INTO `city` VALUES (436, '130182', '藁城市', '130100', NULL, NULL);
INSERT INTO `city` VALUES (437, '130183', '晋州市', '130100', NULL, '9a0a7dc6eb5943b69c3cd3292a44e697');
INSERT INTO `city` VALUES (438, '130184', '新乐市', '130100', NULL, '07e17e248e5e4750b3afd23d7a44fee1');
INSERT INTO `city` VALUES (439, '130185', '鹿泉市', '130100', NULL, NULL);
INSERT INTO `city` VALUES (440, '130201', '市辖区', '130200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (441, '130202', '路南区', '130200', NULL, '787da6e2c0604bb490c62c7f64959d74');
INSERT INTO `city` VALUES (442, '130203', '路北区', '130200', NULL, 'a771a794f2a24c39a06e573df6878a03');
INSERT INTO `city` VALUES (443, '130204', '古冶区', '130200', NULL, '2d19b12449b94e33afa915a6b8db2dfd');
INSERT INTO `city` VALUES (444, '130205', '开平区', '130200', NULL, 'e07953f1af5f43c1b91a443ca3bf9640');
INSERT INTO `city` VALUES (445, '130207', '丰南区', '130200', NULL, '238945542c7b4f84aea518d7a306e987');
INSERT INTO `city` VALUES (446, '130208', '丰润区', '130200', NULL, '7db227f4204e4907b7950fd1d1c1c851');
INSERT INTO `city` VALUES (447, '130223', '滦　县', '130200', NULL, NULL);
INSERT INTO `city` VALUES (448, '130224', '滦南县', '130200', NULL, '26ae9ea81f0340cebeb1993f9efa1437');
INSERT INTO `city` VALUES (449, '130225', '乐亭县', '130200', NULL, 'be8a0a0dd23a496695c191327ee65b12');
INSERT INTO `city` VALUES (450, '130227', '迁西县', '130200', NULL, '85a21c3af89b44dd8d95bbf525a529dd');
INSERT INTO `city` VALUES (451, '130229', '玉田县', '130200', NULL, '309cca09e0d04a0f85133a4b1a29d359');
INSERT INTO `city` VALUES (452, '130230', '唐海县', '130200', NULL, NULL);
INSERT INTO `city` VALUES (453, '130281', '遵化市', '130200', NULL, '2adbcad41d434d6b97ad422d69616364');
INSERT INTO `city` VALUES (454, '130283', '迁安市', '130200', NULL, 'ef7696df174d44e9b7ce30872b6ff282');
INSERT INTO `city` VALUES (455, '130301', '市辖区', '130300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (456, '130302', '海港区', '130300', NULL, 'a4637e1724e149c091522d9d92349e9e');
INSERT INTO `city` VALUES (457, '130303', '山海关区', '130300', NULL, 'f8fbaaa2894547258d0df980977b8b48');
INSERT INTO `city` VALUES (458, '130304', '北戴河区', '130300', NULL, '8d2228ea47d140adacabac3e77bfefc3');
INSERT INTO `city` VALUES (459, '130321', '青龙满族自治县', '130300', NULL, '95bed3861f6e4417850e8798ebc90eda');
INSERT INTO `city` VALUES (460, '130322', '昌黎县', '130300', NULL, '712ead6742ef4549a273f78fc16487a5');
INSERT INTO `city` VALUES (461, '130323', '抚宁县', '130300', NULL, NULL);
INSERT INTO `city` VALUES (462, '130324', '卢龙县', '130300', NULL, '14ddc9713a444d21acdd9b95590e58d9');
INSERT INTO `city` VALUES (463, '130401', '市辖区', '130400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (464, '130402', '邯山区', '130400', NULL, '3caba3fbd7ee456fad127db93caa5875');
INSERT INTO `city` VALUES (465, '130403', '丛台区', '130400', NULL, 'd2d2352e3360448492158f1481993938');
INSERT INTO `city` VALUES (466, '130404', '复兴区', '130400', NULL, '6f6e9e2fdee14416842941739bc4925e');
INSERT INTO `city` VALUES (467, '130406', '峰峰矿区', '130400', NULL, '6e5ed3ca692547348b1f89e0487463c0');
INSERT INTO `city` VALUES (468, '130421', '邯郸县', '130400', NULL, NULL);
INSERT INTO `city` VALUES (469, '130423', '临漳县', '130400', NULL, '17ebaab5070b4ab89170f95bf063af71');
INSERT INTO `city` VALUES (470, '130424', '成安县', '130400', NULL, '1751893ae1fe4cb89864ea6b49b242a4');
INSERT INTO `city` VALUES (471, '130425', '大名县', '130400', NULL, '175a180d1d724487960cf1e78446f4da');
INSERT INTO `city` VALUES (472, '130426', '涉　县', '130400', NULL, NULL);
INSERT INTO `city` VALUES (473, '130427', '磁　县', '130400', NULL, NULL);
INSERT INTO `city` VALUES (474, '130428', '肥乡县', '130400', NULL, NULL);
INSERT INTO `city` VALUES (475, '130429', '永年县', '130400', NULL, NULL);
INSERT INTO `city` VALUES (476, '130430', '邱　县', '130400', NULL, NULL);
INSERT INTO `city` VALUES (477, '130431', '鸡泽县', '130400', NULL, 'fcd4826ef785478288e7397571cdc8c3');
INSERT INTO `city` VALUES (478, '130432', '广平县', '130400', NULL, '5aa7fe8941bc40098a69870fd04a4c58');
INSERT INTO `city` VALUES (479, '130433', '馆陶县', '130400', NULL, '2ce4ac1557e34e51aab807f9ee97447a');
INSERT INTO `city` VALUES (480, '130434', '魏　县', '130400', NULL, NULL);
INSERT INTO `city` VALUES (481, '130435', '曲周县', '130400', NULL, '6a1de4de257e43689ae0685fcb19cc2b');
INSERT INTO `city` VALUES (482, '130481', '武安市', '130400', NULL, '2eb6f9211fce43ca9c62217573ade816');
INSERT INTO `city` VALUES (483, '130501', '市辖区', '130500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (484, '130502', '桥东区', '130500', NULL, '454d0ad5c7bb476999612e1eb30da3ee');
INSERT INTO `city` VALUES (485, '130503', '桥西区', '130500', NULL, '1f8f839f6a6547cba09323703e83ae48');
INSERT INTO `city` VALUES (486, '130521', '邢台县', '130500', NULL, '038bb8ebe54440a6a8237734fe494c21');
INSERT INTO `city` VALUES (487, '130522', '临城县', '130500', NULL, '52e1f1f1f53d4dc8981716168133620f');
INSERT INTO `city` VALUES (488, '130523', '内丘县', '130500', NULL, 'b43a66ad47234635b45dc348a9d101a3');
INSERT INTO `city` VALUES (489, '130524', '柏乡县', '130500', NULL, '8ccc6c756f464eedb7c058eae48d101d');
INSERT INTO `city` VALUES (490, '130525', '隆尧县', '130500', NULL, '38ebd5b802e443d493c71133f47cb6f8');
INSERT INTO `city` VALUES (491, '130526', '任　县', '130500', NULL, NULL);
INSERT INTO `city` VALUES (492, '130527', '南和县', '130500', NULL, 'f58fdff8852540dcb73069fb0cc5c51e');
INSERT INTO `city` VALUES (493, '130528', '宁晋县', '130500', NULL, 'aa0744738e69460db3aefad376134055');
INSERT INTO `city` VALUES (494, '130529', '巨鹿县', '130500', NULL, '1c34881ac76041838beff97513b4259b');
INSERT INTO `city` VALUES (495, '130530', '新河县', '130500', NULL, '4c2c346bb1e84e868699610bef5c35ce');
INSERT INTO `city` VALUES (496, '130531', '广宗县', '130500', NULL, '53a59dc81cae409da64602c0fd51c930');
INSERT INTO `city` VALUES (497, '130532', '平乡县', '130500', NULL, '5d965a6f49e44065864d1ab575634b02');
INSERT INTO `city` VALUES (498, '130533', '威　县', '130500', NULL, NULL);
INSERT INTO `city` VALUES (499, '130534', '清河县', '130500', NULL, 'd563c4f852fb45cb82e7c95ec324cb93');
INSERT INTO `city` VALUES (500, '130535', '临西县', '130500', NULL, '59c5fa6f1ff4431f9d85c4d8ac240873');
INSERT INTO `city` VALUES (501, '130581', '南宫市', '130500', NULL, 'eaad01f9d4464f30b634bc00a22be6a8');
INSERT INTO `city` VALUES (502, '130582', '沙河市', '130500', NULL, 'fa840dc22061462ca2ce484d5f1464d1');
INSERT INTO `city` VALUES (503, '130601', '市辖区', '130600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (504, '130602', '新市区', '130600', NULL, '8d8a0e355b0d4555bc4727adbfc972a2');
INSERT INTO `city` VALUES (505, '130603', '北市区', '130600', NULL, NULL);
INSERT INTO `city` VALUES (506, '130604', '南市区', '130600', NULL, NULL);
INSERT INTO `city` VALUES (507, '130621', '满城县', '130600', NULL, NULL);
INSERT INTO `city` VALUES (508, '130622', '清苑县', '130600', NULL, NULL);
INSERT INTO `city` VALUES (509, '130623', '涞水县', '130600', NULL, '5f41156595164471bf6c72b26be36a71');
INSERT INTO `city` VALUES (510, '130624', '阜平县', '130600', NULL, 'c65bb6b4a4a644738bdbcd56068af080');
INSERT INTO `city` VALUES (511, '130625', '徐水县', '130600', NULL, NULL);
INSERT INTO `city` VALUES (512, '130626', '定兴县', '130600', NULL, 'a94fe720898840fbadec32bbeac1b87b');
INSERT INTO `city` VALUES (513, '130627', '唐　县', '130600', NULL, NULL);
INSERT INTO `city` VALUES (514, '130628', '高阳县', '130600', NULL, '688107b519a94864a202843f47a8b435');
INSERT INTO `city` VALUES (515, '130629', '容城县', '130600', NULL, '644e491a00714e3d847463cc3a5bcdcd');
INSERT INTO `city` VALUES (516, '130630', '涞源县', '130600', NULL, '60ece1715b09407299c4419e4bc541e0');
INSERT INTO `city` VALUES (517, '130631', '望都县', '130600', NULL, '4a6ece929faa40fd82d3ad4a49bb4560');
INSERT INTO `city` VALUES (518, '130632', '安新县', '130600', NULL, 'bda6586df2ea49238f63087f2f34af5a');
INSERT INTO `city` VALUES (519, '130633', '易　县', '130600', NULL, NULL);
INSERT INTO `city` VALUES (520, '130634', '曲阳县', '130600', NULL, '72e03d74cb0d4b86a65ef5c2b4538ccb');
INSERT INTO `city` VALUES (521, '130635', '蠡　县', '130600', NULL, NULL);
INSERT INTO `city` VALUES (522, '130636', '顺平县', '130600', NULL, '9fa7a146cc2a48d39691258d956969d9');
INSERT INTO `city` VALUES (523, '130637', '博野县', '130600', NULL, '70aa844780b640a38c437b78a8ee2e46');
INSERT INTO `city` VALUES (524, '130638', '雄　县', '130600', NULL, NULL);
INSERT INTO `city` VALUES (525, '130681', '涿州市', '130600', NULL, '0a32df1b1d2f41bba23dbd03c73853b8');
INSERT INTO `city` VALUES (526, '130682', '定州市', '130600', NULL, '0dbbb03d20544e20b67533a5f377bcfb');
INSERT INTO `city` VALUES (527, '130683', '安国市', '130600', NULL, 'b610bbb069144c32a90e2f33154d7dab');
INSERT INTO `city` VALUES (528, '130684', '高碑店市', '130600', NULL, '0b428873d0ce4b2bba628a8c6093dcc4');
INSERT INTO `city` VALUES (529, '130701', '市辖区', '130700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (530, '130702', '桥东区', '130700', NULL, '454d0ad5c7bb476999612e1eb30da3ee');
INSERT INTO `city` VALUES (531, '130703', '桥西区', '130700', NULL, '1f8f839f6a6547cba09323703e83ae48');
INSERT INTO `city` VALUES (532, '130705', '宣化区', '130700', NULL, 'e002c48895b0452eb1d0028da19044a6');
INSERT INTO `city` VALUES (533, '130706', '下花园区', '130700', NULL, '2c8073b6ab2e4e40a7560feb63d36fb2');
INSERT INTO `city` VALUES (534, '130721', '宣化县', '130700', NULL, NULL);
INSERT INTO `city` VALUES (535, '130722', '张北县', '130700', NULL, 'fa7edc81a9214881883238f8eeb54ce3');
INSERT INTO `city` VALUES (536, '130723', '康保县', '130700', NULL, '56fb21b10e7e47bb9a8a47325bdb20ea');
INSERT INTO `city` VALUES (537, '130724', '沽源县', '130700', NULL, '1c4a6e0a409b4e3b9f09ca6bb66f4f67');
INSERT INTO `city` VALUES (538, '130725', '尚义县', '130700', NULL, 'a431b24963224b988f20517a28846965');
INSERT INTO `city` VALUES (539, '130726', '蔚　县', '130700', NULL, NULL);
INSERT INTO `city` VALUES (540, '130727', '阳原县', '130700', NULL, '4865eaf6102a43bd8be47d0f0f9ebd0b');
INSERT INTO `city` VALUES (541, '130728', '怀安县', '130700', NULL, '759921fab5904aa9bd82a12936d24e43');
INSERT INTO `city` VALUES (542, '130729', '万全县', '130700', NULL, NULL);
INSERT INTO `city` VALUES (543, '130730', '怀来县', '130700', NULL, '5f1e4d942a8a4f41801c6adbceef5d12');
INSERT INTO `city` VALUES (544, '130731', '涿鹿县', '130700', NULL, 'edb461fe85314a76abe8f50a60045b9b');
INSERT INTO `city` VALUES (545, '130732', '赤城县', '130700', NULL, '17197f0edf27497fa0638b7a090f13a0');
INSERT INTO `city` VALUES (546, '130733', '崇礼县', '130700', NULL, NULL);
INSERT INTO `city` VALUES (547, '130801', '市辖区', '130800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (548, '130802', '双桥区', '130800', NULL, '14b3b4a1d7494b1c933e91510afe0645');
INSERT INTO `city` VALUES (549, '130803', '双滦区', '130800', NULL, '80f0718a9cc84b268239c055c9a80b44');
INSERT INTO `city` VALUES (550, '130804', '鹰手营子矿区', '130800', NULL, 'd0d8a0dd4bfd43f294518600ce65e99d');
INSERT INTO `city` VALUES (551, '130821', '承德县', '130800', NULL, 'bd562efb1a984390a3a447a7286f75dd');
INSERT INTO `city` VALUES (552, '130822', '兴隆县', '130800', NULL, 'd52d78f458b544c3ab73bb150f216f49');
INSERT INTO `city` VALUES (553, '130823', '平泉县', '130800', NULL, NULL);
INSERT INTO `city` VALUES (554, '130824', '滦平县', '130800', NULL, '316e9167b19f4145894592158edd13b4');
INSERT INTO `city` VALUES (555, '130825', '隆化县', '130800', NULL, '7b7212ab0cc6475881f6b270d76b856a');
INSERT INTO `city` VALUES (556, '130826', '丰宁满族自治县', '130800', NULL, '4b0b06a47cb54a97967018c1e2c7189d');
INSERT INTO `city` VALUES (557, '130827', '宽城满族自治县', '130800', NULL, '244dbf8744984fd8b0d812e2c776de15');
INSERT INTO `city` VALUES (558, '130828', '围场满族蒙古族自治县', '130800', NULL, 'fdae6c7e778c4c45ad0d293de812e08c');
INSERT INTO `city` VALUES (559, '130901', '市辖区', '130900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (560, '130902', '新华区', '130900', NULL, '214edff483824643a38f66e551f46a40');
INSERT INTO `city` VALUES (561, '130903', '运河区', '130900', NULL, 'ba510b34c5b4405bbe69d274121f044f');
INSERT INTO `city` VALUES (562, '130921', '沧　县', '130900', NULL, NULL);
INSERT INTO `city` VALUES (563, '130922', '青　县', '130900', NULL, NULL);
INSERT INTO `city` VALUES (564, '130923', '东光县', '130900', NULL, '0bb38015b6354d01972f2ac6fe8640fe');
INSERT INTO `city` VALUES (565, '130924', '海兴县', '130900', NULL, '6ab2361c501845e8ad341588b5b6c53e');
INSERT INTO `city` VALUES (566, '130925', '盐山县', '130900', NULL, 'bd81c3c64b014e71baecda007bc7483a');
INSERT INTO `city` VALUES (567, '130926', '肃宁县', '130900', NULL, '559e303810954fb192c57bb359770f6f');
INSERT INTO `city` VALUES (568, '130927', '南皮县', '130900', NULL, 'b5cca94c841c4fdea0c2c38956dccd4a');
INSERT INTO `city` VALUES (569, '130928', '吴桥县', '130900', NULL, '9d5303114b9349f4a6b06fa70fda1634');
INSERT INTO `city` VALUES (570, '130929', '献　县', '130900', NULL, NULL);
INSERT INTO `city` VALUES (571, '130930', '孟村回族自治县', '130900', NULL, '2730565892c34fff8adaff4345b04938');
INSERT INTO `city` VALUES (572, '130981', '泊头市', '130900', NULL, '32ae1cbc2ee64301ba7359a87dd41e0a');
INSERT INTO `city` VALUES (573, '130982', '任丘市', '130900', NULL, '0c0a1d015b044192a050a2cbbe22964a');
INSERT INTO `city` VALUES (574, '130983', '黄骅市', '130900', NULL, '3c301732d89d49f89c802d0c6dd3f23e');
INSERT INTO `city` VALUES (575, '130984', '河间市', '130900', NULL, 'd79a03f27cd148ee95448469edc11ba4');
INSERT INTO `city` VALUES (576, '131001', '市辖区', '131000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (577, '131002', '安次区', '131000', NULL, NULL);
INSERT INTO `city` VALUES (578, '131003', '广阳区', '131000', NULL, NULL);
INSERT INTO `city` VALUES (579, '131022', '固安县', '131000', NULL, NULL);
INSERT INTO `city` VALUES (580, '131023', '永清县', '131000', NULL, NULL);
INSERT INTO `city` VALUES (581, '131024', '香河县', '131000', NULL, NULL);
INSERT INTO `city` VALUES (582, '131025', '大城县', '131000', NULL, NULL);
INSERT INTO `city` VALUES (583, '131026', '文安县', '131000', NULL, NULL);
INSERT INTO `city` VALUES (584, '131028', '大厂回族自治县', '131000', NULL, NULL);
INSERT INTO `city` VALUES (585, '131081', '霸州市', '131000', NULL, NULL);
INSERT INTO `city` VALUES (586, '131082', '三河市', '131000', NULL, NULL);
INSERT INTO `city` VALUES (587, '131101', '市辖区', '131100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (588, '131102', '桃城区', '131100', NULL, '09a948fbf88d429e8612cbec7ecd89a6');
INSERT INTO `city` VALUES (589, '131121', '枣强县', '131100', NULL, 'ad86147448424afd88f30918f0bc0412');
INSERT INTO `city` VALUES (590, '131122', '武邑县', '131100', NULL, 'df68bf84166942628790dbfdb7884e2e');
INSERT INTO `city` VALUES (591, '131123', '武强县', '131100', NULL, '324a503c19584ba8ab2e26e2666ed027');
INSERT INTO `city` VALUES (592, '131124', '饶阳县', '131100', NULL, 'fb20ccaf586f4e729f01c753aeba298d');
INSERT INTO `city` VALUES (593, '131125', '安平县', '131100', NULL, '4ad99c2344cb4e9e9841c180bf9e3036');
INSERT INTO `city` VALUES (594, '131126', '故城县', '131100', NULL, 'a8d5859f12c449dd8837a9a7b1a2a7f0');
INSERT INTO `city` VALUES (595, '131127', '景　县', '131100', NULL, NULL);
INSERT INTO `city` VALUES (596, '131128', '阜城县', '131100', NULL, '39b066e9194243769bba95771fd4d189');
INSERT INTO `city` VALUES (597, '131181', '冀州市', '131100', NULL, NULL);
INSERT INTO `city` VALUES (598, '131182', '深州市', '131100', NULL, 'c55e14952e4149bd9749378621e8ec82');
INSERT INTO `city` VALUES (599, '140101', '市辖区', '140100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (600, '140105', '小店区', '140100', NULL, '1f53f3ee8ea1440dac81639be743f545');
INSERT INTO `city` VALUES (601, '140106', '迎泽区', '140100', NULL, 'eb3ed948d4794d468cf0779717c364d5');
INSERT INTO `city` VALUES (602, '140107', '杏花岭区', '140100', NULL, 'cee722bc7b0447b09260993a0415c34d');
INSERT INTO `city` VALUES (603, '140108', '尖草坪区', '140100', NULL, '3c9a90213a21401bbbeb605a8c86f11a');
INSERT INTO `city` VALUES (604, '140109', '万柏林区', '140100', NULL, 'a42c2bf95243483599655e5b74a24481');
INSERT INTO `city` VALUES (605, '140110', '晋源区', '140100', NULL, 'd2666135337746e2beeaf126cc8ec541');
INSERT INTO `city` VALUES (606, '140121', '清徐县', '140100', NULL, 'b254d952e3584d0b8d732343f8b71ce4');
INSERT INTO `city` VALUES (607, '140122', '阳曲县', '140100', NULL, '5c5430011e39432d99ceedaa9faaf9c6');
INSERT INTO `city` VALUES (608, '140123', '娄烦县', '140100', NULL, '11a1f9851db74d94a0366b7f5a7171b3');
INSERT INTO `city` VALUES (609, '140181', '古交市', '140100', NULL, '860ef50101a54886934fb7bc716cc6a4');
INSERT INTO `city` VALUES (610, '140201', '市辖区', '140200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (611, '140202', '城　区', '140200', NULL, NULL);
INSERT INTO `city` VALUES (612, '140203', '矿　区', '140200', NULL, NULL);
INSERT INTO `city` VALUES (613, '140211', '南郊区', '140200', NULL, '05ffad0e96a4475db0fd62050cd76625');
INSERT INTO `city` VALUES (614, '140212', '新荣区', '140200', NULL, 'a70df87caa14444eb7152d970a843de8');
INSERT INTO `city` VALUES (615, '140221', '阳高县', '140200', NULL, '7722ddb6189e4f9fb01d74eb61c4fcff');
INSERT INTO `city` VALUES (616, '140222', '天镇县', '140200', NULL, '8688b8b7cfe74eac84c6c8da415cfe13');
INSERT INTO `city` VALUES (617, '140223', '广灵县', '140200', NULL, 'fe19fc5ff8c14203a320111b9bec42e3');
INSERT INTO `city` VALUES (618, '140224', '灵丘县', '140200', NULL, 'da046aeba9014487b9923c7e9ab867cc');
INSERT INTO `city` VALUES (619, '140225', '浑源县', '140200', NULL, 'f7739981e3e7495db6ecda188ec8c162');
INSERT INTO `city` VALUES (620, '140226', '左云县', '140200', NULL, '2bd839b430244f0d92775a637e548a50');
INSERT INTO `city` VALUES (621, '140227', '大同县', '140200', NULL, '4cd77a3ab20a4952b898091c1f80309a');
INSERT INTO `city` VALUES (622, '140301', '市辖区', '140300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (623, '140302', '城　区', '140300', NULL, NULL);
INSERT INTO `city` VALUES (624, '140303', '矿　区', '140300', NULL, NULL);
INSERT INTO `city` VALUES (625, '140311', '郊　区', '140300', NULL, NULL);
INSERT INTO `city` VALUES (626, '140321', '平定县', '140300', NULL, '2ff740cfe59b43d48ded0a8fee13e005');
INSERT INTO `city` VALUES (627, '140322', '盂　县', '140300', NULL, NULL);
INSERT INTO `city` VALUES (628, '140401', '市辖区', '140400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (629, '140402', '城　区', '140400', NULL, NULL);
INSERT INTO `city` VALUES (630, '140411', '郊　区', '140400', NULL, NULL);
INSERT INTO `city` VALUES (631, '140421', '长治县', '140400', NULL, NULL);
INSERT INTO `city` VALUES (632, '140423', '襄垣县', '140400', NULL, NULL);
INSERT INTO `city` VALUES (633, '140424', '屯留县', '140400', NULL, NULL);
INSERT INTO `city` VALUES (634, '140425', '平顺县', '140400', NULL, NULL);
INSERT INTO `city` VALUES (635, '140426', '黎城县', '140400', NULL, NULL);
INSERT INTO `city` VALUES (636, '140427', '壶关县', '140400', NULL, NULL);
INSERT INTO `city` VALUES (637, '140428', '长子县', '140400', NULL, NULL);
INSERT INTO `city` VALUES (638, '140429', '武乡县', '140400', NULL, NULL);
INSERT INTO `city` VALUES (639, '140430', '沁　县', '140400', NULL, NULL);
INSERT INTO `city` VALUES (640, '140431', '沁源县', '140400', NULL, NULL);
INSERT INTO `city` VALUES (641, '140481', '潞城市', '140400', NULL, NULL);
INSERT INTO `city` VALUES (642, '140501', '市辖区', '140500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (643, '140502', '城　区', '140500', NULL, NULL);
INSERT INTO `city` VALUES (644, '140521', '沁水县', '140500', NULL, 'd1f0eb55d21c45ea9dad179aea6b80dc');
INSERT INTO `city` VALUES (645, '140522', '阳城县', '140500', NULL, 'e45f2d06159849ec9461b0f655c0e1bd');
INSERT INTO `city` VALUES (646, '140524', '陵川县', '140500', NULL, '4c84cbd6e1dd4bbe974bd2efeb56bf87');
INSERT INTO `city` VALUES (647, '140525', '泽州县', '140500', NULL, '25285c16691e405f926dba3cd1769f52');
INSERT INTO `city` VALUES (648, '140581', '高平市', '140500', NULL, '3e4431191e7345078637c5766dbe1aa2');
INSERT INTO `city` VALUES (649, '140601', '市辖区', '140600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (650, '140602', '朔城区', '140600', NULL, '23d9ba74838b48ce96799e25d13dc445');
INSERT INTO `city` VALUES (651, '140603', '平鲁区', '140600', NULL, 'f00e5330359b44749ab9c011a1aa02e2');
INSERT INTO `city` VALUES (652, '140621', '山阴县', '140600', NULL, '8b26f13ef20a46f28bd8adc15ce9a35b');
INSERT INTO `city` VALUES (653, '140622', '应　县', '140600', NULL, NULL);
INSERT INTO `city` VALUES (654, '140623', '右玉县', '140600', NULL, '78c0b6a045b34546bf25102c017c344b');
INSERT INTO `city` VALUES (655, '140624', '怀仁县', '140600', NULL, 'b8ca7de55b6942d4a2fd5ac5250a0e7e');
INSERT INTO `city` VALUES (656, '140701', '市辖区', '140700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (657, '140702', '榆次区', '140700', NULL, 'fa0fe6d4e0c14c13917807f182c1a1da');
INSERT INTO `city` VALUES (658, '140721', '榆社县', '140700', NULL, 'a66c1004d2524fe3b490cb47c42a4146');
INSERT INTO `city` VALUES (659, '140722', '左权县', '140700', NULL, 'ffa75f04648e414da0bb790708c06c5e');
INSERT INTO `city` VALUES (660, '140723', '和顺县', '140700', NULL, '10e515cbc5cc4c3199c23cf6046eae99');
INSERT INTO `city` VALUES (661, '140724', '昔阳县', '140700', NULL, 'd42dbac3852c43adbe26b42149d5c16c');
INSERT INTO `city` VALUES (662, '140725', '寿阳县', '140700', NULL, '803d2a5821114a1aaf14d9c3575d03fd');
INSERT INTO `city` VALUES (663, '140726', '太谷县', '140700', NULL, '85f5ccc3337d43578cf20376d9797f81');
INSERT INTO `city` VALUES (664, '140727', '祁　县', '140700', NULL, NULL);
INSERT INTO `city` VALUES (665, '140728', '平遥县', '140700', NULL, 'e7257eec59f84e01b0e3cd35cd29021d');
INSERT INTO `city` VALUES (666, '140729', '灵石县', '140700', NULL, 'c6e880bf8f0b49d99d3c9b6159026d0d');
INSERT INTO `city` VALUES (667, '140781', '介休市', '140700', NULL, '779c4a3ad4d34c2280b081f561c165b3');
INSERT INTO `city` VALUES (668, '140801', '市辖区', '140800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (669, '140802', '盐湖区', '140800', NULL, '8e354e6f6f2c4cdb922f11ebe22ec84e');
INSERT INTO `city` VALUES (670, '140821', '临猗县', '140800', NULL, '7b3536f512df43358a844644358e8a34');
INSERT INTO `city` VALUES (671, '140822', '万荣县', '140800', NULL, '2409ccfee8944a4cbdb6e92f941f6c48');
INSERT INTO `city` VALUES (672, '140823', '闻喜县', '140800', NULL, '22d77bfb42da495c8b8a6bed17521cc6');
INSERT INTO `city` VALUES (673, '140824', '稷山县', '140800', NULL, '49c182b4c3f8481c8643b4cc02c8d892');
INSERT INTO `city` VALUES (674, '140825', '新绛县', '140800', NULL, '87760dbfeef4481c857ac3c9e4f84168');
INSERT INTO `city` VALUES (675, '140826', '绛　县', '140800', NULL, NULL);
INSERT INTO `city` VALUES (676, '140827', '垣曲县', '140800', NULL, '0b2ac16083444383b4f696fadd5be361');
INSERT INTO `city` VALUES (677, '140828', '夏　县', '140800', NULL, NULL);
INSERT INTO `city` VALUES (678, '140829', '平陆县', '140800', NULL, '2ecc0838949040a9aa5ee699200c983a');
INSERT INTO `city` VALUES (679, '140830', '芮城县', '140800', NULL, '94089a72976246c6a25aae4c5e3a98d5');
INSERT INTO `city` VALUES (680, '140881', '永济市', '140800', NULL, 'aabe9f9d240242b99a17e9a0a2be0a1a');
INSERT INTO `city` VALUES (681, '140882', '河津市', '140800', NULL, '36483ad4cd1d45eca1ad7d4b1cc14f55');
INSERT INTO `city` VALUES (682, '140901', '市辖区', '140900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (683, '140902', '忻府区', '140900', NULL, '446970fb411d484095bc3018c99945d4');
INSERT INTO `city` VALUES (684, '140921', '定襄县', '140900', NULL, '6a0d4314df744f16a8ca95a62d0b588a');
INSERT INTO `city` VALUES (685, '140922', '五台县', '140900', NULL, '6ef4566475b34d1b80ec60bb693f0aa5');
INSERT INTO `city` VALUES (686, '140923', '代　县', '140900', NULL, NULL);
INSERT INTO `city` VALUES (687, '140924', '繁峙县', '140900', NULL, 'ccbb14e2defe454eb421206b8cb290c3');
INSERT INTO `city` VALUES (688, '140925', '宁武县', '140900', NULL, '01f69436eb0d43be95664ef803f65356');
INSERT INTO `city` VALUES (689, '140926', '静乐县', '140900', NULL, '3c2ffdd3dc8247b8899fda46421258dc');
INSERT INTO `city` VALUES (690, '140927', '神池县', '140900', NULL, '8793202fb3944fc1a6d7e0e30900548d');
INSERT INTO `city` VALUES (691, '140928', '五寨县', '140900', NULL, 'bed2163111a441cab7749850422b65a8');
INSERT INTO `city` VALUES (692, '140929', '岢岚县', '140900', NULL, 'fb17d7c0e470431ca8299c3ba954f35c');
INSERT INTO `city` VALUES (693, '140930', '河曲县', '140900', NULL, 'af13f9f90f214a5e9301474f18d7896d');
INSERT INTO `city` VALUES (694, '140931', '保德县', '140900', NULL, '79dd597cc43c4626927db467ae85f620');
INSERT INTO `city` VALUES (695, '140932', '偏关县', '140900', NULL, '24201e5ab4cf410487ee2016f85c5ef9');
INSERT INTO `city` VALUES (696, '140981', '原平市', '140900', NULL, '4f6acdeebc984d16a1fd525be4cc5900');
INSERT INTO `city` VALUES (697, '141001', '市辖区', '141000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (698, '141002', '尧都区', '141000', NULL, '3a8238bdc0784b069d598ece4290d4d8');
INSERT INTO `city` VALUES (699, '141021', '曲沃县', '141000', NULL, '713ac61853964b42a5d38213c941fa87');
INSERT INTO `city` VALUES (700, '141022', '翼城县', '141000', NULL, '2ccedd51ce214e76a7d07703b84c2f0c');
INSERT INTO `city` VALUES (701, '141023', '襄汾县', '141000', NULL, '56aa61a6c4194af8a30fda2f896cc90e');
INSERT INTO `city` VALUES (702, '141024', '洪洞县', '141000', NULL, '854b1c0331ff48d5b2046edd2a073afb');
INSERT INTO `city` VALUES (703, '141025', '古　县', '141000', NULL, NULL);
INSERT INTO `city` VALUES (704, '141026', '安泽县', '141000', NULL, '3a8aa83828d44e4f8be529df6d460d06');
INSERT INTO `city` VALUES (705, '141027', '浮山县', '141000', NULL, '9fee0ed1fe2e4efdb279eea151708877');
INSERT INTO `city` VALUES (706, '141028', '吉　县', '141000', NULL, NULL);
INSERT INTO `city` VALUES (707, '141029', '乡宁县', '141000', NULL, '21d7cc799f2a43bca2bc3429cf1734d6');
INSERT INTO `city` VALUES (708, '141030', '大宁县', '141000', NULL, '1c2d2289d4e6487cb456e002363dd624');
INSERT INTO `city` VALUES (709, '141031', '隰　县', '141000', NULL, NULL);
INSERT INTO `city` VALUES (710, '141032', '永和县', '141000', NULL, 'f0126e5f7da24c37975db57148d94c61');
INSERT INTO `city` VALUES (711, '141033', '蒲　县', '141000', NULL, NULL);
INSERT INTO `city` VALUES (712, '141034', '汾西县', '141000', NULL, '36db0544d1d6407fa012dea1b2b9ef94');
INSERT INTO `city` VALUES (713, '141081', '侯马市', '141000', NULL, 'bb5a103a396c499e957f5da572fc66eb');
INSERT INTO `city` VALUES (714, '141082', '霍州市', '141000', NULL, '0c82858826a342ae8b4928286ac3b0ec');
INSERT INTO `city` VALUES (715, '141101', '市辖区', '141100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (716, '141102', '离石区', '141100', NULL, 'd18c8ae94294410f9449b082e2665f7f');
INSERT INTO `city` VALUES (717, '141121', '文水县', '141100', NULL, 'b3bc1e748a4f406a87dd3f915000bb11');
INSERT INTO `city` VALUES (718, '141122', '交城县', '141100', NULL, '4c0676aaab3d4f9ba900f11cc248a364');
INSERT INTO `city` VALUES (719, '141123', '兴　县', '141100', NULL, NULL);
INSERT INTO `city` VALUES (720, '141124', '临　县', '141100', NULL, NULL);
INSERT INTO `city` VALUES (721, '141125', '柳林县', '141100', NULL, 'fcacbbcbe4bc43c0a47bb751fd16b8b8');
INSERT INTO `city` VALUES (722, '141126', '石楼县', '141100', NULL, '0dcbbf344ea742b5b5377bb2ed1c21fb');
INSERT INTO `city` VALUES (723, '141127', '岚　县', '141100', NULL, NULL);
INSERT INTO `city` VALUES (724, '141128', '方山县', '141100', NULL, '8b7725d54b124901a89ff20bd9310185');
INSERT INTO `city` VALUES (725, '141129', '中阳县', '141100', NULL, '45e6a434adad4897a4d61ca0102c54d1');
INSERT INTO `city` VALUES (726, '141130', '交口县', '141100', NULL, '2a0b900ef7474dd8a74cec4e3d69a403');
INSERT INTO `city` VALUES (727, '141181', '孝义市', '141100', NULL, 'a95d21fef0404110b79b663442f1012d');
INSERT INTO `city` VALUES (728, '141182', '汾阳市', '141100', NULL, 'd181d37f804f4c7fbfa42d07f73cfac9');
INSERT INTO `city` VALUES (729, '150101', '市辖区', '150100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (730, '150102', '新城区', '150100', NULL, '1ffacdcddf744bb78c955e72508f76cf');
INSERT INTO `city` VALUES (731, '150103', '回民区', '150100', NULL, 'e7c1fcd4771445618d531fa610fdd423');
INSERT INTO `city` VALUES (732, '150104', '玉泉区', '150100', NULL, '6c715aafdfe24ac59102e95479ae1f5d');
INSERT INTO `city` VALUES (733, '150105', '赛罕区', '150100', NULL, 'ef17b064c4114570952a70ff4d5f3fa8');
INSERT INTO `city` VALUES (734, '150121', '土默特左旗', '150100', NULL, '95708f4d13ad44029950e6a21a049d38');
INSERT INTO `city` VALUES (735, '150122', '托克托县', '150100', NULL, '6c5fbece3db448bb917e6aad53866e9f');
INSERT INTO `city` VALUES (736, '150123', '和林格尔县', '150100', NULL, 'b9a0af1891554034abba8ac883abcb5b');
INSERT INTO `city` VALUES (737, '150124', '清水河县', '150100', NULL, '816bdf48cd804f9ba03b00154c7bc50a');
INSERT INTO `city` VALUES (738, '150125', '武川县', '150100', NULL, '26c50250e620499abeaa75124b89aa65');
INSERT INTO `city` VALUES (739, '150201', '市辖区', '150200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (740, '150202', '东河区', '150200', NULL, '8d10d83249974a08b6779050260911cb');
INSERT INTO `city` VALUES (741, '150203', '昆都仑区', '150200', NULL, '85da47ca3af5461ba8668939ef047d0a');
INSERT INTO `city` VALUES (742, '150204', '青山区', '150200', NULL, '2e63e187bfcf4ab7a99c7a78c1861493');
INSERT INTO `city` VALUES (743, '150205', '石拐区', '150200', NULL, '82b16d0357364283b5a30e30b69acf28');
INSERT INTO `city` VALUES (744, '150206', '白云矿区', '150200', NULL, NULL);
INSERT INTO `city` VALUES (745, '150207', '九原区', '150200', NULL, '9f7c97a9ec70425596659e5da6d17974');
INSERT INTO `city` VALUES (746, '150221', '土默特右旗', '150200', NULL, '89bc37cade324f73ab23313d0281c36e');
INSERT INTO `city` VALUES (747, '150222', '固阳县', '150200', NULL, '6c5756ef8cff4393880dda381ce5150e');
INSERT INTO `city` VALUES (748, '150223', '达尔罕茂明安联合旗', '150200', NULL, 'e51a40c9a16840a5805152f92a13e30d');
INSERT INTO `city` VALUES (749, '150301', '市辖区', '150300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (750, '150302', '海勃湾区', '150300', NULL, '18bd7104fca44cad8194f1f41b2bd198');
INSERT INTO `city` VALUES (751, '150303', '海南区', '150300', NULL, '9f4890712e2d49a199488179ec2e3f68');
INSERT INTO `city` VALUES (752, '150304', '乌达区', '150300', NULL, '08ae3ceadd91494bb75c2088a106b64c');
INSERT INTO `city` VALUES (753, '150401', '市辖区', '150400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (754, '150402', '红山区', '150400', NULL, '005fe7b35a134dbcb35f4de1096d6c62');
INSERT INTO `city` VALUES (755, '150403', '元宝山区', '150400', NULL, '744c6c24592a453aac530c3b6a5a8ef6');
INSERT INTO `city` VALUES (756, '150404', '松山区', '150400', NULL, '654102681f304288992000e00b6a1c29');
INSERT INTO `city` VALUES (757, '150421', '阿鲁科尔沁旗', '150400', NULL, 'bc51f9c306974d6bb8a14e8f9c69a06b');
INSERT INTO `city` VALUES (758, '150422', '巴林左旗', '150400', NULL, 'bbf0d5bf601b45c2981bd690bcb56f27');
INSERT INTO `city` VALUES (759, '150423', '巴林右旗', '150400', NULL, 'c853e16835af4ef0b585b57f73d16c97');
INSERT INTO `city` VALUES (760, '150424', '林西县', '150400', NULL, 'c62583a6ab294645905bbf2d540e5b15');
INSERT INTO `city` VALUES (761, '150425', '克什克腾旗', '150400', NULL, '0650c54881654c2280781f4267c7809d');
INSERT INTO `city` VALUES (762, '150426', '翁牛特旗', '150400', NULL, '4cbb59ca1aad407684be86bf77c7486d');
INSERT INTO `city` VALUES (763, '150428', '喀喇沁旗', '150400', NULL, '0316ddf0c77a494eb4827e81ab68b8b3');
INSERT INTO `city` VALUES (764, '150429', '宁城县', '150400', NULL, 'a9914b63a69640618682545cb1d269af');
INSERT INTO `city` VALUES (765, '150430', '敖汉旗', '150400', NULL, '5398bc1b681b467384b202933263b70b');
INSERT INTO `city` VALUES (766, '150501', '市辖区', '150500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (767, '150502', '科尔沁区', '150500', NULL, '2fd27a74a0e54edd995e48ff0a91fd57');
INSERT INTO `city` VALUES (768, '150521', '科尔沁左翼中旗', '150500', NULL, 'bb23d6435ce44289bf00594b03c74552');
INSERT INTO `city` VALUES (769, '150522', '科尔沁左翼后旗', '150500', NULL, '0fe74cdb3d26468388574045ef6c7128');
INSERT INTO `city` VALUES (770, '150523', '开鲁县', '150500', NULL, '0d77ade7499244a7942b90f611dd27b2');
INSERT INTO `city` VALUES (771, '150524', '库伦旗', '150500', NULL, 'bb1691870fb84786a650ceec244025fc');
INSERT INTO `city` VALUES (772, '150525', '奈曼旗', '150500', NULL, '2c0c2d5221d445638e7ebfefbf8cc3b5');
INSERT INTO `city` VALUES (773, '150526', '扎鲁特旗', '150500', NULL, '2c212ea6ff30473c93d3ef27503ce7ef');
INSERT INTO `city` VALUES (774, '150581', '霍林郭勒市', '150500', NULL, 'a62a6a7c59034a61be6fe0b8284c65ab');
INSERT INTO `city` VALUES (775, '150602', '东胜区', '150600', NULL, '20e081817e8f4f48a448450874be6e33');
INSERT INTO `city` VALUES (776, '150621', '达拉特旗', '150600', NULL, 'ae4aa4b37c4245bc8a09fabf7520988c');
INSERT INTO `city` VALUES (777, '150622', '准格尔旗', '150600', NULL, 'cd5d968ef9334c78b2557c409e68a6a7');
INSERT INTO `city` VALUES (778, '150623', '鄂托克前旗', '150600', NULL, 'a0c7cb22994742288ecffdee6e0ada38');
INSERT INTO `city` VALUES (779, '150624', '鄂托克旗', '150600', NULL, '875d5cf554f544ea802f476de396941c');
INSERT INTO `city` VALUES (780, '150625', '杭锦旗', '150600', NULL, 'b85a9194a986482fa76c522b2b408b8e');
INSERT INTO `city` VALUES (781, '150626', '乌审旗', '150600', NULL, '94e9db2678cd45efae2bb38b508fa7c3');
INSERT INTO `city` VALUES (782, '150627', '伊金霍洛旗', '150600', NULL, '7901ab88e2fb407e9d643965f2e12a8a');
INSERT INTO `city` VALUES (783, '150701', '市辖区', '150700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (784, '150702', '海拉尔区', '150700', NULL, '1ead6947582b4e2ebb6bf6210d78f930');
INSERT INTO `city` VALUES (785, '150721', '阿荣旗', '150700', NULL, '6e33f757b9d849e199bcfa95f0448234');
INSERT INTO `city` VALUES (786, '150722', '莫力达瓦达斡尔族自治旗', '150700', NULL, 'd2877c19ea1c42ba855f4fab46e8b99d');
INSERT INTO `city` VALUES (787, '150723', '鄂伦春自治旗', '150700', NULL, 'a7f27a7832ec4c5d9bab260de07bf3a0');
INSERT INTO `city` VALUES (788, '150724', '鄂温克族自治旗', '150700', NULL, 'fd9fe483e9f74f6096c0034464ae77d4');
INSERT INTO `city` VALUES (789, '150725', '陈巴尔虎旗', '150700', NULL, '33a35046fa8f4aafbf92ea430f33ad3f');
INSERT INTO `city` VALUES (790, '150726', '新巴尔虎左旗', '150700', NULL, '6acfb53def914912b9fed46cad8b2e82');
INSERT INTO `city` VALUES (791, '150727', '新巴尔虎右旗', '150700', NULL, 'fabf8494c9d04ff5aecca3698d34dc14');
INSERT INTO `city` VALUES (792, '150781', '满洲里市', '150700', NULL, 'a562061693a744fdb6528a21339f6c65');
INSERT INTO `city` VALUES (793, '150782', '牙克石市', '150700', NULL, '42a3f2d573d04c449ae94205b3affff5');
INSERT INTO `city` VALUES (794, '150783', '扎兰屯市', '150700', NULL, '37e0a6618092490bafba2fe02767f2bf');
INSERT INTO `city` VALUES (795, '150784', '额尔古纳市', '150700', NULL, 'd5939dc4018b41e08ae8780dd78abd80');
INSERT INTO `city` VALUES (796, '150785', '根河市', '150700', NULL, '2d784b2d2ff64d1d89ff4fc061f1020f');
INSERT INTO `city` VALUES (797, '150801', '市辖区', '150800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (798, '150802', '临河区', '150800', NULL, '3ebd9140026e4c29bd3bebe80d1f360b');
INSERT INTO `city` VALUES (799, '150821', '五原县', '150800', NULL, '4296f07512774179880942e8a90b4657');
INSERT INTO `city` VALUES (800, '150822', '磴口县', '150800', NULL, '5785c4d070e24704ab3bda24ebd5a7c1');
INSERT INTO `city` VALUES (801, '150823', '乌拉特前旗', '150800', NULL, '7d20de61b98b4f7f8074c4ab8af6068d');
INSERT INTO `city` VALUES (802, '150824', '乌拉特中旗', '150800', NULL, '220eae76ccec4dbd8fbfd9f33bce59d3');
INSERT INTO `city` VALUES (803, '150825', '乌拉特后旗', '150800', NULL, 'c91da62a7cb747739130a587191e0f33');
INSERT INTO `city` VALUES (804, '150826', '杭锦后旗', '150800', NULL, 'cc03e48888f34f359b1283dcdd83a0fb');
INSERT INTO `city` VALUES (805, '150901', '市辖区', '150900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (806, '150902', '集宁区', '150900', NULL, '1c66f3fefb30423ba46b6e719d233a9d');
INSERT INTO `city` VALUES (807, '150921', '卓资县', '150900', NULL, '3860c1331da544b2ae9fbedf7fbd0f50');
INSERT INTO `city` VALUES (808, '150922', '化德县', '150900', NULL, '4c64c6e81952473da7e750f87e315e44');
INSERT INTO `city` VALUES (809, '150923', '商都县', '150900', NULL, '2e351d454a554e3793818e7d180592d0');
INSERT INTO `city` VALUES (810, '150924', '兴和县', '150900', NULL, '85c0d187085843cbb831ef76f33852bd');
INSERT INTO `city` VALUES (811, '150925', '凉城县', '150900', NULL, '1051672372d54612a9429249119bdc2e');
INSERT INTO `city` VALUES (812, '150926', '察哈尔右翼前旗', '150900', NULL, '0c5f449173ad4f58b048266d8c5d1f29');
INSERT INTO `city` VALUES (813, '150927', '察哈尔右翼中旗', '150900', NULL, 'dba6952b79674ad190ea8128eef8e031');
INSERT INTO `city` VALUES (814, '150928', '察哈尔右翼后旗', '150900', NULL, 'b83c0b1487514b748f6372ec2b6db21b');
INSERT INTO `city` VALUES (815, '150929', '四子王旗', '150900', NULL, 'b5997103d04545caa75f59593759dd99');
INSERT INTO `city` VALUES (816, '150981', '丰镇市', '150900', NULL, 'e6b15c42fc4f4253ae3df58492cfbf5a');
INSERT INTO `city` VALUES (817, '152201', '乌兰浩特市', '152200', NULL, '58c56da219cb44ce864906604ddc17a2');
INSERT INTO `city` VALUES (818, '152202', '阿尔山市', '152200', NULL, 'e3a1a9ac33a24527938a5214260ca359');
INSERT INTO `city` VALUES (819, '152221', '科尔沁右翼前旗', '152200', NULL, '28b19cfd8fa84492a64df867eb7708b2');
INSERT INTO `city` VALUES (820, '152222', '科尔沁右翼中旗', '152200', NULL, '0f9f61c216b24a8c94642f864c7b1df5');
INSERT INTO `city` VALUES (821, '152223', '扎赉特旗', '152200', NULL, '5635d91848004c10b7d5bc98a90ca1af');
INSERT INTO `city` VALUES (822, '152224', '突泉县', '152200', NULL, 'becad60cebea47b08ffc18bb166079e6');
INSERT INTO `city` VALUES (823, '152501', '二连浩特市', '152500', NULL, 'a53948aefbde4d42844e9e758a1edf2a');
INSERT INTO `city` VALUES (824, '152502', '锡林浩特市', '152500', NULL, '9db3da68f3e748119318363c7dde3ec5');
INSERT INTO `city` VALUES (825, '152522', '阿巴嘎旗', '152500', NULL, '3cc4adf34ebc4450ba2e1e6161548e1c');
INSERT INTO `city` VALUES (826, '152523', '苏尼特左旗', '152500', NULL, '5ddbb4c47be34477a24c83cf3ed35ba2');
INSERT INTO `city` VALUES (827, '152524', '苏尼特右旗', '152500', NULL, 'a062b26092454f598bbd1e30d71da6d2');
INSERT INTO `city` VALUES (828, '152525', '东乌珠穆沁旗', '152500', NULL, '0296864918de492ca459ea4e25cb4bc4');
INSERT INTO `city` VALUES (829, '152526', '西乌珠穆沁旗', '152500', NULL, 'c346aee3c3ea41cba89dbc21bf1c7798');
INSERT INTO `city` VALUES (830, '152527', '太仆寺旗', '152500', NULL, 'fd6cac0c50a74697817c71aac89d41dd');
INSERT INTO `city` VALUES (831, '152528', '镶黄旗', '152500', NULL, '2aefc21bd44d47d9829974cf6ccdffe2');
INSERT INTO `city` VALUES (832, '152529', '正镶白旗', '152500', NULL, '368b30abf60b410bb4737c2e2f411ad4');
INSERT INTO `city` VALUES (833, '152530', '正蓝旗', '152500', NULL, '50ad475f74a040c09f7bf650e7ea3171');
INSERT INTO `city` VALUES (834, '152531', '多伦县', '152500', NULL, '2caa199ce2f14af1af8daa74c618c198');
INSERT INTO `city` VALUES (835, '152921', '阿拉善左旗', '152900', NULL, '90a3190b7c514faaa92de5d3658265f0');
INSERT INTO `city` VALUES (836, '152922', '阿拉善右旗', '152900', NULL, '1a4f635124de464481a7496c84607925');
INSERT INTO `city` VALUES (837, '152923', '额济纳旗', '152900', NULL, '572d9d65faf04131bdd328e746833121');
INSERT INTO `city` VALUES (838, '210101', '市辖区', '210100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (839, '210102', '和平区', '210100', NULL, 'dfc26813ac444c929ffe53bd281f895b');
INSERT INTO `city` VALUES (840, '210103', '沈河区', '210100', NULL, '7ce64ba0498b48038d598ba3b9937997');
INSERT INTO `city` VALUES (841, '210104', '大东区', '210100', NULL, '5361d2e9783d4de6ac4294e15d891181');
INSERT INTO `city` VALUES (842, '210105', '皇姑区', '210100', NULL, '76a6c2fa7e594bccb9534f790a7653bb');
INSERT INTO `city` VALUES (843, '210106', '铁西区', '210100', NULL, '7f3c7a5b01bd491287d5fb704dda8493');
INSERT INTO `city` VALUES (844, '210111', '苏家屯区', '210100', NULL, 'f2c4afd1dfba423b8e70612506511b5d');
INSERT INTO `city` VALUES (845, '210112', '东陵区', '210100', NULL, NULL);
INSERT INTO `city` VALUES (846, '210113', '新城子区', '210100', NULL, NULL);
INSERT INTO `city` VALUES (847, '210114', '于洪区', '210100', NULL, '90b601a0036f4a28a46a38e4dbfdab26');
INSERT INTO `city` VALUES (848, '210122', '辽中县', '210100', NULL, NULL);
INSERT INTO `city` VALUES (849, '210123', '康平县', '210100', NULL, '19057a2cfb7b46b5a4b5f18ee468545f');
INSERT INTO `city` VALUES (850, '210124', '法库县', '210100', NULL, '0f18bd6bfdc1406e9958255db2ee5b4e');
INSERT INTO `city` VALUES (851, '210181', '新民市', '210100', NULL, 'bda02bc990654f9ea313232921e55b41');
INSERT INTO `city` VALUES (852, '210201', '市辖区', '210200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (853, '210202', '中山区', '210200', NULL, 'b0920a63af6344a8bd5b99024352ce21');
INSERT INTO `city` VALUES (854, '210203', '西岗区', '210200', NULL, 'a442daef946949bd99edd0215f4511a6');
INSERT INTO `city` VALUES (855, '210204', '沙河口区', '210200', NULL, '25c0bdfd139445eabe9aca8b324abdf1');
INSERT INTO `city` VALUES (856, '210211', '甘井子区', '210200', NULL, 'e4efa27632c24b7aaf1402751e5b2743');
INSERT INTO `city` VALUES (857, '210212', '旅顺口区', '210200', NULL, 'ed4c849f495e454d8491eb5ac8b31691');
INSERT INTO `city` VALUES (858, '210213', '金州区', '210200', NULL, 'e8352a25b30c48808fc28cdb65705dce');
INSERT INTO `city` VALUES (859, '210224', '长海县', '210200', NULL, 'c737cc083d374a1d873a1198074290d4');
INSERT INTO `city` VALUES (860, '210281', '瓦房店市', '210200', NULL, '6caade8db0564229a33d3ca97f728c1d');
INSERT INTO `city` VALUES (861, '210282', '普兰店市', '210200', NULL, NULL);
INSERT INTO `city` VALUES (862, '210283', '庄河市', '210200', NULL, '33768eeaf6d34430b9c1ee2e29e442dc');
INSERT INTO `city` VALUES (863, '210301', '市辖区', '210300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (864, '210302', '铁东区', '210300', NULL, '03e458ab067e48ce92a8b3460798a9db');
INSERT INTO `city` VALUES (865, '210303', '铁西区', '210300', NULL, '7f3c7a5b01bd491287d5fb704dda8493');
INSERT INTO `city` VALUES (866, '210304', '立山区', '210300', NULL, '97db2e49e2d64d3fb827f496c5469875');
INSERT INTO `city` VALUES (867, '210311', '千山区', '210300', NULL, '872b1e1c780241c39719c9beb3cf7b78');
INSERT INTO `city` VALUES (868, '210321', '台安县', '210300', NULL, '4006fee5dec7437ba8637d8e7706280a');
INSERT INTO `city` VALUES (869, '210323', '岫岩满族自治县', '210300', NULL, '849a7c5ef7644fa2a44db5ea6c5091f4');
INSERT INTO `city` VALUES (870, '210381', '海城市', '210300', NULL, '35cd84693ac444788a9be025bd0ed36c');
INSERT INTO `city` VALUES (871, '210401', '市辖区', '210400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (872, '210402', '新抚区', '210400', NULL, '55d2fe448015432e8541608184cbc5c7');
INSERT INTO `city` VALUES (873, '210403', '东洲区', '210400', NULL, '448455251cd642b8ba58628717ccf8c8');
INSERT INTO `city` VALUES (874, '210404', '望花区', '210400', NULL, '2b35eeab2bff47a68ec02d0b3b9dbad3');
INSERT INTO `city` VALUES (875, '210411', '顺城区', '210400', NULL, 'c08aed228fd2435fb34402af936c5e6a');
INSERT INTO `city` VALUES (876, '210421', '抚顺县', '210400', NULL, '2c2ccbb103d444989bafbbd381c5be5d');
INSERT INTO `city` VALUES (877, '210422', '新宾满族自治县', '210400', NULL, 'bee4f16cef854e20933e4ea714339e98');
INSERT INTO `city` VALUES (878, '210423', '清原满族自治县', '210400', NULL, '5a2348be265f4574af31c0f7a5c6f84d');
INSERT INTO `city` VALUES (879, '210501', '市辖区', '210500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (880, '210502', '平山区', '210500', NULL, '48f542a8f2a54a6996395c0ab42a49b3');
INSERT INTO `city` VALUES (881, '210503', '溪湖区', '210500', NULL, '93bf8deba9bf4de381ad41f260717be1');
INSERT INTO `city` VALUES (882, '210504', '明山区', '210500', NULL, 'f5dd81a7c70e4ff9b7e2a43e0eb13720');
INSERT INTO `city` VALUES (883, '210505', '南芬区', '210500', NULL, '310b1c29628645a9be9bee63640bf9ad');
INSERT INTO `city` VALUES (884, '210521', '本溪满族自治县', '210500', NULL, '1254aff4116c48fc944e49c25d85bd14');
INSERT INTO `city` VALUES (885, '210522', '桓仁满族自治县', '210500', NULL, 'ddab02d1ef6f47abb2091a8ad657f5d1');
INSERT INTO `city` VALUES (886, '210601', '市辖区', '210600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (887, '210602', '元宝区', '210600', NULL, '165f318a4a7b41338a562df4582ba800');
INSERT INTO `city` VALUES (888, '210603', '振兴区', '210600', NULL, '5fae7dd633634378884338c11052570e');
INSERT INTO `city` VALUES (889, '210604', '振安区', '210600', NULL, '01d383fe113b43e6af6059c0420099ed');
INSERT INTO `city` VALUES (890, '210624', '宽甸满族自治县', '210600', NULL, '19691822054d44739f9a55b8115ee3df');
INSERT INTO `city` VALUES (891, '210681', '东港市', '210600', NULL, '265c7230f2f84de2b13fcc8cab62c188');
INSERT INTO `city` VALUES (892, '210682', '凤城市', '210600', NULL, 'bcfac1172a9147ff839d08a55ba38078');
INSERT INTO `city` VALUES (893, '210701', '市辖区', '210700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (894, '210702', '古塔区', '210700', NULL, NULL);
INSERT INTO `city` VALUES (895, '210703', '凌河区', '210700', NULL, NULL);
INSERT INTO `city` VALUES (896, '210711', '太和区', '210700', NULL, NULL);
INSERT INTO `city` VALUES (897, '210726', '黑山县', '210700', NULL, NULL);
INSERT INTO `city` VALUES (898, '210727', '义　县', '210700', NULL, NULL);
INSERT INTO `city` VALUES (899, '210781', '凌海市', '210700', NULL, NULL);
INSERT INTO `city` VALUES (900, '210782', '北宁市', '210700', NULL, NULL);
INSERT INTO `city` VALUES (901, '210801', '市辖区', '210800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (902, '210802', '站前区', '210800', NULL, NULL);
INSERT INTO `city` VALUES (903, '210803', '西市区', '210800', NULL, NULL);
INSERT INTO `city` VALUES (904, '210804', '鲅鱼圈区', '210800', NULL, NULL);
INSERT INTO `city` VALUES (905, '210811', '老边区', '210800', NULL, NULL);
INSERT INTO `city` VALUES (906, '210881', '盖州市', '210800', NULL, NULL);
INSERT INTO `city` VALUES (907, '210882', '大石桥市', '210800', NULL, NULL);
INSERT INTO `city` VALUES (908, '210901', '市辖区', '210900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (909, '210902', '海州区', '210900', NULL, '1737e3bf2bd24c6890cba459e5f4b43a');
INSERT INTO `city` VALUES (910, '210903', '新邱区', '210900', NULL, 'd8f85ab84e3a4ad792a1c2eff73af0ff');
INSERT INTO `city` VALUES (911, '210904', '太平区', '210900', NULL, 'd78a7b876c184334849621674ee3c08d');
INSERT INTO `city` VALUES (912, '210905', '清河门区', '210900', NULL, 'f5d3d0f8e398468a9dba07bec3f814d8');
INSERT INTO `city` VALUES (913, '210911', '细河区', '210900', NULL, '88df864e44a849f7a8c6e7b990243dba');
INSERT INTO `city` VALUES (914, '210921', '阜新蒙古族自治县', '210900', NULL, '037a88a22ee149adab18cb3586936b1e');
INSERT INTO `city` VALUES (915, '210922', '彰武县', '210900', NULL, '9d8fe01f0b0a4f59bf5466e80479933c');
INSERT INTO `city` VALUES (916, '211001', '市辖区', '211000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (917, '211002', '白塔区', '211000', NULL, 'f8378b8f9a564495b698371a1e1a74f2');
INSERT INTO `city` VALUES (918, '211003', '文圣区', '211000', NULL, 'd7d7b7fcc45443009f306c1d5d3966f9');
INSERT INTO `city` VALUES (919, '211004', '宏伟区', '211000', NULL, '0ffc0bd0849d4db7a8a568fd8dea7c8c');
INSERT INTO `city` VALUES (920, '211005', '弓长岭区', '211000', NULL, '71e9ed53e3114081b1b60cefae8e4702');
INSERT INTO `city` VALUES (921, '211011', '太子河区', '211000', NULL, '0d8889acc8c24eb7816e625d9332ac69');
INSERT INTO `city` VALUES (922, '211021', '辽阳县', '211000', NULL, '36de51f2f4414a26a6eb1652965383fd');
INSERT INTO `city` VALUES (923, '211081', '灯塔市', '211000', NULL, '5576552b30b34134bd835819acbe91b6');
INSERT INTO `city` VALUES (924, '211101', '市辖区', '211100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (925, '211102', '双台子区', '211100', NULL, '195d1da2707b4b07a027bc6be1684e80');
INSERT INTO `city` VALUES (926, '211103', '兴隆台区', '211100', NULL, '1cca7e61f4d142168cd623bd79f3c9ae');
INSERT INTO `city` VALUES (927, '211121', '大洼县', '211100', NULL, NULL);
INSERT INTO `city` VALUES (928, '211122', '盘山县', '211100', NULL, '5f7e7f5816be4acca214425d6d60598f');
INSERT INTO `city` VALUES (929, '211201', '市辖区', '211200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (930, '211202', '银州区', '211200', NULL, NULL);
INSERT INTO `city` VALUES (931, '211204', '清河区', '211200', NULL, NULL);
INSERT INTO `city` VALUES (932, '211221', '铁岭县', '211200', NULL, NULL);
INSERT INTO `city` VALUES (933, '211223', '西丰县', '211200', NULL, NULL);
INSERT INTO `city` VALUES (934, '211224', '昌图县', '211200', NULL, NULL);
INSERT INTO `city` VALUES (935, '211281', '调兵山市', '211200', NULL, NULL);
INSERT INTO `city` VALUES (936, '211282', '开原市', '211200', NULL, NULL);
INSERT INTO `city` VALUES (937, '211301', '市辖区', '211300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (938, '211302', '双塔区', '211300', NULL, '944b9f99947345a59f98134a70e82c6b');
INSERT INTO `city` VALUES (939, '211303', '龙城区', '211300', NULL, '9e770bd4736c4eafb7e1698512b4b037');
INSERT INTO `city` VALUES (940, '211321', '朝阳县', '211300', NULL, '09577f2ba46b4eaea3def557255e8e28');
INSERT INTO `city` VALUES (941, '211322', '建平县', '211300', NULL, '667a40f9b09c4ab9949e8002cb7f84e8');
INSERT INTO `city` VALUES (942, '211324', '喀喇沁左翼蒙古族自治县', '211300', NULL, '272e71ff3e23421aab9e0e2ff147816b');
INSERT INTO `city` VALUES (943, '211381', '北票市', '211300', NULL, '16ff505c2dad40a59259d7c7c32fdfad');
INSERT INTO `city` VALUES (944, '211382', '凌源市', '211300', NULL, '94d430f222aa4ee489a72328ec8e785a');
INSERT INTO `city` VALUES (945, '211401', '市辖区', '211400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (946, '211402', '连山区', '211400', NULL, '7bd25c5fd7464ea286d099e23275e8b8');
INSERT INTO `city` VALUES (947, '211403', '龙港区', '211400', NULL, '79bc2bc732fa410e883ddadfe8da01a3');
INSERT INTO `city` VALUES (948, '211404', '南票区', '211400', NULL, '12ad4c45ccfb4247b45cd3019f23f0c9');
INSERT INTO `city` VALUES (949, '211421', '绥中县', '211400', NULL, 'de84c9f7f2c447c08c921e5befc80984');
INSERT INTO `city` VALUES (950, '211422', '建昌县', '211400', NULL, 'ef276e6b337d4a9998ab6d1a3cbbc6bb');
INSERT INTO `city` VALUES (951, '211481', '兴城市', '211400', NULL, '020471de12a54c5ca80aad3fc1bfea20');
INSERT INTO `city` VALUES (952, '220101', '市辖区', '220100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (953, '220102', '南关区', '220100', NULL, '973864cac73043fc919596ca9352714d');
INSERT INTO `city` VALUES (954, '220103', '宽城区', '220100', NULL, 'dbda9212f20c4754a779a4188c3d58f7');
INSERT INTO `city` VALUES (955, '220104', '朝阳区', '220100', NULL, '47918eb849094a2ab32876f44f03cd86');
INSERT INTO `city` VALUES (956, '220105', '二道区', '220100', NULL, 'eb757506aef44a35806ef03a72d61257');
INSERT INTO `city` VALUES (957, '220106', '绿园区', '220100', NULL, 'e57a5376254948128f25c19bbbe6a4fe');
INSERT INTO `city` VALUES (958, '220112', '双阳区', '220100', NULL, '667e7a8be0eb4ee5bd38ad1a28ed1367');
INSERT INTO `city` VALUES (959, '220122', '农安县', '220100', NULL, '923176efc2ab45ef980fdda8f7fcaf2c');
INSERT INTO `city` VALUES (960, '220181', '九台市', '220100', NULL, NULL);
INSERT INTO `city` VALUES (961, '220182', '榆树市', '220100', NULL, '09f4717bc3884712b707e55019c7aff8');
INSERT INTO `city` VALUES (962, '220183', '德惠市', '220100', NULL, '73bdd8c55c9e4e3c86f09521dc61a220');
INSERT INTO `city` VALUES (963, '220201', '市辖区', '220200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (964, '220202', '昌邑区', '220200', NULL, '47d35114a40643b5bbf2c7103b489e4e');
INSERT INTO `city` VALUES (965, '220203', '龙潭区', '220200', NULL, '9bbeec13b35941b9a6f2fabd03466124');
INSERT INTO `city` VALUES (966, '220204', '船营区', '220200', NULL, '6a92c4482f434157b981d5452e47154d');
INSERT INTO `city` VALUES (967, '220211', '丰满区', '220200', NULL, '592c79495f764c8ca0a7b012b526ce9f');
INSERT INTO `city` VALUES (968, '220221', '永吉县', '220200', NULL, '0cf9fd296864469db0040459d2d63604');
INSERT INTO `city` VALUES (969, '220281', '蛟河市', '220200', NULL, 'ffb9db3171c34ab8b1f87a33ce708b53');
INSERT INTO `city` VALUES (970, '220282', '桦甸市', '220200', NULL, '5c4a15150c5b4069919f0b2d561e054e');
INSERT INTO `city` VALUES (971, '220283', '舒兰市', '220200', NULL, '3f9fddada1d24a0283c902d0e2592a75');
INSERT INTO `city` VALUES (972, '220284', '磐石市', '220200', NULL, '1b032191f13a42cfa3a603be22ba7c51');
INSERT INTO `city` VALUES (973, '220301', '市辖区', '220300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (974, '220302', '铁西区', '220300', NULL, '7f3c7a5b01bd491287d5fb704dda8493');
INSERT INTO `city` VALUES (975, '220303', '铁东区', '220300', NULL, '03e458ab067e48ce92a8b3460798a9db');
INSERT INTO `city` VALUES (976, '220322', '梨树县', '220300', NULL, '6db38f7b639c48bdbb585fabec08e730');
INSERT INTO `city` VALUES (977, '220323', '伊通满族自治县', '220300', NULL, 'f8aa30e0131542ef8c51c95d5bbb085c');
INSERT INTO `city` VALUES (978, '220381', '公主岭市', '220300', NULL, '3c999814652f41e3ae25866ff76393f3');
INSERT INTO `city` VALUES (979, '220382', '双辽市', '220300', NULL, 'd6a7d9d84e854faabeabc13ec61d59fc');
INSERT INTO `city` VALUES (980, '220401', '市辖区', '220400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (981, '220402', '龙山区', '220400', NULL, 'bf1f8274a1834e0ba5b2b8cc32206f35');
INSERT INTO `city` VALUES (982, '220403', '西安区', '220400', NULL, '671e5ec50a1048f7b2f86278ce3913c5');
INSERT INTO `city` VALUES (983, '220421', '东丰县', '220400', NULL, 'bd97ccb26880492cab139838465aa00e');
INSERT INTO `city` VALUES (984, '220422', '东辽县', '220400', NULL, '414a9d78ec284601be5d7c7ba7a80a74');
INSERT INTO `city` VALUES (985, '220501', '市辖区', '220500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (986, '220502', '东昌区', '220500', NULL, 'fe423fb612db4cc3b7aaf189a86e8f6c');
INSERT INTO `city` VALUES (987, '220503', '二道江区', '220500', NULL, '470cbcdcc16245f7a1e24bf4e5fd7fbc');
INSERT INTO `city` VALUES (988, '220521', '通化县', '220500', NULL, '85cba6d557a54c738d9ddc07ecf792e0');
INSERT INTO `city` VALUES (989, '220523', '辉南县', '220500', NULL, 'f511fa5c06f840a69113f1aab0251052');
INSERT INTO `city` VALUES (990, '220524', '柳河县', '220500', NULL, '7cf01da00bd144efa9b57ce8b05c0947');
INSERT INTO `city` VALUES (991, '220581', '梅河口市', '220500', NULL, '7c7b5f3592354fb19133bbdd806b5b34');
INSERT INTO `city` VALUES (992, '220582', '集安市', '220500', NULL, '0403ee1eb3494c54a0ff467c20bcf69f');
INSERT INTO `city` VALUES (993, '220601', '市辖区', '220600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (994, '220602', '八道江区', '220600', NULL, NULL);
INSERT INTO `city` VALUES (995, '220621', '抚松县', '220600', NULL, 'b2beb26a5d784822a4f200cc0118676d');
INSERT INTO `city` VALUES (996, '220622', '靖宇县', '220600', NULL, '6eacc176f1714113aa712109b9023496');
INSERT INTO `city` VALUES (997, '220623', '长白朝鲜族自治县', '220600', NULL, '563a5a6d90b04a77bbf1acd0ef48dae2');
INSERT INTO `city` VALUES (998, '220625', '江源县', '220600', NULL, NULL);
INSERT INTO `city` VALUES (999, '220681', '临江市', '220600', NULL, 'cc1b9cf1597a4d8e8767a9faa6100035');
INSERT INTO `city` VALUES (1000, '220701', '市辖区', '220700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1001, '220702', '宁江区', '220700', NULL, '64c7d1bb730547a099483cac687ec487');
INSERT INTO `city` VALUES (1002, '220721', '前郭尔罗斯蒙古族自治县', '220700', NULL, 'cdd5aadd16c04a8cb4d71eecfea2e62e');
INSERT INTO `city` VALUES (1003, '220722', '长岭县', '220700', NULL, '6564dc388e664325aafdbd36849780c1');
INSERT INTO `city` VALUES (1004, '220723', '乾安县', '220700', NULL, '7ce958c763a444d19beed41c785ac56f');
INSERT INTO `city` VALUES (1005, '220724', '扶余县', '220700', NULL, NULL);
INSERT INTO `city` VALUES (1006, '220801', '市辖区', '220800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1007, '220802', '洮北区', '220800', NULL, '9d476fc0feb54cef8449b835c59b8ac7');
INSERT INTO `city` VALUES (1008, '220821', '镇赉县', '220800', NULL, '98489bc9fa384185b1ff3d58bc3cc2b4');
INSERT INTO `city` VALUES (1009, '220822', '通榆县', '220800', NULL, '97cc5777133f4872a3b1253805e5e82b');
INSERT INTO `city` VALUES (1010, '220881', '洮南市', '220800', NULL, '245d9ed5aa9b4cda8032e9134d5babd4');
INSERT INTO `city` VALUES (1011, '220882', '大安市', '220800', NULL, 'f477f96d1bce44f6903b8f75257a8a46');
INSERT INTO `city` VALUES (1012, '222401', '延吉市', '222400', NULL, '793b1f1c81da44509928d33370d54c1c');
INSERT INTO `city` VALUES (1013, '222402', '图们市', '222400', NULL, 'ba68cedd1edf43bb8a29851311cb00cc');
INSERT INTO `city` VALUES (1014, '222403', '敦化市', '222400', NULL, 'dd365287208c4d53a449693b7bba520b');
INSERT INTO `city` VALUES (1015, '222404', '珲春市', '222400', NULL, 'b8680f72c7a94c58bfc4ac9e87375577');
INSERT INTO `city` VALUES (1016, '222405', '龙井市', '222400', NULL, 'f55f8754b540447f976d460882eab350');
INSERT INTO `city` VALUES (1017, '222406', '和龙市', '222400', NULL, 'fa24be1f76cd4e518093b751259340bf');
INSERT INTO `city` VALUES (1018, '222424', '汪清县', '222400', NULL, 'b4fc91a5a2534acc9689f843cb6e32e3');
INSERT INTO `city` VALUES (1019, '222426', '安图县', '222400', NULL, '146eb0ae84a9405b9a76661a533decc0');
INSERT INTO `city` VALUES (1020, '230101', '市辖区', '230100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1021, '230102', '道里区', '230100', NULL, 'fbb81fb90a7c48ca8490c4b637f1451d');
INSERT INTO `city` VALUES (1022, '230103', '南岗区', '230100', NULL, 'c56cc6c4f0314b69b9e2be80af133cd2');
INSERT INTO `city` VALUES (1023, '230104', '道外区', '230100', NULL, 'ef1d4b49bf4047d5997f887cac20f5c5');
INSERT INTO `city` VALUES (1024, '230106', '香坊区', '230100', NULL, '05571113286040318d67fb4584476db4');
INSERT INTO `city` VALUES (1025, '230107', '动力区', '230100', NULL, NULL);
INSERT INTO `city` VALUES (1026, '230108', '平房区', '230100', NULL, '8912e0627b8f436cbd1a42be5a01ebf3');
INSERT INTO `city` VALUES (1027, '230109', '松北区', '230100', NULL, 'e78e12a1e2eb4ef7899f4072e652c3e4');
INSERT INTO `city` VALUES (1028, '230111', '呼兰区', '230100', NULL, '53ec46aab47444c3b86690f3fd56efbb');
INSERT INTO `city` VALUES (1029, '230123', '依兰县', '230100', NULL, '4b16cc8daf594bb48e9a2a46df80bae9');
INSERT INTO `city` VALUES (1030, '230124', '方正县', '230100', NULL, '43e6739b71fb4f638f0bfcb2947b5012');
INSERT INTO `city` VALUES (1031, '230125', '宾　县', '230100', NULL, NULL);
INSERT INTO `city` VALUES (1032, '230126', '巴彦县', '230100', NULL, '7db0f4834001465ab644f1f20a139679');
INSERT INTO `city` VALUES (1033, '230127', '木兰县', '230100', NULL, '1bc845b41be845fe9637b3afbac9d1a9');
INSERT INTO `city` VALUES (1034, '230128', '通河县', '230100', NULL, '45e72eb7cd594edfa7040690aea9c217');
INSERT INTO `city` VALUES (1035, '230129', '延寿县', '230100', NULL, 'ec1f4d52c2cd4d5f99548dc41bc44fa5');
INSERT INTO `city` VALUES (1036, '230181', '阿城市', '230100', NULL, NULL);
INSERT INTO `city` VALUES (1037, '230182', '双城市', '230100', NULL, NULL);
INSERT INTO `city` VALUES (1038, '230183', '尚志市', '230100', NULL, '33315c0e2fb745568781a4040d01ee7c');
INSERT INTO `city` VALUES (1039, '230184', '五常市', '230100', NULL, '400ae5e41bb7404480f246a76f2db503');
INSERT INTO `city` VALUES (1040, '230201', '市辖区', '230200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1041, '230202', '龙沙区', '230200', NULL, '8e17ccbb6eaf4b22b269453cea068dd5');
INSERT INTO `city` VALUES (1042, '230203', '建华区', '230200', NULL, '553b7a7908e440f8b87530fbe1847a86');
INSERT INTO `city` VALUES (1043, '230204', '铁锋区', '230200', NULL, '1f060ee46fe84cdbaa4b9e50b1cd5fde');
INSERT INTO `city` VALUES (1044, '230205', '昂昂溪区', '230200', NULL, '370a6ddeb2e84d4a942eb0a826e0667c');
INSERT INTO `city` VALUES (1045, '230206', '富拉尔基区', '230200', NULL, '8a88f3cd85324cea8a540f4681f2d036');
INSERT INTO `city` VALUES (1046, '230207', '碾子山区', '230200', NULL, '7427d939c77548f685a45df3624139d4');
INSERT INTO `city` VALUES (1047, '230208', '梅里斯达斡尔族区', '230200', NULL, 'cc1d8fee3ab546ab95bea08a2dc1386c');
INSERT INTO `city` VALUES (1048, '230221', '龙江县', '230200', NULL, '11f1ea0f4a0d471ba710aa66753c69c9');
INSERT INTO `city` VALUES (1049, '230223', '依安县', '230200', NULL, '819b5522872f4653b7db4f7d67f73f21');
INSERT INTO `city` VALUES (1050, '230224', '泰来县', '230200', NULL, 'bfd3fd904f6142d7b3af958d3d004d64');
INSERT INTO `city` VALUES (1051, '230225', '甘南县', '230200', NULL, '1e05dfd6b41a499881431bf17516adfd');
INSERT INTO `city` VALUES (1052, '230227', '富裕县', '230200', NULL, 'd1cf31bec9054860a85e9c1b320743af');
INSERT INTO `city` VALUES (1053, '230229', '克山县', '230200', NULL, '66d84ab421ee42bcacd84fb9e932412b');
INSERT INTO `city` VALUES (1054, '230230', '克东县', '230200', NULL, '6309e5636efb4f2caa4d0d1ae635f2a9');
INSERT INTO `city` VALUES (1055, '230231', '拜泉县', '230200', NULL, '00ddb16a726f4363bac4bf3e2113ddd9');
INSERT INTO `city` VALUES (1056, '230281', '讷河市', '230200', NULL, '83ea3a77169546d5a42ccd2b2e6708c6');
INSERT INTO `city` VALUES (1057, '230301', '市辖区', '230300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1058, '230302', '鸡冠区', '230300', NULL, 'bc60d2bf33ad49a8bca2128dd85fac46');
INSERT INTO `city` VALUES (1059, '230303', '恒山区', '230300', NULL, '98afc2a8ec1549b186bec80bf7634367');
INSERT INTO `city` VALUES (1060, '230304', '滴道区', '230300', NULL, '0faec9e415a94d5da0cfc1dcd27e21da');
INSERT INTO `city` VALUES (1061, '230305', '梨树区', '230300', NULL, 'ef4bb7b44d9a424cbeb62ed1227dd49c');
INSERT INTO `city` VALUES (1062, '230306', '城子河区', '230300', NULL, '9f7a1b0bcad641b9b6d304ca8a6b265d');
INSERT INTO `city` VALUES (1063, '230307', '麻山区', '230300', NULL, '73885c62f44d4a66b45497ad84cf0e23');
INSERT INTO `city` VALUES (1064, '230321', '鸡东县', '230300', NULL, '0dcce02c40284ee5a0528e877933b5a0');
INSERT INTO `city` VALUES (1065, '230381', '虎林市', '230300', NULL, '4ab01cb0b5024d35b6575387473c4d92');
INSERT INTO `city` VALUES (1066, '230382', '密山市', '230300', NULL, 'b03b3dcbf10d40b3abc42ed9b071a9b7');
INSERT INTO `city` VALUES (1067, '230401', '市辖区', '230400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1068, '230402', '向阳区', '230400', NULL, '704e70dc2ffe4fdbabb5e794c60168cc');
INSERT INTO `city` VALUES (1069, '230403', '工农区', '230400', NULL, '445fde8c344d43b1bb3b0e3cc96c5c6a');
INSERT INTO `city` VALUES (1070, '230404', '南山区', '230400', NULL, '0272ac800b85451b84b1d6fd41d7993d');
INSERT INTO `city` VALUES (1071, '230405', '兴安区', '230400', NULL, '982592ce74784824940690cfa4abc0aa');
INSERT INTO `city` VALUES (1072, '230406', '东山区', '230400', NULL, 'e43369304e534392ab5649b95e5485c1');
INSERT INTO `city` VALUES (1073, '230407', '兴山区', '230400', NULL, '9dcd75e8f4c64859850b342186a31d26');
INSERT INTO `city` VALUES (1074, '230421', '萝北县', '230400', NULL, '0db23e3944be42229738b76dc932d7ca');
INSERT INTO `city` VALUES (1075, '230422', '绥滨县', '230400', NULL, '1328b9924df64f9f93478db43727b880');
INSERT INTO `city` VALUES (1076, '230501', '市辖区', '230500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1077, '230502', '尖山区', '230500', NULL, 'bd9318ef18824290b2159076974d5cf9');
INSERT INTO `city` VALUES (1078, '230503', '岭东区', '230500', NULL, '48a4e903abba4a48a91d8a0c6b90f825');
INSERT INTO `city` VALUES (1079, '230505', '四方台区', '230500', NULL, 'd098dadcd38d44a1a51a67b5ba821dcc');
INSERT INTO `city` VALUES (1080, '230506', '宝山区', '230500', NULL, '5c12c0979d7e48aca980664e1869e660');
INSERT INTO `city` VALUES (1081, '230521', '集贤县', '230500', NULL, '4b41fcbc309d45f5b2c907b80f482244');
INSERT INTO `city` VALUES (1082, '230522', '友谊县', '230500', NULL, '757659682a4f4b7bbb38e18fc41b2f87');
INSERT INTO `city` VALUES (1083, '230523', '宝清县', '230500', NULL, '57b09d5c037b41508d5fd2217196749a');
INSERT INTO `city` VALUES (1084, '230524', '饶河县', '230500', NULL, '2acb2dd7ceb349ff9cac27f9b3b7d07c');
INSERT INTO `city` VALUES (1085, '230601', '市辖区', '230600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1086, '230602', '萨尔图区', '230600', NULL, 'e3b48017b7374234b1b3d4c90d01b822');
INSERT INTO `city` VALUES (1087, '230603', '龙凤区', '230600', NULL, '97b0fb68eb684fcb8a0319233e7d7916');
INSERT INTO `city` VALUES (1088, '230604', '让胡路区', '230600', NULL, '031e8329bc4741b2b9209aaa5cbcf48b');
INSERT INTO `city` VALUES (1089, '230605', '红岗区', '230600', NULL, '6cb432ca4729424fab6d1d997fa2fd00');
INSERT INTO `city` VALUES (1090, '230606', '大同区', '230600', NULL, '2b231140c5b34b8d86e5512cbd04f508');
INSERT INTO `city` VALUES (1091, '230621', '肇州县', '230600', NULL, 'f512f75f8a8a4938a923f466151ddac3');
INSERT INTO `city` VALUES (1092, '230622', '肇源县', '230600', NULL, '1be8212fd79f4277b89a9292d21a62de');
INSERT INTO `city` VALUES (1093, '230623', '林甸县', '230600', NULL, 'f8ccd530be2b4520ac7dbf57ab7563db');
INSERT INTO `city` VALUES (1094, '230624', '杜尔伯特蒙古族自治县', '230600', NULL, '24001fe0c2214160980b54a4748c637d');
INSERT INTO `city` VALUES (1095, '230701', '市辖区', '230700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1096, '230702', '伊春区', '230700', NULL, '5616c468f8f44a368e00a31fc4d09add');
INSERT INTO `city` VALUES (1097, '230703', '南岔区', '230700', NULL, '073affd405094209aae4180e006a5f70');
INSERT INTO `city` VALUES (1098, '230704', '友好区', '230700', NULL, '93859a599f7d4cd8b6433627822c4a22');
INSERT INTO `city` VALUES (1099, '230705', '西林区', '230700', NULL, '7837a7ef6a704ceba6b0530987dafb25');
INSERT INTO `city` VALUES (1100, '230706', '翠峦区', '230700', NULL, 'db3a06e18be34eb48d45f79c8241f558');
INSERT INTO `city` VALUES (1101, '230707', '新青区', '230700', NULL, '4dab48385e234e62aad0944d828d723c');
INSERT INTO `city` VALUES (1102, '230708', '美溪区', '230700', NULL, 'a52e1bfee7434a36bedfc4eb91835dd8');
INSERT INTO `city` VALUES (1103, '230709', '金山屯区', '230700', NULL, '106e6c9b88b74cacb283eecdbb5b63fc');
INSERT INTO `city` VALUES (1104, '230710', '五营区', '230700', NULL, '7424e76fa0514af98da10f1cb822d778');
INSERT INTO `city` VALUES (1105, '230711', '乌马河区', '230700', NULL, '5d4eaea578ed4c6a9f9013f5437a7b09');
INSERT INTO `city` VALUES (1106, '230712', '汤旺河区', '230700', NULL, 'ee9d8b4d62864faf99d6e589fd93b9b1');
INSERT INTO `city` VALUES (1107, '230713', '带岭区', '230700', NULL, 'b06d528e635c45c191ff9349349eb79b');
INSERT INTO `city` VALUES (1108, '230714', '乌伊岭区', '230700', NULL, 'ddf65d427aca48a0b5fd14eae2bada69');
INSERT INTO `city` VALUES (1109, '230715', '红星区', '230700', NULL, 'a6ce71eb7a7b4aeebd23f0726184ddd7');
INSERT INTO `city` VALUES (1110, '230716', '上甘岭区', '230700', NULL, 'd1d26816968e41c89c13ddb7ffaf839f');
INSERT INTO `city` VALUES (1111, '230722', '嘉荫县', '230700', NULL, '226330fcb9bd43d7852b74e04cd88a96');
INSERT INTO `city` VALUES (1112, '230781', '铁力市', '230700', NULL, 'da9755369b844b4da97eed0cdde7c1c1');
INSERT INTO `city` VALUES (1113, '230801', '市辖区', '230800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1114, '230802', '永红区', '230800', NULL, NULL);
INSERT INTO `city` VALUES (1115, '230803', '向阳区', '230800', NULL, '704e70dc2ffe4fdbabb5e794c60168cc');
INSERT INTO `city` VALUES (1116, '230804', '前进区', '230800', NULL, '3bbcf8f1c5124c888bd41921d5ae7b09');
INSERT INTO `city` VALUES (1117, '230805', '东风区', '230800', NULL, 'df37f28a780a44348bab271f69b48cb9');
INSERT INTO `city` VALUES (1118, '230811', '郊　区', '230800', NULL, NULL);
INSERT INTO `city` VALUES (1119, '230822', '桦南县', '230800', NULL, 'c28da777a0d249f5aa3fda646a41afd2');
INSERT INTO `city` VALUES (1120, '230826', '桦川县', '230800', NULL, 'd631ee56d4644d6983f9453d1e331e80');
INSERT INTO `city` VALUES (1121, '230828', '汤原县', '230800', NULL, '7bd572d84a184cd69530bb70a21ae1e2');
INSERT INTO `city` VALUES (1122, '230833', '抚远县', '230800', NULL, NULL);
INSERT INTO `city` VALUES (1123, '230881', '同江市', '230800', NULL, '65b8596a9bd44d35b23139a6bec2ce15');
INSERT INTO `city` VALUES (1124, '230882', '富锦市', '230800', NULL, 'bb90e19a23da4e31a0ba2e17b51832b8');
INSERT INTO `city` VALUES (1125, '230901', '市辖区', '230900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1126, '230902', '新兴区', '230900', NULL, '4588fad798a84f06be0dc2400eb94eb8');
INSERT INTO `city` VALUES (1127, '230903', '桃山区', '230900', NULL, '08ca9c1188ba4949ad85755494946cc7');
INSERT INTO `city` VALUES (1128, '230904', '茄子河区', '230900', NULL, 'dd1b9c98914843698e7bd4c04fb9a325');
INSERT INTO `city` VALUES (1129, '230921', '勃利县', '230900', NULL, 'c25c0450a12f43b2ad7de2420dc29aca');
INSERT INTO `city` VALUES (1130, '231001', '市辖区', '231000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1131, '231002', '东安区', '231000', NULL, '0abd3053a957415b8c6d2e699435316e');
INSERT INTO `city` VALUES (1132, '231003', '阳明区', '231000', NULL, '59f2154a110e479eb34b53a23fd19f4e');
INSERT INTO `city` VALUES (1133, '231004', '爱民区', '231000', NULL, '504d7199616641ba82df034f265ee0c7');
INSERT INTO `city` VALUES (1134, '231005', '西安区', '231000', NULL, '671e5ec50a1048f7b2f86278ce3913c5');
INSERT INTO `city` VALUES (1135, '231024', '东宁县', '231000', NULL, NULL);
INSERT INTO `city` VALUES (1136, '231025', '林口县', '231000', NULL, '0fb64010fc9c4ddea49adc911b8dd616');
INSERT INTO `city` VALUES (1137, '231081', '绥芬河市', '231000', NULL, '72d9c37ce2b34373911f0e2f2f4cac65');
INSERT INTO `city` VALUES (1138, '231083', '海林市', '231000', NULL, 'ca46b4b4900e4f329c55c019a91d457f');
INSERT INTO `city` VALUES (1139, '231084', '宁安市', '231000', NULL, '59aa0673d775400794b4976e4278ac4a');
INSERT INTO `city` VALUES (1140, '231085', '穆棱市', '231000', NULL, 'cf37aa6006454298ada745a4d68aea9c');
INSERT INTO `city` VALUES (1141, '231101', '市辖区', '231100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1142, '231102', '爱辉区', '231100', NULL, '47d102925941491d8ef51d1401a131f8');
INSERT INTO `city` VALUES (1143, '231121', '嫩江县', '231100', NULL, '48a9adb86944439583ed3ac5b8e18da6');
INSERT INTO `city` VALUES (1144, '231123', '逊克县', '231100', NULL, 'e6f09ba465684c669abdbdaad7a4cb21');
INSERT INTO `city` VALUES (1145, '231124', '孙吴县', '231100', NULL, '6ebe745a52a94c9291bf4ab80c612933');
INSERT INTO `city` VALUES (1146, '231181', '北安市', '231100', NULL, '8c152e55a9e04b2084026a3edbb14a7b');
INSERT INTO `city` VALUES (1147, '231182', '五大连池市', '231100', NULL, 'a0009d1b0889424b9bbc2090d582d69c');
INSERT INTO `city` VALUES (1148, '231201', '市辖区', '231200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1149, '231202', '北林区', '231200', NULL, '35421de0dab1426799c58aeb5e74c75b');
INSERT INTO `city` VALUES (1150, '231221', '望奎县', '231200', NULL, '3b94165046aa42e0af609eb0317de227');
INSERT INTO `city` VALUES (1151, '231222', '兰西县', '231200', NULL, 'b936bf1a55684d2fb00de6b96f2f8e46');
INSERT INTO `city` VALUES (1152, '231223', '青冈县', '231200', NULL, '740ce54ede184f4099074139eec706da');
INSERT INTO `city` VALUES (1153, '231224', '庆安县', '231200', NULL, 'baf375a4ffaf43ffa1c3b0b34970c07e');
INSERT INTO `city` VALUES (1154, '231225', '明水县', '231200', NULL, 'f6bce416f6374d4d90846e4bb2ea972a');
INSERT INTO `city` VALUES (1155, '231226', '绥棱县', '231200', NULL, '7981eba6f1bc45e29d78e9abdd01d141');
INSERT INTO `city` VALUES (1156, '231281', '安达市', '231200', NULL, '299c723aa04c4d6aa0627cc0edd82b5e');
INSERT INTO `city` VALUES (1157, '231282', '肇东市', '231200', NULL, '6d4321eaa7094a20afd2950f8489aa7a');
INSERT INTO `city` VALUES (1158, '231283', '海伦市', '231200', NULL, 'eceff46a8e9b45d9afbd15206bd79335');
INSERT INTO `city` VALUES (1159, '232721', '呼玛县', '232700', NULL, '37a4e63e78904f5bb0e993882fd09956');
INSERT INTO `city` VALUES (1160, '232722', '塔河县', '232700', NULL, '04145a1f00414814813975f412c2f349');
INSERT INTO `city` VALUES (1161, '232723', '漠河县', '232700', NULL, '98a5ec1550bc49d189bb87d54b4b68cd');
INSERT INTO `city` VALUES (1162, '310101', '黄浦区', '310100', NULL, 'c26082cdfa9d48c8869ad47d28273342');
INSERT INTO `city` VALUES (1163, '310103', '卢湾区', '310100', NULL, NULL);
INSERT INTO `city` VALUES (1164, '310104', '徐汇区', '310100', NULL, 'bc4578b17d5f49c0bf9d436ec5e7c508');
INSERT INTO `city` VALUES (1165, '310105', '长宁区', '310100', NULL, 'd869901219ff4dffba2dc2683cebdcdd');
INSERT INTO `city` VALUES (1166, '310106', '静安区', '310100', NULL, 'e30cdf99ff314facadf53d6ccbec0c22');
INSERT INTO `city` VALUES (1167, '310107', '普陀区', '310100', NULL, '8d32b778db46416f9c4c48917f4ef375');
INSERT INTO `city` VALUES (1168, '310108', '闸北区', '310100', NULL, NULL);
INSERT INTO `city` VALUES (1169, '310109', '虹口区', '310100', NULL, '81bc2b4b35714de28f16378cd577d11e');
INSERT INTO `city` VALUES (1170, '310110', '杨浦区', '310100', NULL, '44f0185369334668b328f5e9ffad120c');
INSERT INTO `city` VALUES (1171, '310112', '闵行区', '310100', NULL, '2b7b317d064e4ea1b8dd5fcc209badf7');
INSERT INTO `city` VALUES (1172, '310113', '宝山区', '310100', NULL, '5c12c0979d7e48aca980664e1869e660');
INSERT INTO `city` VALUES (1173, '310114', '嘉定区', '310100', NULL, 'a39705ca450a4ac689e08794f3c1814a');
INSERT INTO `city` VALUES (1174, '310115', '浦东新区', '310100', NULL, '8ff22e2885594cbda5537263900fecf3');
INSERT INTO `city` VALUES (1175, '310116', '金山区', '310100', NULL, 'f7ca17168ba14405b73dc0981d0b46a2');
INSERT INTO `city` VALUES (1176, '310117', '松江区', '310100', NULL, '155ee340dada4a18b6df3a734bfb3c16');
INSERT INTO `city` VALUES (1177, '310118', '青浦区', '310100', NULL, '9fb6381d65194b6793e9ea59335120bf');
INSERT INTO `city` VALUES (1178, '310119', '南汇区', '310100', NULL, NULL);
INSERT INTO `city` VALUES (1179, '310120', '奉贤区', '310100', NULL, '683249238cc94204bfcc42d7b31dfd95');
INSERT INTO `city` VALUES (1180, '310230', '崇明区', '310100', NULL, '062de06bb3a34ee9af4889a65cff16be');
INSERT INTO `city` VALUES (1181, '320101', '市辖区', '320100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1182, '320102', '玄武区', '320100', NULL, '8731ee3291e240e386702c7c592faba3');
INSERT INTO `city` VALUES (1183, '320103', '白下区', '320100', NULL, NULL);
INSERT INTO `city` VALUES (1184, '320104', '秦淮区', '320100', NULL, 'e5b8820da30245c4ac3bd4eb48600fe8');
INSERT INTO `city` VALUES (1185, '320105', '建邺区', '320100', NULL, '7ca773e529cf45ffa8863561f0563a5a');
INSERT INTO `city` VALUES (1186, '320106', '鼓楼区', '320100', NULL, '0581ae8c49c44353849f3ecd95972b7c');
INSERT INTO `city` VALUES (1187, '320107', '下关区', '320100', NULL, NULL);
INSERT INTO `city` VALUES (1188, '320111', '浦口区', '320100', NULL, 'a6e82d71b1454d55b1c3221016ebc64c');
INSERT INTO `city` VALUES (1189, '320113', '栖霞区', '320100', NULL, '1d66ea70b6b044aa9743f0ad140f2606');
INSERT INTO `city` VALUES (1190, '320114', '雨花台区', '320100', NULL, 'b366357a92c648f4b81ffa0c15be5878');
INSERT INTO `city` VALUES (1191, '320115', '江宁区', '320100', NULL, '3e0c6d059cf5471c97565b6b78ecbe98');
INSERT INTO `city` VALUES (1192, '320116', '六合区', '320100', NULL, '63a54f3e6b0a4ad6bed219598645fa15');
INSERT INTO `city` VALUES (1193, '320124', '溧水县', '320100', NULL, NULL);
INSERT INTO `city` VALUES (1194, '320125', '高淳县', '320100', NULL, NULL);
INSERT INTO `city` VALUES (1195, '320201', '市辖区', '320200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1196, '320202', '崇安区', '320200', NULL, NULL);
INSERT INTO `city` VALUES (1197, '320203', '南长区', '320200', NULL, NULL);
INSERT INTO `city` VALUES (1198, '320204', '北塘区', '320200', NULL, NULL);
INSERT INTO `city` VALUES (1199, '320205', '锡山区', '320200', NULL, 'e93f8684166842479b08c2dc01ddeb68');
INSERT INTO `city` VALUES (1200, '320206', '惠山区', '320200', NULL, '685257f292634b63b0c803eb56e404ac');
INSERT INTO `city` VALUES (1201, '320211', '滨湖区', '320200', NULL, '8327674956cf4163a4ffffe7951f69d5');
INSERT INTO `city` VALUES (1202, '320281', '江阴市', '320200', NULL, 'dafee8f8e02a47ceaeccc7c2bfb1b833');
INSERT INTO `city` VALUES (1203, '320282', '宜兴市', '320200', NULL, '1418025e6f5847809984d13403ef69e5');
INSERT INTO `city` VALUES (1204, '320301', '市辖区', '320300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1205, '320302', '鼓楼区', '320300', NULL, '0581ae8c49c44353849f3ecd95972b7c');
INSERT INTO `city` VALUES (1206, '320303', '云龙区', '320300', NULL, '1d28204258344f9ebf23d85423a2d0c8');
INSERT INTO `city` VALUES (1207, '320304', '九里区', '320300', NULL, NULL);
INSERT INTO `city` VALUES (1208, '320305', '贾汪区', '320300', NULL, '4718ae9f91ca481a875ea2ebf478e99d');
INSERT INTO `city` VALUES (1209, '320311', '泉山区', '320300', NULL, 'a62085e280d94675931d32760082417c');
INSERT INTO `city` VALUES (1210, '320321', '丰　县', '320300', NULL, NULL);
INSERT INTO `city` VALUES (1211, '320322', '沛　县', '320300', NULL, NULL);
INSERT INTO `city` VALUES (1212, '320323', '铜山县', '320300', NULL, NULL);
INSERT INTO `city` VALUES (1213, '320324', '睢宁县', '320300', NULL, '605575596fb241ea9b21d00542d0a0b6');
INSERT INTO `city` VALUES (1214, '320381', '新沂市', '320300', NULL, 'afd357e2880a46aaa7b6adf8fafdcef5');
INSERT INTO `city` VALUES (1215, '320382', '邳州市', '320300', NULL, '14bb86fde074469dbbaaa8ff445658d7');
INSERT INTO `city` VALUES (1216, '320401', '市辖区', '320400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1217, '320402', '天宁区', '320400', NULL, '9d95cc7f4bc14a13841fd6a85c47b770');
INSERT INTO `city` VALUES (1218, '320404', '钟楼区', '320400', NULL, 'a940c5a5dfab4c6ab0bf0047e16b7b67');
INSERT INTO `city` VALUES (1219, '320405', '戚墅堰区', '320400', NULL, NULL);
INSERT INTO `city` VALUES (1220, '320411', '新北区', '320400', NULL, '7082b1d5575d45f1aba59fad29e550b8');
INSERT INTO `city` VALUES (1221, '320412', '武进区', '320400', NULL, 'c15c799a19304501a0058a8f7777956a');
INSERT INTO `city` VALUES (1222, '320481', '溧阳市', '320400', NULL, 'd1a4c2b56ca84de08d840ae69d1642dc');
INSERT INTO `city` VALUES (1223, '320482', '金坛市', '320400', NULL, NULL);
INSERT INTO `city` VALUES (1224, '320501', '市辖区', '320500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1225, '320502', '沧浪区', '320500', NULL, NULL);
INSERT INTO `city` VALUES (1226, '320503', '平江区', '320500', NULL, NULL);
INSERT INTO `city` VALUES (1227, '320504', '金阊区', '320500', NULL, NULL);
INSERT INTO `city` VALUES (1228, '320505', '虎丘区', '320500', NULL, '7efe17a3af0148e7bb2ce51aae3f9ac4');
INSERT INTO `city` VALUES (1229, '320506', '吴中区', '320500', NULL, 'e1ba1b888e3b498a9eb4afca3a822b4f');
INSERT INTO `city` VALUES (1230, '320507', '相城区', '320500', NULL, 'fd26c26fda4a42a4bd4bf071e23aef96');
INSERT INTO `city` VALUES (1231, '320581', '常熟市', '320500', NULL, 'af2d36519dec43489b3072fc16e4fe4d');
INSERT INTO `city` VALUES (1232, '320582', '张家港市', '320500', NULL, '4bdacf09c89043c3925c2d340af28f8d');
INSERT INTO `city` VALUES (1233, '320583', '昆山市', '320500', NULL, 'df0c2d6dc59b41c7a2989f4909773588');
INSERT INTO `city` VALUES (1234, '320584', '吴江市', '320500', NULL, NULL);
INSERT INTO `city` VALUES (1235, '320585', '太仓市', '320500', NULL, '7c43b51a58894fa4bba0725156a5b0b9');
INSERT INTO `city` VALUES (1236, '320601', '市辖区', '320600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1237, '320602', '崇川区', '320600', NULL, '0d8d4d389ec74bbc9bc6692dd6b0cbbd');
INSERT INTO `city` VALUES (1238, '320611', '港闸区', '320600', NULL, '44b3bf37b29848f7aa3fe3c66aaa9333');
INSERT INTO `city` VALUES (1239, '320621', '海安县', '320600', NULL, '41dbb93861a743e49c1c22d4eb1009f9');
INSERT INTO `city` VALUES (1240, '320623', '如东县', '320600', NULL, '3a1256cae9684bf7b61810a18de89563');
INSERT INTO `city` VALUES (1241, '320681', '启东市', '320600', NULL, '2b315f9af4ff426d9d3f9a74f9f4c9a1');
INSERT INTO `city` VALUES (1242, '320682', '如皋市', '320600', NULL, '5033d545a31245d185ac88475b8db6fb');
INSERT INTO `city` VALUES (1243, '320683', '通州市', '320600', NULL, NULL);
INSERT INTO `city` VALUES (1244, '320684', '海门市', '320600', NULL, '0c08cdf5b3bc441c8fd567826d77e1e2');
INSERT INTO `city` VALUES (1245, '320701', '市辖区', '320700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1246, '320703', '连云区', '320700', NULL, '8690d3fc9fe94cd295d48fa5a12cb6bc');
INSERT INTO `city` VALUES (1247, '320705', '新浦区', '320700', NULL, NULL);
INSERT INTO `city` VALUES (1248, '320706', '海州区', '320700', NULL, '1737e3bf2bd24c6890cba459e5f4b43a');
INSERT INTO `city` VALUES (1249, '320721', '赣榆县', '320700', NULL, NULL);
INSERT INTO `city` VALUES (1250, '320722', '东海县', '320700', NULL, '916a35d382fe4c4ca0821f76c95d74f9');
INSERT INTO `city` VALUES (1251, '320723', '灌云县', '320700', NULL, '934db45908ec41398878af745c00a9b7');
INSERT INTO `city` VALUES (1252, '320724', '灌南县', '320700', NULL, '43de97fef3934487a316baa5e40d3180');
INSERT INTO `city` VALUES (1253, '320801', '市辖区', '320800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1254, '320802', '清河区', '320800', NULL, NULL);
INSERT INTO `city` VALUES (1255, '320803', '楚州区', '320800', NULL, NULL);
INSERT INTO `city` VALUES (1256, '320804', '淮阴区', '320800', NULL, '7200f528ce6140dcb77afbe242cd6e3e');
INSERT INTO `city` VALUES (1257, '320811', '清浦区', '320800', NULL, NULL);
INSERT INTO `city` VALUES (1258, '320826', '涟水县', '320800', NULL, '9017f86e3bc6401880e9d5ceb52b4a6e');
INSERT INTO `city` VALUES (1259, '320829', '洪泽县', '320800', NULL, NULL);
INSERT INTO `city` VALUES (1260, '320830', '盱眙县', '320800', NULL, '9988b872a5c6409a9d472ef550bfbdd3');
INSERT INTO `city` VALUES (1261, '320831', '金湖县', '320800', NULL, '04d9dc553e214acc892770f9cff029f7');
INSERT INTO `city` VALUES (1262, '320901', '市辖区', '320900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1263, '320902', '亭湖区', '320900', NULL, 'c4ab0b622f32442b9aa4cdce1a45134c');
INSERT INTO `city` VALUES (1264, '320903', '盐都区', '320900', NULL, '68410cbf69384234a23c110f242cfaff');
INSERT INTO `city` VALUES (1265, '320921', '响水县', '320900', NULL, '30570016ae144f2dad15401850cdd4cd');
INSERT INTO `city` VALUES (1266, '320922', '滨海县', '320900', NULL, 'af8f6566de7f440ca4c0aa29c20dda92');
INSERT INTO `city` VALUES (1267, '320923', '阜宁县', '320900', NULL, '83b244d1e35043d7a3915f281d0a6301');
INSERT INTO `city` VALUES (1268, '320924', '射阳县', '320900', NULL, 'e19a40872f5e4410b0d69532061476c0');
INSERT INTO `city` VALUES (1269, '320925', '建湖县', '320900', NULL, 'd1ab602aba964ade932c8917ad2bc7c5');
INSERT INTO `city` VALUES (1270, '320981', '东台市', '320900', NULL, '56137db203be40578f0cc84232558c89');
INSERT INTO `city` VALUES (1271, '320982', '大丰市', '320900', NULL, NULL);
INSERT INTO `city` VALUES (1272, '321001', '市辖区', '321000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1273, '321002', '广陵区', '321000', NULL, '2e20009c4ca9482589844f0d03b6ab34');
INSERT INTO `city` VALUES (1274, '321003', '邗江区', '321000', NULL, '3a606cf335c549ce82ec943611ad4243');
INSERT INTO `city` VALUES (1275, '321011', '郊　区', '321000', NULL, NULL);
INSERT INTO `city` VALUES (1276, '321023', '宝应县', '321000', NULL, 'ad6e32c9ada24408b8dfac39af727584');
INSERT INTO `city` VALUES (1277, '321081', '仪征市', '321000', NULL, '341aca0e8a9249e0a86cee38283f8cca');
INSERT INTO `city` VALUES (1278, '321084', '高邮市', '321000', NULL, '9201979d5d574f52b9e1b1d176b5091a');
INSERT INTO `city` VALUES (1279, '321088', '江都市', '321000', NULL, NULL);
INSERT INTO `city` VALUES (1280, '321101', '市辖区', '321100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1281, '321102', '京口区', '321100', NULL, '102957104cbd4f2f84baa6fed2887a58');
INSERT INTO `city` VALUES (1282, '321111', '润州区', '321100', NULL, '71c8c80e2488407e9e0e17cf7e1f050d');
INSERT INTO `city` VALUES (1283, '321112', '丹徒区', '321100', NULL, '38bb5e68b5ca49b3b25b880eea2b5363');
INSERT INTO `city` VALUES (1284, '321181', '丹阳市', '321100', NULL, '0c347f0895b141cfb425f3a72037451c');
INSERT INTO `city` VALUES (1285, '321182', '扬中市', '321100', NULL, 'c044da29c2c8466eb706509ce02dec54');
INSERT INTO `city` VALUES (1286, '321183', '句容市', '321100', NULL, 'c5eb674b0e734fca9ec448fdd25f7612');
INSERT INTO `city` VALUES (1287, '321201', '市辖区', '321200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1288, '321202', '海陵区', '321200', NULL, 'abad76b087d945829dca0f54b79f7705');
INSERT INTO `city` VALUES (1289, '321203', '高港区', '321200', NULL, '0c6ab229191d4937b62e62b2888e1d49');
INSERT INTO `city` VALUES (1290, '321281', '兴化市', '321200', NULL, '4c8b97cf482a43d18ddd96bc8dff46e7');
INSERT INTO `city` VALUES (1291, '321282', '靖江市', '321200', NULL, '75020fdc76c4482f8d6d313e89a152b6');
INSERT INTO `city` VALUES (1292, '321283', '泰兴市', '321200', NULL, 'a4a1ec43b06d48c2aeb277820e3cc807');
INSERT INTO `city` VALUES (1293, '321284', '姜堰市', '321200', NULL, NULL);
INSERT INTO `city` VALUES (1294, '321301', '市辖区', '321300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1295, '321302', '宿城区', '321300', NULL, '4876fd791ea043e885d481a98c4b6ed8');
INSERT INTO `city` VALUES (1296, '321311', '宿豫区', '321300', NULL, '49c93305c53e49b3b71cb60c69d9ed56');
INSERT INTO `city` VALUES (1297, '321322', '沭阳县', '321300', NULL, 'a2a65f3e3eb04245a691aa70b6932a3e');
INSERT INTO `city` VALUES (1298, '321323', '泗阳县', '321300', NULL, 'd9971b8113a042219b9ba40aa07cc218');
INSERT INTO `city` VALUES (1299, '321324', '泗洪县', '321300', NULL, '1bde872e6439436780872ba7a45ae2b3');
INSERT INTO `city` VALUES (1300, '330101', '市辖区', '330100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1301, '330102', '上城区', '330100', NULL, '8d31fab8b54a42cf9a2d6215b5903b84');
INSERT INTO `city` VALUES (1302, '330103', '下城区', '330100', NULL, '98b3d8905522432fb9f3d87b09beb6fa');
INSERT INTO `city` VALUES (1303, '330104', '江干区', '330100', NULL, '84ffa74270894a1e85dbcaa2fd664f84');
INSERT INTO `city` VALUES (1304, '330105', '拱墅区', '330100', NULL, '7423ac07122f4cb5b87fb48427ae4c9d');
INSERT INTO `city` VALUES (1305, '330106', '西湖区', '330100', NULL, '8452746ebb08486b926ef48bf57f9e69');
INSERT INTO `city` VALUES (1306, '330108', '滨江区', '330100', NULL, 'a078220a69174d2d91e1aa7dc1d85fed');
INSERT INTO `city` VALUES (1307, '330109', '萧山区', '330100', NULL, 'e7e18404f23f4fa6ac67a3070a267ac2');
INSERT INTO `city` VALUES (1308, '330110', '余杭区', '330100', NULL, '012825196e05480486392cc27e3fd124');
INSERT INTO `city` VALUES (1309, '330122', '桐庐县', '330100', NULL, '15107f07a6ab4a6982317a21c25704d7');
INSERT INTO `city` VALUES (1310, '330127', '淳安县', '330100', NULL, '7c484063b5ba4898809e08505bea4441');
INSERT INTO `city` VALUES (1311, '330182', '建德市', '330100', NULL, '3dc217d99ec244e7a643bcf2feea70e7');
INSERT INTO `city` VALUES (1312, '330183', '富阳市', '330100', NULL, NULL);
INSERT INTO `city` VALUES (1313, '330185', '临安市', '330100', NULL, NULL);
INSERT INTO `city` VALUES (1314, '330201', '市辖区', '330200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1315, '330203', '海曙区', '330200', NULL, '6600190537cd45b381cfeed5ba0dc546');
INSERT INTO `city` VALUES (1316, '330204', '江东区', '330200', NULL, NULL);
INSERT INTO `city` VALUES (1317, '330205', '江北区', '330200', NULL, '346c4161b61f47a3b55a7b87e8b19170');
INSERT INTO `city` VALUES (1318, '330206', '北仑区', '330200', NULL, '36ef52e31e5844eba4c6a8653d8efda0');
INSERT INTO `city` VALUES (1319, '330211', '镇海区', '330200', NULL, 'e2047787c03149b384117f4bf9aec12b');
INSERT INTO `city` VALUES (1320, '330212', '鄞州区', '330200', NULL, 'a1758f81ef934664a934a41ee3d916ac');
INSERT INTO `city` VALUES (1321, '330225', '象山县', '330200', NULL, 'eac2187f529a45d1a8ba7a992d005f85');
INSERT INTO `city` VALUES (1322, '330226', '宁海县', '330200', NULL, '86cddef5199b4356a233174b267651c3');
INSERT INTO `city` VALUES (1323, '330281', '余姚市', '330200', NULL, 'aba2a0f1bdc6485baad52bf6bb5ff6b4');
INSERT INTO `city` VALUES (1324, '330282', '慈溪市', '330200', NULL, '3f99673beec049ac83589ec714f64496');
INSERT INTO `city` VALUES (1325, '330283', '奉化市', '330200', NULL, NULL);
INSERT INTO `city` VALUES (1326, '330301', '市辖区', '330300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1327, '330302', '鹿城区', '330300', NULL, '5b2a96d0f51641e7aaf3d78462d90b6c');
INSERT INTO `city` VALUES (1328, '330303', '龙湾区', '330300', NULL, '1e61b1ea53fb458886ccb8e4af4778d0');
INSERT INTO `city` VALUES (1329, '330304', '瓯海区', '330300', NULL, '00af1f16c6d2429f90159aa1e2d33b5b');
INSERT INTO `city` VALUES (1330, '330322', '洞头县', '330300', NULL, NULL);
INSERT INTO `city` VALUES (1331, '330324', '永嘉县', '330300', NULL, '2f2181cd51e54689b3f2b3ff1a384516');
INSERT INTO `city` VALUES (1332, '330326', '平阳县', '330300', NULL, '9702f5c614cb43159d889b96ce844114');
INSERT INTO `city` VALUES (1333, '330327', '苍南县', '330300', NULL, 'ff56c8830f3d49a0b293618e7a132346');
INSERT INTO `city` VALUES (1334, '330328', '文成县', '330300', NULL, 'b013a4d4af2d477aa9047572a48ba418');
INSERT INTO `city` VALUES (1335, '330329', '泰顺县', '330300', NULL, '0f14298ec5c348d5b085755ae9b5ae8d');
INSERT INTO `city` VALUES (1336, '330381', '瑞安市', '330300', NULL, 'd8e33cfce7a5492c947fd4461fbfc539');
INSERT INTO `city` VALUES (1337, '330382', '乐清市', '330300', NULL, '004f5da06c5f4d05be77ed0e53e96fbc');
INSERT INTO `city` VALUES (1338, '330401', '市辖区', '330400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1339, '330402', '秀城区', '330400', NULL, NULL);
INSERT INTO `city` VALUES (1340, '330411', '秀洲区', '330400', NULL, '9dd400e1d1044f4caa89dfe8f3a52dd6');
INSERT INTO `city` VALUES (1341, '330421', '嘉善县', '330400', NULL, '647be0122b6e4a1a8137a26bb847223f');
INSERT INTO `city` VALUES (1342, '330424', '海盐县', '330400', NULL, '51729fb71efb4c50b0eebd255ac2977a');
INSERT INTO `city` VALUES (1343, '330481', '海宁市', '330400', NULL, '4b9a63c95e804e8099b76ec4bf777619');
INSERT INTO `city` VALUES (1344, '330482', '平湖市', '330400', NULL, '91dd32cf285644c189b95aee836037d8');
INSERT INTO `city` VALUES (1345, '330483', '桐乡市', '330400', NULL, 'c8635568e62241e2aad985e1bb49c191');
INSERT INTO `city` VALUES (1346, '330501', '市辖区', '330500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1347, '330502', '吴兴区', '330500', NULL, '8e0400055ca3429989d7c39d98deef85');
INSERT INTO `city` VALUES (1348, '330503', '南浔区', '330500', NULL, '8a235e74a11448a28eb3c2b07fde5450');
INSERT INTO `city` VALUES (1349, '330521', '德清县', '330500', NULL, '951a5da133bb409bb9ce894e4368c10c');
INSERT INTO `city` VALUES (1350, '330522', '长兴县', '330500', NULL, 'a9878392a49e4149ac1c7a2ee77662a9');
INSERT INTO `city` VALUES (1351, '330523', '安吉县', '330500', NULL, '022105da21eb4a8189151b619609638f');
INSERT INTO `city` VALUES (1352, '330601', '市辖区', '330600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1353, '330602', '越城区', '330600', NULL, '61c78d4e7eab4d868bbfcc0cf6dd5199');
INSERT INTO `city` VALUES (1354, '330621', '绍兴县', '330600', NULL, NULL);
INSERT INTO `city` VALUES (1355, '330624', '新昌县', '330600', NULL, 'f89590ce99b34fd885c62f3e15c2ee35');
INSERT INTO `city` VALUES (1356, '330681', '诸暨市', '330600', NULL, 'ac51bc34850b4e66875885bdb2665b2c');
INSERT INTO `city` VALUES (1357, '330682', '上虞市', '330600', NULL, NULL);
INSERT INTO `city` VALUES (1358, '330683', '嵊州市', '330600', NULL, 'b03598ff77064045927a24297de71905');
INSERT INTO `city` VALUES (1359, '330701', '市辖区', '330700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1360, '330702', '婺城区', '330700', NULL, '9989740246e8448a9c83eb19664a6174');
INSERT INTO `city` VALUES (1361, '330703', '金东区', '330700', NULL, 'd8e16d6a01784e659bbc4bc42d15e520');
INSERT INTO `city` VALUES (1362, '330723', '武义县', '330700', NULL, 'a9d777bf6e4d48dbbfb654ad2db86843');
INSERT INTO `city` VALUES (1363, '330726', '浦江县', '330700', NULL, '5b71a54d6e8e4805b0d5d09a59bb02e9');
INSERT INTO `city` VALUES (1364, '330727', '磐安县', '330700', NULL, '7455fb9aad5d4b9784af803225c50ab6');
INSERT INTO `city` VALUES (1365, '330781', '兰溪市', '330700', NULL, 'f4cbaa279fc94a37a706671f43199e7f');
INSERT INTO `city` VALUES (1366, '330782', '义乌市', '330700', NULL, 'd38eddbff5584153a92234896ab6e8fb');
INSERT INTO `city` VALUES (1367, '330783', '东阳市', '330700', NULL, 'd70fe367bee74d7a9b65dfa416194d45');
INSERT INTO `city` VALUES (1368, '330784', '永康市', '330700', NULL, '8f64d4d52ef944aa8cd868355d4ec1ee');
INSERT INTO `city` VALUES (1369, '330801', '市辖区', '330800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1370, '330802', '柯城区', '330800', NULL, '3c3518decbfa4cdd8c75a6c8a4cf4114');
INSERT INTO `city` VALUES (1371, '330803', '衢江区', '330800', NULL, '40dda479ea2649ff8d5dbe2c388bd47d');
INSERT INTO `city` VALUES (1372, '330822', '常山县', '330800', NULL, '8c88ee8fbd9d4579b15602024377be27');
INSERT INTO `city` VALUES (1373, '330824', '开化县', '330800', NULL, '6aa175b8ab2f48fab20a78138287806a');
INSERT INTO `city` VALUES (1374, '330825', '龙游县', '330800', NULL, 'c596eb3c135c4cfb9d4b1efdfa68f56e');
INSERT INTO `city` VALUES (1375, '330881', '江山市', '330800', NULL, '26e0425ffd6d4fa0af72a911817b1635');
INSERT INTO `city` VALUES (1376, '330901', '市辖区', '330900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1377, '330902', '定海区', '330900', NULL, 'a9f79052cabd4ad4a27d9df68486f8a9');
INSERT INTO `city` VALUES (1378, '330903', '普陀区', '330900', NULL, '8d32b778db46416f9c4c48917f4ef375');
INSERT INTO `city` VALUES (1379, '330921', '岱山县', '330900', NULL, 'fb8a2bd2e3a34fb393775847e4a64628');
INSERT INTO `city` VALUES (1380, '330922', '嵊泗县', '330900', NULL, '10a098c0d7ef43ce8f89da529e160647');
INSERT INTO `city` VALUES (1381, '331001', '市辖区', '331000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1382, '331002', '椒江区', '331000', NULL, '7c8489fc2e0346fbb166350604dec032');
INSERT INTO `city` VALUES (1383, '331003', '黄岩区', '331000', NULL, 'b86cbbe47abd40ed895f90d587730bd9');
INSERT INTO `city` VALUES (1384, '331004', '路桥区', '331000', NULL, '51f4f417501f4241917da3604d8c8904');
INSERT INTO `city` VALUES (1385, '331021', '玉环县', '331000', NULL, NULL);
INSERT INTO `city` VALUES (1386, '331022', '三门县', '331000', NULL, 'a93739a29b7e4f0f9fb76036b711cb1d');
INSERT INTO `city` VALUES (1387, '331023', '天台县', '331000', NULL, 'bd3c1b3242604407b36e19860e287d4d');
INSERT INTO `city` VALUES (1388, '331024', '仙居县', '331000', NULL, '4f15f099b8aa485394bf230f4665b138');
INSERT INTO `city` VALUES (1389, '331081', '温岭市', '331000', NULL, 'cf03d0fc39344f21b228f5b35accbef2');
INSERT INTO `city` VALUES (1390, '331082', '临海市', '331000', NULL, 'd719011f12ad4bb8ae673ad0f9b93678');
INSERT INTO `city` VALUES (1391, '331101', '市辖区', '331100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1392, '331102', '莲都区', '331100', NULL, '10a4dda28bf249f1ae01852d5eac4cc8');
INSERT INTO `city` VALUES (1393, '331121', '青田县', '331100', NULL, '5fecc15c069745719333860ac17b30ee');
INSERT INTO `city` VALUES (1394, '331122', '缙云县', '331100', NULL, 'd21692d7e13a48528fc5012e2d34b56a');
INSERT INTO `city` VALUES (1395, '331123', '遂昌县', '331100', NULL, 'f7fa31be07c847b1b0a8f39d453698fd');
INSERT INTO `city` VALUES (1396, '331124', '松阳县', '331100', NULL, 'a92785b1dd3a4478bfc8362507b01554');
INSERT INTO `city` VALUES (1397, '331125', '云和县', '331100', NULL, 'ac9f0916a3354396a5a91e06e3bfa2d4');
INSERT INTO `city` VALUES (1398, '331126', '庆元县', '331100', NULL, '60a147afacbd47a0b53d780da6fae1a2');
INSERT INTO `city` VALUES (1399, '331127', '景宁畲族自治县', '331100', NULL, '0b36b136a8a44ca0840b49fd354f6d01');
INSERT INTO `city` VALUES (1400, '331181', '龙泉市', '331100', NULL, '976fbd896045438f9ca57ecc058f6eca');
INSERT INTO `city` VALUES (1401, '340101', '市辖区', '340100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1402, '340102', '瑶海区', '340100', NULL, 'dd26f2a24b9b43c496836aea3178e209');
INSERT INTO `city` VALUES (1403, '340103', '庐阳区', '340100', NULL, '18097d16351348b3b933d7532d5de7b1');
INSERT INTO `city` VALUES (1404, '340104', '蜀山区', '340100', NULL, 'c65a70a3fd34489f9cdf78cf0102cc00');
INSERT INTO `city` VALUES (1405, '340111', '包河区', '340100', NULL, 'b042d4507a744e0f92a2a5177e824733');
INSERT INTO `city` VALUES (1406, '340121', '长丰县', '340100', NULL, '90932a9d4c144f31ab01ce342ac90338');
INSERT INTO `city` VALUES (1407, '340122', '肥东县', '340100', NULL, 'd8bc3165684c482bade3257acf7a3a12');
INSERT INTO `city` VALUES (1408, '340123', '肥西县', '340100', NULL, '3ce20428d1994908b1b91e35b3965e86');
INSERT INTO `city` VALUES (1409, '340201', '市辖区', '340200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1410, '340202', '镜湖区', '340200', NULL, '05af1eb8ffbc458ea6ead57645ed604b');
INSERT INTO `city` VALUES (1411, '340203', '马塘区', '340200', NULL, NULL);
INSERT INTO `city` VALUES (1412, '340204', '新芜区', '340200', NULL, NULL);
INSERT INTO `city` VALUES (1413, '340207', '鸠江区', '340200', NULL, '45fe8dd0cf6c4b218363fb9380b9095d');
INSERT INTO `city` VALUES (1414, '340221', '芜湖县', '340200', NULL, '76815f7a1d184975a749d18441ce8035');
INSERT INTO `city` VALUES (1415, '340222', '繁昌县', '340200', NULL, 'e02313542f464d7b94d77a2394d508b3');
INSERT INTO `city` VALUES (1416, '340223', '南陵县', '340200', NULL, '382828b44d144b92a8136dfa5d48bc01');
INSERT INTO `city` VALUES (1417, '340301', '市辖区', '340300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1418, '340302', '龙子湖区', '340300', NULL, 'a5444df69f2148bd9e7e7877619ff0d0');
INSERT INTO `city` VALUES (1419, '340303', '蚌山区', '340300', NULL, '95f3a3565dba4743a4e41dd7e7bd13bc');
INSERT INTO `city` VALUES (1420, '340304', '禹会区', '340300', NULL, 'ba09adc22279482f8892c4c7187747f4');
INSERT INTO `city` VALUES (1421, '340311', '淮上区', '340300', NULL, 'db48ef38ddeb414895f984d2d08d8248');
INSERT INTO `city` VALUES (1422, '340321', '怀远县', '340300', NULL, '08cc62063cce45569af9db2fa2ee4e0f');
INSERT INTO `city` VALUES (1423, '340322', '五河县', '340300', NULL, 'ac2462c1830944f7ae92e129eb7fdf59');
INSERT INTO `city` VALUES (1424, '340323', '固镇县', '340300', NULL, '84cbf4a789e4415298b6903e5ff95acc');
INSERT INTO `city` VALUES (1425, '340401', '市辖区', '340400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1426, '340402', '大通区', '340400', NULL, 'd46d36879b164c7684be26219a0fe8ec');
INSERT INTO `city` VALUES (1427, '340403', '田家庵区', '340400', NULL, '49d0f226504e40c7859deaf2d830179a');
INSERT INTO `city` VALUES (1428, '340404', '谢家集区', '340400', NULL, 'eea8cdca9b33496cade894fb2175ad3b');
INSERT INTO `city` VALUES (1429, '340405', '八公山区', '340400', NULL, '4fd2b2a17cde4954b669aaf7653e11c2');
INSERT INTO `city` VALUES (1430, '340406', '潘集区', '340400', NULL, '08c7ebf4e12a4e4fa0bdaf06e6b1dd6b');
INSERT INTO `city` VALUES (1431, '340421', '凤台县', '340400', NULL, '38f60c864821491f9e364f30c7c230c5');
INSERT INTO `city` VALUES (1432, '340501', '市辖区', '340500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1433, '340502', '金家庄区', '340500', NULL, NULL);
INSERT INTO `city` VALUES (1434, '340503', '花山区', '340500', NULL, 'dfea9c21806548c49ad11c69c8a9e04f');
INSERT INTO `city` VALUES (1435, '340504', '雨山区', '340500', NULL, '843a966364c746be891b8f5143562fb9');
INSERT INTO `city` VALUES (1436, '340521', '当涂县', '340500', NULL, '2ecf9896c3e348db827e8b6833321c77');
INSERT INTO `city` VALUES (1437, '340601', '市辖区', '340600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1438, '340602', '杜集区', '340600', NULL, '6fd1cdf6d3e44b96a8882badd09220f6');
INSERT INTO `city` VALUES (1439, '340603', '相山区', '340600', NULL, '80d2422e57d940cb852c82988523554e');
INSERT INTO `city` VALUES (1440, '340604', '烈山区', '340600', NULL, '21400e0548e24c928747d31be55b0f3f');
INSERT INTO `city` VALUES (1441, '340621', '濉溪县', '340600', NULL, 'f501e5be95e44c67a15cdf8f760d568f');
INSERT INTO `city` VALUES (1442, '340701', '市辖区', '340700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1443, '340702', '铜官山区', '340700', NULL, NULL);
INSERT INTO `city` VALUES (1444, '340703', '狮子山区', '340700', NULL, NULL);
INSERT INTO `city` VALUES (1445, '340711', '郊　区', '340700', NULL, NULL);
INSERT INTO `city` VALUES (1446, '340721', '铜陵县', '340700', NULL, NULL);
INSERT INTO `city` VALUES (1447, '340801', '市辖区', '340800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1448, '340802', '迎江区', '340800', NULL, '59d40012ed8240389e634e63e3404418');
INSERT INTO `city` VALUES (1449, '340803', '大观区', '340800', NULL, 'ca6beec03a764c62a80f9290ee630265');
INSERT INTO `city` VALUES (1450, '340811', '郊　区', '340800', NULL, NULL);
INSERT INTO `city` VALUES (1451, '340822', '怀宁县', '340800', NULL, '485b13932e6b4f399ebb846789d755bc');
INSERT INTO `city` VALUES (1452, '340823', '枞阳县', '340800', NULL, '712c53fe137642d09563ecd81236488d');
INSERT INTO `city` VALUES (1453, '340824', '潜山县', '340800', NULL, '36330b69d605483d8d79873f1504a18e');
INSERT INTO `city` VALUES (1454, '340825', '太湖县', '340800', NULL, '883d7b4641b2460fa9ae612f21c26689');
INSERT INTO `city` VALUES (1455, '340826', '宿松县', '340800', NULL, '22bdee62aa32429f8debecfa23f0ae00');
INSERT INTO `city` VALUES (1456, '340827', '望江县', '340800', NULL, '0d58897c0cd041139af60740d9cafe31');
INSERT INTO `city` VALUES (1457, '340828', '岳西县', '340800', NULL, '434f0aa962fe483498f4016d9a5c066d');
INSERT INTO `city` VALUES (1458, '340881', '桐城市', '340800', NULL, 'be58c3e4787d47d9afc70cfca140a55f');
INSERT INTO `city` VALUES (1459, '341001', '市辖区', '341000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1460, '341002', '屯溪区', '341000', NULL, '77b0cbcad9304f3a8c09f4d9ed5cb462');
INSERT INTO `city` VALUES (1461, '341003', '黄山区', '341000', NULL, 'a9707e8e45bf4014b5a517e91d79ae62');
INSERT INTO `city` VALUES (1462, '341004', '徽州区', '341000', NULL, '69a31675d7ff4287ab8c3f31ee811ee5');
INSERT INTO `city` VALUES (1463, '341021', '歙　县', '341000', NULL, NULL);
INSERT INTO `city` VALUES (1464, '341022', '休宁县', '341000', NULL, '2d3f831af4494220b65c53b640149410');
INSERT INTO `city` VALUES (1465, '341023', '黟　县', '341000', NULL, NULL);
INSERT INTO `city` VALUES (1466, '341024', '祁门县', '341000', NULL, 'e3544f24819f4d778241f9aa4eaeded4');
INSERT INTO `city` VALUES (1467, '341101', '市辖区', '341100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1468, '341102', '琅琊区', '341100', NULL, '7af5e19cecb64dedbc83a88d47cc5227');
INSERT INTO `city` VALUES (1469, '341103', '南谯区', '341100', NULL, '25a97040e94048ebb58754f06bd84fb5');
INSERT INTO `city` VALUES (1470, '341122', '来安县', '341100', NULL, '363064a69d614e85983649c286e14a1f');
INSERT INTO `city` VALUES (1471, '341124', '全椒县', '341100', NULL, 'ade47c2fe74c4f10b1cf6940c07bba1a');
INSERT INTO `city` VALUES (1472, '341125', '定远县', '341100', NULL, '2884112056664f9e86d19e3e6f883640');
INSERT INTO `city` VALUES (1473, '341126', '凤阳县', '341100', NULL, 'f7a848e84cd24a66961cfa9fb931555f');
INSERT INTO `city` VALUES (1474, '341181', '天长市', '341100', NULL, '1fe70757f60e417eae4a4e53303bd1df');
INSERT INTO `city` VALUES (1475, '341182', '明光市', '341100', NULL, '06bfa944575f48609c210d681a24da95');
INSERT INTO `city` VALUES (1476, '341201', '市辖区', '341200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1477, '341202', '颍州区', '341200', NULL, '6c60e2b189bf4a378c09ba42ca499572');
INSERT INTO `city` VALUES (1478, '341203', '颍东区', '341200', NULL, '7abf5b1341364bd4bb27ca7c3925850b');
INSERT INTO `city` VALUES (1479, '341204', '颍泉区', '341200', NULL, 'cc5bfbf86f6749ae969b946cb20fb1e8');
INSERT INTO `city` VALUES (1480, '341221', '临泉县', '341200', NULL, '8434db0537cf4cf49d07f6e1b5e072f1');
INSERT INTO `city` VALUES (1481, '341222', '太和县', '341200', NULL, '33916693668448ca9974277475011803');
INSERT INTO `city` VALUES (1482, '341225', '阜南县', '341200', NULL, '3896ce2ad52846719ea06db8a26ca251');
INSERT INTO `city` VALUES (1483, '341226', '颍上县', '341200', NULL, 'e259080d6e6e4367bc651d9464ef913c');
INSERT INTO `city` VALUES (1484, '341282', '界首市', '341200', NULL, 'bad4371ad14d47cfb072731f801cf736');
INSERT INTO `city` VALUES (1485, '341301', '市辖区', '341300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1486, '341302', '墉桥区', '341300', NULL, NULL);
INSERT INTO `city` VALUES (1487, '341321', '砀山县', '341300', NULL, 'b3bbf19942594fb5a7ea6ca70636d2de');
INSERT INTO `city` VALUES (1488, '341322', '萧　县', '341300', NULL, NULL);
INSERT INTO `city` VALUES (1489, '341323', '灵璧县', '341300', NULL, '5fd2bc5bac2644888adbe4e4317e1c9d');
INSERT INTO `city` VALUES (1490, '341324', '泗　县', '341300', NULL, NULL);
INSERT INTO `city` VALUES (1491, '341401', '市辖区', '341400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1492, '341402', '居巢区', '341400', NULL, NULL);
INSERT INTO `city` VALUES (1493, '341421', '庐江县', '341400', NULL, '91cecb8c62e04ed58dedb0b48bb47638');
INSERT INTO `city` VALUES (1494, '341422', '无为县', '341400', NULL, 'cf0298940c764a2fbd58ef17140f8b10');
INSERT INTO `city` VALUES (1495, '341423', '含山县', '341400', NULL, '9e51f749c4ed42fba56520cb6c6725ab');
INSERT INTO `city` VALUES (1496, '341424', '和　县', '341400', NULL, NULL);
INSERT INTO `city` VALUES (1497, '341501', '市辖区', '341500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1498, '341502', '金安区', '341500', NULL, '858b6aee237140a8b834fb4fdce09c13');
INSERT INTO `city` VALUES (1499, '341503', '裕安区', '341500', NULL, '077a0bacb94c4e599bb22b123219dfe8');
INSERT INTO `city` VALUES (1500, '341521', '寿　县', '341500', NULL, NULL);
INSERT INTO `city` VALUES (1501, '341522', '霍邱县', '341500', NULL, 'c77e0e3f409540348db0db70e7e8683c');
INSERT INTO `city` VALUES (1502, '341523', '舒城县', '341500', NULL, '00b8d3094938421a908b2e1023961930');
INSERT INTO `city` VALUES (1503, '341524', '金寨县', '341500', NULL, 'fd5e6570c60d45b1b1dfa59181727603');
INSERT INTO `city` VALUES (1504, '341525', '霍山县', '341500', NULL, '3456c267736e4cbaace1d15d01611ab4');
INSERT INTO `city` VALUES (1505, '341601', '市辖区', '341600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1506, '341602', '谯城区', '341600', NULL, 'cb94fcb0f82641baac1297a8c4875e1e');
INSERT INTO `city` VALUES (1507, '341621', '涡阳县', '341600', NULL, 'c6aaba4893cb416cba8e862e017aaea4');
INSERT INTO `city` VALUES (1508, '341622', '蒙城县', '341600', NULL, '2e204110f43f424598c2edf6e7880c61');
INSERT INTO `city` VALUES (1509, '341623', '利辛县', '341600', NULL, '956d1b48d3df494cb40eef0d49f3c429');
INSERT INTO `city` VALUES (1510, '341701', '市辖区', '341700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1511, '341702', '贵池区', '341700', NULL, '49a17c4349544330899354080cc4cfba');
INSERT INTO `city` VALUES (1512, '341721', '东至县', '341700', NULL, '3647f2518a5c4154838933508b2c8111');
INSERT INTO `city` VALUES (1513, '341722', '石台县', '341700', NULL, '10c7d7557e6d413aa5206eaad56125c4');
INSERT INTO `city` VALUES (1514, '341723', '青阳县', '341700', NULL, '3d3c043fef2a4fa59e4ce8d5c593c3dd');
INSERT INTO `city` VALUES (1515, '341801', '市辖区', '341800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1516, '341802', '宣州区', '341800', NULL, '37dac838bebe49f283a7bb181fad8f7e');
INSERT INTO `city` VALUES (1517, '341821', '郎溪县', '341800', NULL, 'cf512e4f5a0e4dc0b164e8e102219e5e');
INSERT INTO `city` VALUES (1518, '341822', '广德县', '341800', NULL, 'b40838093aa0451bb9229cac6d63981c');
INSERT INTO `city` VALUES (1519, '341823', '泾　县', '341800', NULL, NULL);
INSERT INTO `city` VALUES (1520, '341824', '绩溪县', '341800', NULL, 'fab02576469b4a0d91b657a248c715c5');
INSERT INTO `city` VALUES (1521, '341825', '旌德县', '341800', NULL, 'd60edf5e7eae41dcb843d220e8accaa2');
INSERT INTO `city` VALUES (1522, '341881', '宁国市', '341800', NULL, 'e858ff6b044e44718201c14ee563d11e');
INSERT INTO `city` VALUES (1523, '350101', '市辖区', '350100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1524, '350102', '鼓楼区', '350100', NULL, '0581ae8c49c44353849f3ecd95972b7c');
INSERT INTO `city` VALUES (1525, '350103', '台江区', '350100', NULL, '6f618b774d5e4462a2d11d32b542f3de');
INSERT INTO `city` VALUES (1526, '350104', '仓山区', '350100', NULL, '83e541559fb24e7a9bb700312bb9c138');
INSERT INTO `city` VALUES (1527, '350105', '马尾区', '350100', NULL, '5b4fc5ba103d4f0a9f3b3092b14d9ffb');
INSERT INTO `city` VALUES (1528, '350111', '晋安区', '350100', NULL, '57543979759045aca22d27b14725abbd');
INSERT INTO `city` VALUES (1529, '350121', '闽侯县', '350100', NULL, 'fb52c79b498f43e3bdbfdd8a89aab8a7');
INSERT INTO `city` VALUES (1530, '350122', '连江县', '350100', NULL, 'afa5f0c9aa254c3aaa6bd9d81aea27db');
INSERT INTO `city` VALUES (1531, '350123', '罗源县', '350100', NULL, '5a55d9aa986a4520a653983118df0b81');
INSERT INTO `city` VALUES (1532, '350124', '闽清县', '350100', NULL, '88abe154a4424a06975f5a4d65dd5af6');
INSERT INTO `city` VALUES (1533, '350125', '永泰县', '350100', NULL, '248aed51d2c844af99b27103ec7ec522');
INSERT INTO `city` VALUES (1534, '350128', '平潭县', '350100', NULL, 'b31c2ed41f1f43cead8a0e84dfd9b394');
INSERT INTO `city` VALUES (1535, '350181', '福清市', '350100', NULL, 'cd718880f3cc47f4b9b3a86b013962d4');
INSERT INTO `city` VALUES (1536, '350182', '长乐市', '350100', NULL, '3901bc4ec01f43e1a00f41c5e0bdb341');
INSERT INTO `city` VALUES (1537, '350201', '市辖区', '350200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1538, '350203', '思明区', '350200', NULL, '41891ff054eb48b09b6790b86b4362df');
INSERT INTO `city` VALUES (1539, '350205', '海沧区', '350200', NULL, '0ea3fec9722447e6bf8bc26c725b3758');
INSERT INTO `city` VALUES (1540, '350206', '湖里区', '350200', NULL, 'c50e7d0913a144cab55f503211c5b96b');
INSERT INTO `city` VALUES (1541, '350211', '集美区', '350200', NULL, '37c13bf3b49e4784b82156cc1193ea62');
INSERT INTO `city` VALUES (1542, '350212', '同安区', '350200', NULL, '66b36d623a874ec7bfecc0bc297e35e3');
INSERT INTO `city` VALUES (1543, '350213', '翔安区', '350200', NULL, 'fc58e180e2094486b8d0aa4582948221');
INSERT INTO `city` VALUES (1544, '350301', '市辖区', '350300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1545, '350302', '城厢区', '350300', NULL, '078075fe9d1e484ea5e1befe37ae793f');
INSERT INTO `city` VALUES (1546, '350303', '涵江区', '350300', NULL, '838b66ed1ead4c5bae2d227002aa8b40');
INSERT INTO `city` VALUES (1547, '350304', '荔城区', '350300', NULL, '8986dde5e9a44f89b888c6a11350336c');
INSERT INTO `city` VALUES (1548, '350305', '秀屿区', '350300', NULL, '8c45ff71d12c47888fbd54ed553532da');
INSERT INTO `city` VALUES (1549, '350322', '仙游县', '350300', NULL, '1200adc4351a4957ac08ead5eefb7534');
INSERT INTO `city` VALUES (1550, '350401', '市辖区', '350400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1551, '350402', '梅列区', '350400', NULL, 'e07c08a601cb47188c80b8b9d91929ec');
INSERT INTO `city` VALUES (1552, '350403', '三元区', '350400', NULL, 'bcd5054aa39249fa95dd4f65b4045ea4');
INSERT INTO `city` VALUES (1553, '350421', '明溪县', '350400', NULL, 'e337ff37736a47f7aaef0aa745fdbd45');
INSERT INTO `city` VALUES (1554, '350423', '清流县', '350400', NULL, '19530dc56c6648af98207b43b001cbb8');
INSERT INTO `city` VALUES (1555, '350424', '宁化县', '350400', NULL, '4a8bf1980ef74a5483c468fa3985147a');
INSERT INTO `city` VALUES (1556, '350425', '大田县', '350400', NULL, '41c4159dc43049ce8675c00e42037e30');
INSERT INTO `city` VALUES (1557, '350426', '尤溪县', '350400', NULL, '1ad380104c55483e84437d3f76947504');
INSERT INTO `city` VALUES (1558, '350427', '沙　县', '350400', NULL, NULL);
INSERT INTO `city` VALUES (1559, '350428', '将乐县', '350400', NULL, '0f5691242d094bc0851b257736fcea08');
INSERT INTO `city` VALUES (1560, '350429', '泰宁县', '350400', NULL, 'e852bca0df574a2eb6cc2c5be1d58864');
INSERT INTO `city` VALUES (1561, '350430', '建宁县', '350400', NULL, 'ffd5b54b7b894fa89d04b8ecccc7dafb');
INSERT INTO `city` VALUES (1562, '350481', '永安市', '350400', NULL, 'f86b6274fc654ad5a962adc40b0238f8');
INSERT INTO `city` VALUES (1563, '350501', '市辖区', '350500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1564, '350502', '鲤城区', '350500', NULL, 'b63e41502d044f07a79efd1d438105ab');
INSERT INTO `city` VALUES (1565, '350503', '丰泽区', '350500', NULL, '1c8e81ad732c48b1b02d34e67b0e238b');
INSERT INTO `city` VALUES (1566, '350504', '洛江区', '350500', NULL, '7189e363a45d497b8a3c0708de66d589');
INSERT INTO `city` VALUES (1567, '350505', '泉港区', '350500', NULL, '4083a49a6e9d4af59fa6369a163a827b');
INSERT INTO `city` VALUES (1568, '350521', '惠安县', '350500', NULL, '3700a196f8d74bf187b10a84a17780fe');
INSERT INTO `city` VALUES (1569, '350524', '安溪县', '350500', NULL, '07e9942a1e4d4ccf953ba35d12ee7902');
INSERT INTO `city` VALUES (1570, '350525', '永春县', '350500', NULL, 'f7412b220e41487fb3d19379f9116d75');
INSERT INTO `city` VALUES (1571, '350526', '德化县', '350500', NULL, 'f45996ae1d924e37aeb13486f50f2a51');
INSERT INTO `city` VALUES (1572, '350527', '金门县', '350500', NULL, 'fb2fa9cd5aab4a66bb8fa6e8f3903d66');
INSERT INTO `city` VALUES (1573, '350581', '石狮市', '350500', NULL, '86b15a12cac14a789414a44ef5f37e3b');
INSERT INTO `city` VALUES (1574, '350582', '晋江市', '350500', NULL, '0b51830ccd1e4b019d0d34ec0d9fcdce');
INSERT INTO `city` VALUES (1575, '350583', '南安市', '350500', NULL, 'c2f5fad0e77f4c37afcc59b212e019ce');
INSERT INTO `city` VALUES (1576, '350601', '市辖区', '350600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1577, '350602', '芗城区', '350600', NULL, 'c8581bab6129432fbb69e4ca9a612793');
INSERT INTO `city` VALUES (1578, '350603', '龙文区', '350600', NULL, '044385166aa4489d82855a34bda81b14');
INSERT INTO `city` VALUES (1579, '350622', '云霄县', '350600', NULL, 'ea2b7c6a0ea44dad8c6217c046de5d5a');
INSERT INTO `city` VALUES (1580, '350623', '漳浦县', '350600', NULL, '30f8f2e9d18749ab8fd9e7d8e3430533');
INSERT INTO `city` VALUES (1581, '350624', '诏安县', '350600', NULL, '5a14c15977634430876238e65ba14bc7');
INSERT INTO `city` VALUES (1582, '350625', '长泰县', '350600', NULL, '374563f9d8844369a69b60a225e09a25');
INSERT INTO `city` VALUES (1583, '350626', '东山县', '350600', NULL, 'faaf26cfdf734fd1aa01f1c45239ce3c');
INSERT INTO `city` VALUES (1584, '350627', '南靖县', '350600', NULL, '6a0760680ffe4c8bae88af15e7380118');
INSERT INTO `city` VALUES (1585, '350628', '平和县', '350600', NULL, 'fdd468376f384578923cf0b827647a04');
INSERT INTO `city` VALUES (1586, '350629', '华安县', '350600', NULL, '57d67cc4f9be40948aa4e0a50335598a');
INSERT INTO `city` VALUES (1587, '350681', '龙海市', '350600', NULL, '743be8365cb94ac39a51fda54ee41ccf');
INSERT INTO `city` VALUES (1588, '350701', '市辖区', '350700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1589, '350702', '延平区', '350700', NULL, '0cb7abde6ea44b778528cf1e7faf33d3');
INSERT INTO `city` VALUES (1590, '350721', '顺昌县', '350700', NULL, '0f0cf37c8cc24170abd5f13d42b2a9a5');
INSERT INTO `city` VALUES (1591, '350722', '浦城县', '350700', NULL, 'bb313b1033fa4c739a40274bd757274f');
INSERT INTO `city` VALUES (1592, '350723', '光泽县', '350700', NULL, '327e47ebbde34c8fa64f108aa3b230f2');
INSERT INTO `city` VALUES (1593, '350724', '松溪县', '350700', NULL, '276e946a0d28412aa86eab4d65bd9277');
INSERT INTO `city` VALUES (1594, '350725', '政和县', '350700', NULL, '5ab1dd7e170c4407aa92c6a2effb8617');
INSERT INTO `city` VALUES (1595, '350781', '邵武市', '350700', NULL, '54d70ab187dd432d897581cccf2b3a0d');
INSERT INTO `city` VALUES (1596, '350782', '武夷山市', '350700', NULL, 'c6721a05c32245b0bf33e7d8dd6f106e');
INSERT INTO `city` VALUES (1597, '350783', '建瓯市', '350700', NULL, 'c1750efe4809415cb1e9bb872e0113b3');
INSERT INTO `city` VALUES (1598, '350784', '建阳市', '350700', NULL, NULL);
INSERT INTO `city` VALUES (1599, '350801', '市辖区', '350800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1600, '350802', '新罗区', '350800', NULL, '638a4490939f4c1bb923f8dfca903fbe');
INSERT INTO `city` VALUES (1601, '350821', '长汀县', '350800', NULL, 'cd0a1496d40645d6b5816412fbb87555');
INSERT INTO `city` VALUES (1602, '350822', '永定县', '350800', NULL, NULL);
INSERT INTO `city` VALUES (1603, '350823', '上杭县', '350800', NULL, '7d94ec078baf44fb9b04b950a4ebb0e2');
INSERT INTO `city` VALUES (1604, '350824', '武平县', '350800', NULL, 'a16ab00743b84c8892b857cd1c1dac2c');
INSERT INTO `city` VALUES (1605, '350825', '连城县', '350800', NULL, 'dd03addb85124c66b2c25ff43a695288');
INSERT INTO `city` VALUES (1606, '350881', '漳平市', '350800', NULL, '7f1716d81ba14edfbb37218c5586198c');
INSERT INTO `city` VALUES (1607, '350901', '市辖区', '350900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1608, '350902', '蕉城区', '350900', NULL, '2c5c6023b5e54ea588bbe2d62f14e17f');
INSERT INTO `city` VALUES (1609, '350921', '霞浦县', '350900', NULL, '9406debafaee4ebdaf395e02f422187f');
INSERT INTO `city` VALUES (1610, '350922', '古田县', '350900', NULL, 'df66921e97ec4dacb8ef582d20551387');
INSERT INTO `city` VALUES (1611, '350923', '屏南县', '350900', NULL, 'cd005db2fc3240d48228e0e44c2ca772');
INSERT INTO `city` VALUES (1612, '350924', '寿宁县', '350900', NULL, '65c9270ff7764429a8df62dc3f6f9500');
INSERT INTO `city` VALUES (1613, '350925', '周宁县', '350900', NULL, '06f1d0615ed9464f8ebbc66cee5ceb46');
INSERT INTO `city` VALUES (1614, '350926', '柘荣县', '350900', NULL, '373d52adf2574cb5926fa99a82a995c3');
INSERT INTO `city` VALUES (1615, '350981', '福安市', '350900', NULL, '735c4d05066c45f2a62f5acabbed9a26');
INSERT INTO `city` VALUES (1616, '350982', '福鼎市', '350900', NULL, '0b02b8774a0c4687af5b855544141892');
INSERT INTO `city` VALUES (1617, '360101', '市辖区', '360100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1618, '360102', '东湖区', '360100', NULL, '8d52e79dab53497985ad711feb9d32d2');
INSERT INTO `city` VALUES (1619, '360103', '西湖区', '360100', NULL, '8452746ebb08486b926ef48bf57f9e69');
INSERT INTO `city` VALUES (1620, '360104', '青云谱区', '360100', NULL, 'f44d0ee43a5f4ae8a4bc2c377c427d2a');
INSERT INTO `city` VALUES (1621, '360105', '湾里区', '360100', NULL, '842921f2a3774b1eb27cdf28d7122729');
INSERT INTO `city` VALUES (1622, '360111', '青山湖区', '360100', NULL, '2d4e3ed941744acc8be7fac086e8fde3');
INSERT INTO `city` VALUES (1623, '360121', '南昌县', '360100', NULL, 'edbe4ee776144d60a4877662efdd175a');
INSERT INTO `city` VALUES (1624, '360122', '新建县', '360100', NULL, NULL);
INSERT INTO `city` VALUES (1625, '360123', '安义县', '360100', NULL, 'f93f5235995841d6a6ea6eed4a78f6f2');
INSERT INTO `city` VALUES (1626, '360124', '进贤县', '360100', NULL, 'ff98957f99ab419ebbf07307cb3f0b7b');
INSERT INTO `city` VALUES (1627, '360201', '市辖区', '360200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1628, '360202', '昌江区', '360200', NULL, 'c4b592e1b419429abf6b0c7aa38d41bf');
INSERT INTO `city` VALUES (1629, '360203', '珠山区', '360200', NULL, '742aa7b1e69640fb84dfc55f840d410f');
INSERT INTO `city` VALUES (1630, '360222', '浮梁县', '360200', NULL, '82d7e7a8d34b45a38c283e36ca001e24');
INSERT INTO `city` VALUES (1631, '360281', '乐平市', '360200', NULL, '1e462ab41f98428a96e0592f78cca8ad');
INSERT INTO `city` VALUES (1632, '360301', '市辖区', '360300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1633, '360302', '安源区', '360300', NULL, '6a6a22de4853451d9b195766543e8d4b');
INSERT INTO `city` VALUES (1634, '360313', '湘东区', '360300', NULL, '3b9c449e95c7452a8d2f650820560f9a');
INSERT INTO `city` VALUES (1635, '360321', '莲花县', '360300', NULL, 'ab66fe51fb864e20b9de498552cbbab0');
INSERT INTO `city` VALUES (1636, '360322', '上栗县', '360300', NULL, '82848121abce44c087441da7e126d681');
INSERT INTO `city` VALUES (1637, '360323', '芦溪县', '360300', NULL, 'cbe78bbf4f2b4517b12e3c65b4e6d24f');
INSERT INTO `city` VALUES (1638, '360401', '市辖区', '360400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1639, '360402', '庐山区', '360400', NULL, NULL);
INSERT INTO `city` VALUES (1640, '360403', '浔阳区', '360400', NULL, '59d6e7de6dc549399db8fad96675ff2a');
INSERT INTO `city` VALUES (1641, '360421', '九江县', '360400', NULL, NULL);
INSERT INTO `city` VALUES (1642, '360423', '武宁县', '360400', NULL, 'ef967d53196347469668978c48d20f5f');
INSERT INTO `city` VALUES (1643, '360424', '修水县', '360400', NULL, '698cc75a0f9c4104ab842ad24ca5ad9b');
INSERT INTO `city` VALUES (1644, '360425', '永修县', '360400', NULL, 'efcbb55ebafd4159af7b20d631094b16');
INSERT INTO `city` VALUES (1645, '360426', '德安县', '360400', NULL, 'fc10e64302654bc29475f1e1f1d02390');
INSERT INTO `city` VALUES (1646, '360427', '星子县', '360400', NULL, NULL);
INSERT INTO `city` VALUES (1647, '360428', '都昌县', '360400', NULL, 'cf4c9d5ed5704b97b55c32be3e30a080');
INSERT INTO `city` VALUES (1648, '360429', '湖口县', '360400', NULL, '536f02b640ef4afe910c13d9d30b87e5');
INSERT INTO `city` VALUES (1649, '360430', '彭泽县', '360400', NULL, 'edd377ece72b444d80b4d72ee4ca4d01');
INSERT INTO `city` VALUES (1650, '360481', '瑞昌市', '360400', NULL, '136d012386cd412ca993f1feacd3ccc4');
INSERT INTO `city` VALUES (1651, '360501', '市辖区', '360500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1652, '360502', '渝水区', '360500', NULL, '2cda16172aa4455fab0e408809183dbf');
INSERT INTO `city` VALUES (1653, '360521', '分宜县', '360500', NULL, '4ce848d0508e4330a9a14118d1a4f65c');
INSERT INTO `city` VALUES (1654, '360601', '市辖区', '360600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1655, '360602', '月湖区', '360600', NULL, 'c1bd200120344769b1c6905e09fffe36');
INSERT INTO `city` VALUES (1656, '360622', '余江县', '360600', NULL, '973e689a64834ae88d9ff66c02c02d6e');
INSERT INTO `city` VALUES (1657, '360681', '贵溪市', '360600', NULL, 'd04af21e093f47c6b6050a322c9da2a7');
INSERT INTO `city` VALUES (1658, '360701', '市辖区', '360700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1659, '360702', '章贡区', '360700', NULL, '986497147d2b4b47b4f26d0137e28779');
INSERT INTO `city` VALUES (1660, '360721', '赣　县', '360700', NULL, NULL);
INSERT INTO `city` VALUES (1661, '360722', '信丰县', '360700', NULL, 'f653db71df3a4b9e969adc64851a1513');
INSERT INTO `city` VALUES (1662, '360723', '大余县', '360700', NULL, '38c6708eb9534609bf39f8a54d48e153');
INSERT INTO `city` VALUES (1663, '360724', '上犹县', '360700', NULL, 'bcf911fe60ea4bfa83bd993d06b36ef4');
INSERT INTO `city` VALUES (1664, '360725', '崇义县', '360700', NULL, '7d8c9be2cba0436a93105ca100ab2141');
INSERT INTO `city` VALUES (1665, '360726', '安远县', '360700', NULL, '646153c07eb54c43b0e077f728ebf932');
INSERT INTO `city` VALUES (1666, '360727', '龙南县', '360700', NULL, '574039ba78b145798fa8da4e5e1cbee2');
INSERT INTO `city` VALUES (1667, '360728', '定南县', '360700', NULL, 'de2aa1b15d3f4286b2edcfa8aff00bb6');
INSERT INTO `city` VALUES (1668, '360729', '全南县', '360700', NULL, 'a84bdcb5e0734939bd37f795bb7969e1');
INSERT INTO `city` VALUES (1669, '360730', '宁都县', '360700', NULL, '78ce2803d3514c1782ebcddf36312c1b');
INSERT INTO `city` VALUES (1670, '360731', '于都县', '360700', NULL, '8a79a9f9f6f84caa99f142b3c919fd4c');
INSERT INTO `city` VALUES (1671, '360732', '兴国县', '360700', NULL, '1ad50653dbda42f182a9e7d2276667e5');
INSERT INTO `city` VALUES (1672, '360733', '会昌县', '360700', NULL, '4fa317b6859d4b9ba67cdf8dc3c4ce64');
INSERT INTO `city` VALUES (1673, '360734', '寻乌县', '360700', NULL, 'fe5dc08220094f2e90b6d20ee31de089');
INSERT INTO `city` VALUES (1674, '360735', '石城县', '360700', NULL, '5bc67d3858e346f89e130ddead1b9ef0');
INSERT INTO `city` VALUES (1675, '360781', '瑞金市', '360700', NULL, 'b413dc3c3bf347798441da9bff32b7a2');
INSERT INTO `city` VALUES (1676, '360782', '南康市', '360700', NULL, NULL);
INSERT INTO `city` VALUES (1677, '360801', '市辖区', '360800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1678, '360802', '吉州区', '360800', NULL, 'f822912edc2b442398a7916b95c9c795');
INSERT INTO `city` VALUES (1679, '360803', '青原区', '360800', NULL, '7740be1709c0447bad8d3a428840e358');
INSERT INTO `city` VALUES (1680, '360821', '吉安县', '360800', NULL, 'ed6807bc1146422193a4cec8168051d2');
INSERT INTO `city` VALUES (1681, '360822', '吉水县', '360800', NULL, 'cba6b099f6824078bdb98de4c10919f1');
INSERT INTO `city` VALUES (1682, '360823', '峡江县', '360800', NULL, 'de86d31ce95845409cafc1ab34338c6d');
INSERT INTO `city` VALUES (1683, '360824', '新干县', '360800', NULL, '63e749d6f5b64296afd2f8b99f53f2f1');
INSERT INTO `city` VALUES (1684, '360825', '永丰县', '360800', NULL, '880d85cc7b2a43a3a7b572b8764c2af7');
INSERT INTO `city` VALUES (1685, '360826', '泰和县', '360800', NULL, 'f11d9e11f3484787b7373cfd4df35a07');
INSERT INTO `city` VALUES (1686, '360827', '遂川县', '360800', NULL, 'cf469b535050448fb33f62cf6fac9da3');
INSERT INTO `city` VALUES (1687, '360828', '万安县', '360800', NULL, '74283a0cbcea4cc0b8613819f90c69c0');
INSERT INTO `city` VALUES (1688, '360829', '安福县', '360800', NULL, 'ae1bc924f0a042d89f1e42a32b9133e1');
INSERT INTO `city` VALUES (1689, '360830', '永新县', '360800', NULL, '1b88dbf34e93445783e5f7e7daa915e8');
INSERT INTO `city` VALUES (1690, '360881', '井冈山市', '360800', NULL, 'b5c7c52c65b94401afa0fd410623f7f1');
INSERT INTO `city` VALUES (1691, '360901', '市辖区', '360900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1692, '360902', '袁州区', '360900', NULL, 'a658190e30744206bdedd887cc313af7');
INSERT INTO `city` VALUES (1693, '360921', '奉新县', '360900', NULL, '67e7b26661484590912b546b69f136bb');
INSERT INTO `city` VALUES (1694, '360922', '万载县', '360900', NULL, 'b9984fd91aaa4b7fa01687007cb3cc3d');
INSERT INTO `city` VALUES (1695, '360923', '上高县', '360900', NULL, 'e1e0ebc2277b4bbaa41990435bbc3e12');
INSERT INTO `city` VALUES (1696, '360924', '宜丰县', '360900', NULL, '821ba4460d6c48cebbb69d970be60fae');
INSERT INTO `city` VALUES (1697, '360925', '靖安县', '360900', NULL, '71f4d0ba9a8941c392fe3dcaed655833');
INSERT INTO `city` VALUES (1698, '360926', '铜鼓县', '360900', NULL, '488e28325b0943afae33c250c3cfafb8');
INSERT INTO `city` VALUES (1699, '360981', '丰城市', '360900', NULL, '587a60b67fa145c393f1919aee1bf3b8');
INSERT INTO `city` VALUES (1700, '360982', '樟树市', '360900', NULL, 'f6723aa780994a7b8a3413bb8ebace5f');
INSERT INTO `city` VALUES (1701, '360983', '高安市', '360900', NULL, '731112665b1b41df9de6d405e50c0b58');
INSERT INTO `city` VALUES (1702, '361001', '市辖区', '361000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1703, '361002', '临川区', '361000', NULL, '26302f26d7174ceba29467f72e4ee312');
INSERT INTO `city` VALUES (1704, '361021', '南城县', '361000', NULL, '44e525b6878649a0b438ffcd8caa6ebf');
INSERT INTO `city` VALUES (1705, '361022', '黎川县', '361000', NULL, '8d49e1c2a1bf48e1a8febbe1eb776ae2');
INSERT INTO `city` VALUES (1706, '361023', '南丰县', '361000', NULL, '39923545f7844b64bda1792f93f0dcb1');
INSERT INTO `city` VALUES (1707, '361024', '崇仁县', '361000', NULL, 'e71d7e6353a84977bb7286023c5048d4');
INSERT INTO `city` VALUES (1708, '361025', '乐安县', '361000', NULL, 'fecb7468d94445e6b412570a0c50e2a8');
INSERT INTO `city` VALUES (1709, '361026', '宜黄县', '361000', NULL, '99036cf9ca174eef80b7ad666ff505f5');
INSERT INTO `city` VALUES (1710, '361027', '金溪县', '361000', NULL, '2aeff2eec17140fcb72ba3fc27e4945b');
INSERT INTO `city` VALUES (1711, '361028', '资溪县', '361000', NULL, '2659b761ceda49cfacfb09eb2ed92308');
INSERT INTO `city` VALUES (1712, '361029', '东乡县', '361000', NULL, NULL);
INSERT INTO `city` VALUES (1713, '361030', '广昌县', '361000', NULL, '69dc11f0f3bd43d88cb997398eefdfaf');
INSERT INTO `city` VALUES (1714, '361101', '市辖区', '361100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1715, '361102', '信州区', '361100', NULL, '7376a849e8f94e36a7a49a1fc0ee42bb');
INSERT INTO `city` VALUES (1716, '361121', '上饶县', '361100', NULL, 'a569416d0b8844f8aeb68b4228b5c21a');
INSERT INTO `city` VALUES (1717, '361122', '广丰县', '361100', NULL, NULL);
INSERT INTO `city` VALUES (1718, '361123', '玉山县', '361100', NULL, 'd60732248255478ba8d1d60898e8db32');
INSERT INTO `city` VALUES (1719, '361124', '铅山县', '361100', NULL, 'b770eaf71eec4653be15833f61f721f4');
INSERT INTO `city` VALUES (1720, '361125', '横峰县', '361100', NULL, 'a023d8ddef374b3196606fe7ec1f543b');
INSERT INTO `city` VALUES (1721, '361126', '弋阳县', '361100', NULL, 'e4197a5f77dc4426a269c43355f4be2b');
INSERT INTO `city` VALUES (1722, '361127', '余干县', '361100', NULL, 'bf19a1f4474847e799a39b7619772697');
INSERT INTO `city` VALUES (1723, '361128', '鄱阳县', '361100', NULL, '60f54c9d49be47afb01199c1e62a917f');
INSERT INTO `city` VALUES (1724, '361129', '万年县', '361100', NULL, 'cef123fdd9824d8ab5d51880bc8728c1');
INSERT INTO `city` VALUES (1725, '361130', '婺源县', '361100', NULL, '1bc9b2157cdd40bba9fe073ee384abec');
INSERT INTO `city` VALUES (1726, '361181', '德兴市', '361100', NULL, 'e4929216793948a79ef5b9e660a139a9');
INSERT INTO `city` VALUES (1727, '370101', '市辖区', '370100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1728, '370102', '历下区', '370100', NULL, '5dc570a43920408a97bb3bc4625eb63a');
INSERT INTO `city` VALUES (1729, '370103', '市中区', '370100', NULL, '8cb070b023274bbe874435d423d3c741');
INSERT INTO `city` VALUES (1730, '370104', '槐荫区', '370100', NULL, '0fdc82ecb7184cffa28397c5d390c3bf');
INSERT INTO `city` VALUES (1731, '370105', '天桥区', '370100', NULL, '78f88c1b3b0b4553bffc4f8b9c154229');
INSERT INTO `city` VALUES (1732, '370112', '历城区', '370100', NULL, '5fab0edd7c9c47f78838115fd40e4d96');
INSERT INTO `city` VALUES (1733, '370113', '长清区', '370100', NULL, '626f543337fa4a5bad91ae999172790e');
INSERT INTO `city` VALUES (1734, '370124', '平阴县', '370100', NULL, '085cb9c83276476899b8b0aff59d1e9b');
INSERT INTO `city` VALUES (1735, '370125', '济阳县', '370100', NULL, '03a7e96ed7824a1a8e9ba5757097ffb9');
INSERT INTO `city` VALUES (1736, '370126', '商河县', '370100', NULL, '447ddee45e214ecbbc567652f42ca333');
INSERT INTO `city` VALUES (1737, '370181', '章丘市', '370100', NULL, NULL);
INSERT INTO `city` VALUES (1738, '370201', '市辖区', '370200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1739, '370202', '市南区', '370200', NULL, 'a2c7075f8ce14baca8e075883c0382c8');
INSERT INTO `city` VALUES (1740, '370203', '市北区', '370200', NULL, 'f958bf6e32094aa996bcbdca9f15a557');
INSERT INTO `city` VALUES (1741, '370205', '四方区', '370200', NULL, NULL);
INSERT INTO `city` VALUES (1742, '370211', '黄岛区', '370200', NULL, 'b994567d3d3b4a85ab1772b4f45978ed');
INSERT INTO `city` VALUES (1743, '370212', '崂山区', '370200', NULL, 'ddebf9bc238a490d8ba03e2b90e935ad');
INSERT INTO `city` VALUES (1744, '370213', '李沧区', '370200', NULL, '514d32f7f7ed424ab37ba67bb9ae57ad');
INSERT INTO `city` VALUES (1745, '370214', '城阳区', '370200', NULL, '769164d766744999a08a91c7bfd10836');
INSERT INTO `city` VALUES (1746, '370281', '胶州市', '370200', NULL, '09ddab2821b64fb789411a0551104361');
INSERT INTO `city` VALUES (1747, '370282', '即墨市', '370200', NULL, NULL);
INSERT INTO `city` VALUES (1748, '370283', '平度市', '370200', NULL, '6c3ddfd6b9b94dc4987de7c87adcf403');
INSERT INTO `city` VALUES (1749, '370284', '胶南市', '370200', NULL, NULL);
INSERT INTO `city` VALUES (1750, '370285', '莱西市', '370200', NULL, 'c2238150d79544538f9f33f889ddb4e7');
INSERT INTO `city` VALUES (1751, '370301', '市辖区', '370300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1752, '370302', '淄川区', '370300', NULL, '46f64c87a91348ceac9e0ee6ac1a7da7');
INSERT INTO `city` VALUES (1753, '370303', '张店区', '370300', NULL, '4ad28d58d0784eb6a5c2349b8ca9c24c');
INSERT INTO `city` VALUES (1754, '370304', '博山区', '370300', NULL, '6836d114cba74da18c96473d766cbb63');
INSERT INTO `city` VALUES (1755, '370305', '临淄区', '370300', NULL, '42fe5538c01f4c0d9b3fb185d7f3d41b');
INSERT INTO `city` VALUES (1756, '370306', '周村区', '370300', NULL, '9f971512a01d4b14bf7777797899cca3');
INSERT INTO `city` VALUES (1757, '370321', '桓台县', '370300', NULL, 'daf1847b52e54c4aaf8e8e006a0ac58c');
INSERT INTO `city` VALUES (1758, '370322', '高青县', '370300', NULL, '2ff724d3ff1b4972a2407fc141a2a707');
INSERT INTO `city` VALUES (1759, '370323', '沂源县', '370300', NULL, 'c6b1a532075f41febafc64f54836117c');
INSERT INTO `city` VALUES (1760, '370401', '市辖区', '370400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1761, '370402', '市中区', '370400', NULL, '8cb070b023274bbe874435d423d3c741');
INSERT INTO `city` VALUES (1762, '370403', '薛城区', '370400', NULL, 'bb21d042489a4ecbaa6e33670f6e1ae2');
INSERT INTO `city` VALUES (1763, '370404', '峄城区', '370400', NULL, 'f47fb4ffdfcf4c01bd932d801791bb9e');
INSERT INTO `city` VALUES (1764, '370405', '台儿庄区', '370400', NULL, 'bcddbab9741c4fa58a2ae551a5529c16');
INSERT INTO `city` VALUES (1765, '370406', '山亭区', '370400', NULL, 'a9348cf6f171416aaf0db8bca51d8c2d');
INSERT INTO `city` VALUES (1766, '370481', '滕州市', '370400', NULL, '64e1b29b211e4ce9b13b0631eee68884');
INSERT INTO `city` VALUES (1767, '370501', '市辖区', '370500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1768, '370502', '东营区', '370500', NULL, '42307d8b7a3d4f958d517e71727e215f');
INSERT INTO `city` VALUES (1769, '370503', '河口区', '370500', NULL, '357e2c3c804844dab2fd03358f2e73eb');
INSERT INTO `city` VALUES (1770, '370521', '垦利县', '370500', NULL, NULL);
INSERT INTO `city` VALUES (1771, '370522', '利津县', '370500', NULL, 'a55f4e230e8242538513f66b8c38dcf9');
INSERT INTO `city` VALUES (1772, '370523', '广饶县', '370500', NULL, 'c29cfac10e804c46a5a5913abac090c2');
INSERT INTO `city` VALUES (1773, '370601', '市辖区', '370600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1774, '370602', '芝罘区', '370600', NULL, 'e404153e24e04b0fbdae737bf4024a6e');
INSERT INTO `city` VALUES (1775, '370611', '福山区', '370600', NULL, '23684b19ec2b4528b5b6395a3ecfcd8a');
INSERT INTO `city` VALUES (1776, '370612', '牟平区', '370600', NULL, '910c09929eee4da4b76c2033fbcfc160');
INSERT INTO `city` VALUES (1777, '370613', '莱山区', '370600', NULL, '5af568877fbc4cd489fdab2018bc5b4b');
INSERT INTO `city` VALUES (1778, '370634', '长岛县', '370600', NULL, 'a6d1e37fd3164853969dfcc0142ff196');
INSERT INTO `city` VALUES (1779, '370681', '龙口市', '370600', NULL, '9db0b6bb771b469e8c453b987ca65efc');
INSERT INTO `city` VALUES (1780, '370682', '莱阳市', '370600', NULL, '13e44aedb1ad4644b0e6982630b30da1');
INSERT INTO `city` VALUES (1781, '370683', '莱州市', '370600', NULL, '566ef49d17b54700a74fc34a21e97d77');
INSERT INTO `city` VALUES (1782, '370684', '蓬莱市', '370600', NULL, '724c4675110c4fe2a7d330b3c1e63080');
INSERT INTO `city` VALUES (1783, '370685', '招远市', '370600', NULL, 'c31ab0b19c664f0cbd5cc36dd19b1611');
INSERT INTO `city` VALUES (1784, '370686', '栖霞市', '370600', NULL, '887544accf6f4dcd9659137dc7c362d2');
INSERT INTO `city` VALUES (1785, '370687', '海阳市', '370600', NULL, '3c4e6f0bd688453d9aaddb9d04c8b680');
INSERT INTO `city` VALUES (1786, '370701', '市辖区', '370700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1787, '370702', '潍城区', '370700', NULL, 'a62af3cbacaf4091b581fec61c6b8894');
INSERT INTO `city` VALUES (1788, '370703', '寒亭区', '370700', NULL, '7c73ed1e796d48718d8751e552e00804');
INSERT INTO `city` VALUES (1789, '370704', '坊子区', '370700', NULL, 'a1cdc865f15a439fbd659679bf9818e9');
INSERT INTO `city` VALUES (1790, '370705', '奎文区', '370700', NULL, 'ba987d9c1849491495f62e0f9b111662');
INSERT INTO `city` VALUES (1791, '370724', '临朐县', '370700', NULL, 'ce452f3e82a546a586b3c86a4f5581b0');
INSERT INTO `city` VALUES (1792, '370725', '昌乐县', '370700', NULL, 'f759430bb30a45f8a5850b870081728d');
INSERT INTO `city` VALUES (1793, '370781', '青州市', '370700', NULL, '44bb35c1a5df44349f4dce583be45d7e');
INSERT INTO `city` VALUES (1794, '370782', '诸城市', '370700', NULL, 'c8dad702c1574ecb97b2c5a51930110b');
INSERT INTO `city` VALUES (1795, '370783', '寿光市', '370700', NULL, '596f6dd98d0a47cc9779ca1b76be71d6');
INSERT INTO `city` VALUES (1796, '370784', '安丘市', '370700', NULL, '010c535ff255434fad759d0c9682f0fa');
INSERT INTO `city` VALUES (1797, '370785', '高密市', '370700', NULL, 'a5b62f1746494cba9cb1993534e25362');
INSERT INTO `city` VALUES (1798, '370786', '昌邑市', '370700', NULL, '23058284880b4014b57e1484769a3b68');
INSERT INTO `city` VALUES (1799, '370801', '市辖区', '370800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1800, '370802', '市中区', '370800', NULL, '8cb070b023274bbe874435d423d3c741');
INSERT INTO `city` VALUES (1801, '370811', '任城区', '370800', NULL, 'e3a1cfc2251a42d88fa5ce809926c4e1');
INSERT INTO `city` VALUES (1802, '370826', '微山县', '370800', NULL, 'a93c32875b784c8dbad84f2ad666ea59');
INSERT INTO `city` VALUES (1803, '370827', '鱼台县', '370800', NULL, 'a9379e20f7bb44e88ebaf9a07e8434a8');
INSERT INTO `city` VALUES (1804, '370828', '金乡县', '370800', NULL, '0a8dfaceb57043428bd34afa430822c1');
INSERT INTO `city` VALUES (1805, '370829', '嘉祥县', '370800', NULL, '9f2f2da9d1fb4424b67d7e0412f30fd1');
INSERT INTO `city` VALUES (1806, '370830', '汶上县', '370800', NULL, '111f79757ca8471fb5c726f7ea263de7');
INSERT INTO `city` VALUES (1807, '370831', '泗水县', '370800', NULL, 'ee51a0def3dd462fb1acfdcee4580e58');
INSERT INTO `city` VALUES (1808, '370832', '梁山县', '370800', NULL, '744fedc11bbc46539822b13246fabc14');
INSERT INTO `city` VALUES (1809, '370881', '曲阜市', '370800', NULL, '35f1bc25f1ad4629ba23bc1760087bb1');
INSERT INTO `city` VALUES (1810, '370882', '兖州市', '370800', NULL, NULL);
INSERT INTO `city` VALUES (1811, '370883', '邹城市', '370800', NULL, '3a02f0bef0cf431a813304b74ba39653');
INSERT INTO `city` VALUES (1812, '370901', '市辖区', '370900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1813, '370902', '泰山区', '370900', NULL, '9ab827189d254f06b577ff598035db24');
INSERT INTO `city` VALUES (1814, '370903', '岱岳区', '370900', NULL, 'fe37b0d2bbd946ca81679c8dfa6599ff');
INSERT INTO `city` VALUES (1815, '370921', '宁阳县', '370900', NULL, '1b3d81f8ff354781b9ee2877241eb216');
INSERT INTO `city` VALUES (1816, '370923', '东平县', '370900', NULL, '2f05cb97b9c64510afad4e1e740ab6e7');
INSERT INTO `city` VALUES (1817, '370982', '新泰市', '370900', NULL, '17ea5a49c318483a898aedb0edce2e22');
INSERT INTO `city` VALUES (1818, '370983', '肥城市', '370900', NULL, 'dfa7f3a48246445296d27ca68b23be32');
INSERT INTO `city` VALUES (1819, '371001', '市辖区', '371000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1820, '371002', '环翠区', '371000', NULL, '9417dcdae50b4b89a3a22c5aa9af3c50');
INSERT INTO `city` VALUES (1821, '371081', '文登市', '371000', NULL, NULL);
INSERT INTO `city` VALUES (1822, '371082', '荣成市', '371000', NULL, '0abf1cdee1bd4f87835df3eba25c29d3');
INSERT INTO `city` VALUES (1823, '371083', '乳山市', '371000', NULL, '6d163450321d4f978918b1713a274dda');
INSERT INTO `city` VALUES (1824, '371101', '市辖区', '371100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1825, '371102', '东港区', '371100', NULL, 'efb8715c54ad49869ca540a2c74134a7');
INSERT INTO `city` VALUES (1826, '371103', '岚山区', '371100', NULL, '9f400967ef30493682f3d64f0957e3bf');
INSERT INTO `city` VALUES (1827, '371121', '五莲县', '371100', NULL, '23ca7e540d8d4d368b1caf2858d91f03');
INSERT INTO `city` VALUES (1828, '371122', '莒　县', '371100', NULL, NULL);
INSERT INTO `city` VALUES (1829, '371201', '市辖区', '371200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1830, '371202', '莱城区', '371200', NULL, '16f25bae87ab445aaa51d9e513810b7c');
INSERT INTO `city` VALUES (1831, '371203', '钢城区', '371200', NULL, '231456db0e3e4ccdb645a7cd50d1ed4a');
INSERT INTO `city` VALUES (1832, '371301', '市辖区', '371300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1833, '371302', '兰山区', '371300', NULL, '149c60bb84f1477c9754caf788a5e2f0');
INSERT INTO `city` VALUES (1834, '371311', '罗庄区', '371300', NULL, '04d5e227f1ba4254acad873211920dd2');
INSERT INTO `city` VALUES (1835, '371312', '河东区', '371300', NULL, '359bda53ca334623b167bd3e59bd5016');
INSERT INTO `city` VALUES (1836, '371321', '沂南县', '371300', NULL, 'c71066a4bbe243759cf7e1bf2dc9d33f');
INSERT INTO `city` VALUES (1837, '371322', '郯城县', '371300', NULL, '6c883886582f4a7bb010b3591d926319');
INSERT INTO `city` VALUES (1838, '371323', '沂水县', '371300', NULL, '44b9fe0f2dd544b39aa670201ec5b662');
INSERT INTO `city` VALUES (1839, '371324', '苍山县', '371300', NULL, NULL);
INSERT INTO `city` VALUES (1840, '371325', '费　县', '371300', NULL, NULL);
INSERT INTO `city` VALUES (1841, '371326', '平邑县', '371300', NULL, 'e743b2403f2145bdb83045ddc82f96d5');
INSERT INTO `city` VALUES (1842, '371327', '莒南县', '371300', NULL, '59be3242f97e4a3fbf03a3e363d17cc8');
INSERT INTO `city` VALUES (1843, '371328', '蒙阴县', '371300', NULL, 'e8a8bbca91f54aaa8e69a3c925d4168a');
INSERT INTO `city` VALUES (1844, '371329', '临沭县', '371300', NULL, '7b60bcfff12741dfb75ef20685675466');
INSERT INTO `city` VALUES (1845, '371401', '市辖区', '371400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1846, '371402', '德城区', '371400', NULL, '3c22809105504348a6b12a6caca482ec');
INSERT INTO `city` VALUES (1847, '371421', '陵　县', '371400', NULL, NULL);
INSERT INTO `city` VALUES (1848, '371422', '宁津县', '371400', NULL, '5bcf4eba3f8d4ce790a58b30fcb0e0d6');
INSERT INTO `city` VALUES (1849, '371423', '庆云县', '371400', NULL, '4104f634e3cc4481b6112a13501da680');
INSERT INTO `city` VALUES (1850, '371424', '临邑县', '371400', NULL, 'bfd0da73e18a4816b1035b755c5d905f');
INSERT INTO `city` VALUES (1851, '371425', '齐河县', '371400', NULL, '6a3c7971cfb84a5c80b8b6b1c1ca92cb');
INSERT INTO `city` VALUES (1852, '371426', '平原县', '371400', NULL, 'add628255a044874b8b2ed168003cd7f');
INSERT INTO `city` VALUES (1853, '371427', '夏津县', '371400', NULL, 'e28ce0bf1d2e43af9703e8a9ad56c490');
INSERT INTO `city` VALUES (1854, '371428', '武城县', '371400', NULL, '34cebd7293c440a4adba315442dd9fd4');
INSERT INTO `city` VALUES (1855, '371481', '乐陵市', '371400', NULL, 'e6346c864606453e8637904f2804472e');
INSERT INTO `city` VALUES (1856, '371482', '禹城市', '371400', NULL, '04f74f8e39c54b159534609518c09ac7');
INSERT INTO `city` VALUES (1857, '371501', '市辖区', '371500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1858, '371502', '东昌府区', '371500', NULL, '6e1de8b956bd4b50a63cd051d5cbcbc2');
INSERT INTO `city` VALUES (1859, '371521', '阳谷县', '371500', NULL, '51e09a8b951e4c949431d03fa2fe0365');
INSERT INTO `city` VALUES (1860, '371522', '莘　县', '371500', NULL, NULL);
INSERT INTO `city` VALUES (1861, '371523', '茌平县', '371500', NULL, 'c0fc2b0bea2f4b51833fd576f9dce973');
INSERT INTO `city` VALUES (1862, '371524', '东阿县', '371500', NULL, '3fcca0ba09594543bd2326b7e9c73076');
INSERT INTO `city` VALUES (1863, '371525', '冠　县', '371500', NULL, NULL);
INSERT INTO `city` VALUES (1864, '371526', '高唐县', '371500', NULL, '06c8b8bc0fcc4f669bbb2f5be2ce76f8');
INSERT INTO `city` VALUES (1865, '371581', '临清市', '371500', NULL, '04b9e13ca40b46d8b37632d41eeaa482');
INSERT INTO `city` VALUES (1866, '371601', '市辖区', '371600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1867, '371602', '滨城区', '371600', NULL, '7e7fc087c509495db49d4cc839908df0');
INSERT INTO `city` VALUES (1868, '371621', '惠民县', '371600', NULL, 'ee8eefa7c63b4c529ad00d4c0250d7f4');
INSERT INTO `city` VALUES (1869, '371622', '阳信县', '371600', NULL, '16a862a8b1f541ec96340e1267c15434');
INSERT INTO `city` VALUES (1870, '371623', '无棣县', '371600', NULL, '2c21d935a3ef4e3aba9ce158422dd432');
INSERT INTO `city` VALUES (1871, '371624', '沾化县', '371600', NULL, NULL);
INSERT INTO `city` VALUES (1872, '371625', '博兴县', '371600', NULL, '70a001853a6b40b297cc94d511db7882');
INSERT INTO `city` VALUES (1873, '371626', '邹平县', '371600', NULL, '0cb9dc53135246f7b798d58a89db42f5');
INSERT INTO `city` VALUES (1874, '371701', '市辖区', '371700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1875, '371702', '牡丹区', '371700', NULL, '2a59423e9a704c8a91dd6d8106f1336f');
INSERT INTO `city` VALUES (1876, '371721', '曹　县', '371700', NULL, NULL);
INSERT INTO `city` VALUES (1877, '371722', '单　县', '371700', NULL, NULL);
INSERT INTO `city` VALUES (1878, '371723', '成武县', '371700', NULL, '14cffcaba0984d878294b0c50c89bd78');
INSERT INTO `city` VALUES (1879, '371724', '巨野县', '371700', NULL, '28b209d6b0d74048b14b10fb2d3ad9bf');
INSERT INTO `city` VALUES (1880, '371725', '郓城县', '371700', NULL, '3af49e1bdc4e42269d02ad33d80779c8');
INSERT INTO `city` VALUES (1881, '371726', '鄄城县', '371700', NULL, '55c2f19512414f1587456d6f30207a4f');
INSERT INTO `city` VALUES (1882, '371727', '定陶县', '371700', NULL, NULL);
INSERT INTO `city` VALUES (1883, '371728', '东明县', '371700', NULL, 'b8e7cc97c3174feb9b967711282b1f20');
INSERT INTO `city` VALUES (1884, '410101', '市辖区', '410100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1885, '410102', '中原区', '410100', NULL, '812c1052f61d4572a774f7a99c5671d2');
INSERT INTO `city` VALUES (1886, '410103', '二七区', '410100', NULL, '8798ac943d07406690f437121447a1c7');
INSERT INTO `city` VALUES (1887, '410104', '管城回族区', '410100', NULL, '2ffe55de37ca4ffdb7cd90d31d232705');
INSERT INTO `city` VALUES (1888, '410105', '金水区', '410100', NULL, '4960bae65b9b4f91a1fcfb9f55a3401e');
INSERT INTO `city` VALUES (1889, '410106', '上街区', '410100', NULL, 'c5c1a6b0e1e74c8f872bc614f902481f');
INSERT INTO `city` VALUES (1890, '410108', '邙山区', '410100', NULL, NULL);
INSERT INTO `city` VALUES (1891, '410122', '中牟县', '410100', NULL, '3a52b847742346998ebef3ac63cd7df8');
INSERT INTO `city` VALUES (1892, '410181', '巩义市', '410100', NULL, '5ef8669a1ba7405a89bd9c96704e3009');
INSERT INTO `city` VALUES (1893, '410182', '荥阳市', '410100', NULL, '428b3c30d8854ac49b56aa347a7036f2');
INSERT INTO `city` VALUES (1894, '410183', '新密市', '410100', NULL, '77ef02c6b83f413abf67da950333ac9f');
INSERT INTO `city` VALUES (1895, '410184', '新郑市', '410100', NULL, '4e11c99a2df04e8e95c2575d60fb3031');
INSERT INTO `city` VALUES (1896, '410185', '登封市', '410100', NULL, 'ae541da9bbc64d6f8bdab324a3be6c2f');
INSERT INTO `city` VALUES (1897, '410201', '市辖区', '410200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1898, '410202', '龙亭区', '410200', NULL, '9e5b6eab1a5d4eefa97e672e5677600a');
INSERT INTO `city` VALUES (1899, '410203', '顺河回族区', '410200', NULL, '6516904280804ee1a792d8ad95a66ba2');
INSERT INTO `city` VALUES (1900, '410204', '鼓楼区', '410200', NULL, '0581ae8c49c44353849f3ecd95972b7c');
INSERT INTO `city` VALUES (1901, '410205', '南关区', '410200', NULL, '973864cac73043fc919596ca9352714d');
INSERT INTO `city` VALUES (1902, '410211', '郊　区', '410200', NULL, NULL);
INSERT INTO `city` VALUES (1903, '410221', '杞　县', '410200', NULL, NULL);
INSERT INTO `city` VALUES (1904, '410222', '通许县', '410200', NULL, '864731a64f8a4ee598169df98366576e');
INSERT INTO `city` VALUES (1905, '410223', '尉氏县', '410200', NULL, '4c61e02b5979433da4ead16776afb9b5');
INSERT INTO `city` VALUES (1906, '410224', '开封县', '410200', NULL, NULL);
INSERT INTO `city` VALUES (1907, '410225', '兰考县', '410200', NULL, '7a6440b42a39413f85cf1347dc6e68e0');
INSERT INTO `city` VALUES (1908, '410301', '市辖区', '410300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1909, '410302', '老城区', '410300', NULL, '55f0c7f40d974ba4aaf675dbb11a319c');
INSERT INTO `city` VALUES (1910, '410303', '西工区', '410300', NULL, '128586deec0d4551920e9b5e736cb5c1');
INSERT INTO `city` VALUES (1911, '410304', '廛河回族区', '410300', NULL, NULL);
INSERT INTO `city` VALUES (1912, '410305', '涧西区', '410300', NULL, 'c38af1d707dd4711a050840e616cf010');
INSERT INTO `city` VALUES (1913, '410306', '吉利区', '410300', NULL, 'df88822c061745c9942bbddbb3de5baf');
INSERT INTO `city` VALUES (1914, '410307', '洛龙区', '410300', NULL, 'f28d3eae16aa4269b108097a01bf4cd0');
INSERT INTO `city` VALUES (1915, '410322', '孟津县', '410300', NULL, '0940c34ddeb54fdab956f449213b19bd');
INSERT INTO `city` VALUES (1916, '410323', '新安县', '410300', NULL, 'b0eb6c2b83004d27b5b9f8c1e83303c7');
INSERT INTO `city` VALUES (1917, '410324', '栾川县', '410300', NULL, '748a8b71034c4b91bc97daa27febd760');
INSERT INTO `city` VALUES (1918, '410325', '嵩　县', '410300', NULL, NULL);
INSERT INTO `city` VALUES (1919, '410326', '汝阳县', '410300', NULL, 'acf4b8bf82344716b8530065e8bba782');
INSERT INTO `city` VALUES (1920, '410327', '宜阳县', '410300', NULL, 'e97720a3f72944cb871f77acaa350fef');
INSERT INTO `city` VALUES (1921, '410328', '洛宁县', '410300', NULL, 'efb95cf4ef92449fa7e7b695b1999c79');
INSERT INTO `city` VALUES (1922, '410329', '伊川县', '410300', NULL, '8bece989d5fd4903951d6aa56937e693');
INSERT INTO `city` VALUES (1923, '410381', '偃师市', '410300', NULL, '672afdec8ecc40f0ae636f393621e5e5');
INSERT INTO `city` VALUES (1924, '410401', '市辖区', '410400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1925, '410402', '新华区', '410400', NULL, '214edff483824643a38f66e551f46a40');
INSERT INTO `city` VALUES (1926, '410403', '卫东区', '410400', NULL, 'ca1228c6d2b84654b9025e7d5b464433');
INSERT INTO `city` VALUES (1927, '410404', '石龙区', '410400', NULL, '946923c02ee541e8b3e619358855bd05');
INSERT INTO `city` VALUES (1928, '410411', '湛河区', '410400', NULL, 'f13e00254a53459f967d99ddf47376fe');
INSERT INTO `city` VALUES (1929, '410421', '宝丰县', '410400', NULL, 'b779df77c75c44ba9817157736f31990');
INSERT INTO `city` VALUES (1930, '410422', '叶　县', '410400', NULL, NULL);
INSERT INTO `city` VALUES (1931, '410423', '鲁山县', '410400', NULL, 'a69db461754a47ddbd41b0ec164a0d45');
INSERT INTO `city` VALUES (1932, '410425', '郏　县', '410400', NULL, NULL);
INSERT INTO `city` VALUES (1933, '410481', '舞钢市', '410400', NULL, 'b8401162ae7e4b578b07804cb0e69e48');
INSERT INTO `city` VALUES (1934, '410482', '汝州市', '410400', NULL, '88397a8c48664c4582f357fbbfc81cef');
INSERT INTO `city` VALUES (1935, '410501', '市辖区', '410500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1936, '410502', '文峰区', '410500', NULL, '4fd2e86300234d87a532433a5475b3fe');
INSERT INTO `city` VALUES (1937, '410503', '北关区', '410500', NULL, '1c4b5e1d50ea47419bee18865a7eefa5');
INSERT INTO `city` VALUES (1938, '410505', '殷都区', '410500', NULL, '97632b7896a74f45be857a7882c498d5');
INSERT INTO `city` VALUES (1939, '410506', '龙安区', '410500', NULL, '36b8d48c67ac4c699f7667323c54ef39');
INSERT INTO `city` VALUES (1940, '410522', '安阳县', '410500', NULL, 'fd1cf159b5b842248606f2b296c0c0e9');
INSERT INTO `city` VALUES (1941, '410523', '汤阴县', '410500', NULL, '4223cac7d3204d449e33d16a2f7758d0');
INSERT INTO `city` VALUES (1942, '410526', '滑　县', '410500', NULL, NULL);
INSERT INTO `city` VALUES (1943, '410527', '内黄县', '410500', NULL, 'e5501f9ded034f3c9101b1d0d8d61fc4');
INSERT INTO `city` VALUES (1944, '410581', '林州市', '410500', NULL, 'e22ef1a3fe8c4139a050ccd75dc06fd0');
INSERT INTO `city` VALUES (1945, '410601', '市辖区', '410600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1946, '410602', '鹤山区', '410600', NULL, '6b3c0b37c17847dc97639180a04a8864');
INSERT INTO `city` VALUES (1947, '410603', '山城区', '410600', NULL, '50a68a2fd07b40c09fcec9e8f579be22');
INSERT INTO `city` VALUES (1948, '410611', '淇滨区', '410600', NULL, '624b1ce34cd14e46808f1d473dcf13bc');
INSERT INTO `city` VALUES (1949, '410621', '浚　县', '410600', NULL, NULL);
INSERT INTO `city` VALUES (1950, '410622', '淇　县', '410600', NULL, NULL);
INSERT INTO `city` VALUES (1951, '410701', '市辖区', '410700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1952, '410702', '红旗区', '410700', NULL, '7fe7df55aa8546bb9e4b86dfb24bb55c');
INSERT INTO `city` VALUES (1953, '410703', '卫滨区', '410700', NULL, 'dc52ab777d794e34ac609b8d7be053c6');
INSERT INTO `city` VALUES (1954, '410704', '凤泉区', '410700', NULL, 'bcd0380bf6574a14a1cee6196f2e4a55');
INSERT INTO `city` VALUES (1955, '410711', '牧野区', '410700', NULL, 'ce8b224b008740c2bcab88749dad2766');
INSERT INTO `city` VALUES (1956, '410721', '新乡县', '410700', NULL, 'ba95b8aedf32485a8d73274504039b45');
INSERT INTO `city` VALUES (1957, '410724', '获嘉县', '410700', NULL, '8f17dd635612413b8f901dd7ac99744f');
INSERT INTO `city` VALUES (1958, '410725', '原阳县', '410700', NULL, 'e17d0b16fb2040f7ab8c7a957f1a7b86');
INSERT INTO `city` VALUES (1959, '410726', '延津县', '410700', NULL, 'ced2a428632e43f8aa6d81960eaf8055');
INSERT INTO `city` VALUES (1960, '410727', '封丘县', '410700', NULL, '502709a703de4063aff0430793217500');
INSERT INTO `city` VALUES (1961, '410728', '长垣县', '410700', NULL, '54930009567d45e98df66127304fe51b');
INSERT INTO `city` VALUES (1962, '410781', '卫辉市', '410700', NULL, '960d081d8b644c23a3300393877146a9');
INSERT INTO `city` VALUES (1963, '410782', '辉县市', '410700', NULL, '3daa0e46741e412698d34552fe3fbacd');
INSERT INTO `city` VALUES (1964, '410801', '市辖区', '410800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1965, '410802', '解放区', '410800', NULL, 'a0d70a363106425495f98ff4f361df34');
INSERT INTO `city` VALUES (1966, '410803', '中站区', '410800', NULL, 'fbda841a44a5418cbdb96cbed178dec6');
INSERT INTO `city` VALUES (1967, '410804', '马村区', '410800', NULL, 'bb64c3642b4043f5a9268adef7c39119');
INSERT INTO `city` VALUES (1968, '410811', '山阳区', '410800', NULL, '8861fdb00a964352a69c10e237999372');
INSERT INTO `city` VALUES (1969, '410821', '修武县', '410800', NULL, 'b9ea4c05069d409e909ee92b58177218');
INSERT INTO `city` VALUES (1970, '410822', '博爱县', '410800', NULL, '9eab1599da4246b2ba4b648e2bc55d43');
INSERT INTO `city` VALUES (1971, '410823', '武陟县', '410800', NULL, '1c52ac3f94234b9389970373a8964fa8');
INSERT INTO `city` VALUES (1972, '410825', '温　县', '410800', NULL, NULL);
INSERT INTO `city` VALUES (1973, '410881', '济源市', '410800', NULL, '106782e6d8604ca598ef402aa9a64a66');
INSERT INTO `city` VALUES (1974, '410882', '沁阳市', '410800', NULL, 'd81f551b4acf4f2ea0e20a55daa00f6f');
INSERT INTO `city` VALUES (1975, '410883', '孟州市', '410800', NULL, 'a6ead250209a4c96bc890e3138a43c01');
INSERT INTO `city` VALUES (1976, '410901', '市辖区', '410900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1977, '410902', '华龙区', '410900', NULL, '9b684e40cdbc4d62b22a5fc7e73a6043');
INSERT INTO `city` VALUES (1978, '410922', '清丰县', '410900', NULL, 'd69345aacda246ff921686574f5d8c33');
INSERT INTO `city` VALUES (1979, '410923', '南乐县', '410900', NULL, '9d29ed7326704cd382805e549699e7ec');
INSERT INTO `city` VALUES (1980, '410926', '范　县', '410900', NULL, NULL);
INSERT INTO `city` VALUES (1981, '410927', '台前县', '410900', NULL, '1cd3697ec7d446f59d5b26bdad65d421');
INSERT INTO `city` VALUES (1982, '410928', '濮阳县', '410900', NULL, '2535f0af038542fab4463c135c98e498');
INSERT INTO `city` VALUES (1983, '411001', '市辖区', '411000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1984, '411002', '魏都区', '411000', NULL, '0a5f5e8aed7147d482d904274847d874');
INSERT INTO `city` VALUES (1985, '411023', '许昌县', '411000', NULL, NULL);
INSERT INTO `city` VALUES (1986, '411024', '鄢陵县', '411000', NULL, '5fbffa858b62458b883baf5a054ec4bf');
INSERT INTO `city` VALUES (1987, '411025', '襄城县', '411000', NULL, '20381a3070e5426eb3fde407a33329c3');
INSERT INTO `city` VALUES (1988, '411081', '禹州市', '411000', NULL, '154dd52c85fc422e97d3fac6efbc9351');
INSERT INTO `city` VALUES (1989, '411082', '长葛市', '411000', NULL, '7061b869b28b425fa0576dd4608b3628');
INSERT INTO `city` VALUES (1990, '411101', '市辖区', '411100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1991, '411102', '源汇区', '411100', NULL, 'c3de5d3fead544dd836a54154e847c8d');
INSERT INTO `city` VALUES (1992, '411103', '郾城区', '411100', NULL, '60b2525573d844179a7c7d21349fd3a5');
INSERT INTO `city` VALUES (1993, '411104', '召陵区', '411100', NULL, '5ee7d7a2447d487d8c83550c688b6279');
INSERT INTO `city` VALUES (1994, '411121', '舞阳县', '411100', NULL, 'f646e73ae97f4b52bbac01af41e0acb2');
INSERT INTO `city` VALUES (1995, '411122', '临颍县', '411100', NULL, 'a25ad0594cd24843a6e929bd227d5717');
INSERT INTO `city` VALUES (1996, '411201', '市辖区', '411200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (1997, '411202', '湖滨区', '411200', NULL, 'e40c777f892f4d238d714f641d4763b7');
INSERT INTO `city` VALUES (1998, '411221', '渑池县', '411200', NULL, '054a1e51a2754c99900f75751f6113e5');
INSERT INTO `city` VALUES (1999, '411222', '陕　县', '411200', NULL, NULL);
INSERT INTO `city` VALUES (2000, '411224', '卢氏县', '411200', NULL, 'd133cfd9d4ca46d4a3630d9b35ad92bc');
INSERT INTO `city` VALUES (2001, '411281', '义马市', '411200', NULL, '29e394f36cc04e779e409275d5402095');
INSERT INTO `city` VALUES (2002, '411282', '灵宝市', '411200', NULL, 'fdc8c6c859b04102966e6925bde81688');
INSERT INTO `city` VALUES (2003, '411301', '市辖区', '411300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2004, '411302', '宛城区', '411300', NULL, '55142d5c4acd41b0be7c4b0ab8e8a1f6');
INSERT INTO `city` VALUES (2005, '411303', '卧龙区', '411300', NULL, '9d49091beed44deb8679f3aaca019cdd');
INSERT INTO `city` VALUES (2006, '411321', '南召县', '411300', NULL, '55e837c4b9cb4a0891ddb0b9be5c4018');
INSERT INTO `city` VALUES (2007, '411322', '方城县', '411300', NULL, '2d3f0185800549938c9cdc62d393048a');
INSERT INTO `city` VALUES (2008, '411323', '西峡县', '411300', NULL, 'b4c2bc4871d14e7299c72be8945d40e5');
INSERT INTO `city` VALUES (2009, '411324', '镇平县', '411300', NULL, 'b91021d1017c4785aa683d989b6d2027');
INSERT INTO `city` VALUES (2010, '411325', '内乡县', '411300', NULL, '047ef1546e1c45e087268dcd697415a4');
INSERT INTO `city` VALUES (2011, '411326', '淅川县', '411300', NULL, 'e1428054bb9e4047b367c54072347dfd');
INSERT INTO `city` VALUES (2012, '411327', '社旗县', '411300', NULL, 'dc4f81145efb4c91b7798c488388ae71');
INSERT INTO `city` VALUES (2013, '411328', '唐河县', '411300', NULL, 'dcd11c9dd2de48ffae3891033cfda93a');
INSERT INTO `city` VALUES (2014, '411329', '新野县', '411300', NULL, '2c48d9e08dc04428ab56e496668a6ea9');
INSERT INTO `city` VALUES (2015, '411330', '桐柏县', '411300', NULL, '6c004614dd064f859e1d23b410ef8c67');
INSERT INTO `city` VALUES (2016, '411381', '邓州市', '411300', NULL, '8916cd51d4934e7d85627129772c34c6');
INSERT INTO `city` VALUES (2017, '411401', '市辖区', '411400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2018, '411402', '梁园区', '411400', NULL, '52b8aa9116074796ac81da147eab3ea9');
INSERT INTO `city` VALUES (2019, '411403', '睢阳区', '411400', NULL, 'e07a74faa44b47338f09877ec6be9249');
INSERT INTO `city` VALUES (2020, '411421', '民权县', '411400', NULL, '6d564d25ce89415a826e25a8b8ce967a');
INSERT INTO `city` VALUES (2021, '411422', '睢　县', '411400', NULL, NULL);
INSERT INTO `city` VALUES (2022, '411423', '宁陵县', '411400', NULL, '55a78138ab3a46679ca3f5265187a6d2');
INSERT INTO `city` VALUES (2023, '411424', '柘城县', '411400', NULL, 'a8afbf9a75014b549a9046b9754b3065');
INSERT INTO `city` VALUES (2024, '411425', '虞城县', '411400', NULL, '6a8d0d119f6c413e83222c0444c51c99');
INSERT INTO `city` VALUES (2025, '411426', '夏邑县', '411400', NULL, '42446d812786477ebe638c246ecb5bc6');
INSERT INTO `city` VALUES (2026, '411481', '永城市', '411400', NULL, '4dc1a1343f774434adeefe71d4315304');
INSERT INTO `city` VALUES (2027, '411501', '市辖区', '411500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2028, '411502', '师河区', '411500', NULL, NULL);
INSERT INTO `city` VALUES (2029, '411503', '平桥区', '411500', NULL, '4e13397d21b440848ea37a6abd6e77ff');
INSERT INTO `city` VALUES (2030, '411521', '罗山县', '411500', NULL, '5f1f414511e04a138b62876aa1d697fa');
INSERT INTO `city` VALUES (2031, '411522', '光山县', '411500', NULL, 'edf4d8edb68d4a219ef956260a1f080b');
INSERT INTO `city` VALUES (2032, '411523', '新　县', '411500', NULL, NULL);
INSERT INTO `city` VALUES (2033, '411524', '商城县', '411500', NULL, '6013de40b65342bd9ce486bffb996c42');
INSERT INTO `city` VALUES (2034, '411525', '固始县', '411500', NULL, '1613db6dfb324794b67a73a2549ac863');
INSERT INTO `city` VALUES (2035, '411526', '潢川县', '411500', NULL, '0dfb5937633a487a8a1c1b1c0dd3327d');
INSERT INTO `city` VALUES (2036, '411527', '淮滨县', '411500', NULL, 'e97b86a37dc94b47a2323446c2d32e52');
INSERT INTO `city` VALUES (2037, '411528', '息　县', '411500', NULL, NULL);
INSERT INTO `city` VALUES (2038, '411601', '市辖区', '411600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2039, '411602', '川汇区', '411600', NULL, '9c6b2d140274452eb7d43553d4b275f4');
INSERT INTO `city` VALUES (2040, '411621', '扶沟县', '411600', NULL, '341fb984ed3549e09304d265e88b4e95');
INSERT INTO `city` VALUES (2041, '411622', '西华县', '411600', NULL, '65ce8d646c354c33aeb4b653c23c54a1');
INSERT INTO `city` VALUES (2042, '411623', '商水县', '411600', NULL, '847df9ec311c476bb9c5e4668844b0b8');
INSERT INTO `city` VALUES (2043, '411624', '沈丘县', '411600', NULL, 'e7e6826619664c29a059c4fe80344687');
INSERT INTO `city` VALUES (2044, '411625', '郸城县', '411600', NULL, '61b8abb72e8a4594a89ae63d57d424f9');
INSERT INTO `city` VALUES (2045, '411626', '淮阳县', '411600', NULL, '26a2a20398824ac0a943f2bffe8bfd03');
INSERT INTO `city` VALUES (2046, '411627', '太康县', '411600', NULL, 'a7ca7f45a0204e7ea6f05c3015261fb1');
INSERT INTO `city` VALUES (2047, '411628', '鹿邑县', '411600', NULL, 'cc82bfe8b3014fb0aae79b97fb6a2e93');
INSERT INTO `city` VALUES (2048, '411681', '项城市', '411600', NULL, 'ea9e19f8f20d4754bb8b548fd1b0a5d3');
INSERT INTO `city` VALUES (2049, '411701', '市辖区', '411700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2050, '411702', '驿城区', '411700', NULL, 'd8331cbcc9444bd386e1513aa1f8ad6a');
INSERT INTO `city` VALUES (2051, '411721', '西平县', '411700', NULL, 'dc70d3a296704387891d620847963cf2');
INSERT INTO `city` VALUES (2052, '411722', '上蔡县', '411700', NULL, 'a886cb90a12f42ea8d56223c848d1bd3');
INSERT INTO `city` VALUES (2053, '411723', '平舆县', '411700', NULL, '205798dad6584a6d98fad041d416b557');
INSERT INTO `city` VALUES (2054, '411724', '正阳县', '411700', NULL, 'ad1998249a164acbb3be720a9e7f8562');
INSERT INTO `city` VALUES (2055, '411725', '确山县', '411700', NULL, '79b1243bdc044f4b9ce58d84ef9a7b1d');
INSERT INTO `city` VALUES (2056, '411726', '泌阳县', '411700', NULL, '5c64cdca34244982a84c90e82e9292fb');
INSERT INTO `city` VALUES (2057, '411727', '汝南县', '411700', NULL, '3857f8ac87b84278bd864700dcea91ad');
INSERT INTO `city` VALUES (2058, '411728', '遂平县', '411700', NULL, 'd62af1ea4838414b9ac70b0bdb266ba0');
INSERT INTO `city` VALUES (2059, '411729', '新蔡县', '411700', NULL, 'd3e55a0e9af7487fadb5560d05320bf9');
INSERT INTO `city` VALUES (2060, '420101', '市辖区', '420100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2061, '420102', '江岸区', '420100', NULL, 'a696abc97277411b9775c0b77895d8fb');
INSERT INTO `city` VALUES (2062, '420103', '江汉区', '420100', NULL, 'ce169399c23e4aaf92e883faa23f2054');
INSERT INTO `city` VALUES (2063, '420104', '乔口区', '420100', NULL, NULL);
INSERT INTO `city` VALUES (2064, '420105', '汉阳区', '420100', NULL, '08512cd9a7ff457e8f3428a402a18a2d');
INSERT INTO `city` VALUES (2065, '420106', '武昌区', '420100', NULL, 'f698aa6ef11b48118a03ad60871f8f95');
INSERT INTO `city` VALUES (2066, '420107', '青山区', '420100', NULL, '2e63e187bfcf4ab7a99c7a78c1861493');
INSERT INTO `city` VALUES (2067, '420111', '洪山区', '420100', NULL, '81878c3f6c88450687aa5cec5c3e1c5d');
INSERT INTO `city` VALUES (2068, '420112', '东西湖区', '420100', NULL, 'c9a2c3d72e7c425695a5d42fd457c96b');
INSERT INTO `city` VALUES (2069, '420113', '汉南区', '420100', NULL, '7f47f92a99234cfaad4cba76eceac405');
INSERT INTO `city` VALUES (2070, '420114', '蔡甸区', '420100', NULL, '30b78acaa7b5438c9c454297c5d5dcda');
INSERT INTO `city` VALUES (2071, '420115', '江夏区', '420100', NULL, 'fdfad163c6ec4e939c172e063c208170');
INSERT INTO `city` VALUES (2072, '420116', '黄陂区', '420100', NULL, '8f8e3b7860a24d4bb8eb411b0fa03899');
INSERT INTO `city` VALUES (2073, '420117', '新洲区', '420100', NULL, '8a4aed6dac4b4899be9863de950643f4');
INSERT INTO `city` VALUES (2074, '420201', '市辖区', '420200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2075, '420202', '黄石港区', '420200', NULL, '9fd93afd994c49c28536f73b3c11210b');
INSERT INTO `city` VALUES (2076, '420203', '西塞山区', '420200', NULL, '063482d86c02472ca81a92afe988bbd8');
INSERT INTO `city` VALUES (2077, '420204', '下陆区', '420200', NULL, '0e0440e0f0674e96a55a7b1e9abfc30a');
INSERT INTO `city` VALUES (2078, '420205', '铁山区', '420200', NULL, 'fa1e829f77fb4ddf8f159c65215d986c');
INSERT INTO `city` VALUES (2079, '420222', '阳新县', '420200', NULL, '96f7585d3eb340478fb8de34e083b07a');
INSERT INTO `city` VALUES (2080, '420281', '大冶市', '420200', NULL, '338e4b8e77e64c5c91495cb895115d30');
INSERT INTO `city` VALUES (2081, '420301', '市辖区', '420300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2082, '420302', '茅箭区', '420300', NULL, 'a4bd4ee65cf748fcbd55d879a0b424bb');
INSERT INTO `city` VALUES (2083, '420303', '张湾区', '420300', NULL, '366e12b820154f5d8e7c05dd2818e84d');
INSERT INTO `city` VALUES (2084, '420321', '郧　县', '420300', NULL, NULL);
INSERT INTO `city` VALUES (2085, '420322', '郧西县', '420300', NULL, 'e325fb74ebb4456f98f57a6d91b85d7c');
INSERT INTO `city` VALUES (2086, '420323', '竹山县', '420300', NULL, '176205e565c44fe1adb6b82ed25768e9');
INSERT INTO `city` VALUES (2087, '420324', '竹溪县', '420300', NULL, '9821187511944d34adca9466063cc387');
INSERT INTO `city` VALUES (2088, '420325', '房　县', '420300', NULL, NULL);
INSERT INTO `city` VALUES (2089, '420381', '丹江口市', '420300', NULL, '3e8765d2de974016a5270f6f2a2c3abb');
INSERT INTO `city` VALUES (2090, '420501', '市辖区', '420500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2091, '420502', '西陵区', '420500', NULL, 'd3f70617f94749b986101bac4ac8e8c5');
INSERT INTO `city` VALUES (2092, '420503', '伍家岗区', '420500', NULL, '6c2242c93f534f399443d8a512006a89');
INSERT INTO `city` VALUES (2093, '420504', '点军区', '420500', NULL, '507839dce7614a5a98d98d715440e2e6');
INSERT INTO `city` VALUES (2094, '420505', '猇亭区', '420500', NULL, '277bf9f6c5db4e259c9ccc6e888ed58b');
INSERT INTO `city` VALUES (2095, '420506', '夷陵区', '420500', NULL, 'fe90d4a69e4c4096b76fb911aa81e967');
INSERT INTO `city` VALUES (2096, '420525', '远安县', '420500', NULL, 'f232759f51924c9785abac28f8dc64a9');
INSERT INTO `city` VALUES (2097, '420526', '兴山县', '420500', NULL, 'bd9c21e31ca14345a55aeb04b2d4a4a2');
INSERT INTO `city` VALUES (2098, '420527', '秭归县', '420500', NULL, 'af6ee0bcba494b8eb6660ac4d10be8dd');
INSERT INTO `city` VALUES (2099, '420528', '长阳土家族自治县', '420500', NULL, '1feed0f2054b4100bfc5ff8bd6879c8e');
INSERT INTO `city` VALUES (2100, '420529', '五峰土家族自治县', '420500', NULL, 'cd2d080e258e4e50babae2d3855021cb');
INSERT INTO `city` VALUES (2101, '420581', '宜都市', '420500', NULL, 'ca085c3b19e048e09081c02d058ff232');
INSERT INTO `city` VALUES (2102, '420582', '当阳市', '420500', NULL, 'b148ce7f8ab6428782332d3912f5646a');
INSERT INTO `city` VALUES (2103, '420583', '枝江市', '420500', NULL, '496833c0b79946d2b5f7ee2ca1d17898');
INSERT INTO `city` VALUES (2104, '420601', '市辖区', '420600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2105, '420602', '襄城区', '420600', NULL, 'd83e47ecbb0642a49e9905dc98d6b625');
INSERT INTO `city` VALUES (2106, '420606', '樊城区', '420600', NULL, '49b00b03e8844705be717adf917fc0e3');
INSERT INTO `city` VALUES (2107, '420607', '襄阳区', '420600', NULL, NULL);
INSERT INTO `city` VALUES (2108, '420624', '南漳县', '420600', NULL, '819d5d2d87684e57a05dbd8c7dfdc2f6');
INSERT INTO `city` VALUES (2109, '420625', '谷城县', '420600', NULL, '030c03559bac494e8a52b78165a47e21');
INSERT INTO `city` VALUES (2110, '420626', '保康县', '420600', NULL, '108907d41a5f447fa16220e5edf49b23');
INSERT INTO `city` VALUES (2111, '420682', '老河口市', '420600', NULL, 'be29c490611b47eb85e5e5812e440df5');
INSERT INTO `city` VALUES (2112, '420683', '枣阳市', '420600', NULL, '0af99159f4494f8c83a5936d89bfffef');
INSERT INTO `city` VALUES (2113, '420684', '宜城市', '420600', NULL, '1c6ee517c0d34784ba36164561bb73e0');
INSERT INTO `city` VALUES (2114, '420701', '市辖区', '420700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2115, '420702', '梁子湖区', '420700', NULL, 'd94acdf4eb1b44b2a7eeffe42d6c02d3');
INSERT INTO `city` VALUES (2116, '420703', '华容区', '420700', NULL, 'b2e8fda5971c4fa0a3824ae64ede1f6c');
INSERT INTO `city` VALUES (2117, '420704', '鄂城区', '420700', NULL, '7a3647126212459dac611f3cb6ab2d2d');
INSERT INTO `city` VALUES (2118, '420801', '市辖区', '420800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2119, '420802', '东宝区', '420800', NULL, '7e2d1b355998421f8d599ed566382169');
INSERT INTO `city` VALUES (2120, '420804', '掇刀区', '420800', NULL, '4b19fa80f6c34f33bec959a59a71235b');
INSERT INTO `city` VALUES (2121, '420821', '京山县', '420800', NULL, '8b227e0e7b0a4f71917aa33c2bb7b1d4');
INSERT INTO `city` VALUES (2122, '420822', '沙洋县', '420800', NULL, '5a7eb018c74e4a3e984f720616864f0c');
INSERT INTO `city` VALUES (2123, '420881', '钟祥市', '420800', NULL, 'b8fe69f1b6bc4fb58a19cfe5301a034a');
INSERT INTO `city` VALUES (2124, '420901', '市辖区', '420900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2125, '420902', '孝南区', '420900', NULL, '98ec253fdbfa4dc4a700dd965c7e6492');
INSERT INTO `city` VALUES (2126, '420921', '孝昌县', '420900', NULL, '1907a7d2f6bf451997f3a3072082d1dc');
INSERT INTO `city` VALUES (2127, '420922', '大悟县', '420900', NULL, 'b3e7c1018c934bb8a3b24539b48a9aaa');
INSERT INTO `city` VALUES (2128, '420923', '云梦县', '420900', NULL, 'd4a3761f0cae46dfb5814e1865cca5c3');
INSERT INTO `city` VALUES (2129, '420981', '应城市', '420900', NULL, '2b30d10f7eef40c8abb2e4c109c7737b');
INSERT INTO `city` VALUES (2130, '420982', '安陆市', '420900', NULL, '45359788723e4ce593bb53f11e9dffdf');
INSERT INTO `city` VALUES (2131, '420984', '汉川市', '420900', NULL, '2fdae30a4a9146f483e2c2ca7a5d1eb3');
INSERT INTO `city` VALUES (2132, '421001', '市辖区', '421000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2133, '421002', '沙市区', '421000', NULL, '34deb1101759480698a07cfc6547d95e');
INSERT INTO `city` VALUES (2134, '421003', '荆州区', '421000', NULL, '0021cc58e099439e9cfbea5861524de3');
INSERT INTO `city` VALUES (2135, '421022', '公安县', '421000', NULL, '4d8fb5eacb3746f2a7058feb851eaedf');
INSERT INTO `city` VALUES (2136, '421023', '监利县', '421000', NULL, 'e8f7a87bea2f4499a1e33353668ddb28');
INSERT INTO `city` VALUES (2137, '421024', '江陵县', '421000', NULL, 'eec802f0073b43c19bda144758fd1408');
INSERT INTO `city` VALUES (2138, '421081', '石首市', '421000', NULL, '3352dbf22b15474e8dc0ae7a3c51b042');
INSERT INTO `city` VALUES (2139, '421083', '洪湖市', '421000', NULL, '72650a3576d94e308514e73b430269d6');
INSERT INTO `city` VALUES (2140, '421087', '松滋市', '421000', NULL, '48ea6aac2b6d4902becff6446a7e6aeb');
INSERT INTO `city` VALUES (2141, '421101', '市辖区', '421100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2142, '421102', '黄州区', '421100', NULL, 'bcdaf0683e914683b425e86932d5a519');
INSERT INTO `city` VALUES (2143, '421121', '团风县', '421100', NULL, '8dff3ae282004252b5b216fe54dabc5c');
INSERT INTO `city` VALUES (2144, '421122', '红安县', '421100', NULL, 'f8dc26fd4d9641b586b2e71c62b936df');
INSERT INTO `city` VALUES (2145, '421123', '罗田县', '421100', NULL, '76f5364a142945619282bd7b3c0a1aa5');
INSERT INTO `city` VALUES (2146, '421124', '英山县', '421100', NULL, '11788ff5bda145b9b4fb8be725d08c29');
INSERT INTO `city` VALUES (2147, '421125', '浠水县', '421100', NULL, 'dcaca9d49b3f42c2ae27417a3bd805c5');
INSERT INTO `city` VALUES (2148, '421126', '蕲春县', '421100', NULL, '4d5eb48f1d1143b185833a0f1fbb1c6d');
INSERT INTO `city` VALUES (2149, '421127', '黄梅县', '421100', NULL, '1244c3ac3cd64cb58693d6e2a69079ab');
INSERT INTO `city` VALUES (2150, '421181', '麻城市', '421100', NULL, 'dd3d6a55cc72465fb933142b6c80e201');
INSERT INTO `city` VALUES (2151, '421182', '武穴市', '421100', NULL, 'aa69a4d3160d45808242ef63da1f26f0');
INSERT INTO `city` VALUES (2152, '421201', '市辖区', '421200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2153, '421202', '咸安区', '421200', NULL, '2db873fd7b1f470f9495647125a8e07a');
INSERT INTO `city` VALUES (2154, '421221', '嘉鱼县', '421200', NULL, '2df83906b93947d9a37e4043b946b875');
INSERT INTO `city` VALUES (2155, '421222', '通城县', '421200', NULL, 'e738dc49d0194ab38c431361f654c40e');
INSERT INTO `city` VALUES (2156, '421223', '崇阳县', '421200', NULL, 'ad6d638286f341a0ad79fc9d4da3f5a2');
INSERT INTO `city` VALUES (2157, '421224', '通山县', '421200', NULL, '31b65f88157347c49355a4806b1cb287');
INSERT INTO `city` VALUES (2158, '421281', '赤壁市', '421200', NULL, 'dc6fabbea71e4964992715f51d741dfd');
INSERT INTO `city` VALUES (2159, '421301', '市辖区', '421300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2160, '421302', '曾都区', '421300', NULL, '06b48ab5cc764f33a5f6a0e02131f3de');
INSERT INTO `city` VALUES (2161, '421381', '广水市', '421300', NULL, '604daf8d0e3e4705ba5f1e5353429d2f');
INSERT INTO `city` VALUES (2162, '422801', '恩施市', '422800', NULL, '753b3517cdeb4b06bc5ff8c4f682358d');
INSERT INTO `city` VALUES (2163, '422802', '利川市', '422800', NULL, '8bb9e5e850ce4347899b41fa658bd2ff');
INSERT INTO `city` VALUES (2164, '422822', '建始县', '422800', NULL, '70ce0fe06d3d4991b9b6ac50013951be');
INSERT INTO `city` VALUES (2165, '422823', '巴东县', '422800', NULL, 'd8cadf3a9351465fb4440cfdccba415f');
INSERT INTO `city` VALUES (2166, '422825', '宣恩县', '422800', NULL, '415cb4eec95a4dbdbfbf165563a63864');
INSERT INTO `city` VALUES (2167, '422826', '咸丰县', '422800', NULL, '3afd3839dfcc4866897568ec42691804');
INSERT INTO `city` VALUES (2168, '422827', '来凤县', '422800', NULL, '53e08a987a75485daabc3abe374bdc76');
INSERT INTO `city` VALUES (2169, '422828', '鹤峰县', '422800', NULL, 'b7472a6a508a4afe833aa65da4706717');
INSERT INTO `city` VALUES (2170, '429004', '仙桃市', '429000', NULL, 'ed2d4f5c324640df9814f91b9898fb53');
INSERT INTO `city` VALUES (2171, '429005', '潜江市', '429000', NULL, 'bcf380b7a09645a9adb1d3fa601fc528');
INSERT INTO `city` VALUES (2172, '429006', '天门市', '429000', NULL, 'c608bb9927dc46398536b8dbca65a24f');
INSERT INTO `city` VALUES (2173, '429021', '神农架林区', '429000', NULL, '4b8568bf933540ec846fb15e71112897');
INSERT INTO `city` VALUES (2174, '430101', '市辖区', '430100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2175, '430102', '芙蓉区', '430100', NULL, '9841865b7707441796e2dc896b4e187f');
INSERT INTO `city` VALUES (2176, '430103', '天心区', '430100', NULL, 'f95e29a76f614de5a2043a89cda5d474');
INSERT INTO `city` VALUES (2177, '430104', '岳麓区', '430100', NULL, '4ea90f621e4c4211a4e12393224e0fc3');
INSERT INTO `city` VALUES (2178, '430105', '开福区', '430100', NULL, 'c506fd8185aa4a8295f14359ca3a3f7e');
INSERT INTO `city` VALUES (2179, '430111', '雨花区', '430100', NULL, 'be2478b33f324afe8d5d6a2cd610a79b');
INSERT INTO `city` VALUES (2180, '430121', '长沙县', '430100', NULL, 'bf0af134d5164de28b4904e3e82088c7');
INSERT INTO `city` VALUES (2181, '430122', '望城县', '430100', NULL, NULL);
INSERT INTO `city` VALUES (2182, '430124', '宁乡县', '430100', NULL, NULL);
INSERT INTO `city` VALUES (2183, '430181', '浏阳市', '430100', NULL, '5e5d9211bc5f473784363511ee731b17');
INSERT INTO `city` VALUES (2184, '430201', '市辖区', '430200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2185, '430202', '荷塘区', '430200', NULL, '985807f7794641f78014d87fbc5568d0');
INSERT INTO `city` VALUES (2186, '430203', '芦淞区', '430200', NULL, 'da85da74483d49fc86350efed4cece42');
INSERT INTO `city` VALUES (2187, '430204', '石峰区', '430200', NULL, '4793c66a1e934b80b463431db3083a92');
INSERT INTO `city` VALUES (2188, '430211', '天元区', '430200', NULL, '4797e5dc554d4aaa8477db6f6deaad8f');
INSERT INTO `city` VALUES (2189, '430221', '株洲县', '430200', NULL, '903f8d1520574e9cbf1e70bd94a5a8ca');
INSERT INTO `city` VALUES (2190, '430223', '攸　县', '430200', NULL, NULL);
INSERT INTO `city` VALUES (2191, '430224', '茶陵县', '430200', NULL, 'ea20dca6ad03467a9c486c0e779f3ebc');
INSERT INTO `city` VALUES (2192, '430225', '炎陵县', '430200', NULL, '01aabdfdca794f8981364daf53edd0ea');
INSERT INTO `city` VALUES (2193, '430281', '醴陵市', '430200', NULL, '8b4f0145abbd4419b12fbb18ee6b63f8');
INSERT INTO `city` VALUES (2194, '430301', '市辖区', '430300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2195, '430302', '雨湖区', '430300', NULL, '2001e22b2ca5490088164ab03696e13e');
INSERT INTO `city` VALUES (2196, '430304', '岳塘区', '430300', NULL, 'b8b0527f503c4022afc700162fea8146');
INSERT INTO `city` VALUES (2197, '430321', '湘潭县', '430300', NULL, 'c66e0431cfa048fcb80824d0a5d94409');
INSERT INTO `city` VALUES (2198, '430381', '湘乡市', '430300', NULL, '9cdffaa5a3f04ce3ae0f09024925d6fd');
INSERT INTO `city` VALUES (2199, '430382', '韶山市', '430300', NULL, '64a3980d1c534b86b058360ce715282c');
INSERT INTO `city` VALUES (2200, '430401', '市辖区', '430400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2201, '430405', '珠晖区', '430400', NULL, '94fe8720e59041798e9f203533fa7c03');
INSERT INTO `city` VALUES (2202, '430406', '雁峰区', '430400', NULL, '66fe11805658423b95cf11e3981d0a76');
INSERT INTO `city` VALUES (2203, '430407', '石鼓区', '430400', NULL, '3ee4de80511c44d28b5cf8797bd31274');
INSERT INTO `city` VALUES (2204, '430408', '蒸湘区', '430400', NULL, 'f65a0df7e3d0416cbf754560f425b6da');
INSERT INTO `city` VALUES (2205, '430412', '南岳区', '430400', NULL, 'aaea1ed1503048afb35710e133437116');
INSERT INTO `city` VALUES (2206, '430421', '衡阳县', '430400', NULL, 'd4880cc3d5c9438a93369e3ec8964c79');
INSERT INTO `city` VALUES (2207, '430422', '衡南县', '430400', NULL, '491f20c6662f45deb45d7240a3c1771d');
INSERT INTO `city` VALUES (2208, '430423', '衡山县', '430400', NULL, 'a2ae3912a9f64c699d727caae118f212');
INSERT INTO `city` VALUES (2209, '430424', '衡东县', '430400', NULL, '05e30f649dc04b8193960c8e2fa85e6e');
INSERT INTO `city` VALUES (2210, '430426', '祁东县', '430400', NULL, 'cf5151fc75714c7eb5b12831546c2180');
INSERT INTO `city` VALUES (2211, '430481', '耒阳市', '430400', NULL, '299706efc5064b21bb1893f7138213f6');
INSERT INTO `city` VALUES (2212, '430482', '常宁市', '430400', NULL, 'eccc96c828814f64b2b95f77cdd48369');
INSERT INTO `city` VALUES (2213, '430501', '市辖区', '430500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2214, '430502', '双清区', '430500', NULL, '51c59b9f14e245cca0eb7ea2a607120a');
INSERT INTO `city` VALUES (2215, '430503', '大祥区', '430500', NULL, '0d4e052eee8543dc883a113751d2d1fc');
INSERT INTO `city` VALUES (2216, '430511', '北塔区', '430500', NULL, '9ebf9e10149d4b03a50c32c23ef4b941');
INSERT INTO `city` VALUES (2217, '430521', '邵东县', '430500', NULL, '334b17cacaee4c7db81441b8d3b0b4fe');
INSERT INTO `city` VALUES (2218, '430522', '新邵县', '430500', NULL, 'bc58af1d95a945ac9d0252411af19d61');
INSERT INTO `city` VALUES (2219, '430523', '邵阳县', '430500', NULL, '2ef4a0fb5c9e49a88b6ba2fdd882b6ff');
INSERT INTO `city` VALUES (2220, '430524', '隆回县', '430500', NULL, '08a3cd4954d84331847c35dd3dff6b21');
INSERT INTO `city` VALUES (2221, '430525', '洞口县', '430500', NULL, 'c9836b005b8c4b09937d2a9a6532526b');
INSERT INTO `city` VALUES (2222, '430527', '绥宁县', '430500', NULL, 'a0498aa5d9554e4cb8354ef72dd6aa23');
INSERT INTO `city` VALUES (2223, '430528', '新宁县', '430500', NULL, 'a898f9f7b7e040c6a71819f4c5d1b444');
INSERT INTO `city` VALUES (2224, '430529', '城步苗族自治县', '430500', NULL, 'e4a15ecd4fe24abfa990dd623628120f');
INSERT INTO `city` VALUES (2225, '430581', '武冈市', '430500', NULL, '7b8bbb9194294b83a60acf63cdc3247c');
INSERT INTO `city` VALUES (2226, '430601', '市辖区', '430600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2227, '430602', '岳阳楼区', '430600', NULL, '068311c1425a4f2696e713a087aa5ae6');
INSERT INTO `city` VALUES (2228, '430603', '云溪区', '430600', NULL, '2af15648d8bd4467bf4151ccc1f08750');
INSERT INTO `city` VALUES (2229, '430611', '君山区', '430600', NULL, 'bf7cdda43f7d448a82ead20d5a1df897');
INSERT INTO `city` VALUES (2230, '430621', '岳阳县', '430600', NULL, '13540813b20c45febcddfe51e96f69a6');
INSERT INTO `city` VALUES (2231, '430623', '华容县', '430600', NULL, '0a5ca4b458454339ab780515ac41bba6');
INSERT INTO `city` VALUES (2232, '430624', '湘阴县', '430600', NULL, 'fbb19a75e8f84322bdb16eb3b770d8e3');
INSERT INTO `city` VALUES (2233, '430626', '平江县', '430600', NULL, '32830c5b6863428da36b1b74fbdef07b');
INSERT INTO `city` VALUES (2234, '430681', '汨罗市', '430600', NULL, '497ac060258e4733ab193111c99a5d54');
INSERT INTO `city` VALUES (2235, '430682', '临湘市', '430600', NULL, '095a60240a47409590e25e1e2fe29e4a');
INSERT INTO `city` VALUES (2236, '430701', '市辖区', '430700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2237, '430702', '武陵区', '430700', NULL, '05e7eae7e13d411abd6c00d982c56a3c');
INSERT INTO `city` VALUES (2238, '430703', '鼎城区', '430700', NULL, 'b5912b1a5887433797ab23f07a16e96a');
INSERT INTO `city` VALUES (2239, '430721', '安乡县', '430700', NULL, 'b42df8ed743d4a56a9099cc674ff4423');
INSERT INTO `city` VALUES (2240, '430722', '汉寿县', '430700', NULL, 'f92d6a4e2f7a446ba499d06f210e9474');
INSERT INTO `city` VALUES (2241, '430723', '澧　县', '430700', NULL, NULL);
INSERT INTO `city` VALUES (2242, '430724', '临澧县', '430700', NULL, '5aff8075027848c180716f24cdc88174');
INSERT INTO `city` VALUES (2243, '430725', '桃源县', '430700', NULL, '049c19bfc5e541bea0e8d347d8df29d8');
INSERT INTO `city` VALUES (2244, '430726', '石门县', '430700', NULL, '2c35dbd5259e4764bb2e4e3803de4735');
INSERT INTO `city` VALUES (2245, '430781', '津市市', '430700', NULL, 'f895dbfd5cd54b10816e22fb7dea5199');
INSERT INTO `city` VALUES (2246, '430801', '市辖区', '430800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2247, '430802', '永定区', '430800', NULL, '131d09a52e78487f8c1bd98d8990a337');
INSERT INTO `city` VALUES (2248, '430811', '武陵源区', '430800', NULL, 'cf1c6172016c403c882048b75901df46');
INSERT INTO `city` VALUES (2249, '430821', '慈利县', '430800', NULL, 'c014a588015b4ecaa9b17b8d15ee8279');
INSERT INTO `city` VALUES (2250, '430822', '桑植县', '430800', NULL, '415cd20f1da3498fb5043fafcde2363f');
INSERT INTO `city` VALUES (2251, '430901', '市辖区', '430900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2252, '430902', '资阳区', '430900', NULL, 'e13f4809a06f48c1994910a352fa6743');
INSERT INTO `city` VALUES (2253, '430903', '赫山区', '430900', NULL, '6271c35ae27f4b16ab13fc81a0306469');
INSERT INTO `city` VALUES (2254, '430921', '南　县', '430900', NULL, NULL);
INSERT INTO `city` VALUES (2255, '430922', '桃江县', '430900', NULL, '87b9cdc592474cb68bc705c346265b5a');
INSERT INTO `city` VALUES (2256, '430923', '安化县', '430900', NULL, '89cba67020f34d7c83bbfcfb1d661f1e');
INSERT INTO `city` VALUES (2257, '430981', '沅江市', '430900', NULL, 'bfb0ffb6eb6344808b721b055c460649');
INSERT INTO `city` VALUES (2258, '431001', '市辖区', '431000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2259, '431002', '北湖区', '431000', NULL, '37d8f456ca5143f3a5a259bd07dc98a8');
INSERT INTO `city` VALUES (2260, '431003', '苏仙区', '431000', NULL, '6163165b9c644e92824fa14d77429a96');
INSERT INTO `city` VALUES (2261, '431021', '桂阳县', '431000', NULL, 'd3160101beec4c95bc129110946767c5');
INSERT INTO `city` VALUES (2262, '431022', '宜章县', '431000', NULL, '2e07080f75694665960fc41fd92c938e');
INSERT INTO `city` VALUES (2263, '431023', '永兴县', '431000', NULL, '716c7f260c39451e9413a33ee37e2cfb');
INSERT INTO `city` VALUES (2264, '431024', '嘉禾县', '431000', NULL, 'f781b5ac6d094a52ad39aa538c939594');
INSERT INTO `city` VALUES (2265, '431025', '临武县', '431000', NULL, '02b4d6029c8c47d7b0ef8c0e347d8fe3');
INSERT INTO `city` VALUES (2266, '431026', '汝城县', '431000', NULL, 'cc83ff058a58416589267f46c6caa584');
INSERT INTO `city` VALUES (2267, '431027', '桂东县', '431000', NULL, 'd74fb4dd4385402a8c3f1f139de05475');
INSERT INTO `city` VALUES (2268, '431028', '安仁县', '431000', NULL, '7afb5624e2ff4545848f0ac3acdb63a6');
INSERT INTO `city` VALUES (2269, '431081', '资兴市', '431000', NULL, 'c1a0659af15a49579c2d42db35e8e955');
INSERT INTO `city` VALUES (2270, '431101', '市辖区', '431100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2271, '431102', '芝山区', '431100', NULL, NULL);
INSERT INTO `city` VALUES (2272, '431103', '冷水滩区', '431100', NULL, '5673cffb50a44caf83bf7469ab5d2493');
INSERT INTO `city` VALUES (2273, '431121', '祁阳县', '431100', NULL, '94067dc96140406099805b177b7399c5');
INSERT INTO `city` VALUES (2274, '431122', '东安县', '431100', NULL, 'd2a57836360e43c69398b3dd897da23a');
INSERT INTO `city` VALUES (2275, '431123', '双牌县', '431100', NULL, 'f8d8b59e07864d269a366880f012b5f7');
INSERT INTO `city` VALUES (2276, '431124', '道　县', '431100', NULL, NULL);
INSERT INTO `city` VALUES (2277, '431125', '江永县', '431100', NULL, 'c430cd74e13f4b97961e31a168069fc0');
INSERT INTO `city` VALUES (2278, '431126', '宁远县', '431100', NULL, 'df6f6b2f3d2f41fc92c3ac21625f687d');
INSERT INTO `city` VALUES (2279, '431127', '蓝山县', '431100', NULL, 'f25920bd533b4114ac2356074b7bc2d1');
INSERT INTO `city` VALUES (2280, '431128', '新田县', '431100', NULL, '2f03d03b89c34a78b963d5157a0a3a12');
INSERT INTO `city` VALUES (2281, '431129', '江华瑶族自治县', '431100', NULL, 'ef81403ee1bf4d618e82caecf891182c');
INSERT INTO `city` VALUES (2282, '431201', '市辖区', '431200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2283, '431202', '鹤城区', '431200', NULL, '91edd4edf42c44dcb06a223d62f67b3d');
INSERT INTO `city` VALUES (2284, '431221', '中方县', '431200', NULL, 'b074865bd42c46bfa43351cfcc0f5e1d');
INSERT INTO `city` VALUES (2285, '431222', '沅陵县', '431200', NULL, 'bfc88df1d14d4866a732362af60be196');
INSERT INTO `city` VALUES (2286, '431223', '辰溪县', '431200', NULL, '3e296f6d3c3c4dbd9bda5690250b1123');
INSERT INTO `city` VALUES (2287, '431224', '溆浦县', '431200', NULL, 'f033ec206620427f961f6d02a15658d2');
INSERT INTO `city` VALUES (2288, '431225', '会同县', '431200', NULL, '48c88d2fafdb4d7c817ee5b03fd8234e');
INSERT INTO `city` VALUES (2289, '431226', '麻阳苗族自治县', '431200', NULL, '84abd9e2d4774aafbe0b0c11fe834f95');
INSERT INTO `city` VALUES (2290, '431227', '新晃侗族自治县', '431200', NULL, 'f7361cdbd4e04c0abeda466afdadaf70');
INSERT INTO `city` VALUES (2291, '431228', '芷江侗族自治县', '431200', NULL, '0cf720031fb34a969e303d2556b247ed');
INSERT INTO `city` VALUES (2292, '431229', '靖州苗族侗族自治县', '431200', NULL, '3efd742b1ed542b3b89e4f0a2d4a6843');
INSERT INTO `city` VALUES (2293, '431230', '通道侗族自治县', '431200', NULL, '1668c33f391d4787a17f059fafc3624f');
INSERT INTO `city` VALUES (2294, '431281', '洪江市', '431200', NULL, '3788618493924533ba0d55c30eeb8941');
INSERT INTO `city` VALUES (2295, '431301', '市辖区', '431300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2296, '431302', '娄星区', '431300', NULL, 'b532f56d43954909b91ba375951618af');
INSERT INTO `city` VALUES (2297, '431321', '双峰县', '431300', NULL, '51e95a7ea23748b4af675744c05e3664');
INSERT INTO `city` VALUES (2298, '431322', '新化县', '431300', NULL, 'd6c2164d145c416bab1ca313c506bd03');
INSERT INTO `city` VALUES (2299, '431381', '冷水江市', '431300', NULL, '0e5d22b3ecbc4b9690549cedb6d85f0f');
INSERT INTO `city` VALUES (2300, '431382', '涟源市', '431300', NULL, '1fa1e1c0b26f453da29485099eeedc58');
INSERT INTO `city` VALUES (2301, '433101', '吉首市', '433100', NULL, '6fb24e79348a403ab551803b7da02e13');
INSERT INTO `city` VALUES (2302, '433122', '泸溪县', '433100', NULL, 'd8b3978e743545448f7f419ff2d1cabe');
INSERT INTO `city` VALUES (2303, '433123', '凤凰县', '433100', NULL, '12582802d6534cf7b6063ecef4c17c6b');
INSERT INTO `city` VALUES (2304, '433124', '花垣县', '433100', NULL, '93a1c4dfe0e34e21a636dea2c2546cbc');
INSERT INTO `city` VALUES (2305, '433125', '保靖县', '433100', NULL, '46a4aef519e645a3b67ce367a94f61ba');
INSERT INTO `city` VALUES (2306, '433126', '古丈县', '433100', NULL, 'a6536e97c9a148b0ad1580d354e79a81');
INSERT INTO `city` VALUES (2307, '433127', '永顺县', '433100', NULL, '65901352f0454b02a7987936c696ed30');
INSERT INTO `city` VALUES (2308, '433130', '龙山县', '433100', NULL, '5d5ad89285214de4b5a3e41e7753fab9');
INSERT INTO `city` VALUES (2309, '440101', '市辖区', '440100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2310, '440102', '东山区', '440100', NULL, 'e43369304e534392ab5649b95e5485c1');
INSERT INTO `city` VALUES (2311, '440103', '荔湾区', '440100', NULL, '75658f9b10014e5189168864b3033963');
INSERT INTO `city` VALUES (2312, '440104', '越秀区', '440100', NULL, 'b13b2949e49549cf933cd7d950028a39');
INSERT INTO `city` VALUES (2313, '440105', '海珠区', '440100', NULL, '2d8af8d3f4064b4194605bfa6a6c86f0');
INSERT INTO `city` VALUES (2314, '440106', '天河区', '440100', NULL, '06c97a19cd5f4a66bc936c2f0f87f1a0');
INSERT INTO `city` VALUES (2315, '440107', '芳村区', '440100', NULL, NULL);
INSERT INTO `city` VALUES (2316, '440111', '白云区', '440100', NULL, '7c1e979d151b4a7383b2eabe86bd817b');
INSERT INTO `city` VALUES (2317, '440112', '黄埔区', '440100', NULL, 'abc57fd286d94c70b64df9002fbed622');
INSERT INTO `city` VALUES (2318, '440113', '番禺区', '440100', NULL, '7282080b240041ed97059925a079c6cb');
INSERT INTO `city` VALUES (2319, '440114', '花都区', '440100', NULL, '15c1e96d08f4411ab7fc83c89434da60');
INSERT INTO `city` VALUES (2320, '440183', '增城市', '440100', NULL, NULL);
INSERT INTO `city` VALUES (2321, '440184', '从化市', '440100', NULL, NULL);
INSERT INTO `city` VALUES (2322, '440201', '市辖区', '440200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2323, '440203', '武江区', '440200', NULL, '51c19e98429a4a6a892b09eb5db79ed7');
INSERT INTO `city` VALUES (2324, '440204', '浈江区', '440200', NULL, '5369974242784e409535bec52825c014');
INSERT INTO `city` VALUES (2325, '440205', '曲江区', '440200', NULL, '2c0559670fd84dccb1416d472b762231');
INSERT INTO `city` VALUES (2326, '440222', '始兴县', '440200', NULL, '5f7427f6a8a04d7492df538cba634e5e');
INSERT INTO `city` VALUES (2327, '440224', '仁化县', '440200', NULL, 'e0409c3c69bd40e2827e09d1c1540867');
INSERT INTO `city` VALUES (2328, '440229', '翁源县', '440200', NULL, '2bd5ec21df504eeb8aaa607ac8127aaf');
INSERT INTO `city` VALUES (2329, '440232', '乳源瑶族自治县', '440200', NULL, '750293c5bbba4ac3b53c6459332fd859');
INSERT INTO `city` VALUES (2330, '440233', '新丰县', '440200', NULL, '0afa50c90259406d8712f0220c70bf7f');
INSERT INTO `city` VALUES (2331, '440281', '乐昌市', '440200', NULL, '81ec2b57a1d249c48a7712461d958680');
INSERT INTO `city` VALUES (2332, '440282', '南雄市', '440200', NULL, 'b4736fbd340f4afab3436299be8a0287');
INSERT INTO `city` VALUES (2333, '440301', '市辖区', '440300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2334, '440303', '罗湖区', '440300', NULL, '89b78e88c8a84307bc9a1c58c59eb448');
INSERT INTO `city` VALUES (2335, '440304', '福田区', '440300', NULL, '3ac73baa06d341949e32e6dbbc1ab9c8');
INSERT INTO `city` VALUES (2336, '440305', '南山区', '440300', NULL, '0272ac800b85451b84b1d6fd41d7993d');
INSERT INTO `city` VALUES (2337, '440306', '宝安区', '440300', NULL, '852b503c0e7a43b68715aeb0cd1e7659');
INSERT INTO `city` VALUES (2338, '440307', '龙岗区', '440300', NULL, '02b7d8f3e55144c5bbc5f54636f90e4f');
INSERT INTO `city` VALUES (2339, '440308', '盐田区', '440300', NULL, '76ab5aeaa0a64d18991c951428d03db5');
INSERT INTO `city` VALUES (2340, '440401', '市辖区', '440400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2341, '440402', '香洲区', '440400', NULL, '1b13794f81f94e44a692bfd36dd889eb');
INSERT INTO `city` VALUES (2342, '440403', '斗门区', '440400', NULL, '7f105a76e911480fae4bfd0a1ad349cc');
INSERT INTO `city` VALUES (2343, '440404', '金湾区', '440400', NULL, 'cfde5099d7ae4ce6aed01484cd7fbc70');
INSERT INTO `city` VALUES (2344, '440501', '市辖区', '440500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2345, '440507', '龙湖区', '440500', NULL, '9fb83261ead840b7b2cdd3f259ce5a61');
INSERT INTO `city` VALUES (2346, '440511', '金平区', '440500', NULL, '0399879e9d464edfb70500c2f3665249');
INSERT INTO `city` VALUES (2347, '440512', '濠江区', '440500', NULL, 'b01d6635ff374da2b08fc82eb1a94fb9');
INSERT INTO `city` VALUES (2348, '440513', '潮阳区', '440500', NULL, 'ced78ac7025c455ab531e33bfb64ff7b');
INSERT INTO `city` VALUES (2349, '440514', '潮南区', '440500', NULL, '94289f7a4c5e4a06998122c720916395');
INSERT INTO `city` VALUES (2350, '440515', '澄海区', '440500', NULL, 'a8ba3732e5484580810f88cbdc913636');
INSERT INTO `city` VALUES (2351, '440523', '南澳县', '440500', NULL, 'a75ebd5dcae144ddb1b7a71aa041512a');
INSERT INTO `city` VALUES (2352, '440601', '市辖区', '440600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2353, '440604', '禅城区', '440600', NULL, '8d804b8e94034ca7b67053687f593b51');
INSERT INTO `city` VALUES (2354, '440605', '南海区', '440600', NULL, '6e14e6ba6ac740d88561ffd4371af66c');
INSERT INTO `city` VALUES (2355, '440606', '顺德区', '440600', NULL, 'e45247db66b34db8b0042bed83d5dcea');
INSERT INTO `city` VALUES (2356, '440607', '三水区', '440600', NULL, '3f1e9894ad424714a7088b5a36ef4f6b');
INSERT INTO `city` VALUES (2357, '440608', '高明区', '440600', NULL, 'b32f38c6270d4f5e8728697f6c54b12c');
INSERT INTO `city` VALUES (2358, '440701', '市辖区', '440700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2359, '440703', '蓬江区', '440700', NULL, '1ea39b0a985048ee9f332b434d077e66');
INSERT INTO `city` VALUES (2360, '440704', '江海区', '440700', NULL, 'c9a810d124bb40f6aca6440e3285385d');
INSERT INTO `city` VALUES (2361, '440705', '新会区', '440700', NULL, '6ff6ce09af344f938c809847ecdb9433');
INSERT INTO `city` VALUES (2362, '440781', '台山市', '440700', NULL, '6a838f6e12bb45229391a2d97efb3d86');
INSERT INTO `city` VALUES (2363, '440783', '开平市', '440700', NULL, 'f658df3b0999438fbc28d5efdf11a062');
INSERT INTO `city` VALUES (2364, '440784', '鹤山市', '440700', NULL, 'd958165c343e40f5937d1095b32fa50f');
INSERT INTO `city` VALUES (2365, '440785', '恩平市', '440700', NULL, 'e2f187283dc54c41bf111bafff95ba21');
INSERT INTO `city` VALUES (2366, '440801', '市辖区', '440800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2367, '440802', '赤坎区', '440800', NULL, '354a5378958a4251a792aa7ac7163d20');
INSERT INTO `city` VALUES (2368, '440803', '霞山区', '440800', NULL, 'b885d1ebfa634e7d91553183c70c8f8b');
INSERT INTO `city` VALUES (2369, '440804', '坡头区', '440800', NULL, 'c0e14d0d242d4debae71d69e4688cf91');
INSERT INTO `city` VALUES (2370, '440811', '麻章区', '440800', NULL, 'bb7f517067864cf38d3b739f6d220e5c');
INSERT INTO `city` VALUES (2371, '440823', '遂溪县', '440800', NULL, 'c52241d4b51d4335ac9f9ab2ab110949');
INSERT INTO `city` VALUES (2372, '440825', '徐闻县', '440800', NULL, 'fdb5992786d54f7995c30a3e0559c7e5');
INSERT INTO `city` VALUES (2373, '440881', '廉江市', '440800', NULL, 'a0c8d8597c9647459b8d9b175f6c2e80');
INSERT INTO `city` VALUES (2374, '440882', '雷州市', '440800', NULL, '1ba82a791ec94ffa917ff97e2046c543');
INSERT INTO `city` VALUES (2375, '440883', '吴川市', '440800', NULL, '64f27d0d0ecb440e9a0040fc56cff8ad');
INSERT INTO `city` VALUES (2376, '440901', '市辖区', '440900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2377, '440902', '茂南区', '440900', NULL, 'a12c247121694ab1bf7de7177f83c382');
INSERT INTO `city` VALUES (2378, '440903', '茂港区', '440900', NULL, NULL);
INSERT INTO `city` VALUES (2379, '440923', '电白县', '440900', NULL, NULL);
INSERT INTO `city` VALUES (2380, '440981', '高州市', '440900', NULL, '527aa2d6c57c403ebb965161eff219b7');
INSERT INTO `city` VALUES (2381, '440982', '化州市', '440900', NULL, 'e3554312c02f4f14a089a5ede59b6f80');
INSERT INTO `city` VALUES (2382, '440983', '信宜市', '440900', NULL, '85329e9de2eb446cafdd456fdae93be8');
INSERT INTO `city` VALUES (2383, '441201', '市辖区', '441200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2384, '441202', '端州区', '441200', NULL, '23e057dfb5ca4a708911cd438fd63191');
INSERT INTO `city` VALUES (2385, '441203', '鼎湖区', '441200', NULL, 'f4abfd7bb40748dab6b77ed253accafc');
INSERT INTO `city` VALUES (2386, '441223', '广宁县', '441200', NULL, '1da7f16c523c480fa847488dd14cbcdf');
INSERT INTO `city` VALUES (2387, '441224', '怀集县', '441200', NULL, '22604207ae9f498585f76af89f1a6187');
INSERT INTO `city` VALUES (2388, '441225', '封开县', '441200', NULL, '165a9d55b2de4ca19f7250af898c378d');
INSERT INTO `city` VALUES (2389, '441226', '德庆县', '441200', NULL, '46defa8a87154350b69b321dcc6a7158');
INSERT INTO `city` VALUES (2390, '441283', '高要市', '441200', NULL, NULL);
INSERT INTO `city` VALUES (2391, '441284', '四会市', '441200', NULL, '5e2b0e2f7f734e18932f5c12a43dd358');
INSERT INTO `city` VALUES (2392, '441301', '市辖区', '441300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2393, '441302', '惠城区', '441300', NULL, 'b929983ccc124cb79eeb135e7c2530e2');
INSERT INTO `city` VALUES (2394, '441303', '惠阳区', '441300', NULL, '912e2cbbf1ca4cf4bdd0e2bee2ed8fc5');
INSERT INTO `city` VALUES (2395, '441322', '博罗县', '441300', NULL, '30482bba1ca943c18005c14295bc7563');
INSERT INTO `city` VALUES (2396, '441323', '惠东县', '441300', NULL, '94c0787ab8c44018a6bbad57c918ac65');
INSERT INTO `city` VALUES (2397, '441324', '龙门县', '441300', NULL, 'cf79c17f064f42468dce442b520f9d9f');
INSERT INTO `city` VALUES (2398, '441401', '市辖区', '441400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2399, '441402', '梅江区', '441400', NULL, '6ed7521bcfa5423db508cff5c12709a4');
INSERT INTO `city` VALUES (2400, '441421', '梅　县', '441400', NULL, NULL);
INSERT INTO `city` VALUES (2401, '441422', '大埔县', '441400', NULL, '54b42bb93a4542debe6ac02892b9e0a8');
INSERT INTO `city` VALUES (2402, '441423', '丰顺县', '441400', NULL, 'd30c09e657094caa818d763a631d0fcc');
INSERT INTO `city` VALUES (2403, '441424', '五华县', '441400', NULL, 'a3f1b52490034fefaaad5d5731b0d5ee');
INSERT INTO `city` VALUES (2404, '441426', '平远县', '441400', NULL, '01473722a5fe43e3acadb41e0cefa248');
INSERT INTO `city` VALUES (2405, '441427', '蕉岭县', '441400', NULL, '5dcfab4d63f94506902b36187d3683da');
INSERT INTO `city` VALUES (2406, '441481', '兴宁市', '441400', NULL, '01b4b5ae72a146c3a120fc214dcdb5bf');
INSERT INTO `city` VALUES (2407, '441501', '市辖区', '441500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2408, '441502', '城　区', '441500', NULL, NULL);
INSERT INTO `city` VALUES (2409, '441521', '海丰县', '441500', NULL, '9fe098a4409e4ed58135f16de431e2f5');
INSERT INTO `city` VALUES (2410, '441523', '陆河县', '441500', NULL, '09c106888900487e94754e65e5a21422');
INSERT INTO `city` VALUES (2411, '441581', '陆丰市', '441500', NULL, 'b56ae0f3e23a43ef8a5037ccb3fcf910');
INSERT INTO `city` VALUES (2412, '441601', '市辖区', '441600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2413, '441602', '源城区', '441600', NULL, 'a2ab6a8e8f1f4ca6a62fc24ca1aa13cc');
INSERT INTO `city` VALUES (2414, '441621', '紫金县', '441600', NULL, '03e1b1c8413e4388b5700dae51267867');
INSERT INTO `city` VALUES (2415, '441622', '龙川县', '441600', NULL, '1dc60cec672b4c35a29e9775e4d3df11');
INSERT INTO `city` VALUES (2416, '441623', '连平县', '441600', NULL, '7e1626abe80847259aae813820bf8463');
INSERT INTO `city` VALUES (2417, '441624', '和平县', '441600', NULL, '5e42133bd90347b3984e52bacbde321d');
INSERT INTO `city` VALUES (2418, '441625', '东源县', '441600', NULL, '1e4ff545838c48e0968b62ab68286668');
INSERT INTO `city` VALUES (2419, '441701', '市辖区', '441700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2420, '441702', '江城区', '441700', NULL, '67b8988d6a904bc88e94fb7495170052');
INSERT INTO `city` VALUES (2421, '441721', '阳西县', '441700', NULL, '405e863bb30843bba797ccb051e9561c');
INSERT INTO `city` VALUES (2422, '441723', '阳东县', '441700', NULL, NULL);
INSERT INTO `city` VALUES (2423, '441781', '阳春市', '441700', NULL, '5bdc3d1d604c42519c0dda6d8fe8ff03');
INSERT INTO `city` VALUES (2424, '441801', '市辖区', '441800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2425, '441802', '清城区', '441800', NULL, 'e1a04d4163284712a7dbecda72fd06d5');
INSERT INTO `city` VALUES (2426, '441821', '佛冈县', '441800', NULL, '6c8f7374cc754d3fac7e8b3f6bb8b023');
INSERT INTO `city` VALUES (2427, '441823', '阳山县', '441800', NULL, '9314c04fc07045db9b5f368f0059311b');
INSERT INTO `city` VALUES (2428, '441825', '连山壮族瑶族自治县', '441800', NULL, '137e3291c0394ab1a76152d59559c3de');
INSERT INTO `city` VALUES (2429, '441826', '连南瑶族自治县', '441800', NULL, 'b8effe28267249b9870f64ea6f9682a0');
INSERT INTO `city` VALUES (2430, '441827', '清新县', '441800', NULL, NULL);
INSERT INTO `city` VALUES (2431, '441881', '英德市', '441800', NULL, 'f56fca6ed9344929a70bf9aac5695f49');
INSERT INTO `city` VALUES (2432, '441882', '连州市', '441800', NULL, 'ca96cff4349f46c2b44e7c94e9b4545c');
INSERT INTO `city` VALUES (2433, '445101', '市辖区', '445100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2434, '445102', '湘桥区', '445100', NULL, '4810ba18ccda4602a7ee5dd073c77ac6');
INSERT INTO `city` VALUES (2435, '445121', '潮安县', '445100', NULL, NULL);
INSERT INTO `city` VALUES (2436, '445122', '饶平县', '445100', NULL, '23929f78d8734ee0b0b1030426c55910');
INSERT INTO `city` VALUES (2437, '445201', '市辖区', '445200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2438, '445202', '榕城区', '445200', NULL, 'a57a53914fd04c0cb719bdea1d50af78');
INSERT INTO `city` VALUES (2439, '445221', '揭东县', '445200', NULL, NULL);
INSERT INTO `city` VALUES (2440, '445222', '揭西县', '445200', NULL, 'b1c127a1f9eb4bca87f260b066745bce');
INSERT INTO `city` VALUES (2441, '445224', '惠来县', '445200', NULL, '69f4e047f28c4fce9ff43bcb2bdf6729');
INSERT INTO `city` VALUES (2442, '445281', '普宁市', '445200', NULL, 'a429ae7037a24597b06809d0298f4795');
INSERT INTO `city` VALUES (2443, '445301', '市辖区', '445300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2444, '445302', '云城区', '445300', NULL, '24380c6940934432b5dc864872d583af');
INSERT INTO `city` VALUES (2445, '445321', '新兴县', '445300', NULL, '3163bfd218d14bffaf55c7c207808e12');
INSERT INTO `city` VALUES (2446, '445322', '郁南县', '445300', NULL, 'e522cf17adb34f59a76980659de335c5');
INSERT INTO `city` VALUES (2447, '445323', '云安县', '445300', NULL, NULL);
INSERT INTO `city` VALUES (2448, '445381', '罗定市', '445300', NULL, '974ba92717ba47ccbc527ee727a83edd');
INSERT INTO `city` VALUES (2449, '450101', '市辖区', '450100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2450, '450102', '兴宁区', '450100', NULL, '6fc46f60845543709d1e339fd45d5055');
INSERT INTO `city` VALUES (2451, '450103', '青秀区', '450100', NULL, 'bda8edf1fcce4b8c8e5caf8383c24f9d');
INSERT INTO `city` VALUES (2452, '450105', '江南区', '450100', NULL, '2147ebd92f264110b903dddb81a22d0f');
INSERT INTO `city` VALUES (2453, '450107', '西乡塘区', '450100', NULL, '1f911f35b65c4d4bb7b6acc5fd5dab22');
INSERT INTO `city` VALUES (2454, '450108', '良庆区', '450100', NULL, 'a60a4fa295214819a55229af710fe274');
INSERT INTO `city` VALUES (2455, '450109', '邕宁区', '450100', NULL, '5ee49f6b4fee4e01b30663c0d733fc3a');
INSERT INTO `city` VALUES (2456, '450122', '武鸣县', '450100', NULL, NULL);
INSERT INTO `city` VALUES (2457, '450123', '隆安县', '450100', NULL, '5a1d1cf16b2749cd9ad7ffdb4d39de2b');
INSERT INTO `city` VALUES (2458, '450124', '马山县', '450100', NULL, 'c8ecb804447b499e988035ee43955a40');
INSERT INTO `city` VALUES (2459, '450125', '上林县', '450100', NULL, '0721bfe2a51a4b5b8a269fe0a8fe3801');
INSERT INTO `city` VALUES (2460, '450126', '宾阳县', '450100', NULL, 'e2afd3b27c9049879b7d5729b0322617');
INSERT INTO `city` VALUES (2461, '450127', '横　县', '450100', NULL, NULL);
INSERT INTO `city` VALUES (2462, '450201', '市辖区', '450200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2463, '450202', '城中区', '450200', NULL, '70eb28be9270483ba8beea591ecb53ae');
INSERT INTO `city` VALUES (2464, '450203', '鱼峰区', '450200', NULL, '384aaa922366425388de7f0e31861a92');
INSERT INTO `city` VALUES (2465, '450204', '柳南区', '450200', NULL, 'd5def7ff1e02483db6465ff62a10cbf7');
INSERT INTO `city` VALUES (2466, '450205', '柳北区', '450200', NULL, '06ffc9e10c9c40f797190a3180e1f435');
INSERT INTO `city` VALUES (2467, '450221', '柳江县', '450200', NULL, NULL);
INSERT INTO `city` VALUES (2468, '450222', '柳城县', '450200', NULL, 'f98e3583ec994649b434655adbe8097a');
INSERT INTO `city` VALUES (2469, '450223', '鹿寨县', '450200', NULL, 'f5c4c257ab0f4e008b065aa427a03881');
INSERT INTO `city` VALUES (2470, '450224', '融安县', '450200', NULL, '5e4710d4124548d299ff4472a2044cd4');
INSERT INTO `city` VALUES (2471, '450225', '融水苗族自治县', '450200', NULL, '648077cdecd4487b8ed32ea14db9e1f6');
INSERT INTO `city` VALUES (2472, '450226', '三江侗族自治县', '450200', NULL, 'efa49669184142d3b555986da92ae314');
INSERT INTO `city` VALUES (2473, '450301', '市辖区', '450300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2474, '450302', '秀峰区', '450300', NULL, '8a4f96109983435cbb9402b9a3b76633');
INSERT INTO `city` VALUES (2475, '450303', '叠彩区', '450300', NULL, '414e008ab64945d6a859a2ac80f955ff');
INSERT INTO `city` VALUES (2476, '450304', '象山区', '450300', NULL, 'b26d5406a2454a0fa65d5beefcdaa0e5');
INSERT INTO `city` VALUES (2477, '450305', '七星区', '450300', NULL, '50d0fa812aaf402d9a461dfb7cbbbd7d');
INSERT INTO `city` VALUES (2478, '450311', '雁山区', '450300', NULL, '3b89fe5220704084a7e5d0a84c566808');
INSERT INTO `city` VALUES (2479, '450321', '阳朔县', '450300', NULL, '45bc6c120be347da8e453c0856bd5156');
INSERT INTO `city` VALUES (2480, '450322', '临桂县', '450300', NULL, NULL);
INSERT INTO `city` VALUES (2481, '450323', '灵川县', '450300', NULL, 'c8773ea63fbf499f9d3ab22d01fceb32');
INSERT INTO `city` VALUES (2482, '450324', '全州县', '450300', NULL, 'ba93e15dc2d640f0ba020b0b88507193');
INSERT INTO `city` VALUES (2483, '450325', '兴安县', '450300', NULL, '7f17b2898623443c84b4ddef007acbbb');
INSERT INTO `city` VALUES (2484, '450326', '永福县', '450300', NULL, 'f2448e6df41c424a877333a373d8c672');
INSERT INTO `city` VALUES (2485, '450327', '灌阳县', '450300', NULL, '261a0a227cb64ea0accf30c5fc604b7f');
INSERT INTO `city` VALUES (2486, '450328', '龙胜各族自治县', '450300', NULL, '6dcbce67803245f4bfff018c65f40845');
INSERT INTO `city` VALUES (2487, '450329', '资源县', '450300', NULL, 'f59f4aca7dde46ceafbc4396891560cb');
INSERT INTO `city` VALUES (2488, '450330', '平乐县', '450300', NULL, '2c126c2a20714d6eb188a91cbedc128a');
INSERT INTO `city` VALUES (2489, '450331', '荔蒲县', '450300', NULL, NULL);
INSERT INTO `city` VALUES (2490, '450332', '恭城瑶族自治县', '450300', NULL, '4ba1287498e2436e8ead41e4b7a8d3e1');
INSERT INTO `city` VALUES (2491, '450401', '市辖区', '450400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2492, '450403', '万秀区', '450400', NULL, '401009fe9bb5404087df11c0a8c7099f');
INSERT INTO `city` VALUES (2493, '450404', '蝶山区', '450400', NULL, NULL);
INSERT INTO `city` VALUES (2494, '450405', '长洲区', '450400', NULL, 'dd29d0e9f48c4220a77bc4f60cee2494');
INSERT INTO `city` VALUES (2495, '450421', '苍梧县', '450400', NULL, '848f7d5960314e8294727096e7793e86');
INSERT INTO `city` VALUES (2496, '450422', '藤　县', '450400', NULL, NULL);
INSERT INTO `city` VALUES (2497, '450423', '蒙山县', '450400', NULL, '02b91503b06f486c8a6ba117c571d810');
INSERT INTO `city` VALUES (2498, '450481', '岑溪市', '450400', NULL, '04e1e464fc604d278e0bdef8926163d4');
INSERT INTO `city` VALUES (2499, '450501', '市辖区', '450500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2500, '450502', '海城区', '450500', NULL, 'd16e916b5d014f709ca0de098b880b47');
INSERT INTO `city` VALUES (2501, '450503', '银海区', '450500', NULL, '16241aadf7354ef9b407cec87daebbec');
INSERT INTO `city` VALUES (2502, '450512', '铁山港区', '450500', NULL, 'f7849e5edc2d49e0890242ceab4f8d8c');
INSERT INTO `city` VALUES (2503, '450521', '合浦县', '450500', NULL, '82a3b01e359a4a81ac39808fcd1d5305');
INSERT INTO `city` VALUES (2504, '450601', '市辖区', '450600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2505, '450602', '港口区', '450600', NULL, '2c8ff13ab9a7495faebd39f0e34fd4cc');
INSERT INTO `city` VALUES (2506, '450603', '防城区', '450600', NULL, '83ed5128780a44c881207524a2b78f2a');
INSERT INTO `city` VALUES (2507, '450621', '上思县', '450600', NULL, 'abd862f195934af284854970f38115d1');
INSERT INTO `city` VALUES (2508, '450681', '东兴市', '450600', NULL, '7a21d4cd09f54484a22e24af9e070c48');
INSERT INTO `city` VALUES (2509, '450701', '市辖区', '450700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2510, '450702', '钦南区', '450700', NULL, 'dd9ad124c79d42249c687c9b53cf1842');
INSERT INTO `city` VALUES (2511, '450703', '钦北区', '450700', NULL, 'b50da9f1f4e14d4c9a29d65fad083d9f');
INSERT INTO `city` VALUES (2512, '450721', '灵山县', '450700', NULL, '1a6d9cf648e14982a28d4c7bacf98502');
INSERT INTO `city` VALUES (2513, '450722', '浦北县', '450700', NULL, 'd6d0f826550745d09d72cacc3dd34a61');
INSERT INTO `city` VALUES (2514, '450801', '市辖区', '450800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2515, '450802', '港北区', '450800', NULL, 'ec9df97b4a1e46f6aa10d43d8ddb6e48');
INSERT INTO `city` VALUES (2516, '450803', '港南区', '450800', NULL, '74d6f5d4239448488e402ba0c3e9e4c6');
INSERT INTO `city` VALUES (2517, '450804', '覃塘区', '450800', NULL, '171b17833070424b8805fb17740127d7');
INSERT INTO `city` VALUES (2518, '450821', '平南县', '450800', NULL, '47c561fe47474283809a49996633831b');
INSERT INTO `city` VALUES (2519, '450881', '桂平市', '450800', NULL, 'a805cc453505450fb0fcc55566ca0ecb');
INSERT INTO `city` VALUES (2520, '450901', '市辖区', '450900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2521, '450902', '玉州区', '450900', NULL, 'e094114393c5474da600a8e2942bc870');
INSERT INTO `city` VALUES (2522, '450921', '容　县', '450900', NULL, NULL);
INSERT INTO `city` VALUES (2523, '450922', '陆川县', '450900', NULL, '5dd91dcf802247dbbbdc5238dd9ef8e3');
INSERT INTO `city` VALUES (2524, '450923', '博白县', '450900', NULL, '5eeb82bf7f5d45beb6bfff8e270d8737');
INSERT INTO `city` VALUES (2525, '450924', '兴业县', '450900', NULL, '4fa0f36c6d4c471b84abe09dad3daa30');
INSERT INTO `city` VALUES (2526, '450981', '北流市', '450900', NULL, '28d7fe0911ef465086453834e1227480');
INSERT INTO `city` VALUES (2527, '451001', '市辖区', '451000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2528, '451002', '右江区', '451000', NULL, 'e51ae3857e624523a2056ba4b5ac86ea');
INSERT INTO `city` VALUES (2529, '451021', '田阳县', '451000', NULL, '78a16a90c0b84c348a0ee34bce6da001');
INSERT INTO `city` VALUES (2530, '451022', '田东县', '451000', NULL, '3ea81c1b9f544c2f8d64e87fc958a56c');
INSERT INTO `city` VALUES (2531, '451023', '平果县', '451000', NULL, '01b6f2a5177342899a5bc459d3858a31');
INSERT INTO `city` VALUES (2532, '451024', '德保县', '451000', NULL, '8281acb51cf541d6b0402ee98578032f');
INSERT INTO `city` VALUES (2533, '451025', '靖西县', '451000', NULL, NULL);
INSERT INTO `city` VALUES (2534, '451026', '那坡县', '451000', NULL, '4eadb230335d421186151731fbf9f02a');
INSERT INTO `city` VALUES (2535, '451027', '凌云县', '451000', NULL, 'fda68ac3cd5f4192a16b5162c1480410');
INSERT INTO `city` VALUES (2536, '451028', '乐业县', '451000', NULL, '98040a5daf6f42a886ab65e228de5009');
INSERT INTO `city` VALUES (2537, '451029', '田林县', '451000', NULL, '99b9428d12e34b6f9e529e961af8828a');
INSERT INTO `city` VALUES (2538, '451030', '西林县', '451000', NULL, '998e2f6f66fe4d1b90b7c03e79ec986c');
INSERT INTO `city` VALUES (2539, '451031', '隆林各族自治县', '451000', NULL, '038eaf37d5c34d8c808176a1a2c9c472');
INSERT INTO `city` VALUES (2540, '451101', '市辖区', '451100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2541, '451102', '八步区', '451100', NULL, 'e2beb9dc41884790b5fa207ba848ed41');
INSERT INTO `city` VALUES (2542, '451121', '昭平县', '451100', NULL, '5ad6307ebada4436941f64096ecec699');
INSERT INTO `city` VALUES (2543, '451122', '钟山县', '451100', NULL, '00a8cc019428450b86a5b8cd6155f076');
INSERT INTO `city` VALUES (2544, '451123', '富川瑶族自治县', '451100', NULL, 'ec50f6f9617a45ffb78c6fc6e91f75d7');
INSERT INTO `city` VALUES (2545, '451201', '市辖区', '451200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2546, '451202', '金城江区', '451200', NULL, 'ba898fc91abb4832a6929eaf03dbe61b');
INSERT INTO `city` VALUES (2547, '451221', '南丹县', '451200', NULL, '423e552787964890b16c90beebc31e60');
INSERT INTO `city` VALUES (2548, '451222', '天峨县', '451200', NULL, '849fb389c9ef498ea612304f69c51415');
INSERT INTO `city` VALUES (2549, '451223', '凤山县', '451200', NULL, 'a6d30761326941b4befe3b9659a6a062');
INSERT INTO `city` VALUES (2550, '451224', '东兰县', '451200', NULL, '876dc9c1569f459c82de2bb18cb7a463');
INSERT INTO `city` VALUES (2551, '451225', '罗城仫佬族自治县', '451200', NULL, '07a8b3f01c8e47adb264128b20764826');
INSERT INTO `city` VALUES (2552, '451226', '环江毛南族自治县', '451200', NULL, '75561bcf3b6f48ec833ee1f482e6d5e0');
INSERT INTO `city` VALUES (2553, '451227', '巴马瑶族自治县', '451200', NULL, 'fbbc6cd59129490d91eb458a8161ae07');
INSERT INTO `city` VALUES (2554, '451228', '都安瑶族自治县', '451200', NULL, '173679c22aa448b5a8cfecfde4fcbf44');
INSERT INTO `city` VALUES (2555, '451229', '大化瑶族自治县', '451200', NULL, '58f0f1ae89d242cb9acdec8efc58851f');
INSERT INTO `city` VALUES (2556, '451281', '宜州市', '451200', NULL, NULL);
INSERT INTO `city` VALUES (2557, '451301', '市辖区', '451300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2558, '451302', '兴宾区', '451300', NULL, 'f94d23a5611041d7ae4ed2c60fc899c7');
INSERT INTO `city` VALUES (2559, '451321', '忻城县', '451300', NULL, '13f423d29e8b4a45857b67bfa69f640b');
INSERT INTO `city` VALUES (2560, '451322', '象州县', '451300', NULL, '45d652d56815497ca52fa40dc4838986');
INSERT INTO `city` VALUES (2561, '451323', '武宣县', '451300', NULL, '4fd3e7797c104b509572e9f89f0d39c4');
INSERT INTO `city` VALUES (2562, '451324', '金秀瑶族自治县', '451300', NULL, '30fefbc9d34549259256b679f1f3af1e');
INSERT INTO `city` VALUES (2563, '451381', '合山市', '451300', NULL, '8ad4d79b2a924657bf5d985164999559');
INSERT INTO `city` VALUES (2564, '451401', '市辖区', '451400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2565, '451402', '江洲区', '451400', NULL, NULL);
INSERT INTO `city` VALUES (2566, '451421', '扶绥县', '451400', NULL, 'c56337a112fa4c6a805e3748121cc38d');
INSERT INTO `city` VALUES (2567, '451422', '宁明县', '451400', NULL, '6bd7116aaf7246ba83adea152253487e');
INSERT INTO `city` VALUES (2568, '451423', '龙州县', '451400', NULL, '1dc8708c07004b73ae234354e1509ca0');
INSERT INTO `city` VALUES (2569, '451424', '大新县', '451400', NULL, 'feb7c04056e445059280ca8671856ab1');
INSERT INTO `city` VALUES (2570, '451425', '天等县', '451400', NULL, '7ce56527f4d444428d0b162bb20706ef');
INSERT INTO `city` VALUES (2571, '451481', '凭祥市', '451400', NULL, '55289afa09934a4eb829123a0d07c0a3');
INSERT INTO `city` VALUES (2572, '460101', '市辖区', '460100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2573, '460105', '秀英区', '460100', NULL, 'c99cce28540649789b3cf767a6cb5ed8');
INSERT INTO `city` VALUES (2574, '460106', '龙华区', '460100', NULL, '5fa18349a99b4f1d9dd2154f4356978e');
INSERT INTO `city` VALUES (2575, '460107', '琼山区', '460100', NULL, '141fce1f92b94ac1a69819920bb853de');
INSERT INTO `city` VALUES (2576, '460108', '美兰区', '460100', NULL, 'c8756b2c51874094b15e982babc18f69');
INSERT INTO `city` VALUES (2577, '460201', '市辖区', '460200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2578, '469001', '五指山市', '469000', NULL, 'b6777a56c59e4badab6553180c0bc5b8');
INSERT INTO `city` VALUES (2579, '469002', '琼海市', '469000', NULL, 'c29e33f2082a4818b4d2decc73b0ae80');
INSERT INTO `city` VALUES (2580, '469003', '儋州市', '469000', NULL, '7852ff7e0e53408780e518dd758535b3');
INSERT INTO `city` VALUES (2581, '469005', '文昌市', '469000', NULL, '070af5155d984a9b9334b0d125c10633');
INSERT INTO `city` VALUES (2582, '469006', '万宁市', '469000', NULL, '65c9eec3a7574e76a1f8fd745fb9e218');
INSERT INTO `city` VALUES (2583, '469007', '东方市', '469000', NULL, '9f0febb94a3047fba7562d1a744a956a');
INSERT INTO `city` VALUES (2584, '469025', '定安县', '469000', NULL, '8a98422868fe4d928a0154cf71c57654');
INSERT INTO `city` VALUES (2585, '469026', '屯昌县', '469000', NULL, '84d685852d0e4c4c855fc021327ec8d3');
INSERT INTO `city` VALUES (2586, '469027', '澄迈县', '469000', NULL, '4b34c06d78d64908b6f6e12dca64f489');
INSERT INTO `city` VALUES (2587, '469028', '临高县', '469000', NULL, '5d554e927c92464d927d9c4cee359b1c');
INSERT INTO `city` VALUES (2588, '469030', '白沙黎族自治县', '469000', NULL, '0d78f0a8aa4f47a484c75b2dd0b8e881');
INSERT INTO `city` VALUES (2589, '469031', '昌江黎族自治县', '469000', NULL, 'eb52777eebc843859269d40349dfdb3e');
INSERT INTO `city` VALUES (2590, '469033', '乐东黎族自治县', '469000', NULL, '58fbe418a2ce42149973ca5e7333f6ee');
INSERT INTO `city` VALUES (2591, '469034', '陵水黎族自治县', '469000', NULL, '79cb31ea71a945afa5eec271c56f7003');
INSERT INTO `city` VALUES (2592, '469035', '保亭黎族苗族自治县', '469000', NULL, '9ae6976d2dc74e22a8e577ae32742e9e');
INSERT INTO `city` VALUES (2593, '469036', '琼中黎族苗族自治县', '469000', NULL, 'afbc9596badd4097aad3ff05a1dd18e9');
INSERT INTO `city` VALUES (2594, '469037', '西沙群岛', '469000', NULL, '9a47a0d8def5448f9bd03f4f08046609');
INSERT INTO `city` VALUES (2595, '469038', '南沙群岛', '469000', NULL, 'edc87553aff04e718fe810179f7a85aa');
INSERT INTO `city` VALUES (2596, '469039', '中沙群岛的岛礁及其海域', '469000', NULL, '8a21ccef76084277b1f1a0b9818d2abb');
INSERT INTO `city` VALUES (2597, '500101', '万州区', '500100', NULL, 'f81d07b558914a33891d86df77d55b67');
INSERT INTO `city` VALUES (2598, '500102', '涪陵区', '500100', NULL, 'c9170b4dad7d40d0bd26fb9bc3b1f3dd');
INSERT INTO `city` VALUES (2599, '500103', '渝中区', '500100', NULL, '7fe93c5da2324dce823b9564b262626d');
INSERT INTO `city` VALUES (2600, '500104', '大渡口区', '500100', NULL, '269debc3ac8b452aaee1dbd7466f3dd8');
INSERT INTO `city` VALUES (2601, '500105', '江北区', '500100', NULL, '346c4161b61f47a3b55a7b87e8b19170');
INSERT INTO `city` VALUES (2602, '500106', '沙坪坝区', '500100', NULL, 'daba9cae74964b15bb8736edaceefc3c');
INSERT INTO `city` VALUES (2603, '500107', '九龙坡区', '500100', NULL, '5297e4c759af470d851dbf9ff6aa2b37');
INSERT INTO `city` VALUES (2604, '500108', '南岸区', '500100', NULL, 'aa08dccc04b7432086bcb8950e3fe790');
INSERT INTO `city` VALUES (2605, '500109', '北碚区', '500100', NULL, '42764f21420948a9b3900ebffd872ae2');
INSERT INTO `city` VALUES (2606, '500110', '万盛区', '500100', NULL, NULL);
INSERT INTO `city` VALUES (2607, '500111', '双桥区', '500100', NULL, '14b3b4a1d7494b1c933e91510afe0645');
INSERT INTO `city` VALUES (2608, '500112', '渝北区', '500100', NULL, '39760a94bc844a6ab55f200a24b306a5');
INSERT INTO `city` VALUES (2609, '500113', '巴南区', '500100', NULL, '1bc3d6a283f04e62b9b656e9bea90d20');
INSERT INTO `city` VALUES (2610, '500114', '黔江区', '500100', NULL, 'c29257a45ce541c294f295e8534e3bae');
INSERT INTO `city` VALUES (2611, '500115', '长寿区', '500100', NULL, 'fedbcdc30d7848c49a5c886975349ca7');
INSERT INTO `city` VALUES (2612, '500222', '綦江县', '500200', NULL, NULL);
INSERT INTO `city` VALUES (2613, '500223', '潼南县', '500200', NULL, NULL);
INSERT INTO `city` VALUES (2614, '500224', '铜梁县', '500200', NULL, NULL);
INSERT INTO `city` VALUES (2615, '500225', '大足县', '500200', NULL, NULL);
INSERT INTO `city` VALUES (2616, '500226', '荣昌县', '500200', NULL, NULL);
INSERT INTO `city` VALUES (2617, '500227', '璧山县', '500200', NULL, NULL);
INSERT INTO `city` VALUES (2618, '500228', '梁平县', '500200', NULL, NULL);
INSERT INTO `city` VALUES (2619, '500229', '城口县', '500200', NULL, '7f4ee239b0f24c53bd77bce08132c214');
INSERT INTO `city` VALUES (2620, '500230', '丰都县', '500200', NULL, 'd2c20c25a5a54dbbba9864957ae0025c');
INSERT INTO `city` VALUES (2621, '500231', '垫江县', '500200', NULL, 'f4a2465b2fb64ebc98357176049dba41');
INSERT INTO `city` VALUES (2622, '500232', '武隆县', '500200', NULL, NULL);
INSERT INTO `city` VALUES (2623, '500233', '忠　县', '500200', NULL, NULL);
INSERT INTO `city` VALUES (2624, '500234', '开　县', '500200', NULL, NULL);
INSERT INTO `city` VALUES (2625, '500235', '云阳县', '500200', NULL, '1bf95a5bb95d497486a7d578ad90facf');
INSERT INTO `city` VALUES (2626, '500236', '奉节县', '500200', NULL, '5c010bd26b404d38a70cf60a960ba25c');
INSERT INTO `city` VALUES (2627, '500237', '巫山县', '500200', NULL, '5d26ffc26b4d4d5097c655d06457278c');
INSERT INTO `city` VALUES (2628, '500238', '巫溪县', '500200', NULL, '6c573491ce5c4968abec061d2f79b1a5');
INSERT INTO `city` VALUES (2629, '500240', '石柱土家族自治县', '500200', NULL, 'fd5f880c9d864ce0a275145ede487c3b');
INSERT INTO `city` VALUES (2630, '500241', '秀山土家族苗族自治县', '500200', NULL, '9ef8d28538fb454ca7e78fc507de6f47');
INSERT INTO `city` VALUES (2631, '500242', '酉阳土家族苗族自治县', '500200', NULL, 'c30c247c88c64431b0bad00a8eed99d2');
INSERT INTO `city` VALUES (2632, '500243', '彭水苗族土家族自治县', '500200', NULL, '890d025388874a52b494a52daf01bc64');
INSERT INTO `city` VALUES (2633, '500381', '江津市', '500300', NULL, NULL);
INSERT INTO `city` VALUES (2634, '500382', '合川市', '500300', NULL, NULL);
INSERT INTO `city` VALUES (2635, '500383', '永川市', '500300', NULL, NULL);
INSERT INTO `city` VALUES (2636, '500384', '南川市', '500300', NULL, NULL);
INSERT INTO `city` VALUES (2637, '510101', '市辖区', '510100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2638, '510104', '锦江区', '510100', NULL, 'd989001ff1394de8a80f4a993aca211a');
INSERT INTO `city` VALUES (2639, '510105', '青羊区', '510100', NULL, '0a07a33e29e447198631cb0211ff4843');
INSERT INTO `city` VALUES (2640, '510106', '金牛区', '510100', NULL, '85319ed2cff842ea810142a44ebc5794');
INSERT INTO `city` VALUES (2641, '510107', '武侯区', '510100', NULL, 'cd2ccdac7f6b44a0b2239d341e9cffc1');
INSERT INTO `city` VALUES (2642, '510108', '成华区', '510100', NULL, '4a941331e0b34a0383030726ef3256e1');
INSERT INTO `city` VALUES (2643, '510112', '龙泉驿区', '510100', NULL, '8fa7187b90b34def8c9d5e277cd001d9');
INSERT INTO `city` VALUES (2644, '510113', '青白江区', '510100', NULL, '3dace7e0bb1e400d9d1f7e3e68327ba3');
INSERT INTO `city` VALUES (2645, '510114', '新都区', '510100', NULL, 'a22b6742367841b8a5f5316e6a172568');
INSERT INTO `city` VALUES (2646, '510115', '温江区', '510100', NULL, '05442038426746c9916f4f573b3ed297');
INSERT INTO `city` VALUES (2647, '510121', '金堂县', '510100', NULL, '6b2c6745035f4c0991a5952c882b904e');
INSERT INTO `city` VALUES (2648, '510122', '双流县', '510100', NULL, NULL);
INSERT INTO `city` VALUES (2649, '510124', '郫　县', '510100', NULL, NULL);
INSERT INTO `city` VALUES (2650, '510129', '大邑县', '510100', NULL, '89e76d099abd4ffab60479d5dc85f92f');
INSERT INTO `city` VALUES (2651, '510131', '蒲江县', '510100', NULL, '4b61be0dc9ed4792a5fe81dc01368c3a');
INSERT INTO `city` VALUES (2652, '510132', '新津县', '510100', NULL, 'f281ebf957db495b8bea388d622bcd2c');
INSERT INTO `city` VALUES (2653, '510181', '都江堰市', '510100', NULL, 'ca629e55c0944297b872b39b71424b44');
INSERT INTO `city` VALUES (2654, '510182', '彭州市', '510100', NULL, '394e952ee6d24420891895a057e99ca8');
INSERT INTO `city` VALUES (2655, '510183', '邛崃市', '510100', NULL, 'dd8b0b2817df4e3c91626aa394ed3ef1');
INSERT INTO `city` VALUES (2656, '510184', '崇州市', '510100', NULL, '0c0dce00ba52414286b93b0a63d19187');
INSERT INTO `city` VALUES (2657, '510301', '市辖区', '510300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2658, '510302', '自流井区', '510300', NULL, 'f0517abeb72f471aacae530b0aa8cfce');
INSERT INTO `city` VALUES (2659, '510303', '贡井区', '510300', NULL, 'c96ff04d5f2a4c138aa7545dc7d372b9');
INSERT INTO `city` VALUES (2660, '510304', '大安区', '510300', NULL, '7b7eddfaba4f41f68b2342e35dcab19b');
INSERT INTO `city` VALUES (2661, '510311', '沿滩区', '510300', NULL, '82a10ec088894da0b9c087873ad47085');
INSERT INTO `city` VALUES (2662, '510321', '荣　县', '510300', NULL, NULL);
INSERT INTO `city` VALUES (2663, '510322', '富顺县', '510300', NULL, '5fc06efe00b64a318a33554be29522d3');
INSERT INTO `city` VALUES (2664, '510401', '市辖区', '510400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2665, '510402', '东　区', '510400', NULL, NULL);
INSERT INTO `city` VALUES (2666, '510403', '西　区', '510400', NULL, NULL);
INSERT INTO `city` VALUES (2667, '510411', '仁和区', '510400', NULL, '6dcde6c32a624dbd8f5921a01405baf0');
INSERT INTO `city` VALUES (2668, '510421', '米易县', '510400', NULL, '71429696fd6c447cac76c1c56da1d112');
INSERT INTO `city` VALUES (2669, '510422', '盐边县', '510400', NULL, 'e28d0decc00e46b38f882289ec1bfc3d');
INSERT INTO `city` VALUES (2670, '510501', '市辖区', '510500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2671, '510502', '江阳区', '510500', NULL, 'c35f8ca483d44db087e69f6546fab623');
INSERT INTO `city` VALUES (2672, '510503', '纳溪区', '510500', NULL, 'eff468703448459b90ea9ce6003ceea4');
INSERT INTO `city` VALUES (2673, '510504', '龙马潭区', '510500', NULL, '0caa65a5971846689d506eda14e7c1b0');
INSERT INTO `city` VALUES (2674, '510521', '泸　县', '510500', NULL, NULL);
INSERT INTO `city` VALUES (2675, '510522', '合江县', '510500', NULL, 'fafac6c1e2944b018e2d8b386cc6c71c');
INSERT INTO `city` VALUES (2676, '510524', '叙永县', '510500', NULL, 'e75fcfe8c94a4c4cbcea77d704ac9bf7');
INSERT INTO `city` VALUES (2677, '510525', '古蔺县', '510500', NULL, '270005293f044322a4cb5775cd51eb2f');
INSERT INTO `city` VALUES (2678, '510601', '市辖区', '510600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2679, '510603', '旌阳区', '510600', NULL, 'adab613735f34ed5802067d62cdac7b3');
INSERT INTO `city` VALUES (2680, '510623', '中江县', '510600', NULL, 'b8c76b5e8b2947a7b2267b5c8ad717ef');
INSERT INTO `city` VALUES (2681, '510626', '罗江县', '510600', NULL, NULL);
INSERT INTO `city` VALUES (2682, '510681', '广汉市', '510600', NULL, 'f8f3226464894bf6808c7c531cdc4520');
INSERT INTO `city` VALUES (2683, '510682', '什邡市', '510600', NULL, 'e610545dd5014539923b9a1ceae736a4');
INSERT INTO `city` VALUES (2684, '510683', '绵竹市', '510600', NULL, 'ef535aac423e49be85bd88a9993b8c86');
INSERT INTO `city` VALUES (2685, '510701', '市辖区', '510700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2686, '510703', '涪城区', '510700', NULL, 'b05c8de1d2d546d4afd67e0da8835e85');
INSERT INTO `city` VALUES (2687, '510704', '游仙区', '510700', NULL, 'a7d55329e620482990edd8a16fd36446');
INSERT INTO `city` VALUES (2688, '510722', '三台县', '510700', NULL, '8aeba78839f842dabe5d82f43cad266d');
INSERT INTO `city` VALUES (2689, '510723', '盐亭县', '510700', NULL, '18cf7f4a412d403bade93314bbd2393b');
INSERT INTO `city` VALUES (2690, '510724', '安　县', '510700', NULL, NULL);
INSERT INTO `city` VALUES (2691, '510725', '梓潼县', '510700', NULL, '1fbaf67e13c849cea785ac19adc48ab6');
INSERT INTO `city` VALUES (2692, '510726', '北川羌族自治县', '510700', NULL, '78f2c13142be4d8eb14b43659aaaa1a6');
INSERT INTO `city` VALUES (2693, '510727', '平武县', '510700', NULL, '17c94b803c6743db9f0bb79e8fddb8dd');
INSERT INTO `city` VALUES (2694, '510781', '江油市', '510700', NULL, '95f91a4efaef4e7a8c8763a56a0065da');
INSERT INTO `city` VALUES (2695, '510801', '市辖区', '510800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2696, '510802', '市中区', '510800', NULL, '8cb070b023274bbe874435d423d3c741');
INSERT INTO `city` VALUES (2697, '510811', '元坝区', '510800', NULL, NULL);
INSERT INTO `city` VALUES (2698, '510812', '朝天区', '510800', NULL, 'e3284967162941109cd78857e95959ef');
INSERT INTO `city` VALUES (2699, '510821', '旺苍县', '510800', NULL, 'a28c97e6f78e4b0f989377282719bb5e');
INSERT INTO `city` VALUES (2700, '510822', '青川县', '510800', NULL, 'dba8a156a7e447ecb1efaeddda55fa96');
INSERT INTO `city` VALUES (2701, '510823', '剑阁县', '510800', NULL, 'b3956fc0d59c464a8f9b893c5c28260a');
INSERT INTO `city` VALUES (2702, '510824', '苍溪县', '510800', NULL, '94bea2dcfdd74d2ab00db02f9c938878');
INSERT INTO `city` VALUES (2703, '510901', '市辖区', '510900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2704, '510903', '船山区', '510900', NULL, '8852743d55ef4f61875be26243ce2e54');
INSERT INTO `city` VALUES (2705, '510904', '安居区', '510900', NULL, '2e8e6756203042a986d767bec22edc5f');
INSERT INTO `city` VALUES (2706, '510921', '蓬溪县', '510900', NULL, '0408be9669d34239955803e36fa1a43d');
INSERT INTO `city` VALUES (2707, '510922', '射洪县', '510900', NULL, 'f6f9197e31694823b95b39199f4e7f9a');
INSERT INTO `city` VALUES (2708, '510923', '大英县', '510900', NULL, '0435e2d826934112896584c4240b0aaf');
INSERT INTO `city` VALUES (2709, '511001', '市辖区', '511000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2710, '511002', '市中区', '511000', NULL, '8cb070b023274bbe874435d423d3c741');
INSERT INTO `city` VALUES (2711, '511011', '东兴区', '511000', NULL, 'ffba6412bf534a0c9d4d40dc5b1eeadc');
INSERT INTO `city` VALUES (2712, '511024', '威远县', '511000', NULL, '9bf295b938b84c7fb67c2b043d841549');
INSERT INTO `city` VALUES (2713, '511025', '资中县', '511000', NULL, '37a5fb7932e24079b703f5196a23818a');
INSERT INTO `city` VALUES (2714, '511028', '隆昌县', '511000', NULL, NULL);
INSERT INTO `city` VALUES (2715, '511101', '市辖区', '511100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2716, '511102', '市中区', '511100', NULL, '8cb070b023274bbe874435d423d3c741');
INSERT INTO `city` VALUES (2717, '511111', '沙湾区', '511100', NULL, 'b0b03df57dd041dbbce6937d103428e8');
INSERT INTO `city` VALUES (2718, '511112', '五通桥区', '511100', NULL, 'eee786f47d1149fd83d23cc10e83f527');
INSERT INTO `city` VALUES (2719, '511113', '金口河区', '511100', NULL, 'dfa8dc17356e424399911c7d08f75d10');
INSERT INTO `city` VALUES (2720, '511123', '犍为县', '511100', NULL, '57f6b941b62c41a5ac9ae4567f119e3b');
INSERT INTO `city` VALUES (2721, '511124', '井研县', '511100', NULL, '0074435c41184fd29ca635014c596e35');
INSERT INTO `city` VALUES (2722, '511126', '夹江县', '511100', NULL, '240aa6ff86ec44f6aa121e942b0dbf97');
INSERT INTO `city` VALUES (2723, '511129', '沐川县', '511100', NULL, '32da55566bf34ddabe40d32ce95d95a2');
INSERT INTO `city` VALUES (2724, '511132', '峨边彝族自治县', '511100', NULL, '0154b843177848138b1ec4952a7ae60e');
INSERT INTO `city` VALUES (2725, '511133', '马边彝族自治县', '511100', NULL, 'a31ba87f2a1848caa096dfd66d20253a');
INSERT INTO `city` VALUES (2726, '511181', '峨眉山市', '511100', NULL, 'e75f36a7831c4b5ab8cb482185dc15de');
INSERT INTO `city` VALUES (2727, '511301', '市辖区', '511300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2728, '511302', '顺庆区', '511300', NULL, '6e9294b1d0e648a382c5b6d2e834855a');
INSERT INTO `city` VALUES (2729, '511303', '高坪区', '511300', NULL, 'f2ffb53e135c4cdda539a19527b3c029');
INSERT INTO `city` VALUES (2730, '511304', '嘉陵区', '511300', NULL, '7d992e186e864174a1c96ac7995018c4');
INSERT INTO `city` VALUES (2731, '511321', '南部县', '511300', NULL, '3bc1f93835a64fa089bbff87139c35d2');
INSERT INTO `city` VALUES (2732, '511322', '营山县', '511300', NULL, 'e675e507778d46799c409340dc7c83f0');
INSERT INTO `city` VALUES (2733, '511323', '蓬安县', '511300', NULL, '5b6d47d56adc48bab058d5c9b28ed822');
INSERT INTO `city` VALUES (2734, '511324', '仪陇县', '511300', NULL, '61e3ec0634b74bda8c086367df62e053');
INSERT INTO `city` VALUES (2735, '511325', '西充县', '511300', NULL, 'd158198771de4a4192b285426e1f54e8');
INSERT INTO `city` VALUES (2736, '511381', '阆中市', '511300', NULL, '8362c124ecde4bf091e97f96a7a6a1fd');
INSERT INTO `city` VALUES (2737, '511401', '市辖区', '511400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2738, '511402', '东坡区', '511400', NULL, 'cb326c0eb0f34ee1935ba4810febf5e4');
INSERT INTO `city` VALUES (2739, '511421', '仁寿县', '511400', NULL, '55fcbb2e8f7e46e7bc9df2fd9327623f');
INSERT INTO `city` VALUES (2740, '511422', '彭山县', '511400', NULL, NULL);
INSERT INTO `city` VALUES (2741, '511423', '洪雅县', '511400', NULL, '4b8240b053144aee8c4d9998d45449a1');
INSERT INTO `city` VALUES (2742, '511424', '丹棱县', '511400', NULL, '5bc14d18d6ec435f9d75fbe05408648a');
INSERT INTO `city` VALUES (2743, '511425', '青神县', '511400', NULL, 'a7ff6838a31e433b8b0831ddeec00311');
INSERT INTO `city` VALUES (2744, '511501', '市辖区', '511500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2745, '511502', '翠屏区', '511500', NULL, 'be18c9a4f6d34da0844c8d479d6338d7');
INSERT INTO `city` VALUES (2746, '511521', '宜宾县', '511500', NULL, 'ccac4f5cef5e44e18a353cd5489bff4f');
INSERT INTO `city` VALUES (2747, '511522', '南溪县', '511500', NULL, NULL);
INSERT INTO `city` VALUES (2748, '511523', '江安县', '511500', NULL, 'fd8aa7a673584645917fa5deef29e649');
INSERT INTO `city` VALUES (2749, '511524', '长宁县', '511500', NULL, '3f77ab365105418fbc23505246b7ca67');
INSERT INTO `city` VALUES (2750, '511525', '高　县', '511500', NULL, NULL);
INSERT INTO `city` VALUES (2751, '511526', '珙　县', '511500', NULL, NULL);
INSERT INTO `city` VALUES (2752, '511527', '筠连县', '511500', NULL, '24ff7c4b62494e1a9901ade4be2f2313');
INSERT INTO `city` VALUES (2753, '511528', '兴文县', '511500', NULL, '14fac7dd3ac843de9e36b52dc1876e1f');
INSERT INTO `city` VALUES (2754, '511529', '屏山县', '511500', NULL, 'caf87b376f90470ca06fcf1c903a9759');
INSERT INTO `city` VALUES (2755, '511601', '市辖区', '511600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2756, '511602', '广安区', '511600', NULL, '7077de148f434c4dac5bbaea6a6235b3');
INSERT INTO `city` VALUES (2757, '511621', '岳池县', '511600', NULL, '25383c32e38341ea8c54185a4ded552b');
INSERT INTO `city` VALUES (2758, '511622', '武胜县', '511600', NULL, '8bb71ea287154f7e8cd869fdd9c3b719');
INSERT INTO `city` VALUES (2759, '511623', '邻水县', '511600', NULL, 'd7b56fb5302a457bbed3966abb054dbe');
INSERT INTO `city` VALUES (2760, '511681', '华莹市', '511600', NULL, NULL);
INSERT INTO `city` VALUES (2761, '511701', '市辖区', '511700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2762, '511702', '通川区', '511700', NULL, '47e264be27ca438cb33a4c8439a0fe9b');
INSERT INTO `city` VALUES (2763, '511721', '达　县', '511700', NULL, NULL);
INSERT INTO `city` VALUES (2764, '511722', '宣汉县', '511700', NULL, '9ac07b7561bf4312b47a2ffb643e7b5e');
INSERT INTO `city` VALUES (2765, '511723', '开江县', '511700', NULL, '8ac995a93e8b40b0b2268f2e992adda9');
INSERT INTO `city` VALUES (2766, '511724', '大竹县', '511700', NULL, '6363a83c43f64e0babbbd9f9b03dc1d7');
INSERT INTO `city` VALUES (2767, '511725', '渠　县', '511700', NULL, NULL);
INSERT INTO `city` VALUES (2768, '511781', '万源市', '511700', NULL, 'a59ccd2833684d4ba739c42b87f2540e');
INSERT INTO `city` VALUES (2769, '511801', '市辖区', '511800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2770, '511802', '雨城区', '511800', NULL, '4671746dc78e4525860f572f9c64c781');
INSERT INTO `city` VALUES (2771, '511821', '名山县', '511800', NULL, NULL);
INSERT INTO `city` VALUES (2772, '511822', '荥经县', '511800', NULL, '15bc7dcd4fac4845a6c25afcabd1a7cf');
INSERT INTO `city` VALUES (2773, '511823', '汉源县', '511800', NULL, 'e3da94c554d74042bfb52fea0c44958f');
INSERT INTO `city` VALUES (2774, '511824', '石棉县', '511800', NULL, 'a4911a167e90411b9bfeb57b1b350a7d');
INSERT INTO `city` VALUES (2775, '511825', '天全县', '511800', NULL, '616d2e75d7d84abca65ded61a337e389');
INSERT INTO `city` VALUES (2776, '511826', '芦山县', '511800', NULL, 'a5d0f33a9dd54ad68346f8dc6378bf45');
INSERT INTO `city` VALUES (2777, '511827', '宝兴县', '511800', NULL, 'bd535944f5e94ff0a01ad6c8a05635c3');
INSERT INTO `city` VALUES (2778, '511901', '市辖区', '511900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2779, '511902', '巴州区', '511900', NULL, '5489636add2744008eeebaf7bc54edad');
INSERT INTO `city` VALUES (2780, '511921', '通江县', '511900', NULL, '65cf86d3383c4e14979eff0196a4887c');
INSERT INTO `city` VALUES (2781, '511922', '南江县', '511900', NULL, 'bca911a789524869aa9c6b4e8371d774');
INSERT INTO `city` VALUES (2782, '511923', '平昌县', '511900', NULL, 'd49fad802b2143b285c18f299bb36112');
INSERT INTO `city` VALUES (2783, '512001', '市辖区', '512000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2784, '512002', '雁江区', '512000', NULL, '6626406501be48308faf4b24095b4153');
INSERT INTO `city` VALUES (2785, '512021', '安岳县', '512000', NULL, '4c7ddc04007e4683a9f326705dd88524');
INSERT INTO `city` VALUES (2786, '512022', '乐至县', '512000', NULL, 'abf407ca0a6947e99272904aca159d72');
INSERT INTO `city` VALUES (2787, '512081', '简阳市', '512000', NULL, '711ed98460054af8b098f02a8eb968d8');
INSERT INTO `city` VALUES (2788, '513221', '汶川县', '513200', NULL, 'a4b008c16d774ba6af9ab1183bf81c73');
INSERT INTO `city` VALUES (2789, '513222', '理　县', '513200', NULL, NULL);
INSERT INTO `city` VALUES (2790, '513223', '茂　县', '513200', NULL, NULL);
INSERT INTO `city` VALUES (2791, '513224', '松潘县', '513200', NULL, '929fefee558c40f8b507c5d51ab127e0');
INSERT INTO `city` VALUES (2792, '513225', '九寨沟县', '513200', NULL, '57e1520d9e554a528bf93898304637d5');
INSERT INTO `city` VALUES (2793, '513226', '金川县', '513200', NULL, '8ca4a7048f29412297a84d13ca56c3e2');
INSERT INTO `city` VALUES (2794, '513227', '小金县', '513200', NULL, 'd4c4b5af2ff046beace9463623fc4a2f');
INSERT INTO `city` VALUES (2795, '513228', '黑水县', '513200', NULL, 'e10a227014a94abc8b6192867943e1b9');
INSERT INTO `city` VALUES (2796, '513229', '马尔康县', '513200', NULL, NULL);
INSERT INTO `city` VALUES (2797, '513230', '壤塘县', '513200', NULL, 'fa469c8969754502a5b74c62ef001c4f');
INSERT INTO `city` VALUES (2798, '513231', '阿坝县', '513200', NULL, '10a7702e54c347a5b87b6d82112b75d0');
INSERT INTO `city` VALUES (2799, '513232', '若尔盖县', '513200', NULL, '0e665a3bfa064ce7b38fd4d379ea3168');
INSERT INTO `city` VALUES (2800, '513233', '红原县', '513200', NULL, '06fb7cde8d434f1bb7c4b64c321e83d5');
INSERT INTO `city` VALUES (2801, '513321', '康定县', '513300', NULL, NULL);
INSERT INTO `city` VALUES (2802, '513322', '泸定县', '513300', NULL, 'c0dd1ae984aa48e4be10bab922fba7ee');
INSERT INTO `city` VALUES (2803, '513323', '丹巴县', '513300', NULL, 'be869a81baf144f1969367059e36a483');
INSERT INTO `city` VALUES (2804, '513324', '九龙县', '513300', NULL, 'b6207a2c7f1b46258bc07c29a0f6efaf');
INSERT INTO `city` VALUES (2805, '513325', '雅江县', '513300', NULL, '6800c4e9da6448b2829e97390c84f578');
INSERT INTO `city` VALUES (2806, '513326', '道孚县', '513300', NULL, '4fdd0bafa416479b9a6bac37280b5bed');
INSERT INTO `city` VALUES (2807, '513327', '炉霍县', '513300', NULL, 'c70d559df6104199a46c71101a9acfef');
INSERT INTO `city` VALUES (2808, '513328', '甘孜县', '513300', NULL, '16713033edda437cbdb5041b255a202a');
INSERT INTO `city` VALUES (2809, '513329', '新龙县', '513300', NULL, '78ced279d754482f9acb4f62cfa5c231');
INSERT INTO `city` VALUES (2810, '513330', '德格县', '513300', NULL, 'd40ef47e29aa48d4b21fd078dfa808e1');
INSERT INTO `city` VALUES (2811, '513331', '白玉县', '513300', NULL, 'fa2238033ded43099c6c1057390a7f2f');
INSERT INTO `city` VALUES (2812, '513332', '石渠县', '513300', NULL, 'd560cc6223674732a6a952752faed412');
INSERT INTO `city` VALUES (2813, '513333', '色达县', '513300', NULL, '9cdf37ae5ae74b2f8b4f6796f3ae66b4');
INSERT INTO `city` VALUES (2814, '513334', '理塘县', '513300', NULL, 'cae76244acc04087a73d2b6567b8e9d8');
INSERT INTO `city` VALUES (2815, '513335', '巴塘县', '513300', NULL, '1c0980ca37554773b429c7adad54b2b6');
INSERT INTO `city` VALUES (2816, '513336', '乡城县', '513300', NULL, '59878e68a3724262bcf2bd670324cd98');
INSERT INTO `city` VALUES (2817, '513337', '稻城县', '513300', NULL, 'ee485239b5dc4429a147f1fe9e502200');
INSERT INTO `city` VALUES (2818, '513338', '得荣县', '513300', NULL, 'd2891608ac8e4c4b866351642434998e');
INSERT INTO `city` VALUES (2819, '513401', '西昌市', '513400', NULL, 'a574461f451143ea9d8fae20d77b9026');
INSERT INTO `city` VALUES (2820, '513422', '木里藏族自治县', '513400', NULL, 'd7af18be23e04f63a8b885104d7baaeb');
INSERT INTO `city` VALUES (2821, '513423', '盐源县', '513400', NULL, 'ae039a34d090412d9ba382c1f027569a');
INSERT INTO `city` VALUES (2822, '513424', '德昌县', '513400', NULL, '562cbcffebf4414295b81e4babe2865d');
INSERT INTO `city` VALUES (2823, '513425', '会理县', '513400', NULL, 'e7df28cc1df44e1392babd143cfd88a6');
INSERT INTO `city` VALUES (2824, '513426', '会东县', '513400', NULL, '36f4759ba5574cd587fbfd6fc34cd6d6');
INSERT INTO `city` VALUES (2825, '513427', '宁南县', '513400', NULL, '9bef5354e1ba42bcb2771e9b98e98777');
INSERT INTO `city` VALUES (2826, '513428', '普格县', '513400', NULL, '2037aadd275f48f484b0a8fd206f4d3e');
INSERT INTO `city` VALUES (2827, '513429', '布拖县', '513400', NULL, 'c2d5c63d50f448129aff060e26c95e33');
INSERT INTO `city` VALUES (2828, '513430', '金阳县', '513400', NULL, '2f67a6806047492c9501a0116edb4ee0');
INSERT INTO `city` VALUES (2829, '513431', '昭觉县', '513400', NULL, '232b411c997f41eaadd26b91b92fc5e5');
INSERT INTO `city` VALUES (2830, '513432', '喜德县', '513400', NULL, '973b1cc6e4224a93812cd8b42d64af3f');
INSERT INTO `city` VALUES (2831, '513433', '冕宁县', '513400', NULL, '4aec683190ee4fd8983957874b14056b');
INSERT INTO `city` VALUES (2832, '513434', '越西县', '513400', NULL, '73d3a0291359444da33b0b2a234c75e6');
INSERT INTO `city` VALUES (2833, '513435', '甘洛县', '513400', NULL, '31f920fa60aa4b31a4fa02baa626fd6e');
INSERT INTO `city` VALUES (2834, '513436', '美姑县', '513400', NULL, '4e7061a21749463cb0d1910391b1f93f');
INSERT INTO `city` VALUES (2835, '513437', '雷波县', '513400', NULL, 'f0167b2387ad425295416fc80d51304a');
INSERT INTO `city` VALUES (2836, '520101', '市辖区', '520100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2837, '520102', '南明区', '520100', NULL, 'acfd1c34056e47dcb273df34ea4a0288');
INSERT INTO `city` VALUES (2838, '520103', '云岩区', '520100', NULL, 'a67c9dfcc46e4a63854112cabc5d6e70');
INSERT INTO `city` VALUES (2839, '520111', '花溪区', '520100', NULL, '194a76e81d3e4169a676278fe1ba431b');
INSERT INTO `city` VALUES (2840, '520112', '乌当区', '520100', NULL, '2575db3f77114b318d92a65663fa3f2f');
INSERT INTO `city` VALUES (2841, '520113', '白云区', '520100', NULL, '7c1e979d151b4a7383b2eabe86bd817b');
INSERT INTO `city` VALUES (2842, '520114', '小河区', '520100', NULL, NULL);
INSERT INTO `city` VALUES (2843, '520121', '开阳县', '520100', NULL, '4f217c23885042718f06f06725027467');
INSERT INTO `city` VALUES (2844, '520122', '息烽县', '520100', NULL, '3e06d895db7f46ad8c6c234d37eda31b');
INSERT INTO `city` VALUES (2845, '520123', '修文县', '520100', NULL, '7533036c8efa4929860e50648c6ace9c');
INSERT INTO `city` VALUES (2846, '520181', '清镇市', '520100', NULL, 'ba5295f1cb3a4571a94da7667a8f3402');
INSERT INTO `city` VALUES (2847, '520201', '钟山区', '520200', NULL, 'c4dd702afd4f47f39a1fc76dde8b60e4');
INSERT INTO `city` VALUES (2848, '520203', '六枝特区', '520200', NULL, '1c16d6ba61e84f44ae57774f835cc54f');
INSERT INTO `city` VALUES (2849, '520221', '水城县', '520200', NULL, 'eba659341f114579aaeb92b5dae26727');
INSERT INTO `city` VALUES (2850, '520222', '盘　县', '520200', NULL, NULL);
INSERT INTO `city` VALUES (2851, '520301', '市辖区', '520300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2852, '520302', '红花岗区', '520300', NULL, '48669a0a9dd2463fb248ffc67770ef2c');
INSERT INTO `city` VALUES (2853, '520303', '汇川区', '520300', NULL, 'f1bbed356e1940d0aba49f4ac5996a8c');
INSERT INTO `city` VALUES (2854, '520321', '遵义县', '520300', NULL, NULL);
INSERT INTO `city` VALUES (2855, '520322', '桐梓县', '520300', NULL, 'bc29ae8e887e40bea5cab5022821a9b6');
INSERT INTO `city` VALUES (2856, '520323', '绥阳县', '520300', NULL, 'd813a37d78114a8ea0cb152cee9f69aa');
INSERT INTO `city` VALUES (2857, '520324', '正安县', '520300', NULL, '3a21efb00c37438ab28a623d1c54af31');
INSERT INTO `city` VALUES (2858, '520325', '道真仡佬族苗族自治县', '520300', NULL, '0d0a4bdd0ee548f1874160f4ff89c102');
INSERT INTO `city` VALUES (2859, '520326', '务川仡佬族苗族自治县', '520300', NULL, '8cb4f3473ec14e4097ebd108bc7d665e');
INSERT INTO `city` VALUES (2860, '520327', '凤冈县', '520300', NULL, '56f77d4645374d609563e6c3030f3895');
INSERT INTO `city` VALUES (2861, '520328', '湄潭县', '520300', NULL, 'be28d9500cd5423badecb6f9fbabbc28');
INSERT INTO `city` VALUES (2862, '520329', '余庆县', '520300', NULL, '5615dbe049a1410d89522aa86b1e8cfc');
INSERT INTO `city` VALUES (2863, '520330', '习水县', '520300', NULL, 'ef2e09c8e3494964ab6e39732e8be461');
INSERT INTO `city` VALUES (2864, '520381', '赤水市', '520300', NULL, '4f9780a3b7ac4680896013aee6b123cd');
INSERT INTO `city` VALUES (2865, '520382', '仁怀市', '520300', NULL, '14dafb05afa148fe832dcf225f9fc8dd');
INSERT INTO `city` VALUES (2866, '520401', '市辖区', '520400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2867, '520402', '西秀区', '520400', NULL, '40f0903992ae42daa4cf2f76a61394df');
INSERT INTO `city` VALUES (2868, '520421', '平坝县', '520400', NULL, NULL);
INSERT INTO `city` VALUES (2869, '520422', '普定县', '520400', NULL, '2da10a85098341b9a5913ce3cdbb324a');
INSERT INTO `city` VALUES (2870, '520423', '镇宁布依族苗族自治县', '520400', NULL, 'c931e46fd34c444d8606e854e2cafef9');
INSERT INTO `city` VALUES (2871, '520424', '关岭布依族苗族自治县', '520400', NULL, '7dda18c027e04ffcbb29a4eab3f4e9a6');
INSERT INTO `city` VALUES (2872, '520425', '紫云苗族布依族自治县', '520400', NULL, '482d11a7041841cf932f696d9e09d049');
INSERT INTO `city` VALUES (2873, '522201', '铜仁市', '522200', NULL, 'fbd6560f2ce9461089b61cc325e56e0c');
INSERT INTO `city` VALUES (2874, '522222', '江口县', '522200', NULL, '55b68a29c51f45909b989cdeb5f8958b');
INSERT INTO `city` VALUES (2875, '522223', '玉屏侗族自治县', '522200', NULL, '03918abaafe542749c63cef831a0c2e7');
INSERT INTO `city` VALUES (2876, '522224', '石阡县', '522200', NULL, '4c1406b8a8c1476099fdb1c416a630bc');
INSERT INTO `city` VALUES (2877, '522225', '思南县', '522200', NULL, 'f2fa4c428ed3410cbee63a532c507cd1');
INSERT INTO `city` VALUES (2878, '522226', '印江土家族苗族自治县', '522200', NULL, 'de0700d172f642e2b850a2af1b91a294');
INSERT INTO `city` VALUES (2879, '522227', '德江县', '522200', NULL, '0e7276ce9f98459ab43e6fcdef287147');
INSERT INTO `city` VALUES (2880, '522228', '沿河土家族自治县', '522200', NULL, '0943c448f92d4ef8a2a4970d2fe38acb');
INSERT INTO `city` VALUES (2881, '522229', '松桃苗族自治县', '522200', NULL, 'ef779dc208d84bbb885c585123c6f34d');
INSERT INTO `city` VALUES (2882, '522230', '万山特区', '522200', NULL, NULL);
INSERT INTO `city` VALUES (2883, '522301', '兴义市', '522300', NULL, '3820f52d7a8d4b829e119d8641773fee');
INSERT INTO `city` VALUES (2884, '522322', '兴仁县', '522300', NULL, 'f8b73cad4a0b46dfae086558334b41f4');
INSERT INTO `city` VALUES (2885, '522323', '普安县', '522300', NULL, 'b2edfef40c4b492ea974a3a3bce5ada9');
INSERT INTO `city` VALUES (2886, '522324', '晴隆县', '522300', NULL, '4ea789d7edfb4acea53a91128571edee');
INSERT INTO `city` VALUES (2887, '522325', '贞丰县', '522300', NULL, '1b5edcbbd99f435886840e2d856d516b');
INSERT INTO `city` VALUES (2888, '522326', '望谟县', '522300', NULL, '26a8dfcd4a244e45a714accdcdef6ce6');
INSERT INTO `city` VALUES (2889, '522327', '册亨县', '522300', NULL, 'e06913d7451445dba198de7573ca32cc');
INSERT INTO `city` VALUES (2890, '522328', '安龙县', '522300', NULL, '89f8120c73634e918ce09f48781236bc');
INSERT INTO `city` VALUES (2891, '522401', '毕节市', '522400', NULL, '1e086a561abc425784fac0350311dee0');
INSERT INTO `city` VALUES (2892, '522422', '大方县', '522400', NULL, 'fac2aa10bee746a9b79aec66765d9fb6');
INSERT INTO `city` VALUES (2893, '522423', '黔西县', '522400', NULL, '6cd0b36fd93a4ad3883e9e39ff3f0bc7');
INSERT INTO `city` VALUES (2894, '522424', '金沙县', '522400', NULL, 'b0a3b71f24eb4b788c978c63e29f0b36');
INSERT INTO `city` VALUES (2895, '522425', '织金县', '522400', NULL, 'a10f7bff3cf341da9b6c56015ac27e2f');
INSERT INTO `city` VALUES (2896, '522426', '纳雍县', '522400', NULL, '931e2be2d257469aa485e8713b6447ee');
INSERT INTO `city` VALUES (2897, '522427', '威宁彝族回族苗族自治县', '522400', NULL, '742f4b6c874c4cb49f17c8418c1cf188');
INSERT INTO `city` VALUES (2898, '522428', '赫章县', '522400', NULL, '9fbc9a1f9cef4d638bafa1d17d184d83');
INSERT INTO `city` VALUES (2899, '522601', '凯里市', '522600', NULL, '34e3c37e03f245cda85f66fde4fa06ae');
INSERT INTO `city` VALUES (2900, '522622', '黄平县', '522600', NULL, '9a0812fd44c449d5aa546c849e1c90ea');
INSERT INTO `city` VALUES (2901, '522623', '施秉县', '522600', NULL, '42cda6146bc842d5bc4bd3607e334060');
INSERT INTO `city` VALUES (2902, '522624', '三穗县', '522600', NULL, '7350ca65717947658feb6317777cdc4a');
INSERT INTO `city` VALUES (2903, '522625', '镇远县', '522600', NULL, '89303213b1104b5b8092b57bdeba8955');
INSERT INTO `city` VALUES (2904, '522626', '岑巩县', '522600', NULL, '092e0803ce3745c5aeb91c5bf4ce0f86');
INSERT INTO `city` VALUES (2905, '522627', '天柱县', '522600', NULL, '44fcd8295fab4351af5611c93748ec89');
INSERT INTO `city` VALUES (2906, '522628', '锦屏县', '522600', NULL, '0288e2febef34a08857a9e9efc83c057');
INSERT INTO `city` VALUES (2907, '522629', '剑河县', '522600', NULL, 'e8b88d28fef44f5f95c0a023ad1e4e64');
INSERT INTO `city` VALUES (2908, '522630', '台江县', '522600', NULL, '71d262cb7a5547eaa64fadb13b83f9f0');
INSERT INTO `city` VALUES (2909, '522631', '黎平县', '522600', NULL, '11eb31c2a5ad455084a61379c955b14c');
INSERT INTO `city` VALUES (2910, '522632', '榕江县', '522600', NULL, '1cc626c169fd45988e8bc7c4ca28c9a6');
INSERT INTO `city` VALUES (2911, '522633', '从江县', '522600', NULL, '8c9e47a3d6484e17b25e5823aae4889b');
INSERT INTO `city` VALUES (2912, '522634', '雷山县', '522600', NULL, 'a1dc2e19bd80410d84462e1bef4f7baf');
INSERT INTO `city` VALUES (2913, '522635', '麻江县', '522600', NULL, '1880550d165d47d4b375a6ff1d272d7a');
INSERT INTO `city` VALUES (2914, '522636', '丹寨县', '522600', NULL, '116acb6168d844fb9ce48c9ef572e98f');
INSERT INTO `city` VALUES (2915, '522701', '都匀市', '522700', NULL, 'd357387075f04e94badbb126dbecb357');
INSERT INTO `city` VALUES (2916, '522702', '福泉市', '522700', NULL, '01251ff62da049f1b77dd8dd80bc4e46');
INSERT INTO `city` VALUES (2917, '522722', '荔波县', '522700', NULL, 'dd02e622cccd4b77841a5b9f48ea4b95');
INSERT INTO `city` VALUES (2918, '522723', '贵定县', '522700', NULL, '4fcdd0529112415ba45555afdaa0dcba');
INSERT INTO `city` VALUES (2919, '522725', '瓮安县', '522700', NULL, 'b2fd3e5803a7457bba734817a2bd5358');
INSERT INTO `city` VALUES (2920, '522726', '独山县', '522700', NULL, 'a44d9fc52f3244019171e187198f93b6');
INSERT INTO `city` VALUES (2921, '522727', '平塘县', '522700', NULL, '5352b0aec9db466f8a89bbea4cc2752c');
INSERT INTO `city` VALUES (2922, '522728', '罗甸县', '522700', NULL, '9c20bf08e0054caab95c72913e012141');
INSERT INTO `city` VALUES (2923, '522729', '长顺县', '522700', NULL, '4753a0dfa98149668e2246f7a95c3dbf');
INSERT INTO `city` VALUES (2924, '522730', '龙里县', '522700', NULL, 'e315b1b2be1f4fecbe631bc1126597ac');
INSERT INTO `city` VALUES (2925, '522731', '惠水县', '522700', NULL, 'efc49e88154d4f229a843fa6abc037fa');
INSERT INTO `city` VALUES (2926, '522732', '三都水族自治县', '522700', NULL, 'e0f1f4b107fc4bfc89efab5cdff1703b');
INSERT INTO `city` VALUES (2927, '530101', '市辖区', '530100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2928, '530102', '五华区', '530100', NULL, '6b2887b927174666aed531a3783bb61f');
INSERT INTO `city` VALUES (2929, '530103', '盘龙区', '530100', NULL, 'cb99366a08bb4a4bbb4505c259ae84b1');
INSERT INTO `city` VALUES (2930, '530111', '官渡区', '530100', NULL, 'a70565dcea6e46dfb2555f0ed66565bd');
INSERT INTO `city` VALUES (2931, '530112', '西山区', '530100', NULL, '9ab2ee96c9b94aa591030a02287a433d');
INSERT INTO `city` VALUES (2932, '530113', '东川区', '530100', NULL, '4ffe3a0923b54ecd9a21d9d817539e4c');
INSERT INTO `city` VALUES (2933, '530121', '呈贡县', '530100', NULL, NULL);
INSERT INTO `city` VALUES (2934, '530122', '晋宁县', '530100', NULL, NULL);
INSERT INTO `city` VALUES (2935, '530124', '富民县', '530100', NULL, '14682a4fff8145d8a0b391374b9f2994');
INSERT INTO `city` VALUES (2936, '530125', '宜良县', '530100', NULL, '470878c869c14652bff449b8131717fa');
INSERT INTO `city` VALUES (2937, '530126', '石林彝族自治县', '530100', NULL, '73d38f7fd06b4cc2b51675ba4110c14e');
INSERT INTO `city` VALUES (2938, '530127', '嵩明县', '530100', NULL, '5bc02b7fbcf34080b7fd426f6680b600');
INSERT INTO `city` VALUES (2939, '530128', '禄劝彝族苗族自治县', '530100', NULL, 'ffd37e3f3fcf412ea0679410cec2b85d');
INSERT INTO `city` VALUES (2940, '530129', '寻甸回族彝族自治县', '530100', NULL, '70bb404e69f3485aacfacef7aa74ec55');
INSERT INTO `city` VALUES (2941, '530181', '安宁市', '530100', NULL, '6a7c183bb3094dd4bb589a28b15aca46');
INSERT INTO `city` VALUES (2942, '530301', '市辖区', '530300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2943, '530302', '麒麟区', '530300', NULL, 'aacb40ec865b46ce822bf52d16878589');
INSERT INTO `city` VALUES (2944, '530321', '马龙县', '530300', NULL, 'd284eba30ee746bab88acec209890ed1');
INSERT INTO `city` VALUES (2945, '530322', '陆良县', '530300', NULL, '9550700ede0040baaa70128ee029864d');
INSERT INTO `city` VALUES (2946, '530323', '师宗县', '530300', NULL, 'caa3bb84c6f84fd797c41b23e26db3c0');
INSERT INTO `city` VALUES (2947, '530324', '罗平县', '530300', NULL, '161014454caa415aa22320b311028ef2');
INSERT INTO `city` VALUES (2948, '530325', '富源县', '530300', NULL, 'eb39ea87ca294e99840751cbd8dd7db7');
INSERT INTO `city` VALUES (2949, '530326', '会泽县', '530300', NULL, '1162f27bf5df43589bc58a0f987d4db6');
INSERT INTO `city` VALUES (2950, '530328', '沾益县', '530300', NULL, NULL);
INSERT INTO `city` VALUES (2951, '530381', '宣威市', '530300', NULL, '3d10991bc43744a1956f9f57489cbf7b');
INSERT INTO `city` VALUES (2952, '530401', '市辖区', '530400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2953, '530402', '红塔区', '530400', NULL, '5fc98fdbe1b444308f5dd007b89bcc0a');
INSERT INTO `city` VALUES (2954, '530421', '江川县', '530400', NULL, NULL);
INSERT INTO `city` VALUES (2955, '530422', '澄江县', '530400', NULL, '33da1cd5e681441cacf01978afb2a7f2');
INSERT INTO `city` VALUES (2956, '530423', '通海县', '530400', NULL, '2cf48edfadfb4d4786fb997f102692d1');
INSERT INTO `city` VALUES (2957, '530424', '华宁县', '530400', NULL, '138e518322854350a54b6381bbbf44d9');
INSERT INTO `city` VALUES (2958, '530425', '易门县', '530400', NULL, '7df0348657c54bbc9cec40440c864591');
INSERT INTO `city` VALUES (2959, '530426', '峨山彝族自治县', '530400', NULL, 'b0c55069147944dc9d19ad0748ddf9a2');
INSERT INTO `city` VALUES (2960, '530427', '新平彝族傣族自治县', '530400', NULL, '5c71a2373d8443779a21c9df39920691');
INSERT INTO `city` VALUES (2961, '530428', '元江哈尼族彝族傣族自治县', '530400', NULL, 'a37ec7d54152470187e334f7fe1f9f6c');
INSERT INTO `city` VALUES (2962, '530501', '市辖区', '530500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2963, '530502', '隆阳区', '530500', NULL, 'cf353b1d59a3482fa93f2d736e15d262');
INSERT INTO `city` VALUES (2964, '530521', '施甸县', '530500', NULL, 'd3de6f2252af4b44929949ee459bd752');
INSERT INTO `city` VALUES (2965, '530522', '腾冲县', '530500', NULL, NULL);
INSERT INTO `city` VALUES (2966, '530523', '龙陵县', '530500', NULL, '2d8e3b0afc5641669cfb6707d39ddafe');
INSERT INTO `city` VALUES (2967, '530524', '昌宁县', '530500', NULL, 'a1f501f506a343fb967ba8008ad1ad6b');
INSERT INTO `city` VALUES (2968, '530601', '市辖区', '530600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2969, '530602', '昭阳区', '530600', NULL, '81f88ef3cedf48f2b913e6308c5c089e');
INSERT INTO `city` VALUES (2970, '530621', '鲁甸县', '530600', NULL, 'c696108627ea4d2fba32646c9749e05c');
INSERT INTO `city` VALUES (2971, '530622', '巧家县', '530600', NULL, '30c51b4875674eee843208150d52d2a3');
INSERT INTO `city` VALUES (2972, '530623', '盐津县', '530600', NULL, '98c41f1fa7b349039c5f0fd7a4a5e8a9');
INSERT INTO `city` VALUES (2973, '530624', '大关县', '530600', NULL, '30d5a1de7bc04b63b4097d59805af7a8');
INSERT INTO `city` VALUES (2974, '530625', '永善县', '530600', NULL, 'a421a8ea9d3f40de83666fa09bc1226c');
INSERT INTO `city` VALUES (2975, '530626', '绥江县', '530600', NULL, '069ecdf1111445ea93da969aaeed2243');
INSERT INTO `city` VALUES (2976, '530627', '镇雄县', '530600', NULL, 'e245c47dc5594becb792ed2d1de34e47');
INSERT INTO `city` VALUES (2977, '530628', '彝良县', '530600', NULL, '3159ee4970814d3da8ea9faab23f3a2e');
INSERT INTO `city` VALUES (2978, '530629', '威信县', '530600', NULL, '78211143ad414965ad318de8b96c3872');
INSERT INTO `city` VALUES (2979, '530630', '水富县', '530600', NULL, '191eb976380b4a07bb0719688f4569ed');
INSERT INTO `city` VALUES (2980, '530701', '市辖区', '530700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2981, '530702', '古城区', '530700', NULL, '87df5772c9f941d59d7a39fe1609c3f0');
INSERT INTO `city` VALUES (2982, '530721', '玉龙纳西族自治县', '530700', NULL, '97a992f977764dd8825c949befdb7875');
INSERT INTO `city` VALUES (2983, '530722', '永胜县', '530700', NULL, 'bbdc81e926f744de83313bf6c527b5ae');
INSERT INTO `city` VALUES (2984, '530723', '华坪县', '530700', NULL, '347c452e016a4188b0bb15a5f0fb8e6e');
INSERT INTO `city` VALUES (2985, '530724', '宁蒗彝族自治县', '530700', NULL, '0bfa3b1a16cb425cab420299d6930408');
INSERT INTO `city` VALUES (2986, '530801', '市辖区', '530800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2987, '530802', '翠云区', '530800', NULL, NULL);
INSERT INTO `city` VALUES (2988, '530821', '普洱哈尼族彝族自治县', '530800', NULL, NULL);
INSERT INTO `city` VALUES (2989, '530822', '墨江哈尼族自治县', '530800', NULL, '07e91a1d04544a5f90ba1f33b218810a');
INSERT INTO `city` VALUES (2990, '530823', '景东彝族自治县', '530800', NULL, 'a85b7c24a39d4a31857fc946d28fcd7f');
INSERT INTO `city` VALUES (2991, '530824', '景谷傣族彝族自治县', '530800', NULL, '521c8ebc73e947989a4a058eec1bdf21');
INSERT INTO `city` VALUES (2992, '530825', '镇沅彝族哈尼族拉祜族自治县', '530800', NULL, '6549cb40da95408aa636d50fc8732e4c');
INSERT INTO `city` VALUES (2993, '530826', '江城哈尼族彝族自治县', '530800', NULL, '32443d3b6b1a444eaa6c8235159be382');
INSERT INTO `city` VALUES (2994, '530827', '孟连傣族拉祜族佤族自治县', '530800', NULL, '5c5668c28efe4b9fb1ab44af49b67f6f');
INSERT INTO `city` VALUES (2995, '530828', '澜沧拉祜族自治县', '530800', NULL, 'ac9fbd61d9234d83a3ed8f95cb34126e');
INSERT INTO `city` VALUES (2996, '530829', '西盟佤族自治县', '530800', NULL, 'bcf2c3ffdd7b40918cf0fa4f2a23760a');
INSERT INTO `city` VALUES (2997, '530901', '市辖区', '530900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (2998, '530902', '临翔区', '530900', NULL, 'ad125c6f826940689ca4c9c2d636b343');
INSERT INTO `city` VALUES (2999, '530921', '凤庆县', '530900', NULL, 'd250e77bcb624a3a9743aac18f4a877d');
INSERT INTO `city` VALUES (3000, '530922', '云　县', '530900', NULL, NULL);
INSERT INTO `city` VALUES (3001, '530923', '永德县', '530900', NULL, 'c11992b7875a471ba37a61cba7b6a8e5');
INSERT INTO `city` VALUES (3002, '530924', '镇康县', '530900', NULL, '172439c5d28944d1b91e68b4ec5506f3');
INSERT INTO `city` VALUES (3003, '530925', '双江拉祜族佤族布朗族傣族自治县', '530900', NULL, 'f322ca9189fb4afaac866095d246a321');
INSERT INTO `city` VALUES (3004, '530926', '耿马傣族佤族自治县', '530900', NULL, '693b6de83c2148ec8e8ec33f3e789050');
INSERT INTO `city` VALUES (3005, '530927', '沧源佤族自治县', '530900', NULL, 'efb1d061cc1e4ebc97ffcac41ef41e2e');
INSERT INTO `city` VALUES (3006, '532301', '楚雄市', '532300', NULL, '031b259f3c0f44ea907d8b3cbd10cec4');
INSERT INTO `city` VALUES (3007, '532322', '双柏县', '532300', NULL, '3cffde45699044e4aedf69506c064344');
INSERT INTO `city` VALUES (3008, '532323', '牟定县', '532300', NULL, '5cadd18db7a640c282ac6b42bd77c270');
INSERT INTO `city` VALUES (3009, '532324', '南华县', '532300', NULL, '143a26ff18504740b4ce83f7ed1549fb');
INSERT INTO `city` VALUES (3010, '532325', '姚安县', '532300', NULL, 'ef9d932b66094c5687b4f8d118043d19');
INSERT INTO `city` VALUES (3011, '532326', '大姚县', '532300', NULL, '9d6d7ce0f41a4a84825cae1fa137dcd6');
INSERT INTO `city` VALUES (3012, '532327', '永仁县', '532300', NULL, '0349938029d64c228764d53463de9b03');
INSERT INTO `city` VALUES (3013, '532328', '元谋县', '532300', NULL, '0cc71ed780854a08bc2027b42b522f11');
INSERT INTO `city` VALUES (3014, '532329', '武定县', '532300', NULL, 'dd78f20f0a8a4a10a3a52126171827b7');
INSERT INTO `city` VALUES (3015, '532331', '禄丰县', '532300', NULL, '1c4f47dbb93444409685982bb00b1f8c');
INSERT INTO `city` VALUES (3016, '532501', '个旧市', '532500', NULL, '4d44ab75e2044002ab35b6e715b1b65a');
INSERT INTO `city` VALUES (3017, '532502', '开远市', '532500', NULL, '4b3ebac607294f18b0919a54321843a3');
INSERT INTO `city` VALUES (3018, '532522', '蒙自县', '532500', NULL, NULL);
INSERT INTO `city` VALUES (3019, '532523', '屏边苗族自治县', '532500', NULL, '2a1430ed7a9a4518b1a93b5e08d91c83');
INSERT INTO `city` VALUES (3020, '532524', '建水县', '532500', NULL, '698bd700180d4525b04ac25ba183e038');
INSERT INTO `city` VALUES (3021, '532525', '石屏县', '532500', NULL, '0891624e3e114c5cb1ee5dbc3e6758e0');
INSERT INTO `city` VALUES (3022, '532526', '弥勒县', '532500', NULL, NULL);
INSERT INTO `city` VALUES (3023, '532527', '泸西县', '532500', NULL, '29139ecee4e244ca8e1abc4608ef180c');
INSERT INTO `city` VALUES (3024, '532528', '元阳县', '532500', NULL, '907b32bc6eec40808894f5f696292d08');
INSERT INTO `city` VALUES (3025, '532529', '红河县', '532500', NULL, 'dec5de34398741f692ad8aa1a0b6acef');
INSERT INTO `city` VALUES (3026, '532530', '金平苗族瑶族傣族自治县', '532500', NULL, '6e660908cf954f848dd1b84d7ad5a87b');
INSERT INTO `city` VALUES (3027, '532531', '绿春县', '532500', NULL, '74f131304b9c4095ba5c8a35f65a77cb');
INSERT INTO `city` VALUES (3028, '532532', '河口瑶族自治县', '532500', NULL, '3753c9c275574bf8a1863262275e901b');
INSERT INTO `city` VALUES (3029, '532621', '文山县', '532600', NULL, NULL);
INSERT INTO `city` VALUES (3030, '532622', '砚山县', '532600', NULL, '2d9993336e484bb5b080fa79aafb044f');
INSERT INTO `city` VALUES (3031, '532623', '西畴县', '532600', NULL, 'b366a09098c24f198233b7fda53d837e');
INSERT INTO `city` VALUES (3032, '532624', '麻栗坡县', '532600', NULL, 'fb328c3449a647a1b7dcfa503355e170');
INSERT INTO `city` VALUES (3033, '532625', '马关县', '532600', NULL, '666423623b11461ba993441d93cb419b');
INSERT INTO `city` VALUES (3034, '532626', '丘北县', '532600', NULL, 'e99988a2cae9417f9dde873e513bd27d');
INSERT INTO `city` VALUES (3035, '532627', '广南县', '532600', NULL, 'f527b673b1ec4a49a3172628f9e96b85');
INSERT INTO `city` VALUES (3036, '532628', '富宁县', '532600', NULL, '39e411e278b94dc4a865a57aecbda107');
INSERT INTO `city` VALUES (3037, '532801', '景洪市', '532800', NULL, 'a1aa7ff8d91544b1a60ccdf46b388259');
INSERT INTO `city` VALUES (3038, '532822', '勐海县', '532800', NULL, '9e89ee273dfe4638b322249d2e4ed740');
INSERT INTO `city` VALUES (3039, '532823', '勐腊县', '532800', NULL, 'acca5fa1c53448099c7be2f6f95c6e98');
INSERT INTO `city` VALUES (3040, '532901', '大理市', '532900', NULL, '15810d10df764f96bc58184df41c2858');
INSERT INTO `city` VALUES (3041, '532922', '漾濞彝族自治县', '532900', NULL, '0c141258b117484a9e213c426e861b92');
INSERT INTO `city` VALUES (3042, '532923', '祥云县', '532900', NULL, '35177ac4a94949e9b57db623cabeb726');
INSERT INTO `city` VALUES (3043, '532924', '宾川县', '532900', NULL, 'edce7fe395cf42f4890d072bb6846006');
INSERT INTO `city` VALUES (3044, '532925', '弥渡县', '532900', NULL, '0441cbf688054139a74e9caff466aec8');
INSERT INTO `city` VALUES (3045, '532926', '南涧彝族自治县', '532900', NULL, '801d0e9cd61742a0b4050fc9beab0d7d');
INSERT INTO `city` VALUES (3046, '532927', '巍山彝族回族自治县', '532900', NULL, 'b22d14057186482f9b291d278c523f1b');
INSERT INTO `city` VALUES (3047, '532928', '永平县', '532900', NULL, '5368fe9030bf40fe8678f55497a0180d');
INSERT INTO `city` VALUES (3048, '532929', '云龙县', '532900', NULL, 'cafcb4dd05df4f5e9373d901034dbbd2');
INSERT INTO `city` VALUES (3049, '532930', '洱源县', '532900', NULL, 'a456a26df67c48a18cb049c44039f0ed');
INSERT INTO `city` VALUES (3050, '532931', '剑川县', '532900', NULL, 'abfe5997cf44445fbff144b9ee8293f1');
INSERT INTO `city` VALUES (3051, '532932', '鹤庆县', '532900', NULL, '97380a45f8cb4b2f9566af9805c4d3c9');
INSERT INTO `city` VALUES (3052, '533102', '瑞丽市', '533100', NULL, 'da9d3f786dd948c4a77cf9d197ed251c');
INSERT INTO `city` VALUES (3053, '533103', '潞西市', '533100', NULL, NULL);
INSERT INTO `city` VALUES (3054, '533122', '梁河县', '533100', NULL, '9f128dc1e2f84f478a2b86289d6450da');
INSERT INTO `city` VALUES (3055, '533123', '盈江县', '533100', NULL, 'c5332d8da392423cb3fd767a89641660');
INSERT INTO `city` VALUES (3056, '533124', '陇川县', '533100', NULL, '7740aee151dd4324954f3a5388b6695f');
INSERT INTO `city` VALUES (3057, '533321', '泸水县', '533300', NULL, NULL);
INSERT INTO `city` VALUES (3058, '533323', '福贡县', '533300', NULL, '36077fcc921f4216a4f1b1316e75c245');
INSERT INTO `city` VALUES (3059, '533324', '贡山独龙族怒族自治县', '533300', NULL, '118f3321537b43b4aeb5dacc68146f72');
INSERT INTO `city` VALUES (3060, '533325', '兰坪白族普米族自治县', '533300', NULL, '3f4b51f0d9e5440885cf4b3cf5fe51a6');
INSERT INTO `city` VALUES (3061, '533421', '香格里拉县', '533400', NULL, NULL);
INSERT INTO `city` VALUES (3062, '533422', '德钦县', '533400', NULL, 'ba96be6364f14e21b7f8995e4828d1e4');
INSERT INTO `city` VALUES (3063, '533423', '维西傈僳族自治县', '533400', NULL, '5f69fe2035e249c6aaec3225a7ee0cb6');
INSERT INTO `city` VALUES (3064, '540101', '市辖区', '540100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3065, '540102', '城关区', '540100', NULL, '5e1a8af86a9146cf9d400119137d0d69');
INSERT INTO `city` VALUES (3066, '540121', '林周县', '540100', NULL, '9a9753b12b8d48c69643b97da67779ef');
INSERT INTO `city` VALUES (3067, '540122', '当雄县', '540100', NULL, '9408f31e2a8c4c26aad46cadd0af059b');
INSERT INTO `city` VALUES (3068, '540123', '尼木县', '540100', NULL, '5a7cf3d87d3043eb9a8631ec1ac4244e');
INSERT INTO `city` VALUES (3069, '540124', '曲水县', '540100', NULL, 'a99d331baff64cc5ba71158c73d70f8c');
INSERT INTO `city` VALUES (3070, '540125', '堆龙德庆县', '540100', NULL, NULL);
INSERT INTO `city` VALUES (3071, '540126', '达孜县', '540100', NULL, '073701df8f1444da8d3ed8f8272a7ba6');
INSERT INTO `city` VALUES (3072, '540127', '墨竹工卡县', '540100', NULL, '5d5ebff204f741a686bb0f67dccc1ea9');
INSERT INTO `city` VALUES (3073, '542121', '昌都县', '542100', NULL, NULL);
INSERT INTO `city` VALUES (3074, '542122', '江达县', '542100', NULL, '627f6fefb9974862a4dd48bde75593b8');
INSERT INTO `city` VALUES (3075, '542123', '贡觉县', '542100', NULL, '44fa6dd55ee44893aa73635bbb2a4ce9');
INSERT INTO `city` VALUES (3076, '542124', '类乌齐县', '542100', NULL, '097787162dc2438688a345e16c83373d');
INSERT INTO `city` VALUES (3077, '542125', '丁青县', '542100', NULL, 'b248cdaaa35f41e8aaa2651a98265bc7');
INSERT INTO `city` VALUES (3078, '542126', '察雅县', '542100', NULL, 'dfe8843ba0e24606b77a97fdf22370ea');
INSERT INTO `city` VALUES (3079, '542127', '八宿县', '542100', NULL, '441464de67bf4c219379b99872fc1387');
INSERT INTO `city` VALUES (3080, '542128', '左贡县', '542100', NULL, 'be20abbd770e4d3bb23435a7438f2cec');
INSERT INTO `city` VALUES (3081, '542129', '芒康县', '542100', NULL, '8c27c7acf9db4c1cbffbf0fe642e76ce');
INSERT INTO `city` VALUES (3082, '542132', '洛隆县', '542100', NULL, '7a62a5ccb8cd451e9f7aab8207cd7dec');
INSERT INTO `city` VALUES (3083, '542133', '边坝县', '542100', NULL, 'ee2ad4a80b014df898b2cdf2f5940114');
INSERT INTO `city` VALUES (3084, '542221', '乃东县', '542200', NULL, NULL);
INSERT INTO `city` VALUES (3085, '542222', '扎囊县', '542200', NULL, 'c21fff09167b4f5bb4aaff9204c93c0d');
INSERT INTO `city` VALUES (3086, '542223', '贡嘎县', '542200', NULL, 'c1ee0849340d454ea075eeec133b74b6');
INSERT INTO `city` VALUES (3087, '542224', '桑日县', '542200', NULL, 'c794c4367fe84584ae0766380226bda9');
INSERT INTO `city` VALUES (3088, '542225', '琼结县', '542200', NULL, 'fc6972c42f6440f2aa50e4a6b2a92cee');
INSERT INTO `city` VALUES (3089, '542226', '曲松县', '542200', NULL, '7b425eaaa3fe49a8970a6912d940f21e');
INSERT INTO `city` VALUES (3090, '542227', '措美县', '542200', NULL, '98783d91b6d44aca90eb53dd18578ca5');
INSERT INTO `city` VALUES (3091, '542228', '洛扎县', '542200', NULL, '9f1e7f3154454372bedc963166061d55');
INSERT INTO `city` VALUES (3092, '542229', '加查县', '542200', NULL, 'b97088bb965847faa9eef0ec29c2ca83');
INSERT INTO `city` VALUES (3093, '542231', '隆子县', '542200', NULL, 'a428c168a42b40cba237b58f0ad2fdc9');
INSERT INTO `city` VALUES (3094, '542232', '错那县', '542200', NULL, '9570181c4fd14eb88b358614ea4cdd31');
INSERT INTO `city` VALUES (3095, '542233', '浪卡子县', '542200', NULL, 'cadb686838c44902b31875ac4a97fe01');
INSERT INTO `city` VALUES (3096, '542301', '日喀则市', '542300', NULL, 'cd577dee891d4960b11ae96e0001c956');
INSERT INTO `city` VALUES (3097, '542322', '南木林县', '542300', NULL, '2b8919418321422092c77bb1b513aeb7');
INSERT INTO `city` VALUES (3098, '542323', '江孜县', '542300', NULL, 'eceb6f011c6a448fada972dde0143ccd');
INSERT INTO `city` VALUES (3099, '542324', '定日县', '542300', NULL, 'dc0f4fc8ea7c41908b81b98d0fc88b43');
INSERT INTO `city` VALUES (3100, '542325', '萨迦县', '542300', NULL, '0f19729ddee64161baf93c62e120c8e8');
INSERT INTO `city` VALUES (3101, '542326', '拉孜县', '542300', NULL, 'f315179ebb284aa8b0575551bc2d91c2');
INSERT INTO `city` VALUES (3102, '542327', '昂仁县', '542300', NULL, 'cea2acd4eb62468ba61657d307d5f2cd');
INSERT INTO `city` VALUES (3103, '542328', '谢通门县', '542300', NULL, '8c1c1bae7bf94befb2e43f0b24c25a97');
INSERT INTO `city` VALUES (3104, '542329', '白朗县', '542300', NULL, '1b9891991ef749bfb9c145c488ebc5a4');
INSERT INTO `city` VALUES (3105, '542330', '仁布县', '542300', NULL, '1663552234ca4fe2bc645f30cb840f86');
INSERT INTO `city` VALUES (3106, '542331', '康马县', '542300', NULL, '0dabec44367542098b981f315e429a51');
INSERT INTO `city` VALUES (3107, '542332', '定结县', '542300', NULL, 'd32fbb13c1f441a28c4302e8db0f0f6f');
INSERT INTO `city` VALUES (3108, '542333', '仲巴县', '542300', NULL, '022beb4c56ac488a8ec868c68de61f95');
INSERT INTO `city` VALUES (3109, '542334', '亚东县', '542300', NULL, '58c90032d9fb43b39075009e8fe75c58');
INSERT INTO `city` VALUES (3110, '542335', '吉隆县', '542300', NULL, '39ad7ae137274be39bd36e1889eab8cf');
INSERT INTO `city` VALUES (3111, '542336', '聂拉木县', '542300', NULL, 'bc75a83594cc476a8e46017331e0eb66');
INSERT INTO `city` VALUES (3112, '542337', '萨嘎县', '542300', NULL, '015b74b7bb064580a9256f7a7409bf9f');
INSERT INTO `city` VALUES (3113, '542338', '岗巴县', '542300', NULL, '667167996128475392e467237a4cac28');
INSERT INTO `city` VALUES (3114, '542421', '那曲县', '542400', NULL, '637a6cbdbb974e38bffbd3a0b5ba52c1');
INSERT INTO `city` VALUES (3115, '542422', '嘉黎县', '542400', NULL, '441ef7ffa75b46a3b2e6ac0441b54279');
INSERT INTO `city` VALUES (3116, '542423', '比如县', '542400', NULL, '3f595e9558a742eeaa518c1a9ead852d');
INSERT INTO `city` VALUES (3117, '542424', '聂荣县', '542400', NULL, '8f2e26ea5a7c4c5cb6d947840040aa71');
INSERT INTO `city` VALUES (3118, '542425', '安多县', '542400', NULL, '162659f9fc3d496685a9b93478948f90');
INSERT INTO `city` VALUES (3119, '542426', '申扎县', '542400', NULL, '69ce495289a94c1e836e1867d3b908d3');
INSERT INTO `city` VALUES (3120, '542427', '索　县', '542400', NULL, NULL);
INSERT INTO `city` VALUES (3121, '542428', '班戈县', '542400', NULL, 'a319111d1d5c441693f56f928a936cb5');
INSERT INTO `city` VALUES (3122, '542429', '巴青县', '542400', NULL, 'f1a96cd37d0f4a2aa5d761fbaeb8b056');
INSERT INTO `city` VALUES (3123, '542430', '尼玛县', '542400', NULL, '3042a98240a944de921affdc9aabfd8b');
INSERT INTO `city` VALUES (3124, '542521', '普兰县', '542500', NULL, '5feaa8df2cb0442e8006cb503e29d0d9');
INSERT INTO `city` VALUES (3125, '542522', '札达县', '542500', NULL, '677256b847304a0a96e6cf60d432195f');
INSERT INTO `city` VALUES (3126, '542523', '噶尔县', '542500', NULL, 'd82f75db9afd49848712630fdb8f7682');
INSERT INTO `city` VALUES (3127, '542524', '日土县', '542500', NULL, '9d3ac212669d41c0b8d55c0fbe616f85');
INSERT INTO `city` VALUES (3128, '542525', '革吉县', '542500', NULL, 'c0d1525ea0c34f4cb0a6cab526e1bbd4');
INSERT INTO `city` VALUES (3129, '542526', '改则县', '542500', NULL, '9b1e285fc3664ac399d1c978b3f94b42');
INSERT INTO `city` VALUES (3130, '542527', '措勤县', '542500', NULL, '53643c7ab5cb48c2bb8beda13b4d0b6d');
INSERT INTO `city` VALUES (3131, '542621', '林芝县', '542600', NULL, NULL);
INSERT INTO `city` VALUES (3132, '542622', '工布江达县', '542600', NULL, 'f677a2c6c31c475fb3261fee4ad1e588');
INSERT INTO `city` VALUES (3133, '542623', '米林县', '542600', NULL, '40adf224b84a428d9294c76c3e6e72ef');
INSERT INTO `city` VALUES (3134, '542624', '墨脱县', '542600', NULL, 'a2cd0c5d65884a149fe344446dbf397f');
INSERT INTO `city` VALUES (3135, '542625', '波密县', '542600', NULL, '5c47a66406914e848eeb4443ebae15e7');
INSERT INTO `city` VALUES (3136, '542626', '察隅县', '542600', NULL, '7cbbac0cc0a248749366d46ae0c1a1f0');
INSERT INTO `city` VALUES (3137, '542627', '朗　县', '542600', NULL, NULL);
INSERT INTO `city` VALUES (3138, '610101', '市辖区', '610100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3139, '610102', '新城区', '610100', NULL, '1ffacdcddf744bb78c955e72508f76cf');
INSERT INTO `city` VALUES (3140, '610103', '碑林区', '610100', NULL, '3afd755571a64a34a573b2620a6c73e0');
INSERT INTO `city` VALUES (3141, '610104', '莲湖区', '610100', NULL, 'cfaf9170eca14e3e8dc633f03eeb047a');
INSERT INTO `city` VALUES (3142, '610111', '灞桥区', '610100', NULL, 'b0eeed18488d4eaca66f9812dc6888ae');
INSERT INTO `city` VALUES (3143, '610112', '未央区', '610100', NULL, 'f30dd6fbe6444acb8d3865d4e3ed2d32');
INSERT INTO `city` VALUES (3144, '610113', '雁塔区', '610100', NULL, 'c96ddf85a7104a0e83fec6c066dc75ed');
INSERT INTO `city` VALUES (3145, '610114', '阎良区', '610100', NULL, '05366c9face54bdaaaaca8da22fbe34e');
INSERT INTO `city` VALUES (3146, '610115', '临潼区', '610100', NULL, 'd0ede94719ba40fb9aadeafe55bbdb1c');
INSERT INTO `city` VALUES (3147, '610116', '长安区', '610100', NULL, '036bf39d7bd2498eaceb3807a63e9aeb');
INSERT INTO `city` VALUES (3148, '610122', '蓝田县', '610100', NULL, '14bed2c0ce9c4bffb9da661f0825b3e1');
INSERT INTO `city` VALUES (3149, '610124', '周至县', '610100', NULL, '9252d96e1ba54e058fb766c8cde435a1');
INSERT INTO `city` VALUES (3150, '610125', '户　县', '610100', NULL, NULL);
INSERT INTO `city` VALUES (3151, '610126', '高陵县', '610100', NULL, NULL);
INSERT INTO `city` VALUES (3152, '610201', '市辖区', '610200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3153, '610202', '王益区', '610200', NULL, '13520058eb4a4564b0ebcac09f4bc60b');
INSERT INTO `city` VALUES (3154, '610203', '印台区', '610200', NULL, '057461e5380b4d77a3c6db52cade811d');
INSERT INTO `city` VALUES (3155, '610204', '耀州区', '610200', NULL, '2deda19f876e41189b7003bb3c1a0a0f');
INSERT INTO `city` VALUES (3156, '610222', '宜君县', '610200', NULL, '250ba26f152c4661aa7994c5c391e95e');
INSERT INTO `city` VALUES (3157, '610301', '市辖区', '610300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3158, '610302', '渭滨区', '610300', NULL, 'd7e63875c5834c4ba2f8ee0fd04f9e42');
INSERT INTO `city` VALUES (3159, '610303', '金台区', '610300', NULL, '36b4f767432b4495bf69ab045e50d60f');
INSERT INTO `city` VALUES (3160, '610304', '陈仓区', '610300', NULL, '069a5c65b10e45458c104048442c3820');
INSERT INTO `city` VALUES (3161, '610322', '凤翔县', '610300', NULL, '779930006249433c99d5dd15e5ce4ba4');
INSERT INTO `city` VALUES (3162, '610323', '岐山县', '610300', NULL, '93b24d2174c44a9cb26f5c1ed0fde9e2');
INSERT INTO `city` VALUES (3163, '610324', '扶风县', '610300', NULL, '3d5620d35b8b42f995e5e8018403a372');
INSERT INTO `city` VALUES (3164, '610326', '眉　县', '610300', NULL, NULL);
INSERT INTO `city` VALUES (3165, '610327', '陇　县', '610300', NULL, NULL);
INSERT INTO `city` VALUES (3166, '610328', '千阳县', '610300', NULL, '715548d7380b41799c59e512b2b3a612');
INSERT INTO `city` VALUES (3167, '610329', '麟游县', '610300', NULL, '668e86943d8944da88edb83e5d82f0de');
INSERT INTO `city` VALUES (3168, '610330', '凤　县', '610300', NULL, NULL);
INSERT INTO `city` VALUES (3169, '610331', '太白县', '610300', NULL, '6b446d791a794e8d973fe7c1b645e878');
INSERT INTO `city` VALUES (3170, '610401', '市辖区', '610400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3171, '610402', '秦都区', '610400', NULL, '31d8758ac2be4fb8951cebc0dff2a795');
INSERT INTO `city` VALUES (3172, '610403', '杨凌区', '610400', NULL, NULL);
INSERT INTO `city` VALUES (3173, '610404', '渭城区', '610400', NULL, '2eec2f733652457f94e09022a8a669be');
INSERT INTO `city` VALUES (3174, '610422', '三原县', '610400', NULL, '6bc63e0e53f34495a90120d918f1e48f');
INSERT INTO `city` VALUES (3175, '610423', '泾阳县', '610400', NULL, '9f2a5915a12143eaab1cd74f321ad33a');
INSERT INTO `city` VALUES (3176, '610424', '乾　县', '610400', NULL, NULL);
INSERT INTO `city` VALUES (3177, '610425', '礼泉县', '610400', NULL, '5b23b81ce3264740aa8d6bd6ffae4a1f');
INSERT INTO `city` VALUES (3178, '610426', '永寿县', '610400', NULL, '4d2bc24d91394af0a98512bce6c573ae');
INSERT INTO `city` VALUES (3179, '610427', '彬　县', '610400', NULL, NULL);
INSERT INTO `city` VALUES (3180, '610428', '长武县', '610400', NULL, '6f958680dba44f11bd57331584e2c908');
INSERT INTO `city` VALUES (3181, '610429', '旬邑县', '610400', NULL, '6dcf55cbe1254e6a954be4e40397634d');
INSERT INTO `city` VALUES (3182, '610430', '淳化县', '610400', NULL, '0eb95e0cccd443948df48002b620f083');
INSERT INTO `city` VALUES (3183, '610431', '武功县', '610400', NULL, '25c3e02c72df441d9feb57360b87f37c');
INSERT INTO `city` VALUES (3184, '610481', '兴平市', '610400', NULL, 'fd57c57c11794717802192858e1e21ec');
INSERT INTO `city` VALUES (3185, '610501', '市辖区', '610500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3186, '610502', '临渭区', '610500', NULL, '7845c98ad3774c4d87a2ff689afdea6d');
INSERT INTO `city` VALUES (3187, '610521', '华　县', '610500', NULL, NULL);
INSERT INTO `city` VALUES (3188, '610522', '潼关县', '610500', NULL, '61ac27c26c614bb199ae44eaf8f74aa6');
INSERT INTO `city` VALUES (3189, '610523', '大荔县', '610500', NULL, 'bc5912fd66c64c638094cf864fc26117');
INSERT INTO `city` VALUES (3190, '610524', '合阳县', '610500', NULL, 'eaca591c0b6f446eb0f0a12777547442');
INSERT INTO `city` VALUES (3191, '610525', '澄城县', '610500', NULL, '28bff9e5d34c4fe2bbb5ce92a87ebbf9');
INSERT INTO `city` VALUES (3192, '610526', '蒲城县', '610500', NULL, 'afcafe844d9a4086b60737878f36e8da');
INSERT INTO `city` VALUES (3193, '610527', '白水县', '610500', NULL, '96c1a80ba70e4e83bf28597f75345d00');
INSERT INTO `city` VALUES (3194, '610528', '富平县', '610500', NULL, '7ba0331437cf427bb06cbe8fb2c8327b');
INSERT INTO `city` VALUES (3195, '610581', '韩城市', '610500', NULL, 'd6bde73e85ff4667910641ff9b55c419');
INSERT INTO `city` VALUES (3196, '610582', '华阴市', '610500', NULL, '5766dbaeafe7432e8a0b08d1084a66c4');
INSERT INTO `city` VALUES (3197, '610601', '市辖区', '610600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3198, '610602', '宝塔区', '610600', NULL, 'b161750f7e6d4c3984be350360f369d2');
INSERT INTO `city` VALUES (3199, '610621', '延长县', '610600', NULL, 'fad8b573808d476781316285a4bfdb23');
INSERT INTO `city` VALUES (3200, '610622', '延川县', '610600', NULL, '47c17cd84bcd48f3abec074453be9591');
INSERT INTO `city` VALUES (3201, '610623', '子长县', '610600', NULL, '0056fd8606f04054bab8b5d9e42704aa');
INSERT INTO `city` VALUES (3202, '610624', '安塞县', '610600', NULL, NULL);
INSERT INTO `city` VALUES (3203, '610625', '志丹县', '610600', NULL, '8fe0d4a5129b45de972d8b5e9f4d8749');
INSERT INTO `city` VALUES (3204, '610626', '吴旗县', '610600', NULL, NULL);
INSERT INTO `city` VALUES (3205, '610627', '甘泉县', '610600', NULL, '0efe9aa9f475425d9d72c8519986d197');
INSERT INTO `city` VALUES (3206, '610628', '富　县', '610600', NULL, NULL);
INSERT INTO `city` VALUES (3207, '610629', '洛川县', '610600', NULL, '34be137293bb4ddf949f5b085c2f856d');
INSERT INTO `city` VALUES (3208, '610630', '宜川县', '610600', NULL, '7dadeb6b0b3b4eb3b285996884059ea6');
INSERT INTO `city` VALUES (3209, '610631', '黄龙县', '610600', NULL, 'dcdea8820bf34c928c51e0351990de29');
INSERT INTO `city` VALUES (3210, '610632', '黄陵县', '610600', NULL, 'e894b566bfef4efdb91046a01d756b71');
INSERT INTO `city` VALUES (3211, '610701', '市辖区', '610700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3212, '610702', '汉台区', '610700', NULL, '52e467064e8049149b6741e202568ba1');
INSERT INTO `city` VALUES (3213, '610721', '南郑县', '610700', NULL, NULL);
INSERT INTO `city` VALUES (3214, '610722', '城固县', '610700', NULL, '8d4256f563b34d379f9292387963e2b7');
INSERT INTO `city` VALUES (3215, '610723', '洋　县', '610700', NULL, NULL);
INSERT INTO `city` VALUES (3216, '610724', '西乡县', '610700', NULL, '471adbeae8e4473299cad14b0b6c5ed9');
INSERT INTO `city` VALUES (3217, '610725', '勉　县', '610700', NULL, NULL);
INSERT INTO `city` VALUES (3218, '610726', '宁强县', '610700', NULL, 'fbc378d66e134744b2af8027cdede317');
INSERT INTO `city` VALUES (3219, '610727', '略阳县', '610700', NULL, 'c835e9335fea4c71af00f2526ec20ebb');
INSERT INTO `city` VALUES (3220, '610728', '镇巴县', '610700', NULL, '1f59734f30c4449984b2fa35fa6dbaeb');
INSERT INTO `city` VALUES (3221, '610729', '留坝县', '610700', NULL, '19b54752537d45acac8d71159a33b7a0');
INSERT INTO `city` VALUES (3222, '610730', '佛坪县', '610700', NULL, 'cf35bb65f57e4bbda1ebbdab9f0ce277');
INSERT INTO `city` VALUES (3223, '610801', '市辖区', '610800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3224, '610802', '榆阳区', '610800', NULL, '4636ceb49dba40a98cdbc800ac3e454b');
INSERT INTO `city` VALUES (3225, '610821', '神木县', '610800', NULL, NULL);
INSERT INTO `city` VALUES (3226, '610822', '府谷县', '610800', NULL, '5ba5a3d03a6244aa90ae09c08d5e2de0');
INSERT INTO `city` VALUES (3227, '610823', '横山县', '610800', NULL, NULL);
INSERT INTO `city` VALUES (3228, '610824', '靖边县', '610800', NULL, '50d26ace37cb4c81ba6091160b758821');
INSERT INTO `city` VALUES (3229, '610825', '定边县', '610800', NULL, 'b114c976f66b45f184e0ecf22bcd0df7');
INSERT INTO `city` VALUES (3230, '610826', '绥德县', '610800', NULL, '21903157db2b40e0b357ca5394015c34');
INSERT INTO `city` VALUES (3231, '610827', '米脂县', '610800', NULL, 'ad7240d330fb42f9918b1cd5fa68b831');
INSERT INTO `city` VALUES (3232, '610828', '佳　县', '610800', NULL, NULL);
INSERT INTO `city` VALUES (3233, '610829', '吴堡县', '610800', NULL, '91ed9099938a4111bb60bdee518248dd');
INSERT INTO `city` VALUES (3234, '610830', '清涧县', '610800', NULL, '83190a8f4b8147f3bd50fb60345e4330');
INSERT INTO `city` VALUES (3235, '610831', '子洲县', '610800', NULL, '46ea45fbf3fd44df85c532519449aa26');
INSERT INTO `city` VALUES (3236, '610901', '市辖区', '610900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3237, '610902', '汉滨区', '610900', NULL, 'f2521f7ec5064b1aa6d42bb345e742bc');
INSERT INTO `city` VALUES (3238, '610921', '汉阴县', '610900', NULL, 'f19fc01c36bc404d9dbb560c9114f292');
INSERT INTO `city` VALUES (3239, '610922', '石泉县', '610900', NULL, '50fa36c7272543f6adc4299282c38656');
INSERT INTO `city` VALUES (3240, '610923', '宁陕县', '610900', NULL, '1b0dbbb7682b4ac094eb8365b6772f97');
INSERT INTO `city` VALUES (3241, '610924', '紫阳县', '610900', NULL, '761471c1fbc7431798dd918abac67e17');
INSERT INTO `city` VALUES (3242, '610925', '岚皋县', '610900', NULL, 'b3c57c82db724b619701f9b9bf6b0506');
INSERT INTO `city` VALUES (3243, '610926', '平利县', '610900', NULL, 'a64a8caec343494fb9182e6fd4b33b74');
INSERT INTO `city` VALUES (3244, '610927', '镇坪县', '610900', NULL, '5449ea542375414f973efc6450fd18b1');
INSERT INTO `city` VALUES (3245, '610928', '旬阳县', '610900', NULL, '0b2cf8a99db0426cbbc1dbfdeacd6701');
INSERT INTO `city` VALUES (3246, '610929', '白河县', '610900', NULL, 'd7a33a6d9c314228bdba0b6959fead07');
INSERT INTO `city` VALUES (3247, '611001', '市辖区', '611000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3248, '611002', '商州区', '611000', NULL, '2ced2a9ac19846359be0c78f479de6fa');
INSERT INTO `city` VALUES (3249, '611021', '洛南县', '611000', NULL, 'd189516670e64ecbae2ba46c10fd1ce3');
INSERT INTO `city` VALUES (3250, '611022', '丹凤县', '611000', NULL, '69a8013b9f4641c3884b1bea7e94e098');
INSERT INTO `city` VALUES (3251, '611023', '商南县', '611000', NULL, '84269aca5a8143d9843ed2bc649e1329');
INSERT INTO `city` VALUES (3252, '611024', '山阳县', '611000', NULL, '22a74934a13643e99101623a16265723');
INSERT INTO `city` VALUES (3253, '611025', '镇安县', '611000', NULL, '2ed446062abc4074b29d0e309b2960d1');
INSERT INTO `city` VALUES (3254, '611026', '柞水县', '611000', NULL, '10571dc51079444a9371f9167783d4ec');
INSERT INTO `city` VALUES (3255, '620101', '市辖区', '620100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3256, '620102', '城关区', '620100', NULL, '5e1a8af86a9146cf9d400119137d0d69');
INSERT INTO `city` VALUES (3257, '620103', '七里河区', '620100', NULL, '8b2621f2d9b54a268ce3cfefdcf878a8');
INSERT INTO `city` VALUES (3258, '620104', '西固区', '620100', NULL, 'd912c329814a466f8091365e62316a93');
INSERT INTO `city` VALUES (3259, '620105', '安宁区', '620100', NULL, '115a24808d184d1dba993210d0ac4c6d');
INSERT INTO `city` VALUES (3260, '620111', '红古区', '620100', NULL, '13dda59953a44938a7fb1576bc03155d');
INSERT INTO `city` VALUES (3261, '620121', '永登县', '620100', NULL, '79ea9d8b95aa4ca69c628948bd968f76');
INSERT INTO `city` VALUES (3262, '620122', '皋兰县', '620100', NULL, '9ebc8cd6758f4d9d9e79651057dbb72d');
INSERT INTO `city` VALUES (3263, '620123', '榆中县', '620100', NULL, '049a4a280d4a4765a00446f514d72840');
INSERT INTO `city` VALUES (3264, '620201', '市辖区', '620200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3265, '620301', '市辖区', '620300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3266, '620302', '金川区', '620300', NULL, '4fc716f91a7c40fea71ddd4fcaab0d25');
INSERT INTO `city` VALUES (3267, '620321', '永昌县', '620300', NULL, '44c0486c597e44d28ae0bdee46ecdfa9');
INSERT INTO `city` VALUES (3268, '620401', '市辖区', '620400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3269, '620402', '白银区', '620400', NULL, 'b4557b68224c48d192dd9cb5791b4ba5');
INSERT INTO `city` VALUES (3270, '620403', '平川区', '620400', NULL, '4682d8af3110447db95b1d5b1631027b');
INSERT INTO `city` VALUES (3271, '620421', '靖远县', '620400', NULL, 'bf1b485bdd0145b7a2a6c94fd50d2b15');
INSERT INTO `city` VALUES (3272, '620422', '会宁县', '620400', NULL, 'f5096ff54cf3480c86bcd7ae27b6228a');
INSERT INTO `city` VALUES (3273, '620423', '景泰县', '620400', NULL, '09c1f53f8ba44b65a92fe8dacf82c4f5');
INSERT INTO `city` VALUES (3274, '620501', '市辖区', '620500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3275, '620502', '秦城区', '620500', NULL, NULL);
INSERT INTO `city` VALUES (3276, '620503', '北道区', '620500', NULL, NULL);
INSERT INTO `city` VALUES (3277, '620521', '清水县', '620500', NULL, '081a2dcd686442d2b28b29eba2958e11');
INSERT INTO `city` VALUES (3278, '620522', '秦安县', '620500', NULL, '3d45297f44394c06b3f8217f42502d8e');
INSERT INTO `city` VALUES (3279, '620523', '甘谷县', '620500', NULL, '57d217743c174b6786712671eb6462df');
INSERT INTO `city` VALUES (3280, '620524', '武山县', '620500', NULL, '19cbbcbfb91a4c3c9cde0e882339de7c');
INSERT INTO `city` VALUES (3281, '620525', '张家川回族自治县', '620500', NULL, '899fb198cad644409efa3ae8ecdd1e0d');
INSERT INTO `city` VALUES (3282, '620601', '市辖区', '620600', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3283, '620602', '凉州区', '620600', NULL, 'df3937a5b7144fe786a20271bbb8ec2b');
INSERT INTO `city` VALUES (3284, '620621', '民勤县', '620600', NULL, 'b9cde11e559745899d826761b3a310b3');
INSERT INTO `city` VALUES (3285, '620622', '古浪县', '620600', NULL, '8f3d4a0dcfb448efb0dd17357f17fcb4');
INSERT INTO `city` VALUES (3286, '620623', '天祝藏族自治县', '620600', NULL, '63c689a2a9984c3abbdca97fe55cf1dc');
INSERT INTO `city` VALUES (3287, '620701', '市辖区', '620700', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3288, '620702', '甘州区', '620700', NULL, '7722777d5e2644a097c529b25616d8a1');
INSERT INTO `city` VALUES (3289, '620721', '肃南裕固族自治县', '620700', NULL, '79d82dfefb134cf69a03094a3bd66bf3');
INSERT INTO `city` VALUES (3290, '620722', '民乐县', '620700', NULL, '142f5504299c41c4b06cabd2704e77f8');
INSERT INTO `city` VALUES (3291, '620723', '临泽县', '620700', NULL, '4d2a9daa64da4c85a7d643353dbfb7ed');
INSERT INTO `city` VALUES (3292, '620724', '高台县', '620700', NULL, '0f3cdd35cb6a4ea088fa42af871dbb11');
INSERT INTO `city` VALUES (3293, '620725', '山丹县', '620700', NULL, 'd5ddb4eb59f74ef8a208d1fc8fac35fe');
INSERT INTO `city` VALUES (3294, '620801', '市辖区', '620800', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3295, '620802', '崆峒区', '620800', NULL, '1ee66f6b0e4546e0b5e821326537d4af');
INSERT INTO `city` VALUES (3296, '620821', '泾川县', '620800', NULL, 'd7f269ffde7c464f87f0b05fb6e8f2f8');
INSERT INTO `city` VALUES (3297, '620822', '灵台县', '620800', NULL, '7e21b54e630b4fed82ad66de0cef74a8');
INSERT INTO `city` VALUES (3298, '620823', '崇信县', '620800', NULL, 'd7b1e798d82d4befb4f2cb9d3ef81ba3');
INSERT INTO `city` VALUES (3299, '620824', '华亭县', '620800', NULL, '91c29525b9444d709787b562b7a62bad');
INSERT INTO `city` VALUES (3300, '620825', '庄浪县', '620800', NULL, 'e67eeba2b7504827b36d65a19d408c3e');
INSERT INTO `city` VALUES (3301, '620826', '静宁县', '620800', NULL, 'b4df8a8594e946d4b0335ac5dea40c78');
INSERT INTO `city` VALUES (3302, '620901', '市辖区', '620900', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3303, '620902', '肃州区', '620900', NULL, '965e0bec3e5a410fa05ae6c30ba16c35');
INSERT INTO `city` VALUES (3304, '620921', '金塔县', '620900', NULL, '9564f61b81e745e7bc8a7dbab05f47e9');
INSERT INTO `city` VALUES (3305, '620922', '安西县', '620900', NULL, NULL);
INSERT INTO `city` VALUES (3306, '620923', '肃北蒙古族自治县', '620900', NULL, '9f5a63c034da4ae4917376d2520bbfeb');
INSERT INTO `city` VALUES (3307, '620924', '阿克塞哈萨克族自治县', '620900', NULL, 'd61966851fcf469cb3343dbed8479ec0');
INSERT INTO `city` VALUES (3308, '620981', '玉门市', '620900', NULL, 'a5b863e52d4c44e9b198d606e7cf4296');
INSERT INTO `city` VALUES (3309, '620982', '敦煌市', '620900', NULL, '93118ecfe4d043a6b8933e9b2f567ee4');
INSERT INTO `city` VALUES (3310, '621001', '市辖区', '621000', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3311, '621002', '西峰区', '621000', NULL, '7762d951b3be495690754f32750b4400');
INSERT INTO `city` VALUES (3312, '621021', '庆城县', '621000', NULL, 'd7641b2f246d4682a094c1a6b85314ca');
INSERT INTO `city` VALUES (3313, '621022', '环　县', '621000', NULL, NULL);
INSERT INTO `city` VALUES (3314, '621023', '华池县', '621000', NULL, 'f438733d6863453a8071d846adda9ae0');
INSERT INTO `city` VALUES (3315, '621024', '合水县', '621000', NULL, '5815d823430c4c1a93e89299f3e25edc');
INSERT INTO `city` VALUES (3316, '621025', '正宁县', '621000', NULL, 'b9e8acd8777c4396be131fd9c7e7eee0');
INSERT INTO `city` VALUES (3317, '621026', '宁　县', '621000', NULL, NULL);
INSERT INTO `city` VALUES (3318, '621027', '镇原县', '621000', NULL, '697b8ddb34d14621a9b1c22f2e5a9660');
INSERT INTO `city` VALUES (3319, '621101', '市辖区', '621100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3320, '621102', '安定区', '621100', NULL, '2727dbd3f0b94013a40defb9ed724147');
INSERT INTO `city` VALUES (3321, '621121', '通渭县', '621100', NULL, '5d8c6d4b629e4231a1419b307fb62d3c');
INSERT INTO `city` VALUES (3322, '621122', '陇西县', '621100', NULL, '3e3bc85aa4114216a42ec90202a5118e');
INSERT INTO `city` VALUES (3323, '621123', '渭源县', '621100', NULL, '111c7295d610498b96c9985a682df5f1');
INSERT INTO `city` VALUES (3324, '621124', '临洮县', '621100', NULL, 'a5d26f6f22e44f6fb72c4bb29d13a1e7');
INSERT INTO `city` VALUES (3325, '621125', '漳　县', '621100', NULL, NULL);
INSERT INTO `city` VALUES (3326, '621126', '岷　县', '621100', NULL, NULL);
INSERT INTO `city` VALUES (3327, '621201', '市辖区', '621200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3328, '621202', '武都区', '621200', NULL, '81fdf55f523949c5aae2622ebe08b729');
INSERT INTO `city` VALUES (3329, '621221', '成　县', '621200', NULL, NULL);
INSERT INTO `city` VALUES (3330, '621222', '文　县', '621200', NULL, NULL);
INSERT INTO `city` VALUES (3331, '621223', '宕昌县', '621200', NULL, '7dc5290cb69c4b3cb182ea5872b629c2');
INSERT INTO `city` VALUES (3332, '621224', '康　县', '621200', NULL, NULL);
INSERT INTO `city` VALUES (3333, '621225', '西和县', '621200', NULL, '07645884ed514bf29acd352417c681e0');
INSERT INTO `city` VALUES (3334, '621226', '礼　县', '621200', NULL, NULL);
INSERT INTO `city` VALUES (3335, '621227', '徽　县', '621200', NULL, NULL);
INSERT INTO `city` VALUES (3336, '621228', '两当县', '621200', NULL, 'df99b609961442e28e659d6ae5705e3b');
INSERT INTO `city` VALUES (3337, '622901', '临夏市', '622900', NULL, '3dd16f272ae443d1b6c297208a0b4634');
INSERT INTO `city` VALUES (3338, '622921', '临夏县', '622900', NULL, '6de71a232ffe40c3b813dfe343616a0a');
INSERT INTO `city` VALUES (3339, '622922', '康乐县', '622900', NULL, '9227063cf0044d6bb5ec47dcab8d02f1');
INSERT INTO `city` VALUES (3340, '622923', '永靖县', '622900', NULL, 'd7d40de5a80247cd929c85c9af75c362');
INSERT INTO `city` VALUES (3341, '622924', '广河县', '622900', NULL, '03f251f6011441198bc215008822b7a4');
INSERT INTO `city` VALUES (3342, '622925', '和政县', '622900', NULL, 'cf9681c764674e27b0831e9c15b117c9');
INSERT INTO `city` VALUES (3343, '622926', '东乡族自治县', '622900', NULL, 'bc3d790a0578491c854d8e3dfe215f0d');
INSERT INTO `city` VALUES (3344, '622927', '积石山保安族东乡族撒拉族自治县', '622900', NULL, '2f9ca65fc73f402cbefc5594c2e058b1');
INSERT INTO `city` VALUES (3345, '623001', '合作市', '623000', NULL, 'e7525253bb1342cd860d92b3dea6e9d2');
INSERT INTO `city` VALUES (3346, '623021', '临潭县', '623000', NULL, '7524bc9d1ba042298befc2668ca055cc');
INSERT INTO `city` VALUES (3347, '623022', '卓尼县', '623000', NULL, '88bf05d056264ca59a333fe4639f730e');
INSERT INTO `city` VALUES (3348, '623023', '舟曲县', '623000', NULL, 'b8659601f5ae42e6b51b58d6f3d60d4d');
INSERT INTO `city` VALUES (3349, '623024', '迭部县', '623000', NULL, '2207d2188bd94800927c240324ac1529');
INSERT INTO `city` VALUES (3350, '623025', '玛曲县', '623000', NULL, 'a946267988544230af7a2e0f060e96c1');
INSERT INTO `city` VALUES (3351, '623026', '碌曲县', '623000', NULL, 'bfc842758f6c4c5e84b7f94dcb2a7bbe');
INSERT INTO `city` VALUES (3352, '623027', '夏河县', '623000', NULL, '6cf8f60d92364cdaa0794721708c36d7');
INSERT INTO `city` VALUES (3353, '630101', '市辖区', '630100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3354, '630102', '城东区', '630100', NULL, '1b072d10943045ab86d2fc0cf08f4cea');
INSERT INTO `city` VALUES (3355, '630103', '城中区', '630100', NULL, '70eb28be9270483ba8beea591ecb53ae');
INSERT INTO `city` VALUES (3356, '630104', '城西区', '630100', NULL, '5fbae49f1ab54684a8e0123bd4a6d45b');
INSERT INTO `city` VALUES (3357, '630105', '城北区', '630100', NULL, '824fd21c9afa4c0e9075a047a97eb630');
INSERT INTO `city` VALUES (3358, '630121', '大通回族土族自治县', '630100', NULL, '933df079db2e485aa20e548a9d1b36b8');
INSERT INTO `city` VALUES (3359, '630122', '湟中县', '630100', NULL, '0c868cbd3517465e8ab768cf1e543f8c');
INSERT INTO `city` VALUES (3360, '630123', '湟源县', '630100', NULL, '0129b011836c4ea88f908379338734e7');
INSERT INTO `city` VALUES (3361, '632121', '平安县', '632100', NULL, NULL);
INSERT INTO `city` VALUES (3362, '632122', '民和回族土族自治县', '632100', NULL, '8d69057d2650427a8c3462edfa34018f');
INSERT INTO `city` VALUES (3363, '632123', '乐都县', '632100', NULL, NULL);
INSERT INTO `city` VALUES (3364, '632126', '互助土族自治县', '632100', NULL, 'f929a47cc42941098e25d7cb884e16af');
INSERT INTO `city` VALUES (3365, '632127', '化隆回族自治县', '632100', NULL, '6dd5278a70e24344bfd635624007f6e9');
INSERT INTO `city` VALUES (3366, '632128', '循化撒拉族自治县', '632100', NULL, 'f0b0804d7d0d42cd9a190068b58c6895');
INSERT INTO `city` VALUES (3367, '632221', '门源回族自治县', '632200', NULL, '2096912bdc774571b640665666505395');
INSERT INTO `city` VALUES (3368, '632222', '祁连县', '632200', NULL, '550f56da09de4ae38c68d5feca7c04a4');
INSERT INTO `city` VALUES (3369, '632223', '海晏县', '632200', NULL, '6991b0bcf6c2408782caebb34a250f5c');
INSERT INTO `city` VALUES (3370, '632224', '刚察县', '632200', NULL, 'f34ca162a7c24417a9953e5ea89ee9c8');
INSERT INTO `city` VALUES (3371, '632321', '同仁县', '632300', NULL, '84766407c93244d88bc8e91dcfb3a9c2');
INSERT INTO `city` VALUES (3372, '632322', '尖扎县', '632300', NULL, '2cfe60ef29124a2ab0429bb4cf5b25ed');
INSERT INTO `city` VALUES (3373, '632323', '泽库县', '632300', NULL, '5bd31bebcb2f4a09b849a7c7a22db34f');
INSERT INTO `city` VALUES (3374, '632324', '河南蒙古族自治县', '632300', NULL, 'e37312480661493db6ba5acd594cccf4');
INSERT INTO `city` VALUES (3375, '632521', '共和县', '632500', NULL, 'a8d8b6603b924a659c23192fe05a1f05');
INSERT INTO `city` VALUES (3376, '632522', '同德县', '632500', NULL, '1bb449ee594d4e7ab3e84941ab52f20d');
INSERT INTO `city` VALUES (3377, '632523', '贵德县', '632500', NULL, 'bf939b400fa7474aa3d328ab097c73c4');
INSERT INTO `city` VALUES (3378, '632524', '兴海县', '632500', NULL, '5666f604cb9e4f4c9bdac7b827cfdd52');
INSERT INTO `city` VALUES (3379, '632525', '贵南县', '632500', NULL, 'cbedbbc5f978412ebb9562c153c57481');
INSERT INTO `city` VALUES (3380, '632621', '玛沁县', '632600', NULL, 'f3527b27f36741319e44b92152ec0fa4');
INSERT INTO `city` VALUES (3381, '632622', '班玛县', '632600', NULL, '1308c8f0a8fe41a5bdf2713d00550399');
INSERT INTO `city` VALUES (3382, '632623', '甘德县', '632600', NULL, '8f961be2c5de4ef6a5081cccbf864ab8');
INSERT INTO `city` VALUES (3383, '632624', '达日县', '632600', NULL, '8841bfcbc3f44945bb8c47d4a305c4e0');
INSERT INTO `city` VALUES (3384, '632625', '久治县', '632600', NULL, '0fc4071c516c49739daa74f6a3dae5f6');
INSERT INTO `city` VALUES (3385, '632626', '玛多县', '632600', NULL, '0e6bbf310f2247b4aac4533a7b6bf25e');
INSERT INTO `city` VALUES (3386, '632721', '玉树县', '632700', NULL, NULL);
INSERT INTO `city` VALUES (3387, '632722', '杂多县', '632700', NULL, 'e9b2d89b1ea94cf896965470739cbaf2');
INSERT INTO `city` VALUES (3388, '632723', '称多县', '632700', NULL, '6059257cb4a740a2a4e025a148a8f521');
INSERT INTO `city` VALUES (3389, '632724', '治多县', '632700', NULL, '59a6ea0a99fe457b97c293ab3bb223ab');
INSERT INTO `city` VALUES (3390, '632725', '囊谦县', '632700', NULL, 'fba0150d9b9b4feabbeefbf7bbcd8064');
INSERT INTO `city` VALUES (3391, '632726', '曲麻莱县', '632700', NULL, 'c352adf7edbe49669a536612b6d402ce');
INSERT INTO `city` VALUES (3392, '632801', '格尔木市', '632800', NULL, '51c15e0c643c4c7fb7c1c072a3ca5a37');
INSERT INTO `city` VALUES (3393, '632802', '德令哈市', '632800', NULL, 'b5543a9aa0a94092a64a0a3282842a12');
INSERT INTO `city` VALUES (3394, '632821', '乌兰县', '632800', NULL, 'c278de7e6ec64cb0a7196e59a506bc97');
INSERT INTO `city` VALUES (3395, '632822', '都兰县', '632800', NULL, '1b380261e2f942e2b7ada9c758cb8213');
INSERT INTO `city` VALUES (3396, '632823', '天峻县', '632800', NULL, 'a1f350d01b0b49859440ac32ea8fcd4c');
INSERT INTO `city` VALUES (3397, '640101', '市辖区', '640100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3398, '640104', '兴庆区', '640100', NULL, 'e5ca4abc9e274c63bb1dbfd8f2e83b38');
INSERT INTO `city` VALUES (3399, '640105', '西夏区', '640100', NULL, '3bae4c113ad84590a0c12dd6222a372f');
INSERT INTO `city` VALUES (3400, '640106', '金凤区', '640100', NULL, '44718b013ada49c1a0434cf31e61c61c');
INSERT INTO `city` VALUES (3401, '640121', '永宁县', '640100', NULL, 'c1266087f6a74cb5be9e99dd4e19d498');
INSERT INTO `city` VALUES (3402, '640122', '贺兰县', '640100', NULL, '96152ba50fd54dd686cae34663d02402');
INSERT INTO `city` VALUES (3403, '640181', '灵武市', '640100', NULL, 'efd66d8229a74901901bd398f270fd8f');
INSERT INTO `city` VALUES (3404, '640201', '市辖区', '640200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3405, '640202', '大武口区', '640200', NULL, '77da15d3d10747fba0ea911458ee7709');
INSERT INTO `city` VALUES (3406, '640205', '惠农区', '640200', NULL, '09e3f00a87574304aa2fbee2611d9c71');
INSERT INTO `city` VALUES (3407, '640221', '平罗县', '640200', NULL, 'f7cfcf38860a4383a26ea8ace462a3e8');
INSERT INTO `city` VALUES (3408, '640301', '市辖区', '640300', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3409, '640302', '利通区', '640300', NULL, 'bb67b4c6d6c946f0961120f6fe657993');
INSERT INTO `city` VALUES (3410, '640323', '盐池县', '640300', NULL, 'c4b030c27fbe42398ff46cbc7ae86081');
INSERT INTO `city` VALUES (3411, '640324', '同心县', '640300', NULL, '1bc78572435b4522b39206f73658f6f2');
INSERT INTO `city` VALUES (3412, '640381', '青铜峡市', '640300', NULL, '0d968db8a1b545e3975db1bb3b6a964d');
INSERT INTO `city` VALUES (3413, '640401', '市辖区', '640400', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3414, '640402', '原州区', '640400', NULL, 'dd9e41e728dd4e9e8f45360e80b8628d');
INSERT INTO `city` VALUES (3415, '640422', '西吉县', '640400', NULL, '626255ffe2e54280a38aadd7743db8a8');
INSERT INTO `city` VALUES (3416, '640423', '隆德县', '640400', NULL, '4bd5309c7b174285b64a7b87931a6df3');
INSERT INTO `city` VALUES (3417, '640424', '泾源县', '640400', NULL, 'da086959d213442f9aa1793ecde6f02d');
INSERT INTO `city` VALUES (3418, '640425', '彭阳县', '640400', NULL, '9b40a969943343ebba122f0c29455d14');
INSERT INTO `city` VALUES (3419, '640501', '市辖区', '640500', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3420, '640502', '沙坡头区', '640500', NULL, 'cc202536495e44e19d4a78912f7d6ca8');
INSERT INTO `city` VALUES (3421, '640521', '中宁县', '640500', NULL, '1082c2c09d054474932902f54d087659');
INSERT INTO `city` VALUES (3422, '640522', '海原县', '640500', NULL, '599e91855749400ea65e2a0a52c4d3ff');
INSERT INTO `city` VALUES (3423, '650101', '市辖区', '650100', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3424, '650102', '天山区', '650100', NULL, '92c49bef014a420e8de4b19540650046');
INSERT INTO `city` VALUES (3425, '650103', '沙依巴克区', '650100', NULL, '79c396f415274466836ee245ea90e6a0');
INSERT INTO `city` VALUES (3426, '650104', '新市区', '650100', NULL, '8d8a0e355b0d4555bc4727adbfc972a2');
INSERT INTO `city` VALUES (3427, '650105', '水磨沟区', '650100', NULL, '70d45ce1063e4493a49192007b61ed67');
INSERT INTO `city` VALUES (3428, '650106', '头屯河区', '650100', NULL, 'c0caa749f0164614a20e206237f26033');
INSERT INTO `city` VALUES (3429, '650107', '达坂城区', '650100', NULL, '2d836771a9f943cdb33439941e693d01');
INSERT INTO `city` VALUES (3430, '650108', '东山区', '650100', NULL, 'e43369304e534392ab5649b95e5485c1');
INSERT INTO `city` VALUES (3431, '650121', '乌鲁木齐县', '650100', NULL, '021a6b286fe248399f1a04bb288e981d');
INSERT INTO `city` VALUES (3432, '650201', '市辖区', '650200', NULL, '02d28931a87d4884a5fadca4e2c027b2');
INSERT INTO `city` VALUES (3433, '650202', '独山子区', '650200', NULL, '9c604ed2a1034b3a8bed620bb30bb8a9');
INSERT INTO `city` VALUES (3434, '650203', '克拉玛依区', '650200', NULL, '71f055fcd6b44b639c55ebc8ba9e03f0');
INSERT INTO `city` VALUES (3435, '650204', '白碱滩区', '650200', NULL, '03180d4dc244433bbd0e44a47f0dceeb');
INSERT INTO `city` VALUES (3436, '650205', '乌尔禾区', '650200', NULL, '32f4531d7cf84cc8b73a52248444265c');
INSERT INTO `city` VALUES (3437, '652101', '吐鲁番市', '652100', NULL, 'b293257fe3a944b784b7d71350c6cb1d');
INSERT INTO `city` VALUES (3438, '652122', '鄯善县', '652100', NULL, 'bc05eccba994421494c6300b2eb0ca9d');
INSERT INTO `city` VALUES (3439, '652123', '托克逊县', '652100', NULL, '0212e33a90bf4eaab9a26c29b8838926');
INSERT INTO `city` VALUES (3440, '652201', '哈密市', '652200', NULL, '9e38037d10e247418aef8bff3c419c6b');
INSERT INTO `city` VALUES (3441, '652222', '巴里坤哈萨克自治县', '652200', NULL, '1d6c1d961aae4af0bcf889d4c7922d9e');
INSERT INTO `city` VALUES (3442, '652223', '伊吾县', '652200', NULL, 'f226ebfaef074f939d1dcb5549b3b073');
INSERT INTO `city` VALUES (3443, '652301', '昌吉市', '652300', NULL, '734e8a84358f432990a863a66703bc06');
INSERT INTO `city` VALUES (3444, '652302', '阜康市', '652300', NULL, 'df1f9380721b4e9db168ed0f37aba311');
INSERT INTO `city` VALUES (3445, '652303', '米泉市', '652300', NULL, NULL);
INSERT INTO `city` VALUES (3446, '652323', '呼图壁县', '652300', NULL, '9dd8420d363d463f9c0645f1c2f8b80b');
INSERT INTO `city` VALUES (3447, '652324', '玛纳斯县', '652300', NULL, '2ac339a48de0413d96858d8fb9c1dfc5');
INSERT INTO `city` VALUES (3448, '652325', '奇台县', '652300', NULL, '55786c4ed7824b03a349aa63072300f6');
INSERT INTO `city` VALUES (3449, '652327', '吉木萨尔县', '652300', NULL, 'fbe5e8f24f0e4f76a093009c905f52e2');
INSERT INTO `city` VALUES (3450, '652328', '木垒哈萨克自治县', '652300', NULL, '416e5fa277064c0981bae9f5e21ac0a3');
INSERT INTO `city` VALUES (3451, '652701', '博乐市', '652700', NULL, '56b2a126a1264938b90eb6e76deadf58');
INSERT INTO `city` VALUES (3452, '652722', '精河县', '652700', NULL, 'def131277c594f26bc67a1cba7862976');
INSERT INTO `city` VALUES (3453, '652723', '温泉县', '652700', NULL, '97028b140c4c4de589ee61d82e7d0366');
INSERT INTO `city` VALUES (3454, '652801', '库尔勒市', '652800', NULL, '8b81ba876faf4899a79df57638179d88');
INSERT INTO `city` VALUES (3455, '652822', '轮台县', '652800', NULL, '7a46457cab4040a8b2611436cd826222');
INSERT INTO `city` VALUES (3456, '652823', '尉犁县', '652800', NULL, '9f96dfbde7c843578c15036b3b53ac50');
INSERT INTO `city` VALUES (3457, '652824', '若羌县', '652800', NULL, '52b3f42cdfb6425395a546764ff1f5e8');
INSERT INTO `city` VALUES (3458, '652825', '且末县', '652800', NULL, '50a04d9f83964867a08b3b5b20d7f262');
INSERT INTO `city` VALUES (3459, '652826', '焉耆回族自治县', '652800', NULL, 'c171fa4a8cf44e319c08ccf26aad18b9');
INSERT INTO `city` VALUES (3460, '652827', '和静县', '652800', NULL, 'bdd7b77bcd1f4ae0bb02ec4c28961e87');
INSERT INTO `city` VALUES (3461, '652828', '和硕县', '652800', NULL, 'dca7eaa33e8d43449f534456c4194e1d');
INSERT INTO `city` VALUES (3462, '652829', '博湖县', '652800', NULL, '6cb7966f8ddc451f811703a6dcc20f32');
INSERT INTO `city` VALUES (3463, '652901', '阿克苏市', '652900', NULL, '9b5accc1261a43228afee7eb893a3e4d');
INSERT INTO `city` VALUES (3464, '652922', '温宿县', '652900', NULL, 'd3e6ae62f99e479a91c3e767c243a91c');
INSERT INTO `city` VALUES (3465, '652923', '库车县', '652900', NULL, '0dc7e4249daf405486bfb912cb964251');
INSERT INTO `city` VALUES (3466, '652924', '沙雅县', '652900', NULL, '688eea0902094e029aa30dccc7c6cec3');
INSERT INTO `city` VALUES (3467, '652925', '新和县', '652900', NULL, '46c01c4c2f854c3a951d8e91f8718085');
INSERT INTO `city` VALUES (3468, '652926', '拜城县', '652900', NULL, '739459de4c8b4290842a7206725d1fb6');
INSERT INTO `city` VALUES (3469, '652927', '乌什县', '652900', NULL, 'ae82320bcac24893b853c901cbea6eec');
INSERT INTO `city` VALUES (3470, '652928', '阿瓦提县', '652900', NULL, '3f0641fe465046d1a9095eda9590423f');
INSERT INTO `city` VALUES (3471, '652929', '柯坪县', '652900', NULL, '16a3fce4e7be492392f10c390a68761c');
INSERT INTO `city` VALUES (3472, '653001', '阿图什市', '653000', NULL, '9d4fcd87b7dd46d2a7e33a9a9cec8b62');
INSERT INTO `city` VALUES (3473, '653022', '阿克陶县', '653000', NULL, '7a784b3938254ca88c0a41d30f00b009');
INSERT INTO `city` VALUES (3474, '653023', '阿合奇县', '653000', NULL, 'a858ec96e6234168ad644216db564502');
INSERT INTO `city` VALUES (3475, '653024', '乌恰县', '653000', NULL, '99b0a03122b64fca9dfec2da3245c1a3');
INSERT INTO `city` VALUES (3476, '653101', '喀什市', '653100', NULL, '063a3d988cca4122b05a71f0c32b08d2');
INSERT INTO `city` VALUES (3477, '653121', '疏附县', '653100', NULL, 'd82668c33bc9462db15cf389ff514177');
INSERT INTO `city` VALUES (3478, '653122', '疏勒县', '653100', NULL, '1261298dfa724159b2d523d7041423bc');
INSERT INTO `city` VALUES (3479, '653123', '英吉沙县', '653100', NULL, '96a16c12111343c3918e640adaf587c0');
INSERT INTO `city` VALUES (3480, '653124', '泽普县', '653100', NULL, '225994c84f924df19fc7d0abde3d2a6c');
INSERT INTO `city` VALUES (3481, '653125', '莎车县', '653100', NULL, '2a44890d377d487ea7460c11080472ee');
INSERT INTO `city` VALUES (3482, '653126', '叶城县', '653100', NULL, 'eb83da09a105435eae688979b216ce9f');
INSERT INTO `city` VALUES (3483, '653127', '麦盖提县', '653100', NULL, 'eb89c870ed2b48e2bb351c95ffa82387');
INSERT INTO `city` VALUES (3484, '653128', '岳普湖县', '653100', NULL, '59804eb385cf4bc09a96902f84a4f0a3');
INSERT INTO `city` VALUES (3485, '653129', '伽师县', '653100', NULL, 'a52520e900d142419c70e8cd8d47eb61');
INSERT INTO `city` VALUES (3486, '653130', '巴楚县', '653100', NULL, '337164af46184db5b30049060cf5765d');
INSERT INTO `city` VALUES (3487, '653131', '塔什库尔干塔吉克自治县', '653100', NULL, 'e78b1a8ce44a4576af0a106ac1f68eb4');
INSERT INTO `city` VALUES (3488, '653201', '和田市', '653200', NULL, 'f1b0a56570b44ed0934001c385753fef');
INSERT INTO `city` VALUES (3489, '653221', '和田县', '653200', NULL, '05f2b26edb8041708c1b90b7b5d8f962');
INSERT INTO `city` VALUES (3490, '653222', '墨玉县', '653200', NULL, 'f966b74087d143a8a80c67bb0952324b');
INSERT INTO `city` VALUES (3491, '653223', '皮山县', '653200', NULL, 'b198f2ea52c643acb89baa8dc18762ff');
INSERT INTO `city` VALUES (3492, '653224', '洛浦县', '653200', NULL, 'dc7d9cc52654418c9c3b25df6b3f0f06');
INSERT INTO `city` VALUES (3493, '653225', '策勒县', '653200', NULL, '1555e16ac3b949afba400895af89f947');
INSERT INTO `city` VALUES (3494, '653226', '于田县', '653200', NULL, '40923b40df4b4f5ba7682f9da8ef1782');
INSERT INTO `city` VALUES (3495, '653227', '民丰县', '653200', NULL, 'e96bc3d92f3d47a78d5729a1b0e8e800');
INSERT INTO `city` VALUES (3496, '654002', '伊宁市', '654000', NULL, 'fc9717a8d1b84485ba453f74d324d110');
INSERT INTO `city` VALUES (3497, '654003', '奎屯市', '654000', NULL, '2cd3ec1f13104f17988ae7b34b622acb');
INSERT INTO `city` VALUES (3498, '654021', '伊宁县', '654000', NULL, 'b4cc6a031d0f43e093adca91f2422d30');
INSERT INTO `city` VALUES (3499, '654022', '察布查尔锡伯自治县', '654000', NULL, 'b157a5114e104ea88e45e5917979cc79');
INSERT INTO `city` VALUES (3500, '654023', '霍城县', '654000', NULL, '59f695620e7f4a6d9bb6c8986b068d63');
INSERT INTO `city` VALUES (3501, '654024', '巩留县', '654000', NULL, 'ab9a8e9d34a74e5daadb7ddac921eec3');
INSERT INTO `city` VALUES (3502, '654025', '新源县', '654000', NULL, '095b24a3583e4e9f93dc3a52bfc79572');
INSERT INTO `city` VALUES (3503, '654026', '昭苏县', '654000', NULL, '6ff21987dd0e434e9072eb15c90df91e');
INSERT INTO `city` VALUES (3504, '654027', '特克斯县', '654000', NULL, 'c9c65f51ec4044029b9ba7b37d60101b');
INSERT INTO `city` VALUES (3505, '654028', '尼勒克县', '654000', NULL, '5f295f5773b74b50a72d3293247a47bc');
INSERT INTO `city` VALUES (3506, '654201', '塔城市', '654200', NULL, '7f3c614a3a844f0cb90bf6bf1e09e7d3');
INSERT INTO `city` VALUES (3507, '654202', '乌苏市', '654200', NULL, '1ba80dcef0694f328a3c3a74b1d9a424');
INSERT INTO `city` VALUES (3508, '654221', '额敏县', '654200', NULL, '3c77a4df2592480e863880ddc3435131');
INSERT INTO `city` VALUES (3509, '654223', '沙湾县', '654200', NULL, '3ff47f2d46c04a63b9fcd6a67a993358');
INSERT INTO `city` VALUES (3510, '654224', '托里县', '654200', NULL, 'ba505ab7724444e9b33ce22b13004cb3');
INSERT INTO `city` VALUES (3511, '654225', '裕民县', '654200', NULL, 'c86756b5413f404a944b2d00aec74ef3');
INSERT INTO `city` VALUES (3512, '654226', '和布克赛尔蒙古自治县', '654200', NULL, '741fd29e244247a282158eb8c699e26d');
INSERT INTO `city` VALUES (3513, '654301', '阿勒泰市', '654300', NULL, 'b4d9f375170147afa55808fbb1320eed');
INSERT INTO `city` VALUES (3514, '654321', '布尔津县', '654300', NULL, '4b87f15e4dd24fe7bcb19f956197f86a');
INSERT INTO `city` VALUES (3515, '654322', '富蕴县', '654300', NULL, 'ab97eceab7fc41098fee3576d8f86878');
INSERT INTO `city` VALUES (3516, '654323', '福海县', '654300', NULL, '897f5ed1a2a64a82b18edfe9334831ad');
INSERT INTO `city` VALUES (3517, '654324', '哈巴河县', '654300', NULL, '52defef7786640e796a59359a750b87f');
INSERT INTO `city` VALUES (3518, '654325', '青河县', '654300', NULL, 'df417f62d97b491f98f35c25501883c4');
INSERT INTO `city` VALUES (3519, '654326', '吉木乃县', '654300', NULL, '2e2d3e72f708497d9c083ee2b263096b');
INSERT INTO `city` VALUES (3520, '659001', '石河子市', '659000', NULL, 'b304d945234840e78fdeaad38d51e0ff');
INSERT INTO `city` VALUES (3521, '659002', '阿拉尔市', '659000', NULL, '8645217a8050498fb0ed49582ab8ecb9');
INSERT INTO `city` VALUES (3522, '659003', '图木舒克市', '659000', NULL, '9e323c4563954bcea69d6731d3d832d4');
INSERT INTO `city` VALUES (3523, '659004', '五家渠市', '659000', NULL, 'a619ca0cb6d54827bc4d1e2759203bd0');

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠卷表id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '优惠卷名称',
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优惠券描述',
  `type` int(1) NULL DEFAULT NULL COMMENT '类型{1：满减，2：直减，3折扣}',
  `discount_point` decimal(20, 2) NULL DEFAULT 0.00 COMMENT '折扣条件',
  `discount` decimal(20, 2) NULL DEFAULT NULL COMMENT '优惠价格',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `status` int(1) NULL DEFAULT 0 COMMENT '状态{1：禁用，0：启用}',
  `total` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '发放数量',
  `provide` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '已发数量',
  `used` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '已用数量',
  `rule` int(1) UNSIGNED NULL DEFAULT NULL COMMENT '分发规则{1：主动分发，2：下单分发，3：用户领取，4：中奖分发，5：一元三张}',
  `brand_id` int(11) NOT NULL COMMENT '品牌id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES (1, '直减券', '超级优惠', 2, 0.00, 50.00, '2019-11-21 14:43:21', '2019-12-29 14:43:33', 0, 5000, 0, 1, 3, 1, '2019-11-21 14:44:45', '2019-12-11 13:54:56');
INSERT INTO `coupon` VALUES (5, '折扣卷', '一元三张1', 3, 0.00, 0.80, '2019-11-19 00:00:00', '2023-11-30 00:00:00', 0, 5000, 6, 3, 5, 1, '2019-11-27 10:31:36', '2020-01-07 11:14:36');
INSERT INTO `coupon` VALUES (6, '满减券', '一元三张2', 1, 10.00, 1.00, '2019-11-11 00:00:00', '2020-11-30 00:00:00', 0, 1000, 6, 1, 5, 1, '2019-11-27 10:38:07', '2020-01-07 11:13:37');
INSERT INTO `coupon` VALUES (7, '直减券', '一元三张3', 2, 0.00, 2.00, '2019-11-03 00:00:00', '2021-11-30 00:00:00', 0, 5000, 6, 2, 5, 1, '2019-11-27 10:38:41', '2020-01-07 11:16:08');

-- ----------------------------
-- Table structure for coupon_brand
-- ----------------------------
DROP TABLE IF EXISTS `coupon_brand`;
CREATE TABLE `coupon_brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `coupon_id` int(11) NULL DEFAULT NULL COMMENT '优惠券id',
  `brand_id` int(11) NULL DEFAULT NULL COMMENT '品牌id',
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券和品牌关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_brand
-- ----------------------------
INSERT INTO `coupon_brand` VALUES (5, 2, 1, '2019-11-27 11:45:07');
INSERT INTO `coupon_brand` VALUES (6, 2, 2, '2019-11-27 11:45:24');
INSERT INTO `coupon_brand` VALUES (59, 1, 1, NULL);
INSERT INTO `coupon_brand` VALUES (72, 5, 1, NULL);
INSERT INTO `coupon_brand` VALUES (73, 5, 2, NULL);
INSERT INTO `coupon_brand` VALUES (74, 5, 4, NULL);
INSERT INTO `coupon_brand` VALUES (75, 5, 3, NULL);
INSERT INTO `coupon_brand` VALUES (76, 6, 1, NULL);
INSERT INTO `coupon_brand` VALUES (77, 6, 2, NULL);
INSERT INTO `coupon_brand` VALUES (78, 6, 3, NULL);
INSERT INTO `coupon_brand` VALUES (79, 6, 4, NULL);
INSERT INTO `coupon_brand` VALUES (80, 7, 1, NULL);
INSERT INTO `coupon_brand` VALUES (81, 7, 2, NULL);
INSERT INTO `coupon_brand` VALUES (82, 7, 3, NULL);
INSERT INTO `coupon_brand` VALUES (83, 7, 4, NULL);

-- ----------------------------
-- Table structure for coupon_customer
-- ----------------------------
DROP TABLE IF EXISTS `coupon_customer`;
CREATE TABLE `coupon_customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `open_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户openId',
  `coupon_id` int(11) NULL DEFAULT NULL COMMENT '优惠卷id',
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间，领取时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_customer
-- ----------------------------
INSERT INTO `coupon_customer` VALUES (40, 'o7sMs5IYarmR7dAeP-WUDtPKH1mI', 6, '2020-01-07 11:13:37');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `open_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信小程序唯一id',
  `union_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信用户唯一id',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '上级id',
  `member_num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_cs_0900_ai_ci NULL DEFAULT NULL COMMENT '会员号',
  `m_id` int(11) NULL DEFAULT NULL COMMENT '等级表id',
  `bonus` decimal(20, 2) NULL DEFAULT 0.00 COMMENT '佣金余额',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '成交订单数',
  `sum` decimal(20, 2) NULL DEFAULT 0.00 COMMENT '成交总金额',
  `nick_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信名称',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `sex` int(1) NULL DEFAULT NULL COMMENT '性别：0：女，1：男',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `last_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次交易时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `head_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '客户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (24, 'o7sMs5BxWyqTouC8PFnRgyxh6VOI', NULL, 0, '191220811164971', 71, 961.00, 3, 69.00, 'ᴀᴅᴀ ғᴇ ғᴇ👿', NULL, NULL, NULL, NULL, '2019-12-20 14:02:13', '2019-12-20 11:06:07', '2019-12-31 15:33:45', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ7tRgJahu1jlj198eOPUNtzIM8roibcg0dXibRXg8gRbsPUogTe1ibLI0dwyiadcC9D5gNr88GOHNggg/132');
INSERT INTO `customer` VALUES (25, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', NULL, 24, '191220811251668', 71, 934.00, 4, 66.00, '豆泥丸', NULL, '17622337766', 1, '上海市 嘉定区', '2019-12-31 15:54:02', '2019-12-20 11:07:32', '2019-12-31 15:54:02', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJxuqvwAmGFHyweRoNF7hx60HkhlM9EWaZl0E9zr7EQkkOK01amWPia8Zicjh0a8N9r0gb9JFrrZ2RA/132');
INSERT INTO `customer` VALUES (29, 'o7sMs5IYarmR7dAeP-WUDtPKH1mI', NULL, 0, '191223092139913', 78, 581.20, 14, 487.80, '', NULL, NULL, NULL, NULL, '2020-01-07 11:41:53', '2019-12-23 17:08:59', '2020-01-20 11:21:32', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIiaTRg0qVyTZX8hHJgfABz1OnO6NH0ic6lg0Ujhjo9ibBYGB04xwXhX0wcwj4FobJ8hDSnFibTDMndKA/132');

-- ----------------------------
-- Table structure for customer_coupon
-- ----------------------------
DROP TABLE IF EXISTS `customer_coupon`;
CREATE TABLE `customer_coupon`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `open_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小程序open id',
  `status` int(1) NULL DEFAULT 0 COMMENT '状态：1：已支付，0未支付',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1008 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '一元三张优惠券表，状态是0的表示未支付，没有生成优惠券，状态是1的表示已经支付，生成了优惠券\r\n创建时间表示点击支付的时间，更新时间表示支付的时间' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_coupon
-- ----------------------------
INSERT INTO `customer_coupon` VALUES (1007, 'o7sMs5IYarmR7dAeP-WUDtPKH1mI', 1, '2020-01-07 11:13:37', '2020-01-07 11:13:30');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '反馈内容',
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对应用户openid',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '反馈信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES (1, NULL, 'erwer', 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', '2019-11-26 13:50:49');
INSERT INTO `feedback` VALUES (2, NULL, '给对方给对方', 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', '2019-11-26 13:53:57');
INSERT INTO `feedback` VALUES (6, NULL, '可口可乐了可口可乐', 'o7sMs5BxWyqTouC8PFnRgyxh6VOI', '2019-12-31 10:23:12');
INSERT INTO `feedback` VALUES (7, NULL, '？来咯哦哦哦哦哦哦', 'o7sMs5BxWyqTouC8PFnRgyxh6VOI', '2019-12-31 10:23:40');

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `img_url` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片url',
  `type` smallint(6) NULL DEFAULT NULL COMMENT '图片类型(0:轮播图;1:品牌图片;2:产品图片;3:产品详情图片',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_uid` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `update_uid` int(11) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 368 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储所有图片信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES (1, 'q0lhgg606.bkt.clouddn.com/496de7b341504978803cedffdecc852c.png', 1, '2019-11-14 12:36:07', 1, 1, '2019-11-14 12:36:07', NULL);
INSERT INTO `image` VALUES (2, 'q0lhgg606.bkt.clouddn.com/9d18fd18368049feac6526e02bb7c7d8.png', 1, '2019-11-14 12:36:45', 1, 1, '2019-11-14 12:36:45', NULL);
INSERT INTO `image` VALUES (3, 'q0lhgg606.bkt.clouddn.com/0c881c1340494b2ba0601a9e55e2c63d.png', 1, '2019-11-14 12:36:55', 1, 1, '2019-11-14 12:36:55', NULL);
INSERT INTO `image` VALUES (30, 'q0lhgg606.bkt.clouddn.com/a0b30649dc7947fdb10014595f9bcd70.png', 1, '2019-11-14 13:10:33', 1, 1, '2019-11-14 13:10:33', NULL);
INSERT INTO `image` VALUES (31, 'q0lhgg606.bkt.clouddn.com/114d8629632144e488433874fbd91ee2.png', 1, '2019-11-14 15:59:04', 1, 1, '2019-11-14 15:59:04', NULL);
INSERT INTO `image` VALUES (93, 'q0lhgg606.bkt.clouddn.com/1c854a4ab6534c5d826bcf671a623baf.png', 2, '2019-11-14 19:21:15', 1, 1, '2019-11-14 19:21:15', NULL);
INSERT INTO `image` VALUES (94, 'q0lhgg606.bkt.clouddn.com/b19f4deea46e46b698ce39a602ca91b0.png', 2, '2019-11-14 19:21:15', 1, 1, '2019-11-14 19:21:15', NULL);
INSERT INTO `image` VALUES (95, 'q0lhgg606.bkt.clouddn.com/8bd7e4a738d54fb7a45442d78e9c4e75.png', 2, '2019-11-14 19:21:15', 1, 1, '2019-11-14 19:21:15', NULL);
INSERT INTO `image` VALUES (96, 'q0lhgg606.bkt.clouddn.com/905b034399514d2ebba5eace5a59a517.png', 2, '2019-11-14 19:21:15', 1, 1, '2019-11-14 19:21:15', NULL);
INSERT INTO `image` VALUES (97, 'q0lhgg606.bkt.clouddn.com/b0f9ca62335c4d6b83f3caba397d1442.png', 2, '2019-11-14 19:21:15', 1, 1, '2019-11-14 19:21:15', NULL);
INSERT INTO `image` VALUES (98, 'q0lhgg606.bkt.clouddn.com/064c7129ff3f48309a7c9f661c90209a.png', 3, '2019-11-14 19:21:16', 1, 1, '2019-11-14 19:21:16', NULL);
INSERT INTO `image` VALUES (99, 'q0lhgg606.bkt.clouddn.com/bfbcbd684bfd4bc2a7669a2974b93a51.png', 2, '2019-11-15 13:42:07', 1, 1, '2019-11-15 13:42:07', NULL);
INSERT INTO `image` VALUES (100, 'q0lhgg606.bkt.clouddn.com/f23884c4866d4a758226d8ce8f671d03.png', 3, '2019-11-15 13:42:08', 1, 1, '2019-11-15 13:42:08', NULL);
INSERT INTO `image` VALUES (101, 'q0lhgg606.bkt.clouddn.com/8b82ab10998e4e3bad7dc75d22227b29.png', 2, '2019-11-15 13:42:26', 1, 1, '2019-11-15 13:42:26', NULL);
INSERT INTO `image` VALUES (102, 'q0lhgg606.bkt.clouddn.com/cad33024975b465abd39837b7100770c.png', 3, '2019-11-15 13:42:28', 1, 1, '2019-11-15 13:42:28', NULL);
INSERT INTO `image` VALUES (103, 'q0lhgg606.bkt.clouddn.com/a5092f149373491da8b3fd8482a2f586.png', 2, '2019-11-15 13:42:44', 1, 1, '2019-11-15 13:42:44', NULL);
INSERT INTO `image` VALUES (104, 'q0lhgg606.bkt.clouddn.com/c3e24e18c2f743dd9ab3ee0479c67646.png', 3, '2019-11-15 13:42:49', 1, 1, '2019-11-15 13:42:49', NULL);
INSERT INTO `image` VALUES (115, 'q0lhgg606.bkt.clouddn.com/f5f1970a9a2249db98aa084ca04de0c3.jpg', 3, '2019-11-15 18:32:10', 1, 1, '2019-11-15 18:32:10', NULL);
INSERT INTO `image` VALUES (116, 'q0lhgg606.bkt.clouddn.com/2c0a567f9dd64f3e81abd890ab64e161.jpg', 3, '2019-11-15 18:33:05', 1, 1, '2019-11-15 18:33:05', NULL);
INSERT INTO `image` VALUES (117, 'q0lhgg606.bkt.clouddn.com/8dddaa43fe9646a685c620c5ac06064a.jpg', 3, '2019-11-15 18:38:15', 1, 1, '2019-11-15 18:38:15', NULL);
INSERT INTO `image` VALUES (118, 'q0lhgg606.bkt.clouddn.com/68e6f60c92114ee2b9bafe97907399a3.jpg', 3, '2019-11-15 18:47:10', 1, 1, '2019-11-15 18:47:10', NULL);
INSERT INTO `image` VALUES (119, 'q0lhgg606.bkt.clouddn.com/e0ec913b631b43f7b4c78be340c15c4c.jpg', 3, '2019-11-15 18:49:13', 1, 1, '2019-11-15 18:49:13', NULL);
INSERT INTO `image` VALUES (123, 'q0lhgg606.bkt.clouddn.com/c8b0fa485be840b6825474580431fc2d.jpg', 3, '2019-11-17 19:46:15', 1, 1, '2019-11-17 19:46:15', NULL);
INSERT INTO `image` VALUES (124, 'q0lhgg606.bkt.clouddn.com/8e5242425d02422aa0ff4f6dd65372d1.jpg', 4, '2019-11-18 10:41:37', 1, 1, '2019-11-18 10:41:37', NULL);
INSERT INTO `image` VALUES (125, 'q0lhgg606.bkt.clouddn.com/75a2dd274a6f4340be360ed98b7c5ad6.jpg', 4, '2019-11-18 10:46:04', 1, 1, '2019-11-18 10:46:04', NULL);
INSERT INTO `image` VALUES (126, 'q0lhgg606.bkt.clouddn.com/1b4bd8eab41e44288c4a11edcd0e77bb.jpg', 4, '2019-11-18 10:46:29', 1, 1, '2019-11-18 10:46:29', NULL);
INSERT INTO `image` VALUES (127, 'q0lhgg606.bkt.clouddn.com/c28d7701c58e4b72b4c2d8185cede564.jpg', 4, '2019-11-18 10:47:13', 1, 1, '2019-11-18 10:47:13', NULL);
INSERT INTO `image` VALUES (128, 'q0lhgg606.bkt.clouddn.com/f1e0a6246cb64d75bf4e495a6c061a8e.jpg', 4, '2019-11-18 10:58:15', 1, 1, '2019-11-18 10:58:15', NULL);
INSERT INTO `image` VALUES (129, 'q0lhgg606.bkt.clouddn.com/f30e11f4499b4f63b8f7a44e12a8ffd8.jpg', 4, '2019-11-18 11:04:49', 1, 1, '2019-11-18 11:04:49', NULL);
INSERT INTO `image` VALUES (130, 'q0lhgg606.bkt.clouddn.com/5fb65783f1474e21b453a54d4123de72.jpg', 4, '2019-11-18 11:09:09', 1, 1, '2019-11-18 11:09:09', NULL);
INSERT INTO `image` VALUES (131, 'q0lhgg606.bkt.clouddn.com/472b676acad443a29d7d574ae7198b5c.jpg', 4, '2019-11-18 11:14:08', 1, 1, '2019-11-18 11:14:08', NULL);
INSERT INTO `image` VALUES (132, 'q0lhgg606.bkt.clouddn.com/671d049c0dfc480c8144724295aac858.jpg', 4, '2019-11-18 11:15:17', 1, 1, '2019-11-18 11:15:17', NULL);
INSERT INTO `image` VALUES (133, 'q0lhgg606.bkt.clouddn.com/6d614ca721c5449eb680c161f1a64b95.jpg', 4, '2019-11-18 11:16:38', 1, 1, '2019-11-18 11:16:38', NULL);
INSERT INTO `image` VALUES (134, 'q0lhgg606.bkt.clouddn.com/5e14739016c24fc5b6f2f6dcacba5645.jpg', 4, '2019-11-18 11:17:38', 1, 1, '2019-11-18 11:17:38', NULL);
INSERT INTO `image` VALUES (135, 'q0lhgg606.bkt.clouddn.com/72954034e2ba4b299efbf7933f55e582.jpg', 4, '2019-11-18 11:19:14', 1, 1, '2019-11-18 11:19:14', NULL);
INSERT INTO `image` VALUES (136, 'q0lhgg606.bkt.clouddn.com/5aada5809fa64a2da3fc699e3f77ea1d.jpg', 4, '2019-11-18 11:20:16', 1, 1, '2019-11-18 11:20:16', NULL);
INSERT INTO `image` VALUES (137, 'q0lhgg606.bkt.clouddn.com/16b288114205474483ba7b1e1bde3e36.jpg', 4, '2019-11-18 11:41:36', 1, 1, '2019-11-18 11:41:36', NULL);
INSERT INTO `image` VALUES (138, 'q0lhgg606.bkt.clouddn.com/231818c6aed34ebe9b54c8b1003a6ba5.jpg', 4, '2019-11-18 11:46:23', 1, 1, '2019-11-18 11:46:23', NULL);
INSERT INTO `image` VALUES (139, 'q0lhgg606.bkt.clouddn.com/82c2431130d64cb6ae8b337a5e68e2fc.jpg', 4, '2019-11-18 11:46:44', 1, 1, '2019-11-18 11:46:44', NULL);
INSERT INTO `image` VALUES (140, 'q0lhgg606.bkt.clouddn.com/cc3726b4b4604659a36038c09a99cc0f.jpg', 4, '2019-11-18 11:47:54', 1, 1, '2019-11-18 11:47:54', NULL);
INSERT INTO `image` VALUES (141, 'q0lhgg606.bkt.clouddn.com/a5e7e1330a1647b7ac285fb087a026da.jpg', 4, '2019-11-18 11:49:55', 1, 1, '2019-11-18 11:49:55', NULL);
INSERT INTO `image` VALUES (142, 'q0lhgg606.bkt.clouddn.com/c8cbf6e2f0a74e39805e88d126e0be40.jpg', 4, '2019-11-18 12:10:19', 1, 1, '2019-11-18 12:10:19', NULL);
INSERT INTO `image` VALUES (143, 'q0lhgg606.bkt.clouddn.com/26244774893645a4bb002c8e6181e2b4.jpg', 4, '2019-11-18 12:15:29', 1, 1, '2019-11-18 12:15:29', NULL);
INSERT INTO `image` VALUES (144, 'q0lhgg606.bkt.clouddn.com/53262fefbe3a40e783a9930c92368e45.jpg', 4, '2019-11-18 12:16:25', 1, 1, '2019-11-18 12:16:25', NULL);
INSERT INTO `image` VALUES (145, 'q0lhgg606.bkt.clouddn.com/640fd6c3b5824bac9a7d1274fc9520ab.jpg', 4, '2019-11-18 12:22:07', 1, 1, '2019-11-18 12:22:07', NULL);
INSERT INTO `image` VALUES (146, 'q0lhgg606.bkt.clouddn.com/06dc819cd77b44c4b6a3d129e7245504.jpg', 4, '2019-11-18 12:22:18', 1, 1, '2019-11-18 12:22:18', NULL);
INSERT INTO `image` VALUES (147, 'q0lhgg606.bkt.clouddn.com/0bc759b07508496b801125f849557428.jpg', 4, '2019-11-18 12:38:25', 1, 1, '2019-11-18 12:38:25', NULL);
INSERT INTO `image` VALUES (148, 'q0lhgg606.bkt.clouddn.com/5402ec98888648ccb228116807ece7db.jpg', 4, '2019-11-18 12:50:04', 1, 1, '2019-11-18 12:50:04', NULL);
INSERT INTO `image` VALUES (149, 'q0lhgg606.bkt.clouddn.com/bdf9881d954341debe45fecd4e695a94.jpg', 4, '2019-11-18 12:50:07', 1, 1, '2019-11-18 12:50:07', NULL);
INSERT INTO `image` VALUES (150, 'q0lhgg606.bkt.clouddn.com/b5f8901f8cec497ba3cf4bef83d32353.jpg', 4, '2019-11-18 12:51:27', 1, 1, '2019-11-18 12:51:27', NULL);
INSERT INTO `image` VALUES (151, 'q0lhgg606.bkt.clouddn.com/ce3fd0857cc84b2497e5fcdd9f05455e.jpg', 4, '2019-11-18 12:51:38', 1, 1, '2019-11-18 12:51:38', NULL);
INSERT INTO `image` VALUES (152, 'q0lhgg606.bkt.clouddn.com/f9032d726f724fc191272d4305c18a38.jpg', 4, '2019-11-18 12:52:23', 1, 1, '2019-11-18 12:52:23', NULL);
INSERT INTO `image` VALUES (153, 'q0lhgg606.bkt.clouddn.com/f64f03561f214f668dcc8d13a13142a6.jpg', 4, '2019-11-18 12:52:36', 1, 1, '2019-11-18 12:52:36', NULL);
INSERT INTO `image` VALUES (154, 'q0lhgg606.bkt.clouddn.com/90f78d8e2bbd4603b7a8941a1d50dcb8.jpg', 4, '2019-11-18 12:53:07', 1, 1, '2019-11-18 12:53:07', NULL);
INSERT INTO `image` VALUES (155, 'q0lhgg606.bkt.clouddn.com/596ab271691647a09ddc0b0dd432f161.jpg', 4, '2019-11-18 12:53:14', 1, 1, '2019-11-18 12:53:14', NULL);
INSERT INTO `image` VALUES (156, 'q0lhgg606.bkt.clouddn.com/294d85b119f34124a169392fbd8f5347.jpg', 4, '2019-11-18 12:54:22', 1, 1, '2019-11-18 12:54:22', NULL);
INSERT INTO `image` VALUES (157, 'q0lhgg606.bkt.clouddn.com/2c2ae5178ffb4453a0440fce0ca6b2d2.jpg', 4, '2019-11-18 13:02:39', 1, 1, '2019-11-18 13:02:39', NULL);
INSERT INTO `image` VALUES (158, 'q0lhgg606.bkt.clouddn.com/96baceeefbba4b518afc55ca81d012b1.jpg', 4, '2019-11-18 13:03:44', 1, 1, '2019-11-18 13:03:44', NULL);
INSERT INTO `image` VALUES (159, 'q0lhgg606.bkt.clouddn.com/91dcf75255484abcb32cb543d11c2962.jpg', 4, '2019-11-18 13:03:46', 1, 1, '2019-11-18 13:03:46', NULL);
INSERT INTO `image` VALUES (160, 'q0lhgg606.bkt.clouddn.com/d5e98f63c66d4ed4919ffd5266f11423.jpg', 4, '2019-11-18 16:27:54', 1, 1, '2019-11-18 16:27:54', NULL);
INSERT INTO `image` VALUES (161, 'q0lhgg606.bkt.clouddn.com/aa78743fbcf04a46ba787d4020a12b39.jpg', 4, '2019-11-18 16:27:56', 1, 1, '2019-11-18 16:27:56', NULL);
INSERT INTO `image` VALUES (188, 'q2r4oxbsd.bkt.clouddn.com/81a44118378d4ec9a38d050cfe1b1ac0.png', 0, '2019-11-19 11:21:23', 1, 1, '2019-12-20 18:30:49', 0);
INSERT INTO `image` VALUES (193, 'q0lhgg606.bkt.clouddn.com/172db9bbb41a4b29bca61510a2bb2097.png', NULL, '2019-11-19 11:42:15', 1, 1, '2019-11-19 11:42:15', NULL);
INSERT INTO `image` VALUES (194, 'q0lhgg606.bkt.clouddn.com/9da80c7a093c4369918ac2bf909d3fd3.png', NULL, '2019-11-19 12:50:50', 1, 1, '2019-11-19 12:50:50', NULL);
INSERT INTO `image` VALUES (195, 'q0lhgg606.bkt.clouddn.com/b0596523f8e94fa88f277c144d1bf3ad.png', NULL, '2019-11-19 13:10:44', 1, 1, '2019-11-19 13:10:44', NULL);
INSERT INTO `image` VALUES (197, 'q0lhgg606.bkt.clouddn.com/0ec0d618d274400fbeea6ebcfba65f1a.png', 2, '2019-11-19 17:14:54', 1, 1, '2019-11-19 17:14:54', 0);
INSERT INTO `image` VALUES (198, 'q0lhgg606.bkt.clouddn.com/ca04b866cf864d6aa8ee1199fe19f556.png', 2, '2019-11-19 17:14:55', 1, 1, '2019-11-19 17:14:55', 0);
INSERT INTO `image` VALUES (199, 'q0lhgg606.bkt.clouddn.com/5b4260b0eb724f1dbf08a9498277b64a.png', 2, '2019-11-19 17:14:55', 1, 1, '2019-11-19 17:14:55', 0);
INSERT INTO `image` VALUES (200, 'q0lhgg606.bkt.clouddn.com/b7ad29e82e384fe2b4e4e16e2ac685da.png', 2, '2019-11-19 17:14:55', 1, 1, '2019-11-19 17:14:55', 0);
INSERT INTO `image` VALUES (201, 'q0lhgg606.bkt.clouddn.com/32b8400204e54c6bb7ded807c9b0f4dd.png', 2, '2019-11-19 17:14:55', 1, 1, '2019-11-19 17:14:55', 0);
INSERT INTO `image` VALUES (202, 'q0lhgg606.bkt.clouddn.com/73d5941123bc4db8b07f95bdc5cebde7.png', 2, '2019-11-19 17:14:55', 1, 1, '2019-11-19 17:14:55', 0);
INSERT INTO `image` VALUES (203, 'q0lhgg606.bkt.clouddn.com/d6ffeb0b63a54463ab01726032e2e24d.png', 3, '2019-11-19 17:14:56', 1, 1, '2019-11-19 17:14:56', 0);
INSERT INTO `image` VALUES (204, 'q0lhgg606.bkt.clouddn.com/3eeb8d077bcd442fbca71f52a1dbea3a.png', 2, '2019-11-19 19:43:11', 1, 1, '2019-11-19 19:43:11', 0);
INSERT INTO `image` VALUES (205, 'q0lhgg606.bkt.clouddn.com/9db959fc5ca24c87a11de5884d9414cf.png', 2, '2019-11-19 19:43:11', 1, 1, '2019-11-19 19:43:11', 0);
INSERT INTO `image` VALUES (206, 'q0lhgg606.bkt.clouddn.com/39cc5a327af74cdbb0e5f13fe611f0ad.png', 2, '2019-11-19 19:43:11', 1, 1, '2019-11-19 19:43:11', 0);
INSERT INTO `image` VALUES (207, 'q0lhgg606.bkt.clouddn.com/c118033d53d84542b2b035c63775b0aa.png', 2, '2019-11-19 19:44:57', 1, 1, '2019-11-19 19:44:57', 0);
INSERT INTO `image` VALUES (208, 'q0lhgg606.bkt.clouddn.com/0146da212bf348f2860ec0c01f60ae9c.png', 2, '2019-11-19 19:44:57', 1, 1, '2019-11-19 19:44:57', 0);
INSERT INTO `image` VALUES (209, 'q0lhgg606.bkt.clouddn.com/dfd8dff1e9814ad5918eb5cb3800211b.png', 2, '2019-11-19 19:46:36', 1, 1, '2019-11-19 19:46:36', 0);
INSERT INTO `image` VALUES (210, 'q0lhgg606.bkt.clouddn.com/8260242ec55c409a876cd4c0f247b416.png', 2, '2019-11-19 19:46:36', 1, 1, '2019-11-19 19:46:36', 0);
INSERT INTO `image` VALUES (211, 'q0lhgg606.bkt.clouddn.com/0a0f60086cc94e468711951280383a58.png', 2, '2019-11-19 19:50:34', 1, 1, '2019-11-19 19:50:34', 0);
INSERT INTO `image` VALUES (212, 'q0lhgg606.bkt.clouddn.com/005266861da74847bf7a4670cc7869e7.png', 2, '2019-11-19 19:50:34', 1, 1, '2019-11-19 19:50:34', 0);
INSERT INTO `image` VALUES (213, 'q0lhgg606.bkt.clouddn.com/9a6b5c974f8b4cffae9baf4c5c79a468.png', 2, '2019-11-19 19:50:34', 1, 1, '2019-11-19 19:50:34', 0);
INSERT INTO `image` VALUES (214, 'q0lhgg606.bkt.clouddn.com/760e139b88114f3fa91bd4396ab5b0cb.png', 2, '2019-11-19 19:50:34', 1, 1, '2019-11-19 19:50:34', 0);
INSERT INTO `image` VALUES (215, 'q0lhgg606.bkt.clouddn.com/1d5a46e5c1a7437aafddd34b169a4c84.png', 2, '2019-11-19 19:59:55', 1, 1, '2019-11-19 19:59:55', 0);
INSERT INTO `image` VALUES (216, 'q0lhgg606.bkt.clouddn.com/781683a0480a464e87740536e6b8ef2e.png', 2, '2019-11-19 19:59:55', 1, 1, '2019-11-19 19:59:55', 0);
INSERT INTO `image` VALUES (217, 'q0lhgg606.bkt.clouddn.com/ebb951c4cb734125a41fbf0cb90f80b6.png', 2, '2019-11-19 19:59:55', 1, 1, '2019-11-19 19:59:55', 0);
INSERT INTO `image` VALUES (218, 'q0lhgg606.bkt.clouddn.com/7b7cf9d5a0bc4a0bae0ff004bbe61159.png', 2, '2019-11-19 19:59:55', 1, 1, '2019-11-19 19:59:55', 0);
INSERT INTO `image` VALUES (219, 'q0lhgg606.bkt.clouddn.com/705afd69b8904fe39b27909d70a8ca66.png', 2, '2019-11-19 19:59:55', 1, 1, '2019-11-19 19:59:55', 0);
INSERT INTO `image` VALUES (220, 'q0lhgg606.bkt.clouddn.com/bbd0e9f5b29e44029ce4659f5c785fe5.png', 3, '2019-11-19 19:59:58', 1, 1, '2019-11-19 19:59:58', 0);
INSERT INTO `image` VALUES (221, 'q0lhgg606.bkt.clouddn.com/25d7820bade6443eaf71497baba1cf98.png', 2, '2019-11-19 20:04:05', 1, 1, '2019-11-19 20:04:05', 0);
INSERT INTO `image` VALUES (222, 'q0lhgg606.bkt.clouddn.com/025b7008e0244654a84e380d8fea84e4.png', 3, '2019-11-19 20:04:24', 1, 1, '2019-11-19 20:04:24', 0);
INSERT INTO `image` VALUES (223, 'q0lhgg606.bkt.clouddn.com/5bc340614de44b44be0a85dc5fba9cd9.png', 2, '2019-11-19 20:45:18', 1, 1, '2019-11-19 20:45:18', 0);
INSERT INTO `image` VALUES (224, 'q0lhgg606.bkt.clouddn.com/d78385dceb024b00a0b0a061c4ba5930.png', 2, '2019-11-19 20:45:18', 1, 1, '2019-11-19 20:45:18', 0);
INSERT INTO `image` VALUES (225, 'q0lhgg606.bkt.clouddn.com/4de698370dc24caf9fc6700f3e262a00.png', 2, '2019-11-19 20:45:18', 1, 1, '2019-11-19 20:45:18', 0);
INSERT INTO `image` VALUES (226, 'q0lhgg606.bkt.clouddn.com/49ab31fdc7b6411cac10f6b1880ee2a5.png', 2, '2019-11-19 20:45:18', 1, 1, '2019-11-19 20:45:18', 0);
INSERT INTO `image` VALUES (227, 'q0lhgg606.bkt.clouddn.com/097fa7677ab54d29b6f086c818f62fc9.png', 2, '2019-11-19 20:45:18', 1, 1, '2019-11-19 20:45:18', 0);
INSERT INTO `image` VALUES (228, 'q0lhgg606.bkt.clouddn.com/9e6909bcd41f41acb956885127bd44bf.png', 2, '2019-11-19 20:45:18', 1, 1, '2019-11-19 20:45:18', 0);
INSERT INTO `image` VALUES (229, 'q0lhgg606.bkt.clouddn.com/bf3c59561ef349638bd0729308211308.png', 2, '2019-11-19 20:45:34', 1, 1, '2019-11-19 20:45:34', 0);
INSERT INTO `image` VALUES (230, 'q0lhgg606.bkt.clouddn.com/dad5f94b81104f80861e8fddc7978f5e.png', 2, '2019-11-19 20:45:34', 1, 1, '2019-11-19 20:45:34', 0);
INSERT INTO `image` VALUES (231, 'q0lhgg606.bkt.clouddn.com/ad1463e635dd4514966dc34cbbc96fbb.png', 2, '2019-11-19 20:45:34', 1, 1, '2019-11-19 20:45:34', 0);
INSERT INTO `image` VALUES (232, 'q0lhgg606.bkt.clouddn.com/75b0c46b9c514b418c9ae5b8223c7b8a.png', 2, '2019-11-19 20:45:34', 1, 1, '2019-11-19 20:45:34', 0);
INSERT INTO `image` VALUES (233, 'q0lhgg606.bkt.clouddn.com/291052d638eb4354b71a098ff085a221.png', 2, '2019-11-19 20:45:49', 1, 1, '2019-11-19 20:45:49', 0);
INSERT INTO `image` VALUES (234, 'q0lhgg606.bkt.clouddn.com/e6b318f1af644d1a9215373fa012dfa6.png', 2, '2019-11-19 20:45:49', 1, 1, '2019-11-19 20:45:49', 0);
INSERT INTO `image` VALUES (235, 'q0lhgg606.bkt.clouddn.com/f2bb1792520941039346bc4710afb3d1.png', 2, '2019-11-19 20:45:49', 1, 1, '2019-11-19 20:45:49', 0);
INSERT INTO `image` VALUES (236, 'q0lhgg606.bkt.clouddn.com/2a0dc39458f1470d8f5ec8e5fbbe7f0c.png', 2, '2019-11-19 20:45:49', 1, 1, '2019-11-19 20:45:49', 0);
INSERT INTO `image` VALUES (237, 'q0lhgg606.bkt.clouddn.com/a779992bf7514119bc7666353ebed40d.png', 2, '2019-11-19 20:45:50', 1, 1, '2019-11-19 20:45:50', 0);
INSERT INTO `image` VALUES (238, 'q0lhgg606.bkt.clouddn.com/2ea6191e15194691a411cbcbd839ce5d.png', 2, '2019-11-19 20:45:50', 1, 1, '2019-11-19 20:45:50', 0);
INSERT INTO `image` VALUES (239, 'q2r4oxbsd.bkt.clouddn.com/5c54502f63d3416597b1ab2c3871a4d6.jpeg', 0, '2019-11-20 15:40:03', 1, 1, '2019-12-20 18:30:57', 0);
INSERT INTO `image` VALUES (240, 'q2r4oxbsd.bkt.clouddn.com/2f67a420cf954442b1a4d345871bc60c.jpg', 0, '2019-11-20 15:40:16', 1, 1, '2019-12-20 18:31:28', 0);
INSERT INTO `image` VALUES (249, 'q2r4oxbsd.bkt.clouddn.com/5c88b43b6cdb4207a73fccf815f6f9e6.jpg', 0, '2019-11-20 15:45:28', 1, 1, '2019-12-20 18:31:23', 0);
INSERT INTO `image` VALUES (250, 'q2r4oxbsd.bkt.clouddn.com/a0c18754143f4093844def0017ec8768.png', 0, '2019-11-20 15:45:50', 1, 1, '2019-12-20 18:31:16', 0);
INSERT INTO `image` VALUES (251, 'q0lhgg606.bkt.clouddn.com/009569a413ed45719b7035f0e61b5de5.jpg', 2, '2019-11-20 15:46:18', 1, 1, '2019-11-20 15:46:18', 0);
INSERT INTO `image` VALUES (252, 'q0lhgg606.bkt.clouddn.com/580185dda0c944e085d49b87bb45945e.jpg', 2, '2019-11-20 15:46:19', 1, 1, '2019-11-20 15:46:19', 0);
INSERT INTO `image` VALUES (253, 'q0lhgg606.bkt.clouddn.com/c5f6a6cca09849688dcbe8e053cfd57c.jpg', 2, '2019-11-20 15:46:20', 1, 1, '2019-11-20 15:46:20', 0);
INSERT INTO `image` VALUES (254, 'q0lhgg606.bkt.clouddn.com/e08e7582b8ed454ba877b18c021a9725.jpeg', 2, '2019-11-20 15:46:21', 1, 1, '2019-11-20 15:46:21', 0);
INSERT INTO `image` VALUES (255, 'q0lhgg606.bkt.clouddn.com/302be3acaba045cca692ef33653f7031.jpg', 3, '2019-11-20 15:51:47', 1, 1, '2019-11-20 15:51:47', 0);
INSERT INTO `image` VALUES (256, 'q0lhgg606.bkt.clouddn.com/961a1421a5644ff4b87ec69cfe4d1d29.png', NULL, '2019-11-20 15:53:38', 1, 1, '2019-11-20 15:53:38', NULL);
INSERT INTO `image` VALUES (257, 'q0lhgg606.bkt.clouddn.com/871a8f1d8f2e4d3c93842293405266e2.png', NULL, '2019-11-20 15:53:46', 1, 1, '2019-11-20 15:53:46', NULL);
INSERT INTO `image` VALUES (258, 'q0lhgg606.bkt.clouddn.com/11bb3884bcae425c8b3abb444645d251.png', NULL, '2019-11-20 15:53:52', 1, 1, '2019-11-20 15:53:52', NULL);
INSERT INTO `image` VALUES (259, 'q0lhgg606.bkt.clouddn.com/009e1b8d9a6a4cf2ad01af3045bd7c66.png', NULL, '2019-11-20 15:53:57', 1, 1, '2019-11-20 15:53:57', NULL);
INSERT INTO `image` VALUES (260, 'q0lhgg606.bkt.clouddn.com/8d8e0b00be8e4d2fb01c3c7fc7927d58.png', 1, '2019-11-20 15:58:55', 1, 1, '2019-11-20 15:58:55', NULL);
INSERT INTO `image` VALUES (261, 'q0lhgg606.bkt.clouddn.com/f0baab765df744bc9fb14f437ceaa02a.png', 1, '2019-11-20 15:59:30', 1, 1, '2019-11-20 15:59:30', NULL);
INSERT INTO `image` VALUES (262, 'q0lhgg606.bkt.clouddn.com/09d60935d2904480a5edf209adbc4e95.png', 1, '2019-11-20 15:59:38', 1, 1, '2019-11-20 15:59:38', NULL);
INSERT INTO `image` VALUES (263, 'q0lhgg606.bkt.clouddn.com/60d6072623044f2e847873911d7f668d.png', 1, '2019-11-20 15:59:43', 1, 1, '2019-11-20 15:59:43', NULL);
INSERT INTO `image` VALUES (264, 'q0lhgg606.bkt.clouddn.com/8c2e6e2073b245108494b208f9eeb667.png', 2, '2019-11-20 16:00:13', 1, 1, '2019-11-20 16:00:13', 0);
INSERT INTO `image` VALUES (265, 'q0lhgg606.bkt.clouddn.com/54ea6ea16eae43f7b46b38dabd96b1b3.jpg', 2, '2019-11-20 16:00:14', 1, 1, '2019-11-20 16:00:14', 0);
INSERT INTO `image` VALUES (266, 'q0lhgg606.bkt.clouddn.com/4bea6fb83b5f431f8518fa114a2c33f5.jpg', 2, '2019-11-20 16:00:14', 1, 1, '2019-11-20 16:00:14', 0);
INSERT INTO `image` VALUES (267, 'q0lhgg606.bkt.clouddn.com/4a74050730094b5e8b4859507806886d.jpg', 2, '2019-11-20 16:00:14', 1, 1, '2019-11-20 16:00:14', 0);
INSERT INTO `image` VALUES (268, 'q0lhgg606.bkt.clouddn.com/0459d45d8cda455dba68a2a1e8bb04bf.jpeg', 2, '2019-11-20 16:00:14', 1, 1, '2019-11-20 16:00:14', 0);
INSERT INTO `image` VALUES (269, 'q0lhgg606.bkt.clouddn.com/7be186998efe4e5089295d9ce391646f.png', 2, '2019-11-20 16:00:14', 1, 1, '2019-11-20 16:00:14', 0);
INSERT INTO `image` VALUES (270, 'q0lhgg606.bkt.clouddn.com/91a2afb9862c4a11836dd27b1d602f49.jpg', 3, '2019-11-20 16:00:18', 1, 1, '2019-11-20 16:00:18', 0);
INSERT INTO `image` VALUES (271, 'q0lhgg606.bkt.clouddn.com/9b75bd7701164c34bfa68de472820202.jpg', 2, '2019-11-20 16:00:34', 1, 1, '2019-11-20 16:00:34', 0);
INSERT INTO `image` VALUES (272, 'q0lhgg606.bkt.clouddn.com/7711cf4a8d66470eab529c0e89201d1f.jpg', 2, '2019-11-20 16:00:34', 1, 1, '2019-11-20 16:00:34', 0);
INSERT INTO `image` VALUES (273, 'q0lhgg606.bkt.clouddn.com/602c4ae13a714247a751ca9315fe0006.jpeg', 2, '2019-11-20 16:00:34', 1, 1, '2019-11-20 16:00:34', 0);
INSERT INTO `image` VALUES (274, 'q0lhgg606.bkt.clouddn.com/49311a4226944bb2bf05262ab7ab8b9a.jpg', 3, '2019-11-20 16:00:38', 1, 1, '2019-11-20 16:00:38', 0);
INSERT INTO `image` VALUES (275, 'q0lhgg606.bkt.clouddn.com/605495236d634175b13d6c3514e4b6a2.jpg', 3, '2019-11-20 16:00:53', 1, 1, '2019-11-20 16:00:53', 0);
INSERT INTO `image` VALUES (276, 'q0lhgg606.bkt.clouddn.com/17c62b1c514547fb845f2b15125dde23.jpg', 3, '2019-11-20 16:43:18', 1, 1, '2019-11-20 16:43:18', 0);
INSERT INTO `image` VALUES (277, 'q0lhgg606.bkt.clouddn.com/993c854d0eb64e5dbacdb94ae241daf2.png', 3, '2019-11-20 16:44:48', 1, 1, '2019-11-20 16:44:48', 0);
INSERT INTO `image` VALUES (278, 'q0lhgg606.bkt.clouddn.com/66a46298af584288a2cbb94146238ce0.png', 3, '2019-11-20 16:44:55', 1, 1, '2019-11-20 16:44:55', 0);
INSERT INTO `image` VALUES (279, 'q0lhgg606.bkt.clouddn.com/a6a2ccf03dd147d9a91398c66271cb2a.png', 3, '2019-11-20 16:45:04', 1, 1, '2019-11-20 16:45:04', 0);
INSERT INTO `image` VALUES (280, 'q0lhgg606.bkt.clouddn.com/c65390ac4dbb465885cc224f967fb9ea.png', 3, '2019-11-20 16:45:12', 1, 1, '2019-11-20 16:45:12', 0);
INSERT INTO `image` VALUES (281, 'q0lhgg606.bkt.clouddn.com/f0588525ef824858a460c45cb7304775.jpg', 2, '2019-11-23 19:09:08', 1, 1, '2019-11-23 19:09:08', 0);
INSERT INTO `image` VALUES (282, 'q0lhgg606.bkt.clouddn.com/94adcab23bd84992a77b23c5af3dffc8.png', 2, '2019-11-23 19:09:08', 1, 1, '2019-11-23 19:09:08', 0);
INSERT INTO `image` VALUES (283, 'q0lhgg606.bkt.clouddn.com/a913472a59fb4c83b13b0f0882100646.jpg', 3, '2019-11-23 19:09:09', 1, 1, '2019-11-23 19:09:09', 0);
INSERT INTO `image` VALUES (284, 'q0lhgg606.bkt.clouddn.com/9490494e1e204c438b1576b03f255568.png', 3, '2019-11-23 19:09:13', 1, 1, '2019-11-23 19:09:13', 0);
INSERT INTO `image` VALUES (285, 'q0lhgg606.bkt.clouddn.com/d70392a8a80440ae871c1e36886d2fdc.png', 2, '2019-11-23 19:12:37', 1, 1, '2019-11-23 19:12:37', 0);
INSERT INTO `image` VALUES (286, 'q0lhgg606.bkt.clouddn.com/9c44404f123a46f29959b4e97774fb97.jpg', 2, '2019-11-23 19:12:37', 1, 1, '2019-11-23 19:12:37', 0);
INSERT INTO `image` VALUES (287, 'q0lhgg606.bkt.clouddn.com/2d3f484142d34f28ace9eb9c5b332433.jpg', 3, '2019-11-23 19:12:38', 1, 1, '2019-11-23 19:12:38', 0);
INSERT INTO `image` VALUES (288, 'q0lhgg606.bkt.clouddn.com/ac963f776d5e45a59de71fa309761ca7.png', 3, '2019-11-23 19:12:41', 1, 1, '2019-11-23 19:12:41', 0);
INSERT INTO `image` VALUES (289, 'q0lhgg606.bkt.clouddn.com/9bb2eafc84424f99a1c32ae47776f1f2.jpg', 2, '2019-11-23 19:14:54', 1, 1, '2019-11-23 19:14:54', 0);
INSERT INTO `image` VALUES (290, 'q0lhgg606.bkt.clouddn.com/37d71d4fa8e54eb496885eadc8cdd3b1.png', 3, '2019-11-23 19:14:57', 1, 1, '2019-11-23 19:14:57', 0);
INSERT INTO `image` VALUES (291, 'q0lhgg606.bkt.clouddn.com/f868e7cd7fb4467ba602e6a3f3072c4f.png', 2, '2019-11-23 22:45:22', 1, 1, '2019-11-23 22:45:22', 0);
INSERT INTO `image` VALUES (292, 'q0lhgg606.bkt.clouddn.com/aa02ebc3e5784fa4865e29ead934d6c4.jpg', 2, '2019-11-23 22:45:22', 1, 1, '2019-11-23 22:45:22', 0);
INSERT INTO `image` VALUES (293, 'q0lhgg606.bkt.clouddn.com/bab2855b91224591aa8c319e1d499ca9.jpeg', 2, '2019-11-23 22:45:22', 1, 1, '2019-11-23 22:45:22', 0);
INSERT INTO `image` VALUES (294, 'q0lhgg606.bkt.clouddn.com/20b4725454274953909432951213f648.jpg', 2, '2019-11-23 22:45:22', 1, 1, '2019-11-23 22:45:22', 0);
INSERT INTO `image` VALUES (295, 'q0lhgg606.bkt.clouddn.com/03f2e37867cc42bc9124b791a60c03a8.png', 2, '2019-11-23 22:45:22', 1, 1, '2019-11-23 22:45:22', 0);
INSERT INTO `image` VALUES (296, 'q0lhgg606.bkt.clouddn.com/4d67dda48dde435f9a5def0f83cb71c2.png', 3, '2019-11-23 22:45:28', 1, 1, '2019-11-23 22:45:28', 0);
INSERT INTO `image` VALUES (297, 'q0lhgg606.bkt.clouddn.com/879bd815dc5f410ebe475b0b8ba8a60f.png', 3, '2019-11-23 22:45:31', 1, 1, '2019-11-23 22:45:31', 0);
INSERT INTO `image` VALUES (298, 'q0lhgg606.bkt.clouddn.com/33c4fbe1947745b3b7ac6e818890b3e0.jpg', 2, '2019-12-17 19:51:00', 1, 1, '2019-12-17 19:51:00', 0);
INSERT INTO `image` VALUES (299, 'q0lhgg606.bkt.clouddn.com/57d773b740f54f229daacb20b1492219.jpg', 2, '2019-12-17 19:51:00', 1, 1, '2019-12-17 19:51:00', 0);
INSERT INTO `image` VALUES (300, 'q0lhgg606.bkt.clouddn.com/a588ec809c5d41c7847b5b48402131d7.jpg', 2, '2019-12-17 19:51:00', 1, 1, '2019-12-17 19:51:00', 0);
INSERT INTO `image` VALUES (301, 'q0lhgg606.bkt.clouddn.com/f87071b9e5d9412f8f11b65d86c3fbfa.png', 2, '2019-12-17 19:51:00', 1, 1, '2019-12-17 19:51:00', 0);
INSERT INTO `image` VALUES (302, 'q0lhgg606.bkt.clouddn.com/f74009ddb1fa40a9b244464f65b2240e.jpg', 3, '2019-12-17 19:51:07', 1, 1, '2019-12-17 19:51:07', 0);
INSERT INTO `image` VALUES (303, 'q2r4oxbsd.bkt.clouddn.com/ffa1f4547d20497dafb7e0e4231e0926.png', 2, '2019-12-19 17:38:42', 1, 1, '2019-12-19 17:38:42', 0);
INSERT INTO `image` VALUES (304, 'q2r4oxbsd.bkt.clouddn.com/c9856653660843d58e1e07f8c477499e.jpg', 2, '2019-12-19 17:38:42', 1, 1, '2019-12-19 17:38:42', 0);
INSERT INTO `image` VALUES (305, 'q2r4oxbsd.bkt.clouddn.com/8ff3290341364439aeadbf1b9d7092c1.png', 2, '2019-12-19 17:38:42', 1, 1, '2019-12-19 17:38:42', 0);
INSERT INTO `image` VALUES (306, 'q2r4oxbsd.bkt.clouddn.com/2ff9c111bf9f4a52b492c6422ac8a0bb.png', 3, '2019-12-19 17:39:02', 1, 1, '2019-12-19 17:39:02', 0);
INSERT INTO `image` VALUES (307, 'q2r4oxbsd.bkt.clouddn.com/c01e8f09e1f748868fcb6beafc9d90cc.png', 3, '2019-12-19 17:39:06', 1, 1, '2019-12-19 17:39:06', 0);
INSERT INTO `image` VALUES (308, 'q2r4oxbsd.bkt.clouddn.com/3ae17799251f409bb64df0fdb3f7f348.png', 1, '2019-12-19 17:39:44', 1, 1, '2019-12-19 17:39:44', NULL);
INSERT INTO `image` VALUES (309, 'q2r4oxbsd.bkt.clouddn.com/62bb9b8806a7452eb5fc50a3f74f23e6.png', 1, '2019-12-19 17:39:49', 1, 1, '2019-12-19 17:39:49', NULL);
INSERT INTO `image` VALUES (310, 'q2r4oxbsd.bkt.clouddn.com/6bb0e982cc1c416ba5fbf78f3202d669.png', 1, '2019-12-19 17:39:54', 1, 1, '2019-12-19 17:39:54', NULL);
INSERT INTO `image` VALUES (311, 'q2r4oxbsd.bkt.clouddn.com/9caa916efd5b43be91f9b366c09d4f2e.png', 1, '2019-12-19 17:39:59', 1, 1, '2019-12-19 17:39:59', NULL);
INSERT INTO `image` VALUES (312, 'q2r4oxbsd.bkt.clouddn.com/848b412a34ac4d9c876b0ade6fd3b09a.png', 3, '2019-12-19 17:40:12', 1, 1, '2019-12-19 17:40:12', 0);
INSERT INTO `image` VALUES (313, 'q2r4oxbsd.bkt.clouddn.com/f13f4cd520c8427f8e765225a0e43b8e.png', 2, '2019-12-19 17:40:29', 1, 1, '2019-12-19 17:40:29', 0);
INSERT INTO `image` VALUES (314, 'q2r4oxbsd.bkt.clouddn.com/bcdedafe50874c2f826f9643f5c8f5f5.png', 2, '2019-12-19 17:40:29', 1, 1, '2019-12-19 17:40:29', 0);
INSERT INTO `image` VALUES (315, 'q2r4oxbsd.bkt.clouddn.com/a389e3354c574778aee1e54283ed427b.jpg', 2, '2019-12-19 17:40:29', 1, 1, '2019-12-19 17:40:29', 0);
INSERT INTO `image` VALUES (316, 'q2r4oxbsd.bkt.clouddn.com/3d7a9cea19c64732b381891c0c5ae589.jpg', 2, '2019-12-19 17:40:29', 1, 1, '2019-12-19 17:40:29', 0);
INSERT INTO `image` VALUES (317, 'q2r4oxbsd.bkt.clouddn.com/6aed901cbb1348d8bd086d9779a10adb.jpg', 2, '2019-12-19 17:40:29', 1, 1, '2019-12-19 17:40:29', 0);
INSERT INTO `image` VALUES (318, 'q2r4oxbsd.bkt.clouddn.com/f772a0f6ea7943cda94b88121892534c.jpeg', 2, '2019-12-19 17:40:29', 1, 1, '2019-12-19 17:40:29', 0);
INSERT INTO `image` VALUES (319, 'q2r4oxbsd.bkt.clouddn.com/0584293ffdbe4669856aab76b0e3cc0a.png', 3, '2019-12-19 17:40:34', 1, 1, '2019-12-19 17:40:34', 0);
INSERT INTO `image` VALUES (320, 'q2r4oxbsd.bkt.clouddn.com/f22049bd79d049e49c793a7ec1e424be.jpg', 2, '2019-12-19 17:40:52', 1, 1, '2019-12-19 17:40:52', 0);
INSERT INTO `image` VALUES (321, 'q2r4oxbsd.bkt.clouddn.com/3cc80cf1ebba44c3a7acd5733c94f736.png', 2, '2019-12-19 17:40:52', 1, 1, '2019-12-19 17:40:52', 0);
INSERT INTO `image` VALUES (322, 'q2r4oxbsd.bkt.clouddn.com/778aa304691048b98360941f843846d3.jpg', 2, '2019-12-19 17:40:53', 1, 1, '2019-12-19 17:40:53', 0);
INSERT INTO `image` VALUES (323, 'q2r4oxbsd.bkt.clouddn.com/efe556a86f144c9496c2ec605e93d39d.jpeg', 2, '2019-12-19 17:40:53', 1, 1, '2019-12-19 17:40:53', 0);
INSERT INTO `image` VALUES (324, 'q2r4oxbsd.bkt.clouddn.com/74996e1b11cb4eff9edbc44756d5bc9c.png', 2, '2019-12-19 17:40:53', 1, 1, '2019-12-19 17:40:53', 0);
INSERT INTO `image` VALUES (325, 'q2r4oxbsd.bkt.clouddn.com/a2b3443b265a47d2a8d98c08a0667b49.jpg', 2, '2019-12-19 17:40:53', 1, 1, '2019-12-19 17:40:53', 0);
INSERT INTO `image` VALUES (326, 'q2r4oxbsd.bkt.clouddn.com/fe2afc4f36664fe8aea2b35458395903.png', 3, '2019-12-19 17:40:55', 1, 1, '2019-12-19 17:40:55', 0);
INSERT INTO `image` VALUES (327, 'q2r4oxbsd.bkt.clouddn.com/e1d8f8b643fb409fbbc0f033da3b11ac.jpg', 2, '2019-12-19 17:41:07', 1, 1, '2019-12-19 17:41:07', 0);
INSERT INTO `image` VALUES (328, 'q2r4oxbsd.bkt.clouddn.com/fbb2ce2537b849a08232a16c8b5c0ae6.jpeg', 2, '2019-12-19 17:41:07', 1, 1, '2019-12-19 17:41:07', 0);
INSERT INTO `image` VALUES (329, 'q2r4oxbsd.bkt.clouddn.com/c365d90f98e8481c8f3dab5b8c91dc2c.jpg', 2, '2019-12-19 17:41:07', 1, 1, '2019-12-19 17:41:07', 0);
INSERT INTO `image` VALUES (330, 'q2r4oxbsd.bkt.clouddn.com/77a98ca74daf45219c73335133a36c7f.png', 2, '2019-12-19 17:41:07', 1, 1, '2019-12-19 17:41:07', 0);
INSERT INTO `image` VALUES (331, 'q2r4oxbsd.bkt.clouddn.com/f8128001b4cd45548272ebe2aef6f4a5.png', 3, '2019-12-19 17:41:10', 1, 1, '2019-12-19 17:41:10', 0);
INSERT INTO `image` VALUES (332, 'q2r4oxbsd.bkt.clouddn.com/caa977a8efa74b8d9fbc04c1cca7e976.jpeg', 2, '2019-12-19 17:41:26', 1, 1, '2019-12-19 17:41:26', 0);
INSERT INTO `image` VALUES (333, 'q2r4oxbsd.bkt.clouddn.com/50df6567f35049d29c05f60789648c07.jpg', 2, '2019-12-19 17:41:27', 1, 1, '2019-12-19 17:41:27', 0);
INSERT INTO `image` VALUES (334, 'q2r4oxbsd.bkt.clouddn.com/91a83b8cb51d4082ad79ffc9a8d70316.jpg', 2, '2019-12-19 17:41:27', 1, 1, '2019-12-19 17:41:27', 0);
INSERT INTO `image` VALUES (335, 'q2r4oxbsd.bkt.clouddn.com/1d003ccb78044907bb4f71da0af3f312.png', 2, '2019-12-19 17:41:27', 1, 1, '2019-12-19 17:41:27', 0);
INSERT INTO `image` VALUES (336, 'q2r4oxbsd.bkt.clouddn.com/fbcd2b94a6324f8b8ae4e05d77b09f73.png', 3, '2019-12-19 17:41:29', 1, 1, '2019-12-19 17:41:29', 0);
INSERT INTO `image` VALUES (338, 'q2r4oxbsd.bkt.clouddn.com/bbd5515e0a9a4efaa8e73ad342f427ec.jpg', 0, '2019-12-20 18:30:54', 1, 1, '2019-12-20 18:31:11', 0);
INSERT INTO `image` VALUES (345, 'q0lhgg606.bkt.clouddn.com/f8df266e04e047b1ae83be1960d0d84c.jpg', 3, '2019-12-31 14:18:59', 1, 1, '2019-12-31 14:18:59', 0);
INSERT INTO `image` VALUES (346, 'q0lhgg606.bkt.clouddn.com/383fba6c61a947368b7811432371a066.png', 3, '2019-12-31 14:19:03', 1, 1, '2019-12-31 14:19:03', 0);
INSERT INTO `image` VALUES (347, 'q0lhgg606.bkt.clouddn.com/c2a69e67a7e942088d544a99cde2f2bc.jpg', 4, '2019-12-31 14:21:25', 1, 1, '2019-12-31 14:21:25', NULL);
INSERT INTO `image` VALUES (348, 'q0lhgg606.bkt.clouddn.com/adc50b91c52542fb8df3c18bac822f38.jpg', 4, '2019-12-31 14:21:29', 1, 1, '2019-12-31 14:21:29', NULL);
INSERT INTO `image` VALUES (349, 'q0lhgg606.bkt.clouddn.com/cebde2a5b00046a7bbf63434fea50e91.jpg', 4, '2019-12-31 14:22:17', 1, 1, '2019-12-31 14:22:17', NULL);
INSERT INTO `image` VALUES (350, 'q0lhgg606.bkt.clouddn.com/4dd6acb8214c4ef0bb28e0e4daa141ba.jpg', 4, '2019-12-31 14:23:37', 1, 1, '2019-12-31 14:23:37', NULL);
INSERT INTO `image` VALUES (351, 'q0lhgg606.bkt.clouddn.com/0eab8477c0374689b9ec61cadadaed53.jpg', 4, '2019-12-31 14:27:16', 1, 1, '2019-12-31 14:27:16', NULL);
INSERT INTO `image` VALUES (352, 'q0lhgg606.bkt.clouddn.com/b1f01a1db3f444448fa49fa670ad5486.png', 4, '2019-12-31 14:29:09', 1, 1, '2019-12-31 14:29:09', NULL);
INSERT INTO `image` VALUES (353, 'q2r4oxbsd.bkt.clouddn.com/8d03740276cf4fea8f37ca86a1501846.jpg', 4, '2019-12-31 14:39:03', 1, 1, '2019-12-31 14:39:03', NULL);
INSERT INTO `image` VALUES (354, 'q2r4oxbsd.bkt.clouddn.com/24a4b0de1f464585ac2f2564650ab91b.jpg', 4, '2019-12-31 14:39:06', 1, 1, '2019-12-31 14:39:06', NULL);
INSERT INTO `image` VALUES (355, 'q2r4oxbsd.bkt.clouddn.com/110ff33f08d2480386e5f4ade42582d3.png', 4, '2019-12-31 15:14:47', 1, 1, '2019-12-31 15:14:47', NULL);
INSERT INTO `image` VALUES (356, 'q2r4oxbsd.bkt.clouddn.com/f276d97f20a142aa931fbd143c49749c.jpg', 4, '2019-12-31 15:14:50', 1, 1, '2019-12-31 15:14:50', NULL);
INSERT INTO `image` VALUES (357, 'q2r4oxbsd.bkt.clouddn.com/407a24256aac48df8d3c80bb49b729d2.jpg', 4, '2019-12-31 15:22:26', 1, 1, '2019-12-31 15:22:26', NULL);
INSERT INTO `image` VALUES (358, 'q2r4oxbsd.bkt.clouddn.com/d6cfbdf97b83482e8bad85fc08917d6a.jpg', 4, '2019-12-31 15:22:29', 1, 1, '2019-12-31 15:22:29', NULL);
INSERT INTO `image` VALUES (359, 'q2r4oxbsd.bkt.clouddn.com/0066bc24ee544b44a17faae19c855b17.jpg', 4, '2019-12-31 15:25:01', 1, 1, '2019-12-31 15:25:01', NULL);
INSERT INTO `image` VALUES (360, 'q2r4oxbsd.bkt.clouddn.com/055fb7949afc415da81693dda26e639c.jpg', 4, '2019-12-31 15:25:04', 1, 1, '2019-12-31 15:25:04', NULL);
INSERT INTO `image` VALUES (361, 'q0lhgg606.bkt.clouddn.com/888d3d01fadb4e74acabae02448c39f9.jpg', 4, '2019-12-31 15:40:24', 1, 1, '2019-12-31 15:40:24', NULL);
INSERT INTO `image` VALUES (362, 'q0lhgg606.bkt.clouddn.com/b3f93c1436654ce5b3534134692b617b.jpg', 4, '2019-12-31 15:40:28', 1, 1, '2019-12-31 15:40:28', NULL);
INSERT INTO `image` VALUES (363, 'q2r4oxbsd.bkt.clouddn.com/6e93f03e039a4528a425835c92d53e66.jpg', 4, '2019-12-31 15:43:40', 1, 1, '2019-12-31 15:43:40', NULL);
INSERT INTO `image` VALUES (364, 'q2r4oxbsd.bkt.clouddn.com/72450a62e39043ceb53b5e9d0098c7ae.jpg', 4, '2019-12-31 15:43:45', 1, 1, '2019-12-31 15:43:45', NULL);
INSERT INTO `image` VALUES (365, 'q2r4oxbsd.bkt.clouddn.com/6fb1f894811143bdb6c168dbfc2a671e.jpg', 4, '2019-12-31 15:49:38', 1, 1, '2019-12-31 15:49:38', NULL);
INSERT INTO `image` VALUES (366, 'q2r4oxbsd.bkt.clouddn.com/748e42983b864fba860ee6dccc063cea.jpg', 0, '2020-01-08 16:52:35', 1, 1, '2020-01-08 16:52:35', 0);
INSERT INTO `image` VALUES (367, 'q2r4oxbsd.bkt.clouddn.com/5b38543c36864adab3a8c6fd40150243.png', 0, '2020-01-08 16:53:12', 1, 1, '2020-01-08 16:53:12', 0);

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label`  (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '产品标签id',
  `brand_id` int(11) NOT NULL COMMENT '标签类型id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签名',
  `status` int(1) UNSIGNED ZEROFILL NOT NULL DEFAULT 0 COMMENT '状态：0禁用，1启用',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of label
-- ----------------------------
INSERT INTO `label` VALUES (1, 3, '产品3', 0, '2019-11-23 16:13:24', '2019-12-31 16:12:28');
INSERT INTO `label` VALUES (2, 3, '产品2', 0, '2019-11-23 16:13:43', '2019-11-24 16:24:30');
INSERT INTO `label` VALUES (3, 2, '口味1', 0, '2019-11-23 16:14:01', '2019-11-24 16:24:45');
INSERT INTO `label` VALUES (5, 3, '产品1', 0, '2019-11-23 16:15:12', '2019-11-24 16:24:23');
INSERT INTO `label` VALUES (6, 4, '颜色1', 0, '2019-11-23 16:15:37', '2019-11-24 16:24:57');
INSERT INTO `label` VALUES (10, 1, '品牌2', 0, '2019-11-24 10:27:09', '2019-11-24 16:24:04');
INSERT INTO `label` VALUES (11, 2, '口味2', 0, '2019-11-24 10:27:22', '2019-11-24 16:25:04');
INSERT INTO `label` VALUES (12, 1, '品牌11', 0, '2019-11-24 16:23:52', '2019-11-24 16:23:52');
INSERT INTO `label` VALUES (13, 3, '产品4', 0, '2019-11-24 16:25:24', '2019-11-24 16:25:24');
INSERT INTO `label` VALUES (14, 2, '口味3', 0, '2019-11-24 16:25:35', '2019-11-24 16:25:35');
INSERT INTO `label` VALUES (15, 2, '口味4', 0, '2019-11-24 16:25:41', '2019-11-24 16:25:41');
INSERT INTO `label` VALUES (16, 4, '颜色2', 0, '2019-11-24 16:26:32', '2019-11-24 16:26:32');
INSERT INTO `label` VALUES (17, 4, '颜色3', 0, '2019-11-24 16:26:39', '2019-11-24 16:26:39');
INSERT INTO `label` VALUES (18, 4, '颜色4', 0, '2019-11-24 16:26:55', '2019-11-24 16:26:55');
INSERT INTO `label` VALUES (19, 1, '品牌3', 0, '2019-11-24 16:27:43', '2019-11-24 16:27:43');
INSERT INTO `label` VALUES (20, 1, '品牌4', 0, '2019-11-24 16:27:49', '2019-11-24 16:27:49');

-- ----------------------------
-- Table structure for label_brand
-- ----------------------------
DROP TABLE IF EXISTS `label_brand`;
CREATE TABLE `label_brand`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '品牌标签主键id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标签内容',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间\r\n',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `status` int(1) UNSIGNED ZEROFILL NOT NULL DEFAULT 0 COMMENT '状态：0正常，1禁用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '标签类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of label_brand
-- ----------------------------
INSERT INTO `label_brand` VALUES (1, '喜欢品牌去1', '2019-12-31 16:12:41', '2019-11-07 10:01:55', 0);
INSERT INTO `label_brand` VALUES (2, '喜欢口味', '2019-11-24 10:36:00', '2019-11-07 19:53:32', 0);
INSERT INTO `label_brand` VALUES (3, '喜欢产品', '2019-11-24 10:36:02', '2019-11-07 19:53:41', 0);
INSERT INTO `label_brand` VALUES (4, '喜欢颜色', '2019-11-28 18:18:27', '2019-11-08 09:51:47', 0);

-- ----------------------------
-- Table structure for label_customer
-- ----------------------------
DROP TABLE IF EXISTS `label_customer`;
CREATE TABLE `label_customer`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `label_id` int(11) NULL DEFAULT NULL COMMENT '标签id',
  `customer_id` int(11) NULL DEFAULT NULL COMMENT '会员id',
  `open_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信id',
  `brand_id` int(11) NULL DEFAULT NULL COMMENT '标签类型id',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of label_customer
-- ----------------------------
INSERT INTO `label_customer` VALUES (48, 3, 25, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', 2, '2019-12-20 11:09:00', '2019-12-20 11:09:00');
INSERT INTO `label_customer` VALUES (49, 11, 25, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', 2, '2019-12-20 11:09:00', '2019-12-20 11:09:00');
INSERT INTO `label_customer` VALUES (50, 14, 25, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', 2, '2019-12-20 11:09:00', '2019-12-20 11:09:00');
INSERT INTO `label_customer` VALUES (51, 1, 25, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', 3, '2019-12-20 11:09:05', '2019-12-20 11:09:05');
INSERT INTO `label_customer` VALUES (52, 2, 25, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', 3, '2019-12-20 11:09:05', '2019-12-20 11:09:05');
INSERT INTO `label_customer` VALUES (53, 5, 25, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', 3, '2019-12-20 11:09:05', '2019-12-20 11:09:05');
INSERT INTO `label_customer` VALUES (54, 6, 25, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', 4, '2019-12-20 11:09:09', '2019-12-20 11:09:09');
INSERT INTO `label_customer` VALUES (55, 16, 25, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', 4, '2019-12-20 11:09:09', '2019-12-20 11:09:09');
INSERT INTO `label_customer` VALUES (56, 17, 25, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', 4, '2019-12-20 11:09:09', '2019-12-20 11:09:09');
INSERT INTO `label_customer` VALUES (60, 10, 25, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', 1, '2019-12-20 17:46:56', '2019-12-20 17:46:56');
INSERT INTO `label_customer` VALUES (61, 12, 25, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', 1, '2019-12-20 17:46:56', '2019-12-20 17:46:56');
INSERT INTO `label_customer` VALUES (62, 19, 25, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', 1, '2019-12-20 17:46:56', '2019-12-20 17:46:56');

-- ----------------------------
-- Table structure for market_recommend
-- ----------------------------
DROP TABLE IF EXISTS `market_recommend`;
CREATE TABLE `market_recommend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '会员等级',
  `active_pid` int(11) NULL DEFAULT NULL COMMENT '参加活动商品id',
  `send_pid` int(11) NULL DEFAULT NULL COMMENT '领取商品id',
  `carriage_price` decimal(2, 0) NULL DEFAULT NULL COMMENT '运费',
  `people_num` int(11) NULL DEFAULT NULL COMMENT '可领取人数',
  `pay_return_money` decimal(2, 0) NULL DEFAULT NULL COMMENT '领取商品后返现价格',
  `buy_return_money` decimal(2, 0) NULL DEFAULT NULL COMMENT '购买指定商品后返现价格',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '状态',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `create_uid` int(11) NULL DEFAULT NULL,
  `update_uid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '推荐返礼信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of market_recommend
-- ----------------------------
INSERT INTO `market_recommend` VALUES (15, 71, 13, 14, 10, 10, 10, 10, 0, '2019-12-13 13:55:28', '2019-12-31 15:07:12', 1, 1);
INSERT INTO `market_recommend` VALUES (16, 71, 15, 18, 10, 10, 10, 10, 0, '2019-12-13 13:56:29', '2019-12-31 15:07:17', 1, 1);

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '素材名称',
  `sort_id` int(11) NOT NULL COMMENT '分类Id',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '素材图片地址',
  `status` int(1) UNSIGNED NULL DEFAULT 0 COMMENT '0正常，1删除',
  `width` int(5) NULL DEFAULT NULL COMMENT '宽',
  `high` int(5) NULL DEFAULT NULL COMMENT '高',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '素材表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of material
-- ----------------------------
INSERT INTO `material` VALUES (1, '灯笼', 1, 'q2r4oxbsd.bkt.clouddn.com/6fb1f894811143bdb6c168dbfc2a671e.jpg', 0, NULL, NULL, '2020-01-08 14:36:12', '2020-01-08 16:39:59');
INSERT INTO `material` VALUES (2, '123123213', 1, 'q2r4oxbsd.bkt.clouddn.com/c4d14d092853485fba6d0900e46e0519.jpg', 1, 512, 512, '2020-01-09 17:44:15', '2020-01-09 17:44:33');
INSERT INTO `material` VALUES (3, '春联', 8, 'q2r4oxbsd.bkt.clouddn.com/97b4093c1b45474ea67bb62726989a7f.jpg', 0, 600, 400, '2020-01-09 17:53:19', '2020-01-09 18:05:45');
INSERT INTO `material` VALUES (4, '圣诞前夕', 8, 'q2r4oxbsd.bkt.clouddn.com/79760b728cd04396a4ed42601a725b62.jpg', 1, 700, 1050, '2020-01-09 18:02:51', '2020-01-09 18:04:06');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '等级id',
  `level` int(11) NOT NULL COMMENT '等级',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '等级名称',
  `back_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会员卡背景图片',
  `upgrade` decimal(10, 2) NOT NULL COMMENT '升级条件',
  `special` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会员特权',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '等级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (71, 0, '普通会员', 'q2r4oxbsd.bkt.clouddn.com/6fb1f894811143bdb6c168dbfc2a671e.jpg', 0.00, 'q2r4oxbsd.bkt.clouddn.com/72450a62e39043ceb53b5e9d0098c7ae.jpg', '2019-11-14 14:15:26', '2020-01-06 17:18:41');
INSERT INTO `member` VALUES (77, 2, '高级会员', NULL, 200.00, NULL, '2020-01-20 10:25:24', '2020-01-20 10:25:24');
INSERT INTO `member` VALUES (78, 3, '超级会员', NULL, 300.00, NULL, '2020-01-20 10:26:06', '2020-01-20 10:26:15');
INSERT INTO `member` VALUES (79, 4, '超级超级会员', NULL, 600.00, NULL, '2020-01-20 11:03:11', '2020-01-20 11:03:11');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单号',
  `order_type` int(1) UNSIGNED ZEROFILL NULL DEFAULT 0 COMMENT '订单类型：0普通订单，1分享返礼订单，2分享返礼-赠送产品领取订单',
  `total_fee` decimal(20, 2) NOT NULL COMMENT '总金额',
  `actual_fee` decimal(20, 2) NOT NULL DEFAULT 0.00 COMMENT '实付金额',
  `coupon_id` int(10) NULL DEFAULT NULL COMMENT '活动id',
  `payment_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '支付类型：0微信支付，1佣金支付',
  `post_fee` decimal(20, 2) NULL DEFAULT NULL COMMENT '邮费',
  `customer_id` int(20) NULL DEFAULT NULL COMMENT '客户id',
  `product_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `num` int(4) NULL DEFAULT NULL COMMENT '购买数量',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品标题',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格,单位：分',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `invoice_type` int(1) NULL DEFAULT 0 COMMENT '发票类型：（0无发票，1普通发票，2电子发票，3增值税发票）',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '订单状态：（\r\n1：未付款，\r\n2：已付款，未发货，\r\n3：已发货，未收货\r\n4：已收货，未确认\r\n5：确认收货，未评价\r\n6：已评价）',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '下单时间',
  `pay_time` timestamp(0) NULL DEFAULT NULL COMMENT '支付时间',
  `consign_time` timestamp(0) NULL DEFAULT NULL COMMENT '发货时间',
  `end_time` timestamp(0) NULL DEFAULT NULL COMMENT '订单结束时间',
  `close_time` timestamp(0) NULL DEFAULT NULL COMMENT '交易关闭时间',
  `comment_time` timestamp(0) NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1519 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单主表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1507, 'YH20010736687558365', 0, 96.80, 0.00, 5, 1, 0.00, 29, 19, 11, 'p_test5', 11.00, 'q2r4oxbsd.bkt.clouddn.com/caa977a8efa74b8d9fbc04c1cca7e976.jpeg', 0, 2, '2020-01-07 11:14:36', '2020-01-07 11:15:27', NULL, NULL, '2020-01-07 11:44:36', NULL, '2020-01-07 11:15:27');
INSERT INTO `order` VALUES (1508, 'YH20010736696811066', 0, 97.00, 0.00, 7, 1, 0.00, 29, 19, 9, 'p_test5', 11.00, 'q2r4oxbsd.bkt.clouddn.com/caa977a8efa74b8d9fbc04c1cca7e976.jpeg', 0, 2, '2020-01-07 11:16:08', '2020-01-07 11:20:34', NULL, NULL, '2020-01-07 11:46:08', NULL, '2020-01-07 11:20:33');
INSERT INTO `order` VALUES (1510, 'YH20010736741828428', 0, 23.00, 0.00, NULL, 1, 12.00, 29, 19, 1, 'p_test5', 11.00, 'q2r4oxbsd.bkt.clouddn.com/caa977a8efa74b8d9fbc04c1cca7e976.jpeg', 0, 1, '2020-01-07 11:23:38', NULL, NULL, NULL, '2020-01-07 11:53:38', NULL, NULL);
INSERT INTO `order` VALUES (1511, 'YH20010736746896580', 1, 23.00, 0.00, NULL, 1, 12.00, 29, 15, 1, 'p_test3', 11.00, 'q2r4oxbsd.bkt.clouddn.com/3cc80cf1ebba44c3a7acd5733c94f736.png', 0, 1, '2020-01-07 11:24:29', NULL, NULL, NULL, '2020-01-07 11:54:29', NULL, NULL);
INSERT INTO `order` VALUES (1512, 'YH20010736748736334', 0, 23.00, 0.00, NULL, 1, 12.00, 29, 19, 1, 'p_test5', 11.00, 'q2r4oxbsd.bkt.clouddn.com/caa977a8efa74b8d9fbc04c1cca7e976.jpeg', 0, 1, '2020-01-07 11:24:47', NULL, NULL, NULL, '2020-01-07 11:54:47', NULL, NULL);
INSERT INTO `order` VALUES (1513, 'YH20010736753819910', 0, 23.00, 0.00, NULL, 1, 12.00, 29, 19, 1, 'p_test5', 11.00, 'q2r4oxbsd.bkt.clouddn.com/caa977a8efa74b8d9fbc04c1cca7e976.jpeg', 0, 2, '2020-01-07 11:25:38', '2020-01-07 11:34:02', NULL, NULL, '2020-01-07 11:55:38', NULL, '2020-01-07 11:34:01');
INSERT INTO `order` VALUES (1514, 'YH20010736756937297', 0, 23.00, 0.00, NULL, 1, 12.00, 25, 19, 1, 'p_test5', 11.00, 'q2r4oxbsd.bkt.clouddn.com/caa977a8efa74b8d9fbc04c1cca7e976.jpeg', 0, 1, '2020-01-07 11:26:09', NULL, NULL, NULL, '2020-01-07 11:56:09', NULL, NULL);
INSERT INTO `order` VALUES (1515, 'YH20010736806745392', 1, 23.00, 0.00, NULL, 1, 12.00, 29, 15, 1, 'p_test3', 11.00, 'q2r4oxbsd.bkt.clouddn.com/3cc80cf1ebba44c3a7acd5733c94f736.png', 0, 2, '2020-01-07 11:34:27', '2020-01-07 11:35:49', NULL, NULL, '2020-01-07 12:04:27', NULL, '2020-01-07 11:35:48');
INSERT INTO `order` VALUES (1517, 'YH20010736842147701', 0, 23.00, 0.00, NULL, 1, 12.00, 29, 19, 1, 'p_test5', 11.00, 'q2r4oxbsd.bkt.clouddn.com/caa977a8efa74b8d9fbc04c1cca7e976.jpeg', 0, 2, '2020-01-07 11:40:21', '2020-01-07 11:40:43', NULL, NULL, '2020-01-07 12:10:21', NULL, '2020-01-07 11:40:42');
INSERT INTO `order` VALUES (1518, 'YH20010736849804394', 0, 23.00, 0.00, NULL, 1, 12.00, 29, 19, 1, 'p_test5', 11.00, 'q2r4oxbsd.bkt.clouddn.com/caa977a8efa74b8d9fbc04c1cca7e976.jpeg', 0, 2, '2020-01-07 11:41:38', '2020-01-07 11:41:53', NULL, NULL, '2020-01-07 12:11:38', NULL, '2020-01-07 11:41:52');

-- ----------------------------
-- Table structure for order_logistics
-- ----------------------------
DROP TABLE IF EXISTS `order_logistics`;
CREATE TABLE `order_logistics`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单物流表id',
  `order_id` int(20) NOT NULL COMMENT '订单id',
  `logistics_number` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '物流单号',
  `logistics_company` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '物流公司名称',
  `addressee` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '收件人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '收件人手机号码',
  `province` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '市',
  `district` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区',
  `street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '街道',
  `postcode` int(6) NULL DEFAULT NULL COMMENT '邮编',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 358 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单物流表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_logistics
-- ----------------------------
INSERT INTO `order_logistics` VALUES (346, 1507, NULL, NULL, '马永凯', '15150900060', '上海市', '市辖区', '嘉定区', '好好说说吧', NULL, NULL, NULL);
INSERT INTO `order_logistics` VALUES (347, 1508, NULL, NULL, '马永凯', '15150900060', '上海市', '市辖区', '嘉定区', '好好说说吧', NULL, NULL, NULL);
INSERT INTO `order_logistics` VALUES (349, 1510, NULL, NULL, '马永凯', '15150900060', '上海市', '市辖区', '嘉定区', '好好说说吧', NULL, NULL, NULL);
INSERT INTO `order_logistics` VALUES (350, 1511, NULL, NULL, '马永凯', '15150900060', '上海市', '市辖区', '嘉定区', '好好说说吧', NULL, NULL, NULL);
INSERT INTO `order_logistics` VALUES (351, 1512, NULL, NULL, '马永凯', '15150900060', '上海市', '市辖区', '嘉定区', '好好说说吧', NULL, NULL, NULL);
INSERT INTO `order_logistics` VALUES (352, 1513, NULL, NULL, '马永凯', '15150900060', '上海市', '市辖区', '嘉定区', '好好说说吧', NULL, NULL, NULL);
INSERT INTO `order_logistics` VALUES (353, 1514, NULL, NULL, 'wang2', '18722334455', '山西省', '大同市', '新荣区', 'fdsfsdfewfrew2', NULL, NULL, NULL);
INSERT INTO `order_logistics` VALUES (354, 1515, NULL, NULL, '马永凯', '15150900060', '上海市', '市辖区', '嘉定区', '好好说说吧', NULL, NULL, NULL);
INSERT INTO `order_logistics` VALUES (356, 1517, NULL, NULL, '马永凯', '15150900060', '上海市', '市辖区', '嘉定区', '好好说说吧', NULL, NULL, NULL);
INSERT INTO `order_logistics` VALUES (357, 1518, NULL, NULL, '马永凯', '15150900060', '上海市', '市辖区', '嘉定区', '好好说说吧', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pay_record
-- ----------------------------
DROP TABLE IF EXISTS `pay_record`;
CREATE TABLE `pay_record`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `open_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户openId',
  `type` int(1) NOT NULL DEFAULT 0 COMMENT '消费类型：1消费，2返现',
  `pay` int(1) NOT NULL COMMENT '支付类型：0微信支付，1佣金支付',
  `sum` decimal(10, 2) NOT NULL COMMENT '交易金额',
  `bonus` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '佣金余额',
  `create_time` datetime(0) NOT NULL COMMENT '交易时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '交易记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay_record
-- ----------------------------
INSERT INTO `pay_record` VALUES (6, 'o7sMs5IYarmR7dAeP-WUDtPKH1mI', 1, 0, -1.00, 0.00, '2019-12-24 16:48:01');
INSERT INTO `pay_record` VALUES (7, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', 1, 1, -23.00, 934.00, '2019-12-31 15:54:02');
INSERT INTO `pay_record` VALUES (8, 'o7sMs5IYarmR7dAeP-WUDtPKH1mI', 1, 1, -11.00, 798.00, '2020-01-07 10:59:40');
INSERT INTO `pay_record` VALUES (9, 'o7sMs5IYarmR7dAeP-WUDtPKH1mI', 1, 0, -1.00, 0.00, '2020-01-07 11:13:37');
INSERT INTO `pay_record` VALUES (10, 'o7sMs5IYarmR7dAeP-WUDtPKH1mI', 1, 1, -96.80, 701.20, '2020-01-07 11:15:27');
INSERT INTO `pay_record` VALUES (11, 'o7sMs5IYarmR7dAeP-WUDtPKH1mI', 1, 1, -97.00, 604.20, '2020-01-07 11:20:34');
INSERT INTO `pay_record` VALUES (12, 'o7sMs5IYarmR7dAeP-WUDtPKH1mI', 1, 1, -23.00, 581.20, '2020-01-07 11:34:02');
INSERT INTO `pay_record` VALUES (13, 'o7sMs5IYarmR7dAeP-WUDtPKH1mI', 1, 0, -23.00, 0.00, '2020-01-07 11:35:49');
INSERT INTO `pay_record` VALUES (14, 'o7sMs5IYarmR7dAeP-WUDtPKH1mI', 1, 0, -23.00, 0.00, '2020-01-07 11:40:43');
INSERT INTO `pay_record` VALUES (15, 'o7sMs5IYarmR7dAeP-WUDtPKH1mI', 1, 0, -23.00, 0.00, '2020-01-07 11:41:53');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名称',
  `brand_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌id',
  `model_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板id',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '状态',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_uid` int(11) NULL DEFAULT NULL COMMENT '创建人ID',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_uid` int(11) NULL DEFAULT NULL COMMENT '修改人id',
  `stock` int(255) NULL DEFAULT NULL COMMENT '库存',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (13, 'p_test1', '1', NULL, 0, 1, '2019-11-15 13:42:29', 1, '2019-12-19 17:40:13', 1, 0);
INSERT INTO `product` VALUES (14, 'p_test2', '1', NULL, 0, 1, '2019-11-15 13:42:50', 1, '2019-12-31 15:50:37', 1, 3);
INSERT INTO `product` VALUES (15, 'p_test3', '2', NULL, 0, 1, '2019-11-19 17:15:03', 1, '2019-12-20 12:08:01', 1, 86);
INSERT INTO `product` VALUES (18, 'p_test4', '1', NULL, 0, 1, '2019-11-23 19:20:51', 1, '2019-12-19 17:41:11', 1, 98);
INSERT INTO `product` VALUES (19, 'p_test5', '1', NULL, 0, 5, '2019-12-17 19:51:16', 1, '2019-12-19 17:41:30', 1, 64);

-- ----------------------------
-- Table structure for product_carriage
-- ----------------------------
DROP TABLE IF EXISTS `product_carriage`;
CREATE TABLE `product_carriage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pid` int(11) NULL DEFAULT NULL COMMENT '产品Id',
  `cid` int(11) NULL DEFAULT NULL COMMENT '运费策略id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品运费策略关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_carriage
-- ----------------------------
INSERT INTO `product_carriage` VALUES (2, 13, 4);
INSERT INTO `product_carriage` VALUES (3, 14, 4);
INSERT INTO `product_carriage` VALUES (4, 15, 4);
INSERT INTO `product_carriage` VALUES (5, 18, 5);
INSERT INTO `product_carriage` VALUES (6, 19, 4);

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `p_id` int(11) NULL DEFAULT NULL COMMENT '产品id',
  `img_id` int(11) NULL DEFAULT NULL COMMENT '图片id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 164 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品_图片关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_image
-- ----------------------------
INSERT INTO `product_image` VALUES (135, 13, 303);
INSERT INTO `product_image` VALUES (136, 13, 304);
INSERT INTO `product_image` VALUES (137, 13, 305);
INSERT INTO `product_image` VALUES (139, 13, 312);
INSERT INTO `product_image` VALUES (140, 14, 313);
INSERT INTO `product_image` VALUES (141, 14, 314);
INSERT INTO `product_image` VALUES (142, 14, 316);
INSERT INTO `product_image` VALUES (143, 14, 315);
INSERT INTO `product_image` VALUES (144, 14, 317);
INSERT INTO `product_image` VALUES (145, 14, 318);
INSERT INTO `product_image` VALUES (146, 14, 319);
INSERT INTO `product_image` VALUES (147, 15, 321);
INSERT INTO `product_image` VALUES (148, 15, 320);
INSERT INTO `product_image` VALUES (149, 15, 322);
INSERT INTO `product_image` VALUES (150, 15, 323);
INSERT INTO `product_image` VALUES (151, 15, 324);
INSERT INTO `product_image` VALUES (152, 15, 325);
INSERT INTO `product_image` VALUES (153, 15, 326);
INSERT INTO `product_image` VALUES (154, 18, 327);
INSERT INTO `product_image` VALUES (155, 18, 328);
INSERT INTO `product_image` VALUES (156, 18, 329);
INSERT INTO `product_image` VALUES (157, 18, 330);
INSERT INTO `product_image` VALUES (158, 18, 331);
INSERT INTO `product_image` VALUES (159, 19, 332);
INSERT INTO `product_image` VALUES (160, 19, 333);
INSERT INTO `product_image` VALUES (161, 19, 334);
INSERT INTO `product_image` VALUES (162, 19, 335);
INSERT INTO `product_image` VALUES (163, 19, 336);

-- ----------------------------
-- Table structure for product_price
-- ----------------------------
DROP TABLE IF EXISTS `product_price`;
CREATE TABLE `product_price`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `pid` int(11) NULL DEFAULT NULL COMMENT '产品ID',
  `s_num` int(11) NULL DEFAULT NULL COMMENT '起始区间值',
  `e_num` int(11) NULL DEFAULT NULL COMMENT '结束区间值',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品价格配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_price
-- ----------------------------
INSERT INTO `product_price` VALUES (91, 13, 1, 3, 11.00);
INSERT INTO `product_price` VALUES (92, 13, 4, 5, 11.00);
INSERT INTO `product_price` VALUES (93, 13, 4, 999944, 11.00);
INSERT INTO `product_price` VALUES (95, 15, 1, 4, 11.00);
INSERT INTO `product_price` VALUES (96, 15, 11, 12, 11.00);
INSERT INTO `product_price` VALUES (97, 15, 221, 332, 11.00);
INSERT INTO `product_price` VALUES (98, 18, 1, 2, 11.00);
INSERT INTO `product_price` VALUES (99, 18, 3, 6, 11.00);
INSERT INTO `product_price` VALUES (100, 19, 1, 11, 11.00);
INSERT INTO `product_price` VALUES (101, 19, 12, 9999, 11.00);
INSERT INTO `product_price` VALUES (102, 14, 1, 3, 11.00);

-- ----------------------------
-- Table structure for recommend_customer
-- ----------------------------
DROP TABLE IF EXISTS `recommend_customer`;
CREATE TABLE `recommend_customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '订单id',
  `current_openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前用户id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `recommend_id` int(11) NULL DEFAULT NULL COMMENT '关联分享返礼的id',
  `cur_order_id` int(11) NULL DEFAULT NULL COMMENT '领取订单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '推荐返礼用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recommend_customer
-- ----------------------------
INSERT INTO `recommend_customer` VALUES (59, 1483, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', '2019-12-20 11:28:06', 15, 1484);
INSERT INTO `recommend_customer` VALUES (60, 1489, 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', '2019-12-20 14:02:54', 16, 1490);

-- ----------------------------
-- Table structure for recommend_order
-- ----------------------------
DROP TABLE IF EXISTS `recommend_order`;
CREATE TABLE `recommend_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `recommend_id` int(11) NULL DEFAULT NULL COMMENT '推荐返礼id',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '订单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '推荐返礼订单关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recommend_order
-- ----------------------------
INSERT INTO `recommend_order` VALUES (61, 15, 1483);
INSERT INTO `recommend_order` VALUES (62, 16, 1485);
INSERT INTO `recommend_order` VALUES (63, 16, 1486);
INSERT INTO `recommend_order` VALUES (64, 16, 1487);
INSERT INTO `recommend_order` VALUES (65, 16, 1488);
INSERT INTO `recommend_order` VALUES (66, 16, 1489);
INSERT INTO `recommend_order` VALUES (67, 16, 1491);
INSERT INTO `recommend_order` VALUES (68, 16, 1492);
INSERT INTO `recommend_order` VALUES (69, 16, 1493);
INSERT INTO `recommend_order` VALUES (70, 16, 1494);
INSERT INTO `recommend_order` VALUES (71, 16, 1495);
INSERT INTO `recommend_order` VALUES (72, 16, 1496);
INSERT INTO `recommend_order` VALUES (73, 16, 1502);
INSERT INTO `recommend_order` VALUES (74, 16, 1511);
INSERT INTO `recommend_order` VALUES (75, 16, 1515);

-- ----------------------------
-- Table structure for sort
-- ----------------------------
DROP TABLE IF EXISTS `sort`;
CREATE TABLE `sort`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型：1 模板分类，2 素材分类',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sort
-- ----------------------------
INSERT INTO `sort` VALUES (1, '春节', 2, '2020-01-07 14:40:36', '2020-01-07 14:40:38');
INSERT INTO `sort` VALUES (2, '冬天', 2, '2020-01-07 14:40:53', '2020-01-07 16:15:32');
INSERT INTO `sort` VALUES (3, '夏天', 1, '2020-01-07 15:03:58', '2020-01-07 15:03:58');
INSERT INTO `sort` VALUES (5, '发的说说 ', 1, '2020-01-07 15:09:32', '2020-01-07 17:24:47');
INSERT INTO `sort` VALUES (8, '圣诞节', 2, '2020-01-09 18:02:34', '2020-01-09 18:02:34');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `menu_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `path` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路径',
  `menu_type` smallint(2) NOT NULL COMMENT '类型:0:目录,1:菜单,2:按钮',
  `icon` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `create_uid` int(11) NOT NULL COMMENT '创建者ID',
  `update_uid` int(11) NOT NULL COMMENT '修改者ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  `status` smallint(2) NOT NULL COMMENT '状态 0：禁用 1：正常',
  `router` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由',
  `alias` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '别名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 145 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '权限管理', '', 1, 'layui-icon-set', 1, 1, '2018-11-27 14:52:10', '2019-11-08 16:15:47', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (23, 1, '用户管理', 'views/system/user/index.html', 2, 'layui-icon-username', 1, 1, '2018-11-27 15:10:32', '2019-11-07 19:48:17', 0, 'user', 'sys:user:list');
INSERT INTO `sys_menu` VALUES (24, 1, '角色管理', 'views/system/role/index.html', 2, 'layui-icon-face-surprised', 1, 1, '2018-11-27 15:16:59', '2019-10-31 17:41:56', 0, 'role', 'sys:role:list');
INSERT INTO `sys_menu` VALUES (25, 1, '菜单管理', 'views/system/menu/index.html', 2, 'layui-icon-template', 1, 1, '2018-11-27 15:17:59', '2018-12-12 15:37:35', 0, 'menu', 'sys:menu:list');
INSERT INTO `sys_menu` VALUES (26, 1, '资源管理', 'views/system/resource/index.html', 2, 'layui-icon-read', 1, 1, '2018-11-27 15:18:31', '2018-12-12 15:35:38', 0, 'resource', 'sys:resource:list');
INSERT INTO `sys_menu` VALUES (27, 26, '刷新资源', '', 3, 'layui-icon-refresh-3', 1, 1, '2018-11-27 15:19:15', '2018-12-12 15:35:14', 0, NULL, 'sys:resource:refresh');
INSERT INTO `sys_menu` VALUES (28, 25, '添加', '', 3, 'layui-icon-add-circle-fine', 1, 1, '2018-11-27 15:20:06', '2018-12-12 15:45:47', 0, NULL, 'sys:menu:add');
INSERT INTO `sys_menu` VALUES (29, 25, '修改', '', 3, 'layui-icon-senior', 1, 1, '2018-11-27 15:20:27', '2018-12-12 15:36:51', 0, NULL, 'sys:menu:edit');
INSERT INTO `sys_menu` VALUES (30, 25, '删除', '', 3, 'layui-icon-close', 1, 1, '2018-11-27 15:21:14', '2018-12-12 15:35:49', 0, NULL, 'sys:menu:delete');
INSERT INTO `sys_menu` VALUES (31, 24, '添加', '', 3, 'layui-icon-add-circle-fine', 1, 1, '2018-11-27 15:20:06', '2018-12-12 15:38:07', 0, NULL, 'sys:role:add');
INSERT INTO `sys_menu` VALUES (32, 24, '修改', '', 3, 'layui-icon-senior', 1, 1, '2018-11-27 15:20:27', '2018-12-12 15:44:19', 0, NULL, 'sys:role:edit');
INSERT INTO `sys_menu` VALUES (33, 24, '删除', '', 3, 'layui-icon-close', 1, 1, '2018-11-27 15:21:14', '2018-12-12 15:36:07', 0, NULL, 'sys:role:delete');
INSERT INTO `sys_menu` VALUES (34, 23, '添加', '', 3, 'layui-icon-add-circle-fine', 1, 1, '2018-11-27 15:20:06', '2018-12-12 15:44:04', 0, NULL, 'sys:user:add');
INSERT INTO `sys_menu` VALUES (35, 23, '修改', '', 3, 'layui-icon-senior', 1, 1, '2018-11-27 15:20:27', '2019-11-04 19:49:10', 0, NULL, 'sys:user:edit');
INSERT INTO `sys_menu` VALUES (36, 23, '重置密码', '', 3, 'layui-icon-fire', 1, 1, '2018-11-27 15:21:14', '2018-12-12 15:38:48', 0, NULL, 'sys:user:resetpwd');
INSERT INTO `sys_menu` VALUES (42, 24, '菜单授权', NULL, 3, 'layui-icon-auz', 1, 1, '2018-12-08 23:58:42', '2018-12-12 15:41:52', 0, NULL, 'sys:role:perm');
INSERT INTO `sys_menu` VALUES (47, 0, '模板管理', NULL, 1, 'layui-icon-theme', 1, 1, '2019-10-24 14:31:31', '2019-10-24 14:31:31', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (48, 0, '品牌管理', NULL, 1, 'layui-icon-layer', 1, 1, '2019-10-24 14:39:21', '2019-10-24 14:50:19', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (49, 0, '产品管理', NULL, 1, 'layui-icon-cellphone-fine', 1, 1, '2019-10-24 14:40:00', '2019-10-24 14:51:23', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (50, 0, '订单管理', NULL, 1, 'layui-icon-file-b', 1, 1, '2019-10-24 14:40:16', '2019-10-24 14:51:41', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (52, 0, '轮播图管理', NULL, 1, 'layui-icon-picture', 1, 1, '2019-10-24 14:41:09', '2019-10-24 14:56:35', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (53, 0, '会员管理', NULL, 1, 'layui-icon-username', 1, 1, '2019-10-24 14:41:29', '2019-11-15 13:56:16', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (54, 0, '优惠券管理', NULL, 1, 'layui-icon-list', 1, 1, '2019-10-24 14:41:43', '2019-10-24 14:55:37', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (55, 0, '数据分析', NULL, 1, 'layui-icon-chart-screen', 1, 1, '2019-10-24 14:41:55', '2019-10-24 14:55:55', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (56, 0, '店铺设置', NULL, 1, 'layui-icon-home', 1, 1, '2019-10-24 14:42:12', '2019-10-24 14:56:07', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (57, 0, '公众号设置', NULL, 1, 'layui-icon-login-wechat', 1, 1, '2019-10-24 14:42:31', '2019-10-24 14:56:14', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (59, 52, '轮播图', 'views/image/index.html', 2, NULL, 1, 1, '2019-10-31 16:09:58', '2019-11-19 10:55:17', 0, 'image', 'image:list');
INSERT INTO `sys_menu` VALUES (62, 59, '添加', NULL, 3, NULL, 1, 1, '2019-10-31 17:48:25', '2019-11-06 18:27:57', 0, NULL, 'image:add');
INSERT INTO `sys_menu` VALUES (67, 59, '修改', NULL, 3, NULL, 1, 1, '2019-11-01 14:35:48', '2019-11-01 16:16:14', 0, NULL, 'image:edit');
INSERT INTO `sys_menu` VALUES (68, 59, '删除', NULL, 3, NULL, 1, 1, '2019-11-01 14:37:16', '2019-11-01 14:56:09', 0, NULL, 'image:delete');
INSERT INTO `sys_menu` VALUES (69, 53, '客户', 'views/customer/index.html', 2, 'layui-icon-group', 1, 1, '2019-11-04 09:27:02', '2019-11-07 14:58:59', 0, 'customer', 'customer:list');
INSERT INTO `sys_menu` VALUES (70, 69, '添加', NULL, 3, 'layui-icon-add-circle-fine', 1, 1, '2019-11-04 09:29:44', '2019-11-07 15:04:28', 0, NULL, 'customer:add');
INSERT INTO `sys_menu` VALUES (71, 69, '详情', NULL, 3, 'layui-icon-senior', 1, 1, '2019-11-04 09:32:56', '2019-11-17 11:33:58', 0, NULL, 'customer:detail');
INSERT INTO `sys_menu` VALUES (72, 69, '修改等级', NULL, 3, 'layui-icon-close', 1, 1, '2019-11-04 09:34:02', '2019-11-17 14:08:30', 0, NULL, 'customer:update');
INSERT INTO `sys_menu` VALUES (73, 49, '产品列表', 'views/product/index.html', 2, NULL, 1, 1, '2019-11-04 17:03:28', '2019-11-23 22:44:00', 0, 'product', NULL);
INSERT INTO `sys_menu` VALUES (74, 73, '新增', NULL, 3, NULL, 1, 1, '2019-11-04 17:17:32', '2019-11-23 22:44:23', 0, NULL, 'product:add');
INSERT INTO `sys_menu` VALUES (75, 73, '修改', NULL, 3, NULL, 1, 1, '2019-11-04 17:39:56', '2019-11-19 14:01:10', 0, NULL, 'product:edit');
INSERT INTO `sys_menu` VALUES (76, 73, '删除', NULL, 3, NULL, 1, 1, '2019-11-04 17:40:45', '2019-11-04 17:40:45', 0, NULL, 'product:delete');
INSERT INTO `sys_menu` VALUES (78, 48, '品牌列表', 'views/brand/index.html', 2, NULL, 1, 1, '2019-11-06 15:04:36', '2019-11-19 11:27:29', 0, 'brand', 'brand:list');
INSERT INTO `sys_menu` VALUES (79, 78, '新增', NULL, 3, NULL, 1, 1, '2019-11-06 15:20:17', '2019-11-06 15:20:17', 0, NULL, 'brand:add');
INSERT INTO `sys_menu` VALUES (81, 78, '修改', NULL, 3, NULL, 1, 1, '2019-11-06 15:22:47', '2019-11-19 11:28:39', 0, NULL, 'brand:edit');
INSERT INTO `sys_menu` VALUES (82, 78, '删除', NULL, 3, NULL, 1, 1, '2019-11-06 15:23:23', '2019-11-06 15:23:23', 0, NULL, 'brand:delete');
INSERT INTO `sys_menu` VALUES (84, 50, '订单', 'views/order/index.html', 2, 'layui-icon-list', 1, 1, '2019-11-06 18:40:11', '2019-11-06 18:40:11', 0, 'order', 'order:list');
INSERT INTO `sys_menu` VALUES (86, 84, '详情', NULL, 3, 'layui-icon-senior', 1, 1, '2019-11-06 18:41:59', '2019-12-02 15:57:52', 0, NULL, 'order:detail');
INSERT INTO `sys_menu` VALUES (87, 84, '删除', NULL, 3, 'layui-icon-close', 1, 1, '2019-11-06 18:43:06', '2019-11-29 14:07:20', 0, NULL, 'order:delete');
INSERT INTO `sys_menu` VALUES (88, 53, '标签类型', 'views/label/brand/index.html', 2, 'layui-icon-note', 1, 1, '2019-11-07 15:01:34', '2019-11-23 16:37:51', 0, 'labelBrand', 'labelBrand:list');
INSERT INTO `sys_menu` VALUES (89, 88, '添加', NULL, 3, 'layui-icon-add-circle-fine', 1, 1, '2019-11-07 15:05:52', '2019-11-07 15:05:52', 0, NULL, 'labelBrand:add');
INSERT INTO `sys_menu` VALUES (90, 88, '修改', NULL, 3, 'layui-icon-senior', 1, 1, '2019-11-07 15:08:46', '2019-12-31 16:12:20', 0, NULL, 'labelBrand:edit');
INSERT INTO `sys_menu` VALUES (91, 88, '删除', NULL, 3, 'layui-icon-close', 1, 1, '2019-11-07 15:10:16', '2019-11-07 15:10:16', 0, NULL, 'labelBrand:delete');
INSERT INTO `sys_menu` VALUES (92, 53, '标签', 'views/label/label/index.html', 2, NULL, 1, 1, '2019-11-07 15:12:28', '2019-11-23 19:09:38', 0, 'label', 'label:list');
INSERT INTO `sys_menu` VALUES (93, 92, '添加', NULL, 3, 'layui-icon-add-circle-fine', 1, 1, '2019-11-07 15:14:38', '2019-11-23 19:20:55', 0, NULL, 'label:add');
INSERT INTO `sys_menu` VALUES (94, 92, '修改', NULL, 3, 'layui-icon-senior', 1, 1, '2019-11-07 15:15:15', '2019-11-23 19:24:51', 0, NULL, 'label:update');
INSERT INTO `sys_menu` VALUES (95, 92, '删除', NULL, 3, 'layui-icon-close', 1, 1, '2019-11-07 15:16:07', '2019-11-23 19:21:50', 0, NULL, 'label:delete');
INSERT INTO `sys_menu` VALUES (96, 49, '运费策略', 'views/product/carriage/index.html', 2, NULL, 1, 1, '2019-11-15 10:49:00', '2019-11-15 12:12:07', 0, 'carriage', 'carriage');
INSERT INTO `sys_menu` VALUES (97, 96, '编辑', NULL, 3, NULL, 1, 1, '2019-11-15 12:13:43', '2019-11-15 15:04:41', 0, NULL, 'carriage:edit');
INSERT INTO `sys_menu` VALUES (98, 96, '管理', NULL, 3, NULL, 1, 1, '2019-11-15 12:14:10', '2019-11-20 15:09:54', 0, NULL, 'carriage:manage');
INSERT INTO `sys_menu` VALUES (99, 96, '删除', NULL, 3, NULL, 1, 1, '2019-11-15 12:14:32', '2019-11-15 15:05:07', 0, NULL, 'carriage:delete');
INSERT INTO `sys_menu` VALUES (100, 96, '新增', NULL, 3, NULL, 1, 1, '2019-11-15 12:17:16', '2019-11-15 15:05:29', 0, NULL, 'carriage:add');
INSERT INTO `sys_menu` VALUES (110, 53, '会员', 'views/member/index.html', 2, 'layui-icon-rate-half', 1, 1, '2019-11-17 16:41:27', '2019-11-17 16:42:53', 0, 'member', 'member:list');
INSERT INTO `sys_menu` VALUES (111, 110, '添加', NULL, 3, 'layui-icon-add-circle-fine', 1, 1, '2019-11-17 16:44:36', '2019-12-31 15:24:10', 0, NULL, 'member:add');
INSERT INTO `sys_menu` VALUES (112, 110, '修改', NULL, 3, 'layui-icon-senior', 1, 1, '2019-11-17 17:56:18', '2019-11-17 19:38:58', 0, NULL, 'member:update');
INSERT INTO `sys_menu` VALUES (113, 110, '删除', NULL, 3, 'layui-icon-close', 1, 1, '2019-11-17 17:57:33', '2019-11-17 17:57:33', 0, NULL, 'member:delete');
INSERT INTO `sys_menu` VALUES (116, 84, '确认发货', NULL, 3, 'layui-icon-refresh-1', 1, 1, '2019-11-20 14:20:20', '2019-11-29 14:05:31', 0, NULL, 'order:update');
INSERT INTO `sys_menu` VALUES (117, 0, '营销活动', NULL, 1, 'layui-icon-group', 1, 1, '2019-11-20 18:07:55', '2019-11-20 18:09:16', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (118, 117, '推荐返礼', 'views/activity/recommend/index.html', 2, NULL, 1, 1, '2019-11-20 18:10:10', '2019-11-21 09:46:11', 0, 'marketRecommend', NULL);
INSERT INTO `sys_menu` VALUES (119, 118, '添加', NULL, 3, NULL, 1, 1, '2019-11-20 18:18:53', '2019-11-21 13:38:33', 0, NULL, 'recommend:add');
INSERT INTO `sys_menu` VALUES (120, 118, '修改', NULL, 3, NULL, 1, 1, '2019-11-20 18:20:05', '2019-11-21 13:38:58', 0, NULL, 'recommend:edit');
INSERT INTO `sys_menu` VALUES (121, 118, '删除', NULL, 3, NULL, 1, 1, '2019-11-20 18:20:42', '2019-11-20 18:20:42', 0, NULL, 'recommend:delete');
INSERT INTO `sys_menu` VALUES (122, 50, '批量发货', 'views/upload/index.html', 2, 'layui-icon-spread-left', 1, 1, '2019-11-20 18:52:00', '2020-01-09 14:41:10', 0, 'upload', 'order:upload');
INSERT INTO `sys_menu` VALUES (123, 54, '优惠券', 'views/coupon/index.html', 2, 'layui-icon-template-1', 1, 1, '2019-11-21 17:09:49', '2019-11-21 17:09:49', 0, 'coupon', 'coupon:list');
INSERT INTO `sys_menu` VALUES (124, 123, '添加', NULL, 3, NULL, 1, 1, '2019-11-21 17:39:57', '2019-11-22 11:01:26', 0, NULL, 'coupon:add');
INSERT INTO `sys_menu` VALUES (125, 123, '修改', NULL, 3, NULL, 1, 1, '2019-11-21 17:42:27', '2019-11-22 11:47:04', 0, NULL, 'coupon:update');
INSERT INTO `sys_menu` VALUES (126, 123, '删除', NULL, 3, NULL, 1, 1, '2019-11-21 17:43:09', '2019-11-21 17:43:09', 0, NULL, 'coupon:delete');
INSERT INTO `sys_menu` VALUES (128, 84, '修改地址', NULL, 3, 'layui-icon-tips', 1, 1, '2019-11-29 14:08:09', '2019-12-02 16:48:47', 0, NULL, 'order:address');
INSERT INTO `sys_menu` VALUES (129, 0, '用户反馈', NULL, 1, 'layui-icon-read', 1, 1, '2019-12-03 15:18:09', '2019-12-03 15:20:36', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (130, 129, '反馈信息', 'views/feedback/index.html', 2, NULL, 1, 1, '2019-12-03 15:19:56', '2019-12-03 15:40:22', 0, 'feedback', NULL);
INSERT INTO `sys_menu` VALUES (131, 47, '分类管理', 'views/module/sort/index.html', 2, NULL, 1, 1, '2020-01-06 17:09:08', '2020-01-06 17:11:58', 0, 'sort', 'module:sort:list');
INSERT INTO `sys_menu` VALUES (132, 131, '模板添加', NULL, 3, 'layui-icon-rate-half', 1, 1, '2020-01-06 17:10:47', '2020-01-07 15:32:43', 0, NULL, 'module:sort:add');
INSERT INTO `sys_menu` VALUES (133, 131, '模板修改', NULL, 3, 'layui-icon-align-right', 1, 1, '2020-01-06 17:15:13', '2020-01-07 15:33:20', 0, NULL, 'module:sort:edit');
INSERT INTO `sys_menu` VALUES (134, 131, '模板删除', NULL, 3, 'layui-icon-close-fill', 1, 1, '2020-01-06 17:16:08', '2020-01-07 15:33:42', 0, NULL, 'module:sort:delete');
INSERT INTO `sys_menu` VALUES (135, 131, '素材添加', NULL, 3, NULL, 1, 1, '2020-01-07 15:36:08', '2020-01-07 15:36:08', 0, NULL, 'module:material:add');
INSERT INTO `sys_menu` VALUES (136, 131, '素材修改', NULL, 3, NULL, 1, 1, '2020-01-07 15:37:21', '2020-01-07 15:37:21', 0, NULL, 'module:material:edit');
INSERT INTO `sys_menu` VALUES (137, 131, '素材删除', NULL, 3, NULL, 1, 1, '2020-01-07 15:37:54', '2020-01-07 15:37:54', 0, NULL, 'module:material:delete');
INSERT INTO `sys_menu` VALUES (138, 47, '素材管理', 'views/module/material/index.html', 2, 'layui-icon-face-surprised', 1, 1, '2020-01-08 15:51:06', '2020-01-08 15:51:06', 0, 'material', 'module:material:list');
INSERT INTO `sys_menu` VALUES (139, 138, '素材添加', NULL, 3, 'layui-icon-add-1', 1, 1, '2020-01-08 15:54:53', '2020-01-08 15:54:53', 0, NULL, 'module:material:add');
INSERT INTO `sys_menu` VALUES (140, 138, '素材修改', NULL, 3, NULL, 1, 1, '2020-01-08 15:55:59', '2020-01-08 15:55:59', 0, NULL, 'module:material:edit');
INSERT INTO `sys_menu` VALUES (141, 138, '素材删除', NULL, 3, 'layui-icon-close', 1, 1, '2020-01-08 15:56:30', '2020-01-08 15:56:30', 0, NULL, 'module:material:delete');

-- ----------------------------
-- Table structure for sys_menu_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_resource`;
CREATE TABLE `sys_menu_resource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NULL DEFAULT NULL COMMENT '菜单ID',
  `resource_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资源ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 342 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单资源关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu_resource
-- ----------------------------
INSERT INTO `sys_menu_resource` VALUES (70, 27, 'f45f1b577d72dcd86b84c6f033682b53');
INSERT INTO `sys_menu_resource` VALUES (71, 26, '829a851334028a6e47b59f8dea0cf7cb');
INSERT INTO `sys_menu_resource` VALUES (72, 30, 'f15f7b01ffe7166b05c3984c9b967837');
INSERT INTO `sys_menu_resource` VALUES (73, 33, '6692d9d95184977f82d3252de2f5eac7');
INSERT INTO `sys_menu_resource` VALUES (74, 29, 'a11e2191656cb199bea1defb17758411');
INSERT INTO `sys_menu_resource` VALUES (75, 29, '6fd51f02b724c137a08c28587f48d7f3');
INSERT INTO `sys_menu_resource` VALUES (76, 29, '2c654f1264fc85ac80516245672f3c47');
INSERT INTO `sys_menu_resource` VALUES (77, 29, 'a5529264d2645996c83bba2e961d0ec3');
INSERT INTO `sys_menu_resource` VALUES (80, 25, '6d1170346960aa8922b9b4d08a5bf71b');
INSERT INTO `sys_menu_resource` VALUES (81, 25, '30218613e987e464b13e0c0b8721aec5');
INSERT INTO `sys_menu_resource` VALUES (83, 31, 'd82de0a17f2c63106f98eb2f88d166e9');
INSERT INTO `sys_menu_resource` VALUES (85, 36, '7baa5b852bc92715d7aa503c0a0d8925');
INSERT INTO `sys_menu_resource` VALUES (91, 24, '04972e9f8e65b0364d9862687666da36');
INSERT INTO `sys_menu_resource` VALUES (93, 42, 'a826bca352908155da4ca6702edfa2ed');
INSERT INTO `sys_menu_resource` VALUES (94, 42, '30218613e987e464b13e0c0b8721aec5');
INSERT INTO `sys_menu_resource` VALUES (95, 34, 'a71cb59835c613f39bd936deb20cdd27');
INSERT INTO `sys_menu_resource` VALUES (96, 34, 'd9d6f7163b313b950710a637682354d1');
INSERT INTO `sys_menu_resource` VALUES (97, 32, 'eaee955f405f6b96beab5136bfa3e29b');
INSERT INTO `sys_menu_resource` VALUES (98, 32, 'd9d6f7163b313b950710a637682354d1');
INSERT INTO `sys_menu_resource` VALUES (99, 28, '8cb1442c7814f65ce0d796e1ef93c715');
INSERT INTO `sys_menu_resource` VALUES (100, 28, 'a5529264d2645996c83bba2e961d0ec3');
INSERT INTO `sys_menu_resource` VALUES (101, 28, '2c654f1264fc85ac80516245672f3c47');
INSERT INTO `sys_menu_resource` VALUES (106, 63, '579e469e8ac850de1ca0adc54d01acba');
INSERT INTO `sys_menu_resource` VALUES (110, 68, '78df72a6b0ae0fd99fc6113d3021f341');
INSERT INTO `sys_menu_resource` VALUES (113, 67, '454de4204e0e90c374f066cfcb370236');
INSERT INTO `sys_menu_resource` VALUES (124, 76, '35d519137ad660700712434d96f576f1');
INSERT INTO `sys_menu_resource` VALUES (126, 23, '579e469e8ac850de1ca0adc54d01acba');
INSERT INTO `sys_menu_resource` VALUES (127, 23, 'b4770c0fe93fce7e829463328c800f20');
INSERT INTO `sys_menu_resource` VALUES (128, 35, '30386fd7b8a4feb9c59861e63537acde');
INSERT INTO `sys_menu_resource` VALUES (129, 35, '8a3b4dc05867f5946235ba5fbc492b76');
INSERT INTO `sys_menu_resource` VALUES (137, 79, 'cccf05a7c872e79a5812636424a8ac41');
INSERT INTO `sys_menu_resource` VALUES (140, 82, '9d190becf0773e664b5b40d886765b65');
INSERT INTO `sys_menu_resource` VALUES (141, 62, 'af691f504cbd9b5a597ebe2f40fb3d33');
INSERT INTO `sys_menu_resource` VALUES (150, 69, '3bf0ae4cb350edd6e18c333f20c7df24');
INSERT INTO `sys_menu_resource` VALUES (152, 70, 'ce8d317dce8188756f6eb88e7555d553');
INSERT INTO `sys_menu_resource` VALUES (155, 89, '31fec5c1397d3d4ac4221044e4190558');
INSERT INTO `sys_menu_resource` VALUES (157, 91, 'a5ecece6430a7379c52a89a7b986bfdb');
INSERT INTO `sys_menu_resource` VALUES (189, 96, '5bffc1c1f3809f6d0b5d84ae82ac3b14');
INSERT INTO `sys_menu_resource` VALUES (190, 97, '028ac7a61c0743ce66f1c3329cb598d7');
INSERT INTO `sys_menu_resource` VALUES (191, 97, 'a217c5d5c86e3498845a4f78a0fe9f65');
INSERT INTO `sys_menu_resource` VALUES (192, 99, '0686a3b4c19fddf7301b780e093e75a2');
INSERT INTO `sys_menu_resource` VALUES (193, 100, 'a714325d4f96aabb576f35b85073b926');
INSERT INTO `sys_menu_resource` VALUES (198, 71, '7dd4af02c2a38b905bf1233a39210352');
INSERT INTO `sys_menu_resource` VALUES (201, 72, 'b2d328432e6ae97574a27ae713bc37e4');
INSERT INTO `sys_menu_resource` VALUES (205, 110, '99b64480c6b455037595707b61086275');
INSERT INTO `sys_menu_resource` VALUES (207, 113, '9fe1b9cef1edf42bfcbdd14d55fcc11b');
INSERT INTO `sys_menu_resource` VALUES (209, 112, '6b7af349a1f91ba93f82358b854ede49');
INSERT INTO `sys_menu_resource` VALUES (210, 112, '396b8034e47e5057427ba8c5681b41b0');
INSERT INTO `sys_menu_resource` VALUES (220, 59, 'b4ead2cca3e3f8c4d55abf93c2376f9d');
INSERT INTO `sys_menu_resource` VALUES (221, 59, 'ea481b0caee71201808a556fb420b092');
INSERT INTO `sys_menu_resource` VALUES (222, 59, '152623ae14016a954c3ab78b78b5acc6');
INSERT INTO `sys_menu_resource` VALUES (227, 78, 'a622b437c43723daccc70640f4528127');
INSERT INTO `sys_menu_resource` VALUES (228, 78, '90a3a34cb1539caae322437644fcb0b6');
INSERT INTO `sys_menu_resource` VALUES (229, 78, 'e8f873edc306e950e9a6cebd73dfafdc');
INSERT INTO `sys_menu_resource` VALUES (230, 81, 'f034347e623f5f0a0242cec2c8b7287b');
INSERT INTO `sys_menu_resource` VALUES (231, 81, 'b25b078ddc270fb5b372a636e54d792b');
INSERT INTO `sys_menu_resource` VALUES (232, 75, '0d6ee9e0fddcda4af2843391f4ff88f8');
INSERT INTO `sys_menu_resource` VALUES (233, 75, '50e8bb5a20a513da2d45a3c50587eace');
INSERT INTO `sys_menu_resource` VALUES (244, 98, '5c0eb3e232cfa0d7b80ad75cccc7e5df');
INSERT INTO `sys_menu_resource` VALUES (245, 98, '6e776bd202bdb18e948928ca63d1c11f');
INSERT INTO `sys_menu_resource` VALUES (246, 98, '00a882afd04435da6313f456519478ff');
INSERT INTO `sys_menu_resource` VALUES (247, 98, 'e8339e0b51cde090710ff2cbaefc69ca');
INSERT INTO `sys_menu_resource` VALUES (248, 98, 'd665f9ba10d857b7e1eb3390242fb5eb');
INSERT INTO `sys_menu_resource` VALUES (256, 121, 'ef462c752beead0d057e6f780399b6b7');
INSERT INTO `sys_menu_resource` VALUES (265, 118, '2044885a7efb1e8bc6e7b1d570f8aa52');
INSERT INTO `sys_menu_resource` VALUES (266, 118, '99b64480c6b455037595707b61086275');
INSERT INTO `sys_menu_resource` VALUES (267, 118, '5b0f8a86eb0bfaff890ee186754f6d76');
INSERT INTO `sys_menu_resource` VALUES (268, 118, 'fcf4b8e84f9341f42f94544c542454d4');
INSERT INTO `sys_menu_resource` VALUES (269, 119, '785d1145a693b2353b43d4dbc631aedd');
INSERT INTO `sys_menu_resource` VALUES (270, 119, '7db7dd58f5d9e0ea5bc8a9247921ba7b');
INSERT INTO `sys_menu_resource` VALUES (271, 120, '351f81989791d9e4717893b89c99d69c');
INSERT INTO `sys_menu_resource` VALUES (272, 120, 'afb36a0bfb4435720215d0bc9f274c9c');
INSERT INTO `sys_menu_resource` VALUES (273, 120, '7db7dd58f5d9e0ea5bc8a9247921ba7b');
INSERT INTO `sys_menu_resource` VALUES (274, 123, '3dc837dbf49086d8eddac14cae7e7924');
INSERT INTO `sys_menu_resource` VALUES (277, 126, '05d538f773fdcc53beee7a3823187361');
INSERT INTO `sys_menu_resource` VALUES (280, 124, 'd4fe777360f19f854bf62dbacde2cbfd');
INSERT INTO `sys_menu_resource` VALUES (283, 125, '0e2e9670a085c101c4b87de7dfb35ce1');
INSERT INTO `sys_menu_resource` VALUES (284, 125, '3b5262b24b597f8443427a810c734307');
INSERT INTO `sys_menu_resource` VALUES (285, 88, '531edcdd9a1747a09755dfb6a7bfb67c');
INSERT INTO `sys_menu_resource` VALUES (297, 92, 'cac6f7523362190aae296870cd943a40');
INSERT INTO `sys_menu_resource` VALUES (302, 93, 'a551eb0a4fcc16faeea8aee68ac7d378');
INSERT INTO `sys_menu_resource` VALUES (303, 95, 'e7f62e644e3531db217641b07114453e');
INSERT INTO `sys_menu_resource` VALUES (304, 94, '4b55abab97b6a4cb01254ab913d85ded');
INSERT INTO `sys_menu_resource` VALUES (305, 94, 'f917f11069c42557688d5413ff65207d');
INSERT INTO `sys_menu_resource` VALUES (306, 73, '2252f17d83a82e1ae58de4161cde81ce');
INSERT INTO `sys_menu_resource` VALUES (307, 73, '94f77dc22a6df2ab3b23edc599b5c3d2');
INSERT INTO `sys_menu_resource` VALUES (308, 73, '8dead7d64be4257acf75e3cd9be84e09');
INSERT INTO `sys_menu_resource` VALUES (309, 73, '9d96227d11a2d767be7fd320bb3ef5ff');
INSERT INTO `sys_menu_resource` VALUES (310, 73, '7fa360b8fd67374c5d9b3f5f900a3017');
INSERT INTO `sys_menu_resource` VALUES (311, 74, '9870e65d38132ef890090b8e11ec8b85');
INSERT INTO `sys_menu_resource` VALUES (312, 74, 'b188f8c598c46d1ed94e684e382bf33b');
INSERT INTO `sys_menu_resource` VALUES (316, 116, 'c395ed8a42ee4b72701782a8a1e0f42f');
INSERT INTO `sys_menu_resource` VALUES (317, 87, '8df7b150ab173023d6b7a5f20b0972db');
INSERT INTO `sys_menu_resource` VALUES (318, 86, '550dac86a682da5ffef7a1bfd433f174');
INSERT INTO `sys_menu_resource` VALUES (319, 86, '32badd6ba1b304e57c678f102244ee2b');
INSERT INTO `sys_menu_resource` VALUES (320, 128, 'bcb221ca637106134acdebd0a4205f5c');
INSERT INTO `sys_menu_resource` VALUES (321, 130, '2df26b416060ef0a48eabeb67fef01ce');
INSERT INTO `sys_menu_resource` VALUES (322, 111, '9b73da722a589aa4ea10128db3bdaf99');
INSERT INTO `sys_menu_resource` VALUES (323, 90, '0a832062f0115e611f21a7d48e8e28e2');
INSERT INTO `sys_menu_resource` VALUES (324, 90, '5028d4295c8e8e9f62736a9849efc144');
INSERT INTO `sys_menu_resource` VALUES (327, 131, '15667157e950d1d691de541c85a50c07');
INSERT INTO `sys_menu_resource` VALUES (331, 132, 'dcf7125218f11483361daad1c1b24ec6');
INSERT INTO `sys_menu_resource` VALUES (332, 133, 'aaaf7881938c341f88afd8ec71fb0055');
INSERT INTO `sys_menu_resource` VALUES (333, 134, '8a674fc980e3cceded3ff271f525ef3a');
INSERT INTO `sys_menu_resource` VALUES (334, 135, 'dcf7125218f11483361daad1c1b24ec6');
INSERT INTO `sys_menu_resource` VALUES (335, 136, 'aaaf7881938c341f88afd8ec71fb0055');
INSERT INTO `sys_menu_resource` VALUES (336, 137, '8a674fc980e3cceded3ff271f525ef3a');
INSERT INTO `sys_menu_resource` VALUES (337, 138, '70eef22c4185eea64a296141a5e08e1d');
INSERT INTO `sys_menu_resource` VALUES (338, 139, 'ef769a77db53a1eff5c9b39da1d71789');
INSERT INTO `sys_menu_resource` VALUES (339, 140, '6fb354df7d069ccdb7342aed32f749e4');
INSERT INTO `sys_menu_resource` VALUES (340, 141, 'a206bc32709f64d1351f22bede46c345');
INSERT INTO `sys_menu_resource` VALUES (341, 122, '8d171cbb16dff2b27058867a682bc045');

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `resource_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资源名称',
  `mapping` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '路径映射',
  `method` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求方式',
  `auth_type` smallint(2) NOT NULL COMMENT '权限认证类型',
  `update_time` datetime(0) NULL DEFAULT NULL,
  `perm` varchar(68) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES ('00a882afd04435da6313f456519478ff', '修改产品运费策略配置信息', '/carriageConfig/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/carriageConfig/{id}');
INSERT INTO `sys_resource` VALUES ('028ac7a61c0743ce66f1c3329cb598d7', '修改产品运费模板', '/carriage/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/carriage/{id}');
INSERT INTO `sys_resource` VALUES ('04972e9f8e65b0364d9862687666da36', '查询所有角色(分页)', '/roles', 'GET', 3, '2020-01-20 10:24:30', 'GET:/roles');
INSERT INTO `sys_resource` VALUES ('05d538f773fdcc53beee7a3823187361', '删除优惠券', '/coupon/{id}', 'DELETE', 3, '2020-01-20 10:24:30', 'DELETE:/coupon/{id}');
INSERT INTO `sys_resource` VALUES ('0686a3b4c19fddf7301b780e093e75a2', '删除产品运费运费模板', '/carriage/{id}', 'DELETE', 3, '2020-01-20 10:24:30', 'DELETE:/carriage/{id}');
INSERT INTO `sys_resource` VALUES ('068ec7e2676c8f1ee9543a7087a11a10', '用户反馈', '/wxServices/feedback', 'POST', 2, '2020-01-20 11:21:25', 'POST:/wxServices/feedback');
INSERT INTO `sys_resource` VALUES ('08b8b32add7e28218758aba8ca167ca4', '用户详情查看', '/wxServices/user/detail', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/user/detail');
INSERT INTO `sys_resource` VALUES ('0a832062f0115e611f21a7d48e8e28e2', '设置标签状态', '/labelBrand/{id}/status', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/labelBrand/{id}/status');
INSERT INTO `sys_resource` VALUES ('0d6ee9e0fddcda4af2843391f4ff88f8', '修改产品', '/product/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/product/{id}');
INSERT INTO `sys_resource` VALUES ('0e2e9670a085c101c4b87de7dfb35ce1', '修改优惠券', '/coupon/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/coupon/{id}');
INSERT INTO `sys_resource` VALUES ('0e695d485614aac2e79521318f2f0828', '上传单个图片', '/material/upload', 'POST', 2, '2020-01-20 10:24:30', 'POST:/material/upload');
INSERT INTO `sys_resource` VALUES ('0f05f37010db04e1117ab97303bb483e', '修改用户头像', '/wxServices/user/head', 'POST', 3, '2020-01-20 11:21:25', 'POST:/wxServices/user/head');
INSERT INTO `sys_resource` VALUES ('0ff2fb65a06be9cd8c79994a6023c104', '查询单个分享返礼产品', '/wxServices/recommend/products/{recommendId}', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/recommend/products/{recommendId}');
INSERT INTO `sys_resource` VALUES ('121ea714a75e40d000dc8695d2b56fe6', '分享返礼-赠送产品请求支付接口', '/wxServices/wxSendPay/{id}', 'POST', 2, '2020-01-20 11:21:25', 'POST:/wxServices/wxSendPay/{id}');
INSERT INTO `sys_resource` VALUES ('152623ae14016a954c3ab78b78b5acc6', '修改图片', '/image/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/image/{id}');
INSERT INTO `sys_resource` VALUES ('15667157e950d1d691de541c85a50c07', '分类查询所有', '/sort', 'GET', 2, '2020-01-20 10:24:30', 'GET:/sort');
INSERT INTO `sys_resource` VALUES ('15f277f3c81ef04e76431843ecc72ac9', '查询运费模板相关运费策略', '/carriageConfig', 'GET', 3, '2019-11-17 12:34:12', 'GET:/carriageConfig');
INSERT INTO `sys_resource` VALUES ('16e5f26bbe26032ee7f726e37e202328', '未命名资源路径', '/wxServices/wxRecommendBack', 'POST', 2, '2020-01-20 11:21:25', 'POST:/wxServices/wxRecommendBack');
INSERT INTO `sys_resource` VALUES ('1bc672ea8b07d157fa389ff7b3d0d680', '省市区联动', '/wxServices/city', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/city');
INSERT INTO `sys_resource` VALUES ('1fa6e7df1e07958353544091c0493158', '取消订单', '/wxServices/order', 'DELETE', 3, '2019-11-27 19:21:26', 'DELETE:/wxServices/order');
INSERT INTO `sys_resource` VALUES ('2044885a7efb1e8bc6e7b1d570f8aa52', '查询所有推荐返礼活动(分页)', '/marketRecommend', 'GET', 3, '2020-01-20 10:24:30', 'GET:/marketRecommend');
INSERT INTO `sys_resource` VALUES ('2252f17d83a82e1ae58de4161cde81ce', '查询所有产品', '/product', 'GET', 3, '2020-01-20 10:24:30', 'GET:/product');
INSERT INTO `sys_resource` VALUES ('238425cd05e345d867251754ba43f37b', '设置默认收件地址', '/wxServices/express/address/status/{id}', 'POST', 3, '2019-11-23 22:12:30', 'POST:/wxServices/express/address/status/{id}');
INSERT INTO `sys_resource` VALUES ('27626787cc5797b51ce953d52c2e5a61', '用户详情修改', '/wxServices/user/detail', 'PUT', 3, '2020-01-20 11:21:25', 'PUT:/wxServices/user/detail');
INSERT INTO `sys_resource` VALUES ('29c4c75326ecf3a82f815c43b0085b2f', '修改账户信息', '/account/info', 'PUT', 1, '2020-01-20 10:24:30', 'PUT:/account/info');
INSERT INTO `sys_resource` VALUES ('2c654f1264fc85ac80516245672f3c47', '查询父级菜单(下拉框)', '/menus/combos', 'GET', 3, '2020-01-20 10:24:30', 'GET:/menus/combos');
INSERT INTO `sys_resource` VALUES ('2df26b416060ef0a48eabeb67fef01ce', '查询所有图片', '/feedback', 'GET', 3, '2020-01-20 10:24:30', 'GET:/feedback');
INSERT INTO `sys_resource` VALUES ('2fd0c75fe672c8bf03538dabb84edc32', '用户登录', '/wxServices/login', 'POST', 2, '2020-01-20 11:21:25', 'POST:/wxServices/login');
INSERT INTO `sys_resource` VALUES ('30218613e987e464b13e0c0b8721aec5', '查询所有菜单', '/menus', 'GET', 3, '2020-01-20 10:24:30', 'GET:/menus');
INSERT INTO `sys_resource` VALUES ('30386fd7b8a4feb9c59861e63537acde', '修改用户', '/users/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/users/{id}');
INSERT INTO `sys_resource` VALUES ('3155bf3cd61ad92a1381c02ebd5218fc', '查询用户收件地址', '/wxServices/express/address', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/express/address');
INSERT INTO `sys_resource` VALUES ('31eb39185241b5d73fffca389eda3603', '查询所有标签类型下的所有标签', '/wxServices/user/label/{id}', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/user/label/{id}');
INSERT INTO `sys_resource` VALUES ('31fec5c1397d3d4ac4221044e4190558', '添加品牌标签', '/labelBrand', 'POST', 3, '2020-01-20 10:24:30', 'POST:/labelBrand');
INSERT INTO `sys_resource` VALUES ('3249b3016918eacfbfc95c172805309e', '未命名资源路径', '/wxServices/wxSendBack/{orderId}/{openId}', 'POST', 2, '2019-12-12 15:09:04', 'POST:/wxServices/wxSendBack/{orderId}/{openId}');
INSERT INTO `sys_resource` VALUES ('32badd6ba1b304e57c678f102244ee2b', '订单改价', '/order/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/order/{id}');
INSERT INTO `sys_resource` VALUES ('349257c94403d2b3096245ed7c65629f', '查询品牌对应产品信息', '/wx/product/wx/{id}', 'GET', 3, '2019-11-22 20:06:50', 'GET:/wx/product/wx/{id}');
INSERT INTO `sys_resource` VALUES ('351f81989791d9e4717893b89c99d69c', '修改推荐返礼活动信息', '/marketRecommend/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/marketRecommend/{id}');
INSERT INTO `sys_resource` VALUES ('35d519137ad660700712434d96f576f1', '删除产品', '/product/{id}', 'DELETE', 3, '2020-01-20 10:24:30', 'DELETE:/product/{id}');
INSERT INTO `sys_resource` VALUES ('396b8034e47e5057427ba8c5681b41b0', '查询单个会员等级', '/member/{id}', 'GET', 3, '2020-01-20 10:24:30', 'GET:/member/{id}');
INSERT INTO `sys_resource` VALUES ('3ae42391ca3abe20c5cca35f4427cf9c', '获取账户按钮', '/account/buttons/aliases', 'GET', 1, '2020-01-20 10:24:30', 'GET:/account/buttons/aliases');
INSERT INTO `sys_resource` VALUES ('3b2596e7c506d62be3b1fee4a9471592', '添加分享返利用户相关信息', '/wxServices/recommend/customer', 'GET', 3, '2019-11-25 14:09:21', 'GET:/wxServices/recommend/customer');
INSERT INTO `sys_resource` VALUES ('3b5262b24b597f8443427a810c734307', '修改优惠状态', '/coupon/{id}/status', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/coupon/{id}/status');
INSERT INTO `sys_resource` VALUES ('3b9fb4b62229228175c5c8d94634b74c', '查询品牌对应产品信息', '/wx/product/{id}', 'GET', 3, '2019-11-22 20:09:46', 'GET:/wx/product/{id}');
INSERT INTO `sys_resource` VALUES ('3bf0ae4cb350edd6e18c333f20c7df24', '查询所有客户基本信息', '/customer', 'GET', 2, '2020-01-20 10:24:30', 'GET:/customer');
INSERT INTO `sys_resource` VALUES ('3dc837dbf49086d8eddac14cae7e7924', '查询所有优惠券', '/coupon', 'GET', 2, '2020-01-20 10:24:30', 'GET:/coupon');
INSERT INTO `sys_resource` VALUES ('3f93e7c68e40e1466b589a50a9ec6608', '设置默认收件地址', '/wxServices/express/address/status/{id}', 'PUT', 3, '2020-01-20 11:21:25', 'PUT:/wxServices/express/address/status/{id}');
INSERT INTO `sys_resource` VALUES ('454de4204e0e90c374f066cfcb370236', '查询单个图片', '/image/{id}', 'GET', 3, '2020-01-20 10:24:30', 'GET:/image/{id}');
INSERT INTO `sys_resource` VALUES ('4591be033a4950be3649de560379d2a0', '查询分享返礼产品', '/wxServices/recommend/products', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/recommend/products');
INSERT INTO `sys_resource` VALUES ('466457e932c819d5dc20c7f0e5f0c308', '用户登录', '/wxServiceslogin', 'POST', 3, '2019-11-23 13:39:19', 'POST:/wxServiceslogin');
INSERT INTO `sys_resource` VALUES ('474f40b185d35f7ca831d2b8999f948d', '请求支付接口', '/wxServices/wxPay/{id}', 'POST', 3, '2020-01-20 11:21:25', 'POST:/wxServices/wxPay/{id}');
INSERT INTO `sys_resource` VALUES ('48c5c4325b159f134c08b9c845f4cfa7', '查询相关产品的价格区间', '/wxServices/product/prices/{id}', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/product/prices/{id}');
INSERT INTO `sys_resource` VALUES ('49544341e41b88d697ad605b924fda50', '省市区联动', '/city/city', 'GET', 2, '2019-11-29 17:22:40', 'GET:/city/city');
INSERT INTO `sys_resource` VALUES ('495fe0bc7e3f586bbc7ef1cebe627c94', '分享返礼-赠送产品请求支付接口', '/wxServices/wxSendPay', 'POST', 2, '2019-12-12 15:09:04', 'POST:/wxServices/wxSendPay');
INSERT INTO `sys_resource` VALUES ('4a43c3c6a67beb1442d8c9c4c87c662b', '添加优惠券', '/coupon/{id}', 'POST', 3, '2019-11-22 13:24:26', 'POST:/coupon/{id}');
INSERT INTO `sys_resource` VALUES ('4b55abab97b6a4cb01254ab913d85ded', '设置标签状态', '/label/{id}/status', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/label/{id}/status');
INSERT INTO `sys_resource` VALUES ('4c2d3e4a76ef407b3ec6051fd9c5844d', '未命名资源路径', '/wxServices/wxNotify', 'POST', 2, '2020-01-20 11:21:25', 'POST:/wxServices/wxNotify');
INSERT INTO `sys_resource` VALUES ('4c7921ccfffdfcf1c064a0dc6d420509', '修改收件地址', '/wxServices/express/address/{id}', 'PUT', 3, '2020-01-20 11:21:25', 'PUT:/wxServices/express/address/{id}');
INSERT INTO `sys_resource` VALUES ('5028d4295c8e8e9f62736a9849efc144', '修改品牌标签', '/labelBrand/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/labelBrand/{id}');
INSERT INTO `sys_resource` VALUES ('50e8bb5a20a513da2d45a3c50587eace', '查询单个产品', '/product/{id}', 'GET', 3, '2020-01-20 10:24:30', 'GET:/product/{id}');
INSERT INTO `sys_resource` VALUES ('51c4f8f45d8a8c0f92afa5484499dbe7', '修改产品标签', '/labelProduct/{id}', 'PUT', 3, '2019-11-28 10:43:46', 'PUT:/labelProduct/{id}');
INSERT INTO `sys_resource` VALUES ('531edcdd9a1747a09755dfb6a7bfb67c', '查询所有品牌标签', '/labelBrand', 'GET', 3, '2020-01-20 10:24:30', 'GET:/labelBrand');
INSERT INTO `sys_resource` VALUES ('550dac86a682da5ffef7a1bfd433f174', '查询订单详情', '/order/{id}', 'GET', 3, '2019-11-29 09:44:15', 'GET:/order/{id}');
INSERT INTO `sys_resource` VALUES ('579e469e8ac850de1ca0adc54d01acba', '查询所有用户', '/users', 'GET', 3, '2020-01-20 10:24:30', 'GET:/users');
INSERT INTO `sys_resource` VALUES ('58103c8cb746e3417bf91fc890c974e2', '修改标签', '/wxServices/user/label/{id}', 'PUT', 3, '2020-01-20 11:21:25', 'PUT:/wxServices/user/label/{id}');
INSERT INTO `sys_resource` VALUES ('5aed41d4eaac79d37b96de10ca27d94e', '查询所有产品标签', '/labelProduct', 'GET', 3, '2019-11-28 10:43:46', 'GET:/labelProduct');
INSERT INTO `sys_resource` VALUES ('5b0f8a86eb0bfaff890ee186754f6d76', '查询所有产品(下拉框)', '/product/products', 'GET', 3, '2020-01-20 10:24:30', 'GET:/product/products');
INSERT INTO `sys_resource` VALUES ('5bffc1c1f3809f6d0b5d84ae82ac3b14', '查询所有运费模板', '/carriage', 'GET', 3, '2020-01-20 10:24:30', 'GET:/carriage');
INSERT INTO `sys_resource` VALUES ('5c0eb3e232cfa0d7b80ad75cccc7e5df', '查询运费策略', '/carriageConfig/{id}', 'GET', 3, '2020-01-20 10:24:30', 'GET:/carriageConfig/{id}');
INSERT INTO `sys_resource` VALUES ('5c766fc97a3d44a42d9627f3bc3d3dc9', '分享返礼-赠送产品请求支付接口', '/wxServices/wxSendPay/{id}/{orderId}', 'POST', 3, '2019-12-11 18:23:04', 'POST:/wxServices/wxSendPay/{id}/{orderId}');
INSERT INTO `sys_resource` VALUES ('6556cb41e342b3a4c91700d4c664115d', '请求支付接口', '/wxServices/wxCouponPay/{id}', 'POST', 3, '2019-12-12 09:39:35', 'POST:/wxServices/wxCouponPay/{id}');
INSERT INTO `sys_resource` VALUES ('6692d9d95184977f82d3252de2f5eac7', '删除角色', '/roles/{id}', 'DELETE', 3, '2020-01-20 10:24:30', 'DELETE:/roles/{id}');
INSERT INTO `sys_resource` VALUES ('6ab0f8a49671e489f11a1bef2fcaf102', '清除Token', '/account/token', 'DELETE', 1, '2020-01-20 10:24:30', 'DELETE:/account/token');
INSERT INTO `sys_resource` VALUES ('6b5267c6f6e454173a534558c6ec1c47', '上传单个图片', '/member/upload', 'POST', 2, '2020-01-20 10:24:30', 'POST:/member/upload');
INSERT INTO `sys_resource` VALUES ('6b7af349a1f91ba93f82358b854ede49', '修改会员等级', '/member/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/member/{id}');
INSERT INTO `sys_resource` VALUES ('6d1170346960aa8922b9b4d08a5bf71b', '设置菜单状态', '/menus/{id}/status', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/menus/{id}/status');
INSERT INTO `sys_resource` VALUES ('6e776bd202bdb18e948928ca63d1c11f', '添加产品运费策略配置', '/carriageConfig', 'POST', 3, '2020-01-20 10:24:30', 'POST:/carriageConfig');
INSERT INTO `sys_resource` VALUES ('6fb354df7d069ccdb7342aed32f749e4', '素材修改', '/material/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/material/{id}');
INSERT INTO `sys_resource` VALUES ('6fd51f02b724c137a08c28587f48d7f3', '查询单个菜单', '/menus/{id}', 'GET', 3, '2020-01-20 10:24:30', 'GET:/menus/{id}');
INSERT INTO `sys_resource` VALUES ('70eef22c4185eea64a296141a5e08e1d', '素材所有', '/material', 'GET', 2, '2020-01-20 10:24:30', 'GET:/material');
INSERT INTO `sys_resource` VALUES ('70fb3717b9880b83b6e9c84ae53e67da', '修改优惠状态', '/coupon/{id}/status', 'DELETE', 3, '2019-11-22 13:24:26', 'DELETE:/coupon/{id}/status');
INSERT INTO `sys_resource` VALUES ('73f0d4649e9bd3a127aecfb296ff0dbe', '获取运费区域', '/carriageConfig/areas', 'GET', 3, '2020-01-20 10:24:30', 'GET:/carriageConfig/areas');
INSERT INTO `sys_resource` VALUES ('76aa9baabc389e162503a9f675e5fed9', '取消订单', '/wxServices/order/{id}', 'DELETE', 3, '2020-01-20 11:21:25', 'DELETE:/wxServices/order/{id}');
INSERT INTO `sys_resource` VALUES ('785d1145a693b2353b43d4dbc631aedd', '添加推荐返礼活动', '/marketRecommend', 'POST', 3, '2020-01-20 10:24:30', 'POST:/marketRecommend');
INSERT INTO `sys_resource` VALUES ('78df72a6b0ae0fd99fc6113d3021f341', '删除图片', '/image/{id}', 'DELETE', 3, '2020-01-20 10:24:30', 'DELETE:/image/{id}');
INSERT INTO `sys_resource` VALUES ('7a4f6667c5319133d292eb463dcfa2ad', '未命名资源路径', '/wxServices/wxCouponNotify', 'POST', 2, '2020-01-20 11:21:25', 'POST:/wxServices/wxCouponNotify');
INSERT INTO `sys_resource` VALUES ('7baa5b852bc92715d7aa503c0a0d8925', '重置用户密码', '/users/{id}/password', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/users/{id}/password');
INSERT INTO `sys_resource` VALUES ('7db7dd58f5d9e0ea5bc8a9247921ba7b', '查询推荐返礼商品价格', '/marketRecommend/productPrice/{id}', 'GET', 3, '2020-01-20 10:24:30', 'GET:/marketRecommend/productPrice/{id}');
INSERT INTO `sys_resource` VALUES ('7dd4af02c2a38b905bf1233a39210352', '修改客户等级', '/customer/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/customer/{id}');
INSERT INTO `sys_resource` VALUES ('7fa360b8fd67374c5d9b3f5f900a3017', '设置产品状态', '/product/{id}/status', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/product/{id}/status');
INSERT INTO `sys_resource` VALUES ('80640514a0bba5d81e7d44a4001c390b', '添加产品标签', '/labelProduct', 'POST', 3, '2019-11-28 10:43:46', 'POST:/labelProduct');
INSERT INTO `sys_resource` VALUES ('829a851334028a6e47b59f8dea0cf7cb', '查询所有资源(分页)', '/resources', 'GET', 3, '2020-01-20 10:24:30', 'GET:/resources');
INSERT INTO `sys_resource` VALUES ('842e33410b5a97b6c797e4782c97a90e', '获取Token', '/account/token', 'POST', 2, '2020-01-20 10:24:30', 'POST:/account/token');
INSERT INTO `sys_resource` VALUES ('86531835f69a785cf38772f727066963', '上传视频', '/wxServices/video/upload', 'POST', 3, '2020-01-20 11:21:25', 'POST:/wxServices/video/upload');
INSERT INTO `sys_resource` VALUES ('87364d21879c1631b9f7f6a6decda235', '删除收件地址', '/wxServices/express/address/{id}', 'POST', 3, '2019-11-23 22:12:30', 'POST:/wxServices/express/address/{id}');
INSERT INTO `sys_resource` VALUES ('8a3b4dc05867f5946235ba5fbc492b76', '查询单个用户', '/users/{id}', 'GET', 3, '2020-01-20 10:24:30', 'GET:/users/{id}');
INSERT INTO `sys_resource` VALUES ('8a674fc980e3cceded3ff271f525ef3a', '分类删除', '/sort/{id}', 'DELETE', 3, '2020-01-20 10:24:30', 'DELETE:/sort/{id}');
INSERT INTO `sys_resource` VALUES ('8bed9acffa473e0d0123f1960dac45d5', '生成订单', '/order', 'POST', 3, '2019-11-29 09:44:15', 'POST:/order');
INSERT INTO `sys_resource` VALUES ('8cb1442c7814f65ce0d796e1ef93c715', '添加菜单', '/menus', 'POST', 3, '2020-01-20 10:24:30', 'POST:/menus');
INSERT INTO `sys_resource` VALUES ('8d171cbb16dff2b27058867a682bc045', '订单批量发货', '/order/upload', 'POST', 2, '2020-01-20 10:24:30', 'POST:/order/upload');
INSERT INTO `sys_resource` VALUES ('8dead7d64be4257acf75e3cd9be84e09', '查询所有品牌', '/brand/brands', 'GET', 3, '2020-01-20 10:24:30', 'GET:/brand/brands');
INSERT INTO `sys_resource` VALUES ('8df7b150ab173023d6b7a5f20b0972db', '删除订单', '/order/{id}', 'DELETE', 2, '2020-01-20 10:24:30', 'DELETE:/order/{id}');
INSERT INTO `sys_resource` VALUES ('9014c5740246a50014916fa01a3e025e', '查询我的订单', '/wxServices/order', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/order');
INSERT INTO `sys_resource` VALUES ('901c58c7247320a58642dbccff9c636e', '分享返礼取消请求支付接口', '/wxServices/wxNotPay/{id}', 'POST', 3, '2019-12-12 18:52:22', 'POST:/wxServices/wxNotPay/{id}');
INSERT INTO `sys_resource` VALUES ('90a3a34cb1539caae322437644fcb0b6', '添加品牌图片', '/brand/upload', 'POST', 3, '2020-01-20 10:24:30', 'POST:/brand/upload');
INSERT INTO `sys_resource` VALUES ('91c48b30785628df266b3a3ccd4267f2', '查询所有标签类型下的所有标签', '/wxServices/user/label', 'GET', 3, '2019-11-24 16:13:11', 'GET:/wxServices/user/label');
INSERT INTO `sys_resource` VALUES ('94f77dc22a6df2ab3b23edc599b5c3d2', '添加产品详情图片', '/product/upload', 'POST', 3, '2020-01-20 10:24:30', 'POST:/product/upload');
INSERT INTO `sys_resource` VALUES ('9770eb86f04da1b637cb095671f398f2', '优惠券支付接口', '/wxServices/wxCouponPay', 'POST', 3, '2020-01-20 11:21:25', 'POST:/wxServices/wxCouponPay');
INSERT INTO `sys_resource` VALUES ('9804a214b4a97d21d963ed30fe7fc5d6', '查询所有订单', '/order', 'GET', 2, '2020-01-20 10:24:30', 'GET:/order');
INSERT INTO `sys_resource` VALUES ('980fc56a069a646953a65be5dba835ca', '分享返礼请求支付接口', '/wxServices/wxRecommendPay/{id}', 'POST', 3, '2020-01-20 11:21:25', 'POST:/wxServices/wxRecommendPay/{id}');
INSERT INTO `sys_resource` VALUES ('982803fc834e82cbb2ac1b93f2a47690', '查询单个角色', '/roles/{id}', 'GET', 3, '2020-01-20 10:24:30', 'GET:/roles/{id}');
INSERT INTO `sys_resource` VALUES ('9870e65d38132ef890090b8e11ec8b85', '添加产品', '/product', 'POST', 3, '2020-01-20 10:24:30', 'POST:/product');
INSERT INTO `sys_resource` VALUES ('99b64480c6b455037595707b61086275', '测试', '/member', 'GET', 2, '2020-01-20 11:21:25', 'GET:/member');
INSERT INTO `sys_resource` VALUES ('9b73da722a589aa4ea10128db3bdaf99', '新增会员等级', '/member', 'POST', 3, '2020-01-20 10:24:30', 'POST:/member');
INSERT INTO `sys_resource` VALUES ('9d190becf0773e664b5b40d886765b65', '删除品牌', '/brand/{id}', 'DELETE', 3, '2020-01-20 10:24:30', 'DELETE:/brand/{id}');
INSERT INTO `sys_resource` VALUES ('9d96227d11a2d767be7fd320bb3ef5ff', '查询所有运费模板', '/carriage/carriages', 'GET', 3, '2020-01-20 10:24:30', 'GET:/carriage/carriages');
INSERT INTO `sys_resource` VALUES ('9fe1b9cef1edf42bfcbdd14d55fcc11b', '删除客户等级', '/member/{id}', 'DELETE', 3, '2020-01-20 10:24:30', 'DELETE:/member/{id}');
INSERT INTO `sys_resource` VALUES ('a11e2191656cb199bea1defb17758411', '修改菜单', '/menus/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/menus/{id}');
INSERT INTO `sys_resource` VALUES ('a14f899515b783c157f013f2ab7381e2', '省市区联动', '/wxServices/city/{areaCode}', 'GET', 3, '2019-11-23 14:41:57', 'GET:/wxServices/city/{areaCode}');
INSERT INTO `sys_resource` VALUES ('a1fc8536c3314b5d8be800e24887d785', '查询运费', '/wxServices/postFee', 'POST', 3, '2019-11-26 17:14:30', 'POST:/wxServices/postFee');
INSERT INTO `sys_resource` VALUES ('a206bc32709f64d1351f22bede46c345', '素材删除', '/material/{id}', 'DELETE', 3, '2020-01-20 10:24:30', 'DELETE:/material/{id}');
INSERT INTO `sys_resource` VALUES ('a217c5d5c86e3498845a4f78a0fe9f65', '查询产品运费模板', '/carriage/{id}', 'GET', 3, '2020-01-20 10:24:30', 'GET:/carriage/{id}');
INSERT INTO `sys_resource` VALUES ('a475c5b1705cb3f2e880ec9bdada0588', '查询我的优惠券', '/wxServices/coupon', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/coupon');
INSERT INTO `sys_resource` VALUES ('a551eb0a4fcc16faeea8aee68ac7d378', '新增标签', '/label', 'POST', 3, '2020-01-20 10:24:30', 'POST:/label');
INSERT INTO `sys_resource` VALUES ('a5529264d2645996c83bba2e961d0ec3', '查询所有资源', '/resources/resources', 'GET', 3, '2020-01-20 10:24:30', 'GET:/resources/resources');
INSERT INTO `sys_resource` VALUES ('a5ecece6430a7379c52a89a7b986bfdb', '删除品牌标签', '/labelBrand/{id}', 'DELETE', 3, '2020-01-20 10:24:30', 'DELETE:/labelBrand/{id}');
INSERT INTO `sys_resource` VALUES ('a622b437c43723daccc70640f4528127', '查询所有品牌(分页)', '/brand', 'GET', 3, '2020-01-20 10:24:30', 'GET:/brand');
INSERT INTO `sys_resource` VALUES ('a6963eb4ac4f48180bf1f12a3e230d28', '查询首页轮播图', '/wxServices/image', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/image');
INSERT INTO `sys_resource` VALUES ('a714325d4f96aabb576f35b85073b926', '添加产品运费运费模板', '/carriage', 'POST', 3, '2020-01-20 10:24:30', 'POST:/carriage');
INSERT INTO `sys_resource` VALUES ('a71cb59835c613f39bd936deb20cdd27', '创建用户', '/users', 'POST', 3, '2020-01-20 10:24:30', 'POST:/users');
INSERT INTO `sys_resource` VALUES ('a826bca352908155da4ca6702edfa2ed', '修改角色菜单', '/roles/{id}/menus', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/roles/{id}/menus');
INSERT INTO `sys_resource` VALUES ('aaaf7881938c341f88afd8ec71fb0055', '分类修改', '/sort/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/sort/{id}');
INSERT INTO `sys_resource` VALUES ('ac6514107c756c125af61c50083766be', '查询轮播图', '/wx/image', 'GET', 3, '2019-11-22 20:10:27', 'GET:/wx/image');
INSERT INTO `sys_resource` VALUES ('af691f504cbd9b5a597ebe2f40fb3d33', '上传单个图片', '/image/upload', 'POST', 3, '2020-01-20 10:24:30', 'POST:/image/upload');
INSERT INTO `sys_resource` VALUES ('afb36a0bfb4435720215d0bc9f274c9c', '查询单个推荐返礼活动', '/marketRecommend/{id}', 'GET', 3, '2020-01-20 10:24:30', 'GET:/marketRecommend/{id}');
INSERT INTO `sys_resource` VALUES ('b188f8c598c46d1ed94e684e382bf33b', '添加产品图片', '/product/uploads', 'POST', 3, '2020-01-20 10:24:30', 'POST:/product/uploads');
INSERT INTO `sys_resource` VALUES ('b25b078ddc270fb5b372a636e54d792b', '查询单个品牌', '/brand/{id}', 'GET', 3, '2020-01-20 10:24:30', 'GET:/brand/{id}');
INSERT INTO `sys_resource` VALUES ('b2d328432e6ae97574a27ae713bc37e4', '删除客户', '/customer/{id}', 'DELETE', 3, '2019-11-28 10:43:46', 'DELETE:/customer/{id}');
INSERT INTO `sys_resource` VALUES ('b4770c0fe93fce7e829463328c800f20', '设置用户状态', '/users/{id}/status', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/users/{id}/status');
INSERT INTO `sys_resource` VALUES ('b4ead2cca3e3f8c4d55abf93c2376f9d', '查询所有图片', '/image', 'GET', 3, '2020-01-20 10:24:30', 'GET:/image');
INSERT INTO `sys_resource` VALUES ('b6a50db8c9f7bb5e03e1456b32b7cdff', '新增收件地址', '/wxServices/express/address', 'POST', 3, '2020-01-20 11:21:25', 'POST:/wxServices/express/address');
INSERT INTO `sys_resource` VALUES ('b7800ade0de254a2360fded17408fefa', '查询所有发现视频', '/wxServices/videos', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/videos');
INSERT INTO `sys_resource` VALUES ('b790f227c710370e12baca587f91f7aa', '查询一元三张优惠券', '/wxServices/coupons', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/coupons');
INSERT INTO `sys_resource` VALUES ('b9ce49d3172f83c909018ec281c1449b', '用户详情修改', '/wxServices/user/detail', 'POST', 3, '2019-11-23 22:12:30', 'POST:/wxServices/user/detail');
INSERT INTO `sys_resource` VALUES ('bcb221ca637106134acdebd0a4205f5c', '订单地址修改', '/order/{id}/address', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/order/{id}/address');
INSERT INTO `sys_resource` VALUES ('c14df45693686e5d0b7cbeca87c76503', '分享返礼-赠送产品请求支付接口', '/wxServices/wxSendPay/{currentOrderId}/{payType}', 'POST', 2, '2019-12-12 15:32:12', 'POST:/wxServices/wxSendPay/{currentOrderId}/{payType}');
INSERT INTO `sys_resource` VALUES ('c1c7a6f517b21ee5079f99cc3a4aeadd', '添加分享返利用户相关信息', '/wxServices/recommend/customer/{orderId}', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/recommend/customer/{orderId}');
INSERT INTO `sys_resource` VALUES ('c297a48966231b13f025f38d6735ff4d', '删除收件地址', '/wxServices/express/address/{id}', 'DELETE', 3, '2020-01-20 11:21:25', 'DELETE:/wxServices/express/address/{id}');
INSERT INTO `sys_resource` VALUES ('c2db9729dcd4a7d703e45411bb445dfd', '修改密码', '/account/password', 'PUT', 1, '2020-01-20 10:24:30', 'PUT:/account/password');
INSERT INTO `sys_resource` VALUES ('c30502e2dbd6b4979cc8a821982237bc', '查询单个客户', '/customer/{id}', 'GET', 3, '2019-11-28 10:43:46', 'GET:/customer/{id}');
INSERT INTO `sys_resource` VALUES ('c395ed8a42ee4b72701782a8a1e0f42f', '订单确认发货', '/order/logistics/{id}', 'PUT', 3, '2019-11-29 11:36:15', 'PUT:/order/logistics/{id}');
INSERT INTO `sys_resource` VALUES ('c47b0c9385f058b0f84e8a98790a8e55', '查询品牌信息', '/wxServices/brand', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/brand');
INSERT INTO `sys_resource` VALUES ('c5d7b53fbd7f6ae58ed9817379761dcb', '下单接口', '/wxServices/order', 'POST', 3, '2020-01-20 11:21:25', 'POST:/wxServices/order');
INSERT INTO `sys_resource` VALUES ('c72096abcaeba467a6a08438eaae420d', '查询产品信息图片', '/wxServices/{id}/image', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/{id}/image');
INSERT INTO `sys_resource` VALUES ('c74c7f2566e8952e1e99b0cc4f34ac23', '微信获取token', '/wxServices/token', 'POST', 2, '2020-01-20 11:21:25', 'POST:/wxServices/token');
INSERT INTO `sys_resource` VALUES ('c7828d7cfeb459c49879d64e0812945e', '修改用户头像', '/wxServices/user/head', 'PUT', 2, '2019-11-29 14:46:02', 'PUT:/wxServices/user/head');
INSERT INTO `sys_resource` VALUES ('ca3cdeb10e046e90cfa4212046fd521e', '未命名资源路径', '/wxServices/wxSendBack', 'POST', 2, '2020-01-20 11:21:25', 'POST:/wxServices/wxSendBack');
INSERT INTO `sys_resource` VALUES ('cac6f7523362190aae296870cd943a40', '查询所有标签', '/label', 'GET', 3, '2020-01-20 10:24:30', 'GET:/label');
INSERT INTO `sys_resource` VALUES ('cccf05a7c872e79a5812636424a8ac41', '添加品牌', '/brand', 'POST', 3, '2020-01-20 10:24:30', 'POST:/brand');
INSERT INTO `sys_resource` VALUES ('ce8d317dce8188756f6eb88e7555d553', '添加客户', '/customer', 'POST', 3, '2019-11-28 10:43:46', 'POST:/customer');
INSERT INTO `sys_resource` VALUES ('d4fe777360f19f854bf62dbacde2cbfd', '添加优惠券', '/coupon', 'POST', 3, '2020-01-20 10:24:30', 'POST:/coupon');
INSERT INTO `sys_resource` VALUES ('d665f9ba10d857b7e1eb3390242fb5eb', '删除相关运费配置信息', '/carriageConfig/{id}', 'DELETE', 3, '2020-01-20 10:24:30', 'DELETE:/carriageConfig/{id}');
INSERT INTO `sys_resource` VALUES ('d81bffa6ffd70cc443703820b5a95e8d', '获取账户菜单', '/account/menus', 'GET', 1, '2020-01-20 10:24:30', 'GET:/account/menus');
INSERT INTO `sys_resource` VALUES ('d82de0a17f2c63106f98eb2f88d166e9', '添加角色', '/roles', 'POST', 3, '2020-01-20 10:24:30', 'POST:/roles');
INSERT INTO `sys_resource` VALUES ('d9d6f7163b313b950710a637682354d1', '查询所有角色', '/roles/roles', 'GET', 3, '2020-01-20 10:24:30', 'GET:/roles/roles');
INSERT INTO `sys_resource` VALUES ('dcf7125218f11483361daad1c1b24ec6', '分类新增', '/sort', 'POST', 3, '2020-01-20 10:24:30', 'POST:/sort');
INSERT INTO `sys_resource` VALUES ('decc2c0c2302f170b689c687b281919d', '未命名资源路径', '/wxServices/wxSendBack/{orderId}', 'POST', 2, '2019-12-12 11:07:39', 'POST:/wxServices/wxSendBack/{orderId}');
INSERT INTO `sys_resource` VALUES ('e1eb5038ea859e953e83f47153c559c5', '省市区联动', '/province', 'GET', 2, '2020-01-20 10:24:30', 'GET:/province');
INSERT INTO `sys_resource` VALUES ('e43c2920ce27e574bc1bba6c6fd25150', '省市区联动', '/city', 'GET', 2, '2019-11-29 17:26:11', 'GET:/city');
INSERT INTO `sys_resource` VALUES ('e566ffa9ab749b57c343d81de0373505', '订单确认发货', '/order/logistics', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/order/logistics');
INSERT INTO `sys_resource` VALUES ('e6bb2bc6c13f1d59fe246a12a2517152', '设置标签状态', '/labelProduct/{id}/status', 'PUT', 3, '2019-11-23 19:35:25', 'PUT:/labelProduct/{id}/status');
INSERT INTO `sys_resource` VALUES ('e78940daf86b9ac5563d539e8802429c', '获取账户详情', '/account/info', 'GET', 1, '2020-01-20 10:24:30', 'GET:/account/info');
INSERT INTO `sys_resource` VALUES ('e7f62e644e3531db217641b07114453e', '删除标签', '/label/{id}', 'DELETE', 3, '2020-01-20 10:24:30', 'DELETE:/label/{id}');
INSERT INTO `sys_resource` VALUES ('e8339e0b51cde090710ff2cbaefc69ca', '获取运费配置对应相关运费区域', '/carriageConfig/areas/{id}', 'GET', 3, '2020-01-20 10:24:30', 'GET:/carriageConfig/areas/{id}');
INSERT INTO `sys_resource` VALUES ('e8f873edc306e950e9a6cebd73dfafdc', '设置品牌状态', '/brand/{id}/status', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/brand/{id}/status');
INSERT INTO `sys_resource` VALUES ('ea481b0caee71201808a556fb420b092', '修改图片启用状态', '/image/{id}/status', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/image/{id}/status');
INSERT INTO `sys_resource` VALUES ('eaee955f405f6b96beab5136bfa3e29b', '修改角色', '/roles/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/roles/{id}');
INSERT INTO `sys_resource` VALUES ('eebe4e6822c8409e9a05e7d0856c23c6', '查询运费', '/wxServices/postFee', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/postFee');
INSERT INTO `sys_resource` VALUES ('ef462c752beead0d057e6f780399b6b7', '删除推荐返礼活动', '/marketRecommend/{id}', 'DELETE', 3, '2020-01-20 10:24:30', 'DELETE:/marketRecommend/{id}');
INSERT INTO `sys_resource` VALUES ('ef769a77db53a1eff5c9b39da1d71789', '素材新增', '/material', 'POST', 3, '2020-01-20 10:24:30', 'POST:/material');
INSERT INTO `sys_resource` VALUES ('f034347e623f5f0a0242cec2c8b7287b', '修改品牌', '/brand/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/brand/{id}');
INSERT INTO `sys_resource` VALUES ('f15f7b01ffe7166b05c3984c9b967837', '删除菜单', '/menus/{id}', 'DELETE', 3, '2020-01-20 10:24:30', 'DELETE:/menus/{id}');
INSERT INTO `sys_resource` VALUES ('f45f1b577d72dcd86b84c6f033682b53', '刷新资源', '/resources', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/resources');
INSERT INTO `sys_resource` VALUES ('f4bd728201cf2319d54316e53ba0d563', '验证分享返礼领取权限接口', '/wxServices/recommend/check/{orderId}/{recommendId}', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/recommend/check/{orderId}/{recommendId}');
INSERT INTO `sys_resource` VALUES ('f917f11069c42557688d5413ff65207d', '修改标签', '/label/{id}', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/label/{id}');
INSERT INTO `sys_resource` VALUES ('fa99cca39b9447ef6dca47361726e3c4', '查询品牌信息', '/wx/brand', 'GET', 3, '2019-11-22 20:09:46', 'GET:/wx/brand');
INSERT INTO `sys_resource` VALUES ('fc9e7d2122e392ad40e41dc570bb7a4f', '删除产品标签', '/labelProduct/{id}', 'DELETE', 3, '2019-11-28 10:43:46', 'DELETE:/labelProduct/{id}');
INSERT INTO `sys_resource` VALUES ('fcd2ec76f7a4a9f3592514e676d263cf', '查询品牌对应产品列表', '/wxServices/product/{id}', 'GET', 3, '2020-01-20 11:21:25', 'GET:/wxServices/product/{id}');
INSERT INTO `sys_resource` VALUES ('fcf4b8e84f9341f42f94544c542454d4', '设置推荐返礼活动状态', '/marketRecommend/{id}/status', 'PUT', 3, '2020-01-20 10:24:30', 'PUT:/marketRecommend/{id}/status');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色名称',
  `create_uid` int(11) NOT NULL COMMENT '创建者ID',
  `update_uid` int(11) NOT NULL COMMENT '修改者ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 1, 1, '2018-11-12 15:59:43', '2019-11-04 19:45:31', '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通管理员', 1, 1, '2018-11-12 16:00:17', '2018-11-12 16:00:19', '普通管理员');
INSERT INTO `sys_role` VALUES (7, '微信端用户', 1, 1, '2019-11-18 10:59:19', '2019-11-18 10:59:19', '微信用户');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3895 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色菜单关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (245, 2, 52);
INSERT INTO `sys_role_menu` VALUES (246, 2, 26);
INSERT INTO `sys_role_menu` VALUES (247, 2, 27);
INSERT INTO `sys_role_menu` VALUES (3802, 1, 1);
INSERT INTO `sys_role_menu` VALUES (3803, 1, 23);
INSERT INTO `sys_role_menu` VALUES (3804, 1, 34);
INSERT INTO `sys_role_menu` VALUES (3805, 1, 35);
INSERT INTO `sys_role_menu` VALUES (3806, 1, 36);
INSERT INTO `sys_role_menu` VALUES (3807, 1, 24);
INSERT INTO `sys_role_menu` VALUES (3808, 1, 31);
INSERT INTO `sys_role_menu` VALUES (3809, 1, 32);
INSERT INTO `sys_role_menu` VALUES (3810, 1, 33);
INSERT INTO `sys_role_menu` VALUES (3811, 1, 42);
INSERT INTO `sys_role_menu` VALUES (3812, 1, 25);
INSERT INTO `sys_role_menu` VALUES (3813, 1, 28);
INSERT INTO `sys_role_menu` VALUES (3814, 1, 29);
INSERT INTO `sys_role_menu` VALUES (3815, 1, 30);
INSERT INTO `sys_role_menu` VALUES (3816, 1, 26);
INSERT INTO `sys_role_menu` VALUES (3817, 1, 27);
INSERT INTO `sys_role_menu` VALUES (3818, 1, 47);
INSERT INTO `sys_role_menu` VALUES (3819, 1, 131);
INSERT INTO `sys_role_menu` VALUES (3820, 1, 132);
INSERT INTO `sys_role_menu` VALUES (3821, 1, 133);
INSERT INTO `sys_role_menu` VALUES (3822, 1, 134);
INSERT INTO `sys_role_menu` VALUES (3823, 1, 135);
INSERT INTO `sys_role_menu` VALUES (3824, 1, 136);
INSERT INTO `sys_role_menu` VALUES (3825, 1, 137);
INSERT INTO `sys_role_menu` VALUES (3826, 1, 138);
INSERT INTO `sys_role_menu` VALUES (3827, 1, 139);
INSERT INTO `sys_role_menu` VALUES (3828, 1, 140);
INSERT INTO `sys_role_menu` VALUES (3829, 1, 141);
INSERT INTO `sys_role_menu` VALUES (3830, 1, 48);
INSERT INTO `sys_role_menu` VALUES (3831, 1, 78);
INSERT INTO `sys_role_menu` VALUES (3832, 1, 79);
INSERT INTO `sys_role_menu` VALUES (3833, 1, 81);
INSERT INTO `sys_role_menu` VALUES (3834, 1, 82);
INSERT INTO `sys_role_menu` VALUES (3835, 1, 49);
INSERT INTO `sys_role_menu` VALUES (3836, 1, 73);
INSERT INTO `sys_role_menu` VALUES (3837, 1, 74);
INSERT INTO `sys_role_menu` VALUES (3838, 1, 75);
INSERT INTO `sys_role_menu` VALUES (3839, 1, 76);
INSERT INTO `sys_role_menu` VALUES (3840, 1, 96);
INSERT INTO `sys_role_menu` VALUES (3841, 1, 97);
INSERT INTO `sys_role_menu` VALUES (3842, 1, 98);
INSERT INTO `sys_role_menu` VALUES (3843, 1, 99);
INSERT INTO `sys_role_menu` VALUES (3844, 1, 100);
INSERT INTO `sys_role_menu` VALUES (3845, 1, 50);
INSERT INTO `sys_role_menu` VALUES (3846, 1, 84);
INSERT INTO `sys_role_menu` VALUES (3847, 1, 86);
INSERT INTO `sys_role_menu` VALUES (3848, 1, 87);
INSERT INTO `sys_role_menu` VALUES (3849, 1, 116);
INSERT INTO `sys_role_menu` VALUES (3850, 1, 128);
INSERT INTO `sys_role_menu` VALUES (3851, 1, 122);
INSERT INTO `sys_role_menu` VALUES (3852, 1, 52);
INSERT INTO `sys_role_menu` VALUES (3853, 1, 59);
INSERT INTO `sys_role_menu` VALUES (3854, 1, 62);
INSERT INTO `sys_role_menu` VALUES (3855, 1, 67);
INSERT INTO `sys_role_menu` VALUES (3856, 1, 68);
INSERT INTO `sys_role_menu` VALUES (3857, 1, 53);
INSERT INTO `sys_role_menu` VALUES (3858, 1, 69);
INSERT INTO `sys_role_menu` VALUES (3859, 1, 70);
INSERT INTO `sys_role_menu` VALUES (3860, 1, 71);
INSERT INTO `sys_role_menu` VALUES (3861, 1, 72);
INSERT INTO `sys_role_menu` VALUES (3862, 1, 88);
INSERT INTO `sys_role_menu` VALUES (3863, 1, 89);
INSERT INTO `sys_role_menu` VALUES (3864, 1, 90);
INSERT INTO `sys_role_menu` VALUES (3865, 1, 91);
INSERT INTO `sys_role_menu` VALUES (3866, 1, 92);
INSERT INTO `sys_role_menu` VALUES (3867, 1, 93);
INSERT INTO `sys_role_menu` VALUES (3868, 1, 94);
INSERT INTO `sys_role_menu` VALUES (3869, 1, 95);
INSERT INTO `sys_role_menu` VALUES (3870, 1, 110);
INSERT INTO `sys_role_menu` VALUES (3871, 1, 111);
INSERT INTO `sys_role_menu` VALUES (3872, 1, 112);
INSERT INTO `sys_role_menu` VALUES (3873, 1, 113);
INSERT INTO `sys_role_menu` VALUES (3874, 1, 54);
INSERT INTO `sys_role_menu` VALUES (3875, 1, 123);
INSERT INTO `sys_role_menu` VALUES (3876, 1, 124);
INSERT INTO `sys_role_menu` VALUES (3877, 1, 125);
INSERT INTO `sys_role_menu` VALUES (3878, 1, 126);
INSERT INTO `sys_role_menu` VALUES (3879, 1, 117);
INSERT INTO `sys_role_menu` VALUES (3880, 1, 118);
INSERT INTO `sys_role_menu` VALUES (3881, 1, 119);
INSERT INTO `sys_role_menu` VALUES (3882, 1, 120);
INSERT INTO `sys_role_menu` VALUES (3883, 1, 121);
INSERT INTO `sys_role_menu` VALUES (3884, 1, 129);
INSERT INTO `sys_role_menu` VALUES (3885, 1, 130);

-- ----------------------------
-- Table structure for sys_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_resource`;
CREATE TABLE `sys_role_resource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `resource_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色资源关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机',
  `status` smallint(2) NOT NULL COMMENT '状态 0：禁用 1：正常',
  `create_uid` int(11) NOT NULL COMMENT '创建者ID',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  `login_name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登陆名',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'IP地址',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'Crown', 'caratacus@qq.com', '13712345678', 0, 1, '2018-11-05 17:19:05', '2020-01-20 10:24:45', 'crown', '$apr1$crown$WQ2TEXVPUJ8l6N6gm0CGv.', '127.0.0.1');
INSERT INTO `sys_user` VALUES (18, 'crown1', '11@qq.com', '13718867899', 0, 1, '2018-11-19 18:56:19', '2019-11-04 19:37:49', 'crown1', '$apr1$crown1$NsepppGmlSjqtwPTlaLb1/', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_user` VALUES (19, 'crown2', '13878929833@163.com', '13878929833', 0, 18, '2018-12-10 15:25:57', '2019-11-04 18:12:21', 'crown2', '$apr1$crown2$R/8LgZ.REDrXB3jlpyglI0', NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统用户角色关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (55, 26, 1);
INSERT INTO `sys_user_role` VALUES (56, 27, 1);
INSERT INTO `sys_user_role` VALUES (59, 19, 2);
INSERT INTO `sys_user_role` VALUES (60, 18, 2);
INSERT INTO `sys_user_role` VALUES (61, 1, 1);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频路径',
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'openId',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '发现小视频' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, 'q1pxvpm3i.bkt.clouddn.com/a62faab094134a88805a6dea6f749380.mp4', 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', '2019-12-04 17:31:49');
INSERT INTO `video` VALUES (2, 'q1pxvpm3i.bkt.clouddn.com/d3787dc8debb4de49408856f4979e411.mp4', 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', '2019-12-04 17:32:08');
INSERT INTO `video` VALUES (3, 'q1pxvpm3i.bkt.clouddn.com/d3787dc8debb4de49408856f4979e411.mp4', 'o7sMs5IYarmR7dAeP-WUDtPKH1mI', '2019-12-04 17:32:08');
INSERT INTO `video` VALUES (4, 'q1pxvpm3i.bkt.clouddn.com/0e5ff8b670eb4aa3ad24cdc890c09b22.mp4', 'o7sMs5BxWyqTouC8PFnRgyxh6VOI', '2019-12-16 15:53:13');
INSERT INTO `video` VALUES (5, 'q1pxvpm3i.bkt.clouddn.com/da595c2f79f24f08a3f4cd1ab69d8200.mp4', 'o7sMs5F1SkLyAvCcdAiTVs2B-Lfg', '2019-12-20 13:32:49');

SET FOREIGN_KEY_CHECKS = 1;
