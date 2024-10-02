/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : dkd

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 02/10/2024 17:07:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, 1, 'id', '主键id', 'int(11)', 'Long', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:58:51');
INSERT INTO `gen_table_column` VALUES (2, 1, 'node_name', '点位名称', 'varchar(255)', 'String', 'nodeName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:58:51');
INSERT INTO `gen_table_column` VALUES (3, 1, 'address', '详细地址', 'varchar(255)', 'String', 'address', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:58:51');
INSERT INTO `gen_table_column` VALUES (4, 1, 'business_type', '商圈类型', 'int(11)', 'Long', 'businessType', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'business_type', 4, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:58:51');
INSERT INTO `gen_table_column` VALUES (5, 1, 'region_id', '区域ID', 'int(11)', 'Long', 'regionId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:58:51');
INSERT INTO `gen_table_column` VALUES (6, 1, 'partner_id', '合作商ID', 'int(11)', 'Long', 'partnerId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:58:51');
INSERT INTO `gen_table_column` VALUES (7, 1, 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:58:51');
INSERT INTO `gen_table_column` VALUES (8, 1, 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:58:51');
INSERT INTO `gen_table_column` VALUES (9, 1, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:58:51');
INSERT INTO `gen_table_column` VALUES (10, 1, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:58:51');
INSERT INTO `gen_table_column` VALUES (11, 1, 'remark', '备注', 'text', 'String', 'remark', '0', '0', '0', '1', '1', '0', NULL, 'EQ', 'textarea', '', 11, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:58:51');
INSERT INTO `gen_table_column` VALUES (12, 2, 'id', '主键id', 'int(11)', 'Long', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 12:01:31');
INSERT INTO `gen_table_column` VALUES (13, 2, 'partner_name', '合作商名称', 'varchar(255)', 'String', 'partnerName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 12:01:31');
INSERT INTO `gen_table_column` VALUES (14, 2, 'contact_person', '联系人', 'varchar(64)', 'String', 'contactPerson', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 12:01:31');
INSERT INTO `gen_table_column` VALUES (15, 2, 'contact_phone', '联系电话', 'varchar(15)', 'String', 'contactPhone', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 12:01:31');
INSERT INTO `gen_table_column` VALUES (16, 2, 'profit_ratio', '分成比例', 'int(11)', 'Long', 'profitRatio', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 12:01:31');
INSERT INTO `gen_table_column` VALUES (17, 2, 'account', '账号', 'varchar(64)', 'String', 'account', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 12:01:31');
INSERT INTO `gen_table_column` VALUES (18, 2, 'password', '密码', 'varchar(64)', 'String', 'password', '0', '0', '1', '1', '1', '0', '0', 'EQ', 'input', '', 7, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 12:01:31');
INSERT INTO `gen_table_column` VALUES (19, 2, 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 12:01:31');
INSERT INTO `gen_table_column` VALUES (20, 2, 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 12:01:31');
INSERT INTO `gen_table_column` VALUES (21, 2, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 12:01:31');
INSERT INTO `gen_table_column` VALUES (22, 2, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 12:01:31');
INSERT INTO `gen_table_column` VALUES (23, 2, 'remark', '备注', 'text', 'String', 'remark', '0', '0', '0', '1', '1', '0', NULL, 'EQ', 'textarea', '', 12, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 12:01:31');
INSERT INTO `gen_table_column` VALUES (24, 3, 'id', '主键id', 'int(11)', 'Long', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:54:53');
INSERT INTO `gen_table_column` VALUES (25, 3, 'region_name', '区域名称', 'varchar(255)', 'String', 'regionName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:54:53');
INSERT INTO `gen_table_column` VALUES (26, 3, 'create_time', '创建时间', 'timestamp', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 3, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:54:53');
INSERT INTO `gen_table_column` VALUES (27, 3, 'update_time', '修改时间', 'timestamp', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:54:53');
INSERT INTO `gen_table_column` VALUES (28, 3, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:54:53');
INSERT INTO `gen_table_column` VALUES (29, 3, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:54:53');
INSERT INTO `gen_table_column` VALUES (30, 3, 'remark', '备注说明', 'text', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'textarea', '', 7, 'admin', '2024-07-03 11:46:35', '', '2024-07-03 11:54:53');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-06-30 11:41:51', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-06-30 11:41:51', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-06-30 11:41:51', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'false', 'Y', 'admin', '2024-06-30 11:41:51', 'admin', '2024-06-30 11:50:43', '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2024-06-30 11:41:51', 'admin', '2024-06-30 11:50:58', '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-06-30 11:41:51', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-30 11:41:51', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-30 11:41:51', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-30 11:41:51', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-30 11:41:51', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-30 11:41:51', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-30 11:41:51', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-30 11:41:51', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-30 11:41:51', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-30 11:41:51', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-30 11:41:51', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (30, 1, '旅游区', '1', 'business_type', NULL, 'default', 'N', '0', 'admin', '2024-07-03 11:44:56', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (31, 2, '商场写字楼', '2', 'business_type', NULL, 'default', 'N', '0', 'admin', '2024-07-03 11:45:16', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (32, 3, '学校', '3', 'business_type', NULL, 'default', 'N', '0', 'admin', '2024-07-03 11:45:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (33, 4, '交通枢纽', '4', 'business_type', NULL, 'default', 'N', '0', 'admin', '2024-07-03 11:45:42', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (11, '商圈', 'business_type', '0', 'admin', '2024-07-03 11:44:03', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-06-30 11:41:51', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-30 11:46:13');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-30 11:46:45');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-30 11:49:31');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-30 11:50:20');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-30 11:50:27');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-30 11:51:02');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-30 11:51:03');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-30 11:51:07');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-30 11:51:09');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-07-03 10:25:03');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-07-04 08:44:42');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-07-18 09:00:01');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-07-18 09:07:53');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-06 11:37:25');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-29 10:11:22');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-29 15:34:33');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-30 06:28:48');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-01 14:19:10');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-01 21:13:26');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-02 08:46:00');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-02 15:52:09');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1080 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 11, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-06-30 11:41:51', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 12, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-06-30 11:41:51', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 13, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-06-30 11:41:51', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 14, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2024-06-30 11:41:51', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-06-30 11:41:51', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-06-30 11:41:51', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-06-30 11:41:51', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-06-30 11:41:51', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-06-30 11:41:51', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-06-30 11:41:51', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-06-30 11:41:51', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-06-30 11:41:51', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-06-30 11:41:51', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-06-30 11:41:51', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-06-30 11:41:51', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-06-30 11:41:51', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-06-30 11:41:51', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-06-30 11:41:51', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-06-30 11:41:51', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-06-30 11:41:51', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-06-30 11:41:51', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-06-30 11:41:51', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-06-30 11:41:51', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-06-30 11:41:51', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '点位管理', 0, 2, 'node', NULL, NULL, 1, 0, 'M', '0', '0', '', '点位管理', 'admin', '2024-07-03 11:42:21', 'admin', '2024-07-03 11:42:33', '');
INSERT INTO `sys_menu` VALUES (1062, '点位管理', 1061, 1, 'node', 'manage/node/index', NULL, 1, 0, 'C', '0', '0', 'manage:node:list', '点位管理', 'admin', '2024-07-03 12:03:23', 'admin', '2024-07-03 12:16:21', '点位管理菜单');
INSERT INTO `sys_menu` VALUES (1063, '点位管理查询', 1062, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:node:query', '#', 'admin', '2024-07-03 12:03:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1064, '点位管理新增', 1062, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:node:add', '#', 'admin', '2024-07-03 12:03:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1065, '点位管理修改', 1062, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:node:edit', '#', 'admin', '2024-07-03 12:03:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1066, '点位管理删除', 1062, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:node:remove', '#', 'admin', '2024-07-03 12:03:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1067, '点位管理导出', 1062, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:node:export', '#', 'admin', '2024-07-03 12:03:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1068, '合作商', 1061, 1, 'partner', 'manage/partner/index', NULL, 1, 0, 'C', '0', '0', 'manage:partner:list', '#', 'admin', '2024-07-03 12:03:34', '', NULL, '合作商菜单');
INSERT INTO `sys_menu` VALUES (1069, '合作商查询', 1068, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:partner:query', '#', 'admin', '2024-07-03 12:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1070, '合作商新增', 1068, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:partner:add', '#', 'admin', '2024-07-03 12:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1071, '合作商修改', 1068, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:partner:edit', '#', 'admin', '2024-07-03 12:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1072, '合作商删除', 1068, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:partner:remove', '#', 'admin', '2024-07-03 12:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1073, '合作商导出', 1068, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:partner:export', '#', 'admin', '2024-07-03 12:03:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1074, '区域管理', 1061, 1, 'region', 'manage/region/index', NULL, 1, 0, 'C', '0', '0', 'manage:region:list', '#', 'admin', '2024-07-03 12:03:42', '', NULL, '区域管理菜单');
INSERT INTO `sys_menu` VALUES (1075, '区域管理查询', 1074, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:region:query', '#', 'admin', '2024-07-03 12:03:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1076, '区域管理新增', 1074, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:region:add', '#', 'admin', '2024-07-03 12:03:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1077, '区域管理修改', 1074, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:region:edit', '#', 'admin', '2024-07-03 12:03:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1078, '区域管理删除', 1074, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:region:remove', '#', 'admin', '2024-07-03 12:03:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1079, '区域管理导出', 1074, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'manage:region:export', '#', 'admin', '2024-07-03 12:03:42', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-06-30 11:41:51', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-06-30 11:41:51', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 160 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '参数管理', 2, 'com.dkd.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/config', '127.0.0.1', '内网IP', '{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"N\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2024-06-30 11:41:51\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-30 11:46:34', 15);
INSERT INTO `sys_oper_log` VALUES (101, '参数管理', 2, 'com.dkd.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/config', '127.0.0.1', '内网IP', '{\"configId\":5,\"configKey\":\"sys.account.registerUser\",\"configName\":\"账号自助-是否开启用户注册功能\",\"configType\":\"Y\",\"configValue\":\"false\",\"createBy\":\"admin\",\"createTime\":\"2024-06-30 11:41:51\",\"params\":{},\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-30 11:46:42', 12);
INSERT INTO `sys_oper_log` VALUES (102, '参数管理', 2, 'com.dkd.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/config', '127.0.0.1', '内网IP', '{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"N\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2024-06-30 11:41:51\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\",\"updateTime\":\"2024-06-30 11:46:34\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-30 11:49:50', 8);
INSERT INTO `sys_oper_log` VALUES (103, '参数管理', 2, 'com.dkd.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/config', '127.0.0.1', '内网IP', '{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"Y\",\"configValue\":\"false\",\"createBy\":\"admin\",\"createTime\":\"2024-06-30 11:41:51\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\",\"updateTime\":\"2024-06-30 11:49:50\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-30 11:50:43', 12);
INSERT INTO `sys_oper_log` VALUES (104, '参数管理', 2, 'com.dkd.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/config', '127.0.0.1', '内网IP', '{\"configId\":5,\"configKey\":\"sys.account.registerUser\",\"configName\":\"账号自助-是否开启用户注册功能\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2024-06-30 11:41:51\",\"params\":{},\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"updateBy\":\"admin\",\"updateTime\":\"2024-06-30 11:46:42\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-30 11:50:58', 11);
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 1, 'com.dkd.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"点位管理\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"点位管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"node\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-07-03 11:42:21', 16);
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.dkd.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-07-03 11:42:21\",\"icon\":\"点位管理\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1061,\"menuName\":\"点位管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"node\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-07-03 11:42:33', 8);
INSERT INTO `sys_oper_log` VALUES (107, '字典类型', 1, 'com.dkd.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"商圈\",\"dictType\":\"business_type\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-07-03 11:44:03', 8);
INSERT INTO `sys_oper_log` VALUES (108, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"旅游区\",\"dictSort\":1,\"dictType\":\"business_type\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-07-03 11:44:56', 8);
INSERT INTO `sys_oper_log` VALUES (109, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"商场写字楼\",\"dictSort\":2,\"dictType\":\"business_type\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-07-03 11:45:16', 7);
INSERT INTO `sys_oper_log` VALUES (110, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"学校\",\"dictSort\":3,\"dictType\":\"business_type\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-07-03 11:45:29', 8);
INSERT INTO `sys_oper_log` VALUES (111, '字典数据', 1, 'com.dkd.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"交通枢纽\",\"dictSort\":4,\"dictType\":\"business_type\",\"dictValue\":\"4\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-07-03 11:45:42', 7);
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 6, 'com.dkd.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tb_region,tb_partner,tb_node\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-07-03 11:46:35', 114);
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"region\",\"className\":\"Region\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键id\",\"columnId\":24,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-07-03 11:46:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"RegionName\",\"columnComment\":\"区域名称\",\"columnId\":25,\"columnName\":\"region_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-07-03 11:46:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"regionName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CreateTime\",\"columnComment\":\"创建时间\",\"columnId\":26,\"columnName\":\"create_time\",\"columnType\":\"timestamp\",\"createBy\":\"admin\",\"createTime\":\"2024-07-03 11:46:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isPk\":\"0\",\"isRequired\":\"0\",\"javaField\":\"createTime\",\"javaType\":\"Date\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UpdateTime\",\"columnComment\":\"修改时间\",\"columnId\":27,\"columnName\":\"update_time\",\"columnType\":\"timestamp\",\"createBy\":\"admin\",\"createTime\":\"2024-07-03 11:46:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isPk\":\"0\",\"isRequired\":\"0\",\"javaField\":\"updateTime\",\"javaType\":\"Date\",\"list\":fa', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-07-03 11:54:01', 24);
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"region\",\"className\":\"Region\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键id\",\"columnId\":24,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-07-03 11:46:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-07-03 11:54:01\",\"usableColumn\":false},{\"capJavaField\":\"RegionName\",\"columnComment\":\"区域名称\",\"columnId\":25,\"columnName\":\"region_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-07-03 11:46:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"regionName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-07-03 11:54:01\",\"usableColumn\":false},{\"capJavaField\":\"CreateTime\",\"columnComment\":\"创建时间\",\"columnId\":26,\"columnName\":\"create_time\",\"columnType\":\"timestamp\",\"createBy\":\"admin\",\"createTime\":\"2024-07-03 11:46:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isPk\":\"0\",\"isRequired\":\"0\",\"javaField\":\"createTime\",\"javaType\":\"Date\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-07-03 11:54:01\",\"usableColumn\":false},{\"capJavaField\":\"UpdateTime\",\"columnComment\":\"修改时间\",\"columnId\":27,\"columnName\":\"update_time\",\"columnType\":\"timestamp\",\"createBy\":\"admin\",\"createTime\":\"2024-07-03 11:46:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncre', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-07-03 11:54:53', 21);
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"node\",\"className\":\"Node\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-07-03 11:46:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"NodeName\",\"columnComment\":\"点位名称\",\"columnId\":2,\"columnName\":\"node_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-07-03 11:46:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"nodeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Address\",\"columnComment\":\"详细地址\",\"columnId\":3,\"columnName\":\"address\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-07-03 11:46:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"address\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"BusinessType\",\"columnComment\":\"商圈类型\",\"columnId\":4,\"columnName\":\"business_type\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-07-03 11:46:35\",\"dictType\":\"business_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-07-03 11:58:51', 24);
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 2, 'com.dkd.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"partner\",\"className\":\"Partner\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键id\",\"columnId\":12,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-07-03 11:46:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PartnerName\",\"columnComment\":\"合作商名称\",\"columnId\":13,\"columnName\":\"partner_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-07-03 11:46:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"partnerName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ContactPerson\",\"columnComment\":\"联系人\",\"columnId\":14,\"columnName\":\"contact_person\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2024-07-03 11:46:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"contactPerson\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ContactPhone\",\"columnComment\":\"联系电话\",\"columnId\":15,\"columnName\":\"contact_phone\",\"columnType\":\"varchar(15)\",\"createBy\":\"admin\",\"createTime\":\"2024-07-03 11:46:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-07-03 12:01:31', 23);
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 8, 'com.dkd.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tb_node\"}', NULL, 0, NULL, '2024-07-03 12:01:52', 141);
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 8, 'com.dkd.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tb_node,tb_partner,tb_region\"}', NULL, 0, NULL, '2024-07-03 12:02:22', 76);
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 2, 'com.dkd.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"manage/node/index\",\"createTime\":\"2024-07-03 12:03:23\",\"icon\":\"点位管理\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1062,\"menuName\":\"点位管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1061,\"path\":\"node\",\"perms\":\"manage:node:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-07-03 12:16:21', 19);
INSERT INTO `sys_oper_log` VALUES (120, '合作商', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"mihayou\",\"contactPerson\":\"张无忌\",\"contactPhone\":\"1898989778\",\"createTime\":\"2024-09-29 12:04:51\",\"id\":3,\"params\":{},\"partnerName\":\"米哈游\",\"profitRatio\":40,\"remark\":\"米哈游\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-29 12:04:51', 11);
INSERT INTO `sys_oper_log` VALUES (121, '合作商', 2, 'com.dkd.manage.controller.PartnerController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"mihayou\",\"contactPerson\":\"张无忌\",\"contactPhone\":\"1898989778\",\"createTime\":\"2024-09-29 12:04:51\",\"id\":3,\"params\":{},\"partnerName\":\"米哈游\",\"profitRatio\":40,\"remark\":\"\",\"updateTime\":\"2024-09-29 12:07:38\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-29 12:07:38', 5);
INSERT INTO `sys_oper_log` VALUES (122, '合作商', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"zzz\",\"contactPerson\":\"ZZZ\",\"contactPhone\":\"15823564895\",\"createTime\":\"2024-09-29 12:16:37\",\"id\":4,\"params\":{},\"partnerName\":\"绝区零\",\"profitRatio\":23}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-29 12:16:37', 4);
INSERT INTO `sys_oper_log` VALUES (123, '合作商', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"ys\",\"contactPerson\":\"gen\",\"contactPhone\":\"14525634785\",\"createTime\":\"2024-09-29 12:17:36\",\"id\":5,\"params\":{},\"partnerName\":\"愿神\",\"profitRatio\":23}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-29 12:17:36', 80);
INSERT INTO `sys_oper_log` VALUES (124, '合作商', 2, 'com.dkd.manage.controller.PartnerController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"mihayou\",\"contactPerson\":\"mys\",\"contactPhone\":\"1898989778\",\"createTime\":\"2024-09-29 12:04:51\",\"id\":3,\"params\":{},\"partnerName\":\"米哈游\",\"profitRatio\":40,\"remark\":\"\",\"updateTime\":\"2024-09-29 15:35:23\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-29 15:35:23', 9);
INSERT INTO `sys_oper_log` VALUES (125, '合作商', 2, 'com.dkd.manage.controller.PartnerController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"ys\",\"contactPerson\":\"gen\",\"contactPhone\":\"14525634785\",\"createTime\":\"2024-09-29 12:17:36\",\"id\":5,\"params\":{},\"partnerName\":\"愿神\",\"profitRatio\":20,\"updateTime\":\"2024-09-29 15:56:56\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-29 15:56:56', 4);
INSERT INTO `sys_oper_log` VALUES (126, '合作商', 2, 'com.dkd.manage.controller.PartnerController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"zzz\",\"contactPerson\":\"ZZZ\",\"contactPhone\":\"15823564895\",\"createTime\":\"2024-09-29 12:16:37\",\"id\":4,\"params\":{},\"partnerName\":\"攫取\",\"profitRatio\":23,\"updateTime\":\"2024-09-30 06:57:22\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 06:57:22', 9);
INSERT INTO `sys_oper_log` VALUES (127, '合作商', 2, 'com.dkd.manage.controller.PartnerController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"mihayou\",\"contactPerson\":\"ksf\",\"contactPhone\":\"1898989778\",\"createTime\":\"2024-09-29 12:04:51\",\"id\":3,\"params\":{},\"partnerName\":\"康师傅\",\"profitRatio\":40,\"remark\":\"\",\"updateTime\":\"2024-09-30 06:57:43\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 06:57:43', 4);
INSERT INTO `sys_oper_log` VALUES (128, '合作商', 2, 'com.dkd.manage.controller.PartnerController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"zzz\",\"contactPerson\":\"yb\",\"contactPhone\":\"15823564895\",\"createTime\":\"2024-09-29 12:16:37\",\"id\":4,\"params\":{},\"partnerName\":\"怡保\",\"profitRatio\":23,\"updateTime\":\"2024-09-30 06:57:59\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 06:57:59', 5);
INSERT INTO `sys_oper_log` VALUES (129, '合作商', 2, 'com.dkd.manage.controller.PartnerController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"ys\",\"contactPerson\":\"bss\",\"contactPhone\":\"14525634785\",\"createTime\":\"2024-09-29 12:17:36\",\"id\":6,\"params\":{},\"partnerName\":\"百岁山\",\"profitRatio\":20,\"updateTime\":\"2024-09-30 06:58:09\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 06:58:09', 3);
INSERT INTO `sys_oper_log` VALUES (130, '重置合作商密码', 2, 'com.dkd.manage.controller.PartnerController.resetpwd()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/1', '127.0.0.1', '内网IP', '1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 07:34:42', 85);
INSERT INTO `sys_oper_log` VALUES (131, '重置合作商密码', 2, 'com.dkd.manage.controller.PartnerController.resetpwd()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/1', '127.0.0.1', '内网IP', '1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 07:35:59', 79);
INSERT INTO `sys_oper_log` VALUES (132, '重置合作商密码', 2, 'com.dkd.manage.controller.PartnerController.resetpwd()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/1', '127.0.0.1', '内网IP', '1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 08:21:33', 78);
INSERT INTO `sys_oper_log` VALUES (133, '重置合作商密码', 2, 'com.dkd.manage.controller.PartnerController.resetpwd()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/1', '127.0.0.1', '内网IP', '1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 09:18:10', 10);
INSERT INTO `sys_oper_log` VALUES (134, '重置合作商密码', 2, 'com.dkd.manage.controller.PartnerController.resetpwd()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/2', '127.0.0.1', '内网IP', '2', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 09:18:28', 6);
INSERT INTO `sys_oper_log` VALUES (135, '重置合作商密码', 2, 'com.dkd.manage.controller.PartnerController.resetpwd()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/2', '127.0.0.1', '内网IP', '2', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 09:18:42', 4);
INSERT INTO `sys_oper_log` VALUES (136, '重置合作商密码', 2, 'com.dkd.manage.controller.PartnerController.resetpwd()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/2', '127.0.0.1', '内网IP', '2', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 09:23:30', 80);
INSERT INTO `sys_oper_log` VALUES (137, '重置合作商密码', 2, 'com.dkd.manage.controller.PartnerController.resetpwd()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/3', '127.0.0.1', '内网IP', '3', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 09:27:01', 74);
INSERT INTO `sys_oper_log` VALUES (138, '重置合作商密码', 2, 'com.dkd.manage.controller.PartnerController.resetpwd()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/1', '127.0.0.1', '内网IP', '1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 09:29:16', 75);
INSERT INTO `sys_oper_log` VALUES (139, '重置合作商密码', 2, 'com.dkd.manage.controller.PartnerController.resetpwd()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/1', '127.0.0.1', '内网IP', '1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 09:29:19', 73);
INSERT INTO `sys_oper_log` VALUES (140, '重置合作商密码', 2, 'com.dkd.manage.controller.PartnerController.resetpwd()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 09:29:30', 74);
INSERT INTO `sys_oper_log` VALUES (141, '重置合作商密码', 2, 'com.dkd.manage.controller.PartnerController.resetpwd()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/1', '127.0.0.1', '内网IP', '1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 09:30:11', 73);
INSERT INTO `sys_oper_log` VALUES (142, '重置合作商密码', 2, 'com.dkd.manage.controller.PartnerController.resetpwd()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 09:31:12', 77);
INSERT INTO `sys_oper_log` VALUES (143, '重置合作商密码', 2, 'com.dkd.manage.controller.PartnerController.resetpwd()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 09:32:51', 77);
INSERT INTO `sys_oper_log` VALUES (144, '重置合作商密码', 2, 'com.dkd.manage.controller.PartnerController.resetpwd()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/3', '127.0.0.1', '内网IP', '3', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 09:34:32', 70);
INSERT INTO `sys_oper_log` VALUES (145, '重置合作商密码', 2, 'com.dkd.manage.controller.PartnerController.resetpwd()', 'PUT', 1, 'admin', '研发部门', '/manage/partner/resetPwd/1', '127.0.0.1', '内网IP', '1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-09-30 09:36:30', 72);
INSERT INTO `sys_oper_log` VALUES (146, '点位管理', 1, 'com.dkd.manage.controller.NodeController.add()', 'POST', 1, 'admin', '研发部门', '/manage/node', '127.0.0.1', '内网IP', '{\"address\":\"皂君庙-中关村南大街2号\",\"businessType\":2,\"createTime\":\"2024-10-01 21:28:14\",\"id\":3,\"nodeName\":\"海淀区中关村630平出租纯写字楼双地铁,人民大学站\",\"params\":{},\"partnerId\":3,\"regionId\":2,\"remark\":\"皂君庙-中关村南大街2号\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-01 21:28:14', 11);
INSERT INTO `sys_oper_log` VALUES (147, '点位管理', 2, 'com.dkd.manage.controller.NodeController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/node', '127.0.0.1', '内网IP', '{\"address\":\"皂君庙-中关村南大街2号\",\"businessType\":2,\"createTime\":\"2024-10-01 21:28:14\",\"id\":3,\"nodeName\":\"海淀区中关村写字楼双地铁,人民大学站\",\"params\":{},\"partnerId\":3,\"regionId\":2,\"remark\":\"皂君庙-中关村南大街2号\",\"updateTime\":\"2024-10-01 21:28:42\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-01 21:28:42', 2);
INSERT INTO `sys_oper_log` VALUES (148, '用户头像', 2, 'com.dkd.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/10/01/Snipaste_2024-09-08_22-35-53_20241001215217A001.jpg\",\"code\":200}', 0, NULL, '2024-10-01 21:52:17', 40);
INSERT INTO `sys_oper_log` VALUES (149, '个人信息', 2, 'com.dkd.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15888888888\",\"sex\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-01 21:52:20', 9);
INSERT INTO `sys_oper_log` VALUES (150, '点位管理', 3, 'com.dkd.manage.controller.NodeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/node/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-02 16:45:19', 8);
INSERT INTO `sys_oper_log` VALUES (151, '合作商', 3, 'com.dkd.manage.controller.PartnerController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/partner/6', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-02 16:45:27', 3);
INSERT INTO `sys_oper_log` VALUES (152, '区域管理', 3, 'com.dkd.manage.controller.RegionController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/region/3', '127.0.0.1', '内网IP', '{}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_emp`, CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`))\r\n### The error may exist in file [D:\\JAVA\\workspace\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\RegionMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.RegionMapper.deleteRegionByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from tb_region where id in           (               ?          )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_emp`, CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`))\n; Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_emp`, CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_emp`, CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`))', '2024-10-02 16:45:34', 32);
INSERT INTO `sys_oper_log` VALUES (153, '点位管理', 1, 'com.dkd.manage.controller.NodeController.add()', 'POST', 1, 'admin', '研发部门', '/manage/node', '127.0.0.1', '内网IP', '{\"address\":\"北京市海淀区双清路30号 \",\"businessType\":3,\"createTime\":\"2024-10-02 16:47:20\",\"id\":4,\"nodeName\":\"北京大学\",\"params\":{},\"partnerId\":3,\"regionId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-02 16:47:20', 11);
INSERT INTO `sys_oper_log` VALUES (154, '区域管理', 3, 'com.dkd.manage.controller.RegionController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/region/3', '127.0.0.1', '内网IP', '{}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_emp`, CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`))\r\n### The error may exist in file [D:\\JAVA\\workspace\\dkd-parent\\dkd-manage\\target\\classes\\mapper\\manage\\RegionMapper.xml]\r\n### The error may involve com.dkd.manage.mapper.RegionMapper.deleteRegionByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from tb_region where id in           (               ?          )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_emp`, CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`))\n; Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_emp`, CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot delete or update a parent row: a foreign key constraint fails (`dkd`.`tb_emp`, CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`))', '2024-10-02 16:50:20', 36);
INSERT INTO `sys_oper_log` VALUES (155, '合作商', 3, 'com.dkd.manage.controller.PartnerController.remove()', 'DELETE', 1, 'admin', '研发部门', '/manage/partner/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-02 16:50:30', 3);
INSERT INTO `sys_oper_log` VALUES (156, '合作商', 1, 'com.dkd.manage.controller.PartnerController.add()', 'POST', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"yb\",\"contactPerson\":\"yb\",\"contactPhone\":\"15489562145\",\"createTime\":\"2024-10-02 16:51:13\",\"id\":7,\"params\":{},\"partnerName\":\"怡保\",\"profitRatio\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-02 16:51:13', 80);
INSERT INTO `sys_oper_log` VALUES (157, '合作商', 2, 'com.dkd.manage.controller.PartnerController.edit()', 'PUT', 1, 'admin', '研发部门', '/manage/partner', '127.0.0.1', '内网IP', '{\"account\":\"yb\",\"contactPerson\":\"怡先生\",\"contactPhone\":\"15489562145\",\"createTime\":\"2024-10-02 16:51:14\",\"id\":7,\"params\":{},\"partnerName\":\"怡保\",\"profitRatio\":10,\"updateTime\":\"2024-10-02 16:51:32\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-02 16:51:32', 7);
INSERT INTO `sys_oper_log` VALUES (158, '区域管理', 1, 'com.dkd.manage.controller.RegionController.add()', 'POST', 1, 'admin', '研发部门', '/manage/region', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-10-02 16:52:00\",\"id\":4,\"params\":{},\"regionName\":\"北京市顺义区\",\"remark\":\"顺义\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-02 16:52:00', 6);
INSERT INTO `sys_oper_log` VALUES (159, '点位管理', 1, 'com.dkd.manage.controller.NodeController.add()', 'POST', 1, 'admin', '研发部门', '/manage/node', '127.0.0.1', '内网IP', '{\"address\":\"北京市顺义区站前街路北\",\"businessType\":2,\"createTime\":\"2024-10-02 16:53:21\",\"id\":5,\"nodeName\":\"麦当劳(顺义餐厅)\",\"params\":{},\"partnerId\":3,\"regionId\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-02 16:53:21', 8);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-06-30 11:41:51', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-06-30 11:41:51', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-06-30 11:41:51', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2024/10/01/Snipaste_2024-09-08_22-35-53_20241001215217A001.jpg', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-10-02 15:52:09', 'admin', '2024-06-30 11:41:51', '', '2024-10-02 15:52:09', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-06-30 11:41:51', 'admin', '2024-06-30 11:41:51', '', NULL, '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for tb_channel
-- ----------------------------
DROP TABLE IF EXISTS `tb_channel`;
CREATE TABLE `tb_channel`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `channel_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货道编号',
  `sku_id` bigint(20) NULL DEFAULT 0 COMMENT '商品Id',
  `vm_id` bigint(20) NOT NULL COMMENT '售货机Id',
  `inner_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '售货机软编号',
  `max_capacity` int(11) NOT NULL DEFAULT 0 COMMENT '货道最大容量',
  `current_capacity` int(11) NULL DEFAULT 0 COMMENT '货道当前容量',
  `last_supply_time` datetime(0) NULL DEFAULT NULL COMMENT '上次补货时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `channel_vendingmachine_Id_fk`(`vm_id`) USING BTREE,
  INDEX `tb_channel_inner_code_index`(`inner_code`) USING BTREE,
  CONSTRAINT `tb_channel_ibfk_1` FOREIGN KEY (`vm_id`) REFERENCES `tb_vending_machine` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5209 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '售货机货道表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_channel
-- ----------------------------
INSERT INTO `tb_channel` VALUES (4703, '1-1', 9, 80, 'A1000001', 10, 8, '2023-03-22 17:16:46', '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4704, '1-2', 2, 80, 'A1000001', 10, 2, '2023-03-22 17:16:46', '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4705, '1-3', 2, 80, 'A1000001', 10, 6, '2023-03-22 17:16:46', '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4706, '1-4', 4, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4707, '1-5', 3, 80, 'A1000001', 10, 9, '2023-03-22 17:16:46', '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4708, '1-6', 4, 80, 'A1000001', 10, 4, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4709, '2-1', 1, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4710, '2-2', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4711, '2-3', 8, 80, 'A1000001', 10, 0, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4712, '2-4', 9, 80, 'A1000001', 10, 9, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4713, '2-5', 2, 80, 'A1000001', 10, 6, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4714, '2-6', 4, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4715, '3-1', 7, 80, 'A1000001', 10, 5, '2023-03-22 17:16:46', '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4716, '3-2', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4717, '3-3', 3, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4718, '3-4', 2, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4719, '3-5', 2, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4720, '3-6', 1, 80, 'A1000001', 10, 10, '2023-03-22 17:16:46', '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4721, '4-1', 2, 80, 'A1000001', 10, 1, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4722, '4-2', 4, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4723, '4-3', 5, 80, 'A1000001', 10, 6, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4724, '4-4', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4725, '4-5', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4726, '4-6', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4727, '5-1', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4728, '5-2', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4729, '5-3', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4730, '5-4', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4731, '5-5', 9, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4732, '5-6', 6, 80, 'A1000001', 10, 10, NULL, '2022-05-11 12:12:40', '2024-05-19 16:05:35');
INSERT INTO `tb_channel` VALUES (4883, '1-1', 5, 86, 'aim5xu4I', 10, 10, NULL, '2022-12-05 17:01:38', '2022-12-05 17:01:38');
INSERT INTO `tb_channel` VALUES (4884, '1-2', 1, 86, 'aim5xu4I', 10, 10, NULL, '2022-12-05 17:01:38', '2022-12-05 17:01:38');
INSERT INTO `tb_channel` VALUES (4885, '2-1', 0, 86, 'aim5xu4I', 10, 10, NULL, '2022-12-05 17:01:38', '2022-12-05 17:01:38');
INSERT INTO `tb_channel` VALUES (4886, '2-2', 0, 86, 'aim5xu4I', 10, 10, NULL, '2022-12-05 17:01:38', '2022-12-05 17:01:38');
INSERT INTO `tb_channel` VALUES (4887, '1-1', 5, 87, '5cy5BdUs', 10, 10, '2022-12-05 21:45:36', '2022-12-05 21:35:56', '2022-12-05 21:45:36');
INSERT INTO `tb_channel` VALUES (4888, '1-2', 1, 87, '5cy5BdUs', 10, 10, '2022-12-05 21:45:36', '2022-12-05 21:35:56', '2022-12-05 21:45:36');
INSERT INTO `tb_channel` VALUES (4889, '2-1', 0, 87, '5cy5BdUs', 10, 10, NULL, '2022-12-05 21:35:56', '2022-12-05 21:35:56');
INSERT INTO `tb_channel` VALUES (4890, '2-2', 0, 87, '5cy5BdUs', 10, 10, NULL, '2022-12-05 21:35:56', '2022-12-05 21:35:56');
INSERT INTO `tb_channel` VALUES (4891, '1-1', 2, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4892, '1-2', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4893, '1-3', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4894, '1-4', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4895, '1-5', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4896, '1-6', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4897, '2-1', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4898, '2-2', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4899, '2-3', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4900, '2-4', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4901, '2-5', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4902, '2-6', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4903, '3-1', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4904, '3-2', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4905, '3-3', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4906, '3-4', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4907, '3-5', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4908, '3-6', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4909, '4-1', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4910, '4-2', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4911, '4-3', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4912, '4-4', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4913, '4-5', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4914, '4-6', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4915, '5-1', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4916, '5-2', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4917, '5-3', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4918, '5-4', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4919, '5-5', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4920, '5-6', 0, 88, 'tCeiyxLx', 10, 10, NULL, '2022-12-05 22:39:26', '2024-05-16 22:02:27');
INSERT INTO `tb_channel` VALUES (4921, '1-1', 2, 89, 'bR1cfQRa', 10, 10, NULL, '2022-12-06 10:06:11', '2023-09-22 15:43:44');
INSERT INTO `tb_channel` VALUES (4922, '1-2', 0, 89, 'bR1cfQRa', 10, 10, NULL, '2022-12-06 10:06:11', '2022-12-06 10:06:11');
INSERT INTO `tb_channel` VALUES (4923, '2-1', 0, 89, 'bR1cfQRa', 10, 10, NULL, '2022-12-06 10:06:11', '2022-12-06 10:06:11');
INSERT INTO `tb_channel` VALUES (4924, '2-2', 0, 89, 'bR1cfQRa', 10, 10, NULL, '2022-12-06 10:06:11', '2022-12-06 10:06:11');
INSERT INTO `tb_channel` VALUES (4925, '1-1', 2, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4926, '1-2', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4927, '1-3', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4928, '1-4', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4929, '1-5', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4930, '1-6', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4931, '2-1', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4932, '2-2', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4933, '2-3', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4934, '2-4', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4935, '2-5', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4936, '2-6', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4937, '3-1', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4938, '3-2', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4939, '3-3', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4940, '3-4', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4941, '3-5', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4942, '3-6', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4943, '4-1', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4944, '4-2', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4945, '4-3', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4946, '4-4', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4947, '4-5', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4948, '4-6', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4949, '5-1', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4950, '5-2', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4951, '5-3', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4952, '5-4', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4953, '5-5', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4954, '5-6', 0, 90, 'RhLWjaeR', 10, 10, NULL, '2022-12-06 10:17:32', '2024-05-15 16:31:18');
INSERT INTO `tb_channel` VALUES (4955, '1-1', 5, 91, 'qUObmvbM', 10, 10, '2022-12-06 15:11:20', '2022-12-06 14:58:46', '2022-12-06 15:11:20');
INSERT INTO `tb_channel` VALUES (4956, '1-2', 1, 91, 'qUObmvbM', 10, 10, '2022-12-06 15:11:20', '2022-12-06 14:58:46', '2022-12-06 15:11:20');
INSERT INTO `tb_channel` VALUES (4957, '2-1', 0, 91, 'qUObmvbM', 10, 10, NULL, '2022-12-06 14:58:46', '2022-12-06 14:58:46');
INSERT INTO `tb_channel` VALUES (4958, '2-2', 0, 91, 'qUObmvbM', 10, 10, NULL, '2022-12-06 14:58:46', '2022-12-06 14:58:46');
INSERT INTO `tb_channel` VALUES (4959, '1-1', 0, 92, 'tU6K5IHg', 10, 0, NULL, '2023-01-03 19:37:43', '2023-01-03 19:37:43');
INSERT INTO `tb_channel` VALUES (4960, '1-2', 0, 92, 'tU6K5IHg', 10, 0, NULL, '2023-01-03 19:37:43', '2023-01-03 19:37:43');
INSERT INTO `tb_channel` VALUES (4961, '2-1', 0, 92, 'tU6K5IHg', 10, 0, NULL, '2023-01-03 19:37:43', '2023-01-03 19:37:43');
INSERT INTO `tb_channel` VALUES (4962, '2-2', 0, 92, 'tU6K5IHg', 10, 0, NULL, '2023-01-03 19:37:43', '2023-01-03 19:37:43');
INSERT INTO `tb_channel` VALUES (4963, '1-1', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4964, '1-2', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4965, '1-3', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4966, '1-4', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4967, '1-5', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4968, '1-6', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4969, '2-1', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4970, '2-2', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4971, '2-3', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4972, '2-4', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4973, '2-5', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4974, '2-6', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4975, '3-1', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4976, '3-2', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4977, '3-3', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4978, '3-4', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4979, '3-5', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4980, '3-6', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4981, '4-1', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4982, '4-2', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4983, '4-3', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4984, '4-4', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4985, '4-5', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4986, '4-6', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4987, '5-1', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4988, '5-2', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4989, '5-3', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4990, '5-4', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4991, '5-5', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (4992, '5-6', 0, 93, 'iSzMcQXJ', 10, 0, NULL, '2023-02-01 11:16:02', '2023-02-01 11:16:02');
INSERT INTO `tb_channel` VALUES (5027, '1-1', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5028, '1-2', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5029, '1-3', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5030, '1-4', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5031, '2-1', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5032, '2-2', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5033, '2-3', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5034, '2-4', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5035, '3-1', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5036, '3-2', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5037, '3-3', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5038, '3-4', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5039, '4-1', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5040, '4-2', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5041, '4-3', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5042, '4-4', 0, 105, 'nf2UVwi5', 8, 0, NULL, '2024-05-13 21:37:53', NULL);
INSERT INTO `tb_channel` VALUES (5043, '1-1', 1, 106, 'vWgqPhpu', 10, 5, '2024-05-18 15:26:37', '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5044, '1-2', 2, 106, 'vWgqPhpu', 10, 5, '2024-05-18 15:26:37', '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5045, '1-3', 3, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5046, '1-4', 8, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5047, '1-5', 6, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5048, '1-6', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5049, '2-1', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5050, '2-2', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5051, '2-3', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5052, '2-4', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5053, '2-5', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5054, '2-6', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5055, '3-1', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5056, '3-2', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5057, '3-3', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5058, '3-4', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5059, '3-5', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5060, '3-6', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5061, '4-1', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5062, '4-2', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5063, '4-3', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5064, '4-4', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5065, '4-5', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5066, '4-6', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5067, '5-1', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5068, '5-2', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5069, '5-3', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5070, '5-4', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5071, '5-5', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5072, '5-6', 0, 106, 'vWgqPhpu', 10, 0, NULL, '2024-05-15 14:26:08', '2024-05-18 15:02:48');
INSERT INTO `tb_channel` VALUES (5073, '1-1', 1, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5074, '1-2', 2, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5075, '1-3', 2, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5076, '1-4', 4, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5077, '2-1', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5078, '2-2', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5079, '2-3', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5080, '2-4', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5081, '3-1', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5082, '3-2', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5083, '3-3', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5084, '3-4', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5085, '4-1', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5086, '4-2', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5087, '4-3', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5088, '4-4', 0, 107, 'SFNuCUe8', 8, 0, NULL, '2024-05-15 14:26:48', '2024-05-15 16:19:18');
INSERT INTO `tb_channel` VALUES (5179, '1-1', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5180, '1-2', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5181, '1-3', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5182, '1-4', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5183, '1-5', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5184, '1-6', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5185, '2-1', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5186, '2-2', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5187, '2-3', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5188, '2-4', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5189, '2-5', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5190, '2-6', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5191, '3-1', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5192, '3-2', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5193, '3-3', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5194, '3-4', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5195, '3-5', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5196, '3-6', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5197, '4-1', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5198, '4-2', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5199, '4-3', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5200, '4-4', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5201, '4-5', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5202, '4-6', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5203, '5-1', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5204, '5-2', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5205, '5-3', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5206, '5-4', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5207, '5-5', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');
INSERT INTO `tb_channel` VALUES (5208, '5-6', 0, 111, 'K6YYXHLY', 10, 0, NULL, '2024-05-19 15:28:27', '2024-05-19 15:28:27');

-- ----------------------------
-- Table structure for tb_emp
-- ----------------------------
DROP TABLE IF EXISTS `tb_emp`;
CREATE TABLE `tb_emp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工名称',
  `region_id` int(11) NULL DEFAULT NULL COMMENT '所属区域Id',
  `region_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域名称',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色id',
  `role_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色编号',
  `role_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `mobile` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工头像',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '是否启用',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tb_user_Id_uindex`(`id`) USING BTREE,
  UNIQUE INDEX `tb_user_user_name_uindex`(`user_name`) USING BTREE,
  UNIQUE INDEX `tb_user_mobile_uindex`(`mobile`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `region_id`(`region_id`) USING BTREE,
  CONSTRAINT `tb_emp_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_emp_ibfk_2` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工单员工表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_emp
-- ----------------------------
INSERT INTO `tb_emp` VALUES (2, '刘备', 2, '北京市海淀区', 2, '1002', '运营员', '13800000001', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:04');
INSERT INTO `tb_emp` VALUES (3, '关羽', 2, '北京市海淀区', 2, '1002', '运营员', '13800000002', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:06');
INSERT INTO `tb_emp` VALUES (4, '张飞', 2, '北京市海淀区', 3, '1003', '维修员', '13800000003', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:08');
INSERT INTO `tb_emp` VALUES (5, '赵云', 2, '北京市海淀区', 3, '1003', '维修员', '13800000004', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:10');
INSERT INTO `tb_emp` VALUES (6, '曹操', 1, '北京市朝阳区', 2, '1002', '运营员', '13900139001', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:11');
INSERT INTO `tb_emp` VALUES (7, '夏侯惇', 1, '北京市朝阳区', 2, '1002', '运营员', '13900000002', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:13');
INSERT INTO `tb_emp` VALUES (8, '许褚', 1, '北京市朝阳区', 3, '1003', '维修员', '13900139003', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:15');
INSERT INTO `tb_emp` VALUES (9, '张辽', 1, '北京市朝阳区', 3, '1003', '维修员', '13900000004', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:17');
INSERT INTO `tb_emp` VALUES (10, '孙权', 3, '北京市西城区', 2, '1002', '运营员', '13700000001', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:19');
INSERT INTO `tb_emp` VALUES (11, '周瑜', 3, '北京市西城区', 2, '1002', '运营员', '13700000002', 'http://likede2-java.itheima.net/image/avatar.png', 0, '2024-06-10 15:06:58', '2024-06-10 16:11:21');
INSERT INTO `tb_emp` VALUES (12, '吕蒙', 3, '北京市西城区', 3, '1003', '维修员', '13700000003', 'http://likede2-java.itheima.net/image/avatar.png', 0, '2024-06-10 15:06:58', '2024-06-10 16:11:24');
INSERT INTO `tb_emp` VALUES (13, '陆逊', 3, '北京市西城区', 3, '1003', '维修员', '13700000005', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:26');
INSERT INTO `tb_emp` VALUES (50, '孙一百', 1, '北京市朝阳区', 3, '1003', '维修员', '13700137009', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:28');
INSERT INTO `tb_emp` VALUES (51, '马超', 2, '北京市海淀区', 3, '1003', '维修员', '13900002222', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:30');
INSERT INTO `tb_emp` VALUES (52, '黄忠', 2, '北京市海淀区', 2, '1002', '运营员', '13900005555', 'http://likede2-java.itheima.net/image/avatar.png', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:31');
INSERT INTO `tb_emp` VALUES (53, '测试员工', 1, '北京市朝阳区', 1, '1001', '工单管理员', '15100000001', '/profile/upload/2024/05/18/4e7f3a15429bfda99bce42a18cdd1jpeg_20240518103539A002.jpeg', 1, '2024-06-10 15:06:58', '2024-06-10 16:11:33');

-- ----------------------------
-- Table structure for tb_job
-- ----------------------------
DROP TABLE IF EXISTS `tb_job`;
CREATE TABLE `tb_job`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `alert_value` int(11) NULL DEFAULT 0 COMMENT '警戒值百分比',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '自动补货任务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_job
-- ----------------------------
INSERT INTO `tb_job` VALUES (1, 80);

-- ----------------------------
-- Table structure for tb_node
-- ----------------------------
DROP TABLE IF EXISTS `tb_node`;
CREATE TABLE `tb_node`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `node_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '点位名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详细地址',
  `business_type` int(11) NULL DEFAULT NULL COMMENT '商圈类型',
  `region_id` int(11) NULL DEFAULT NULL COMMENT '区域ID',
  `partner_id` int(11) NULL DEFAULT NULL COMMENT '合作商ID',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tb_node_ibfk_1`(`region_id`) USING BTREE,
  INDEX `tb_node_ibfk_2`(`partner_id`) USING BTREE,
  CONSTRAINT `tb_node_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `tb_region` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_node_ibfk_2` FOREIGN KEY (`partner_id`) REFERENCES `tb_partner` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '点位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_node
-- ----------------------------
INSERT INTO `tb_node` VALUES (1, '三里屯点位', '北京市朝阳区三里屯路', 1, 1, 1, '2024-07-03 10:26:05', '2024-07-03 10:26:05', NULL, NULL, NULL);
INSERT INTO `tb_node` VALUES (2, '五道口点位', '北京市海淀区五道口', 2, 2, 2, '2024-07-03 10:26:05', '2024-07-03 10:26:05', NULL, NULL, NULL);
INSERT INTO `tb_node` VALUES (4, '北京大学', '北京市海淀区双清路30号 ', 3, 2, 3, '2024-10-02 16:47:21', '2024-10-02 16:47:20', NULL, NULL, NULL);
INSERT INTO `tb_node` VALUES (5, '麦当劳(顺义餐厅)', '北京市顺义区站前街路北', 2, 4, 3, '2024-10-02 16:53:21', '2024-10-02 16:53:21', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `order_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `third_no` varchar(34) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方平台单号',
  `inner_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机器编号',
  `channel_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货道编号',
  `sku_id` bigint(20) NULL DEFAULT NULL COMMENT 'skuId',
  `sku_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `class_id` int(11) NULL DEFAULT NULL COMMENT '商品类别Id',
  `status` int(11) NULL DEFAULT NULL COMMENT '订单状态:0-待支付;1-支付完成;2-出货成功;3-出货失败;4-已取消',
  `amount` int(11) NOT NULL DEFAULT 0 COMMENT '支付金额',
  `price` int(11) NOT NULL DEFAULT 0 COMMENT '商品金额',
  `pay_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付类型，1支付宝 2微信',
  `pay_status` int(11) NULL DEFAULT 0 COMMENT '支付状态，0-未支付;1-支付完成;2-退款中;3-退款完成',
  `bill` int(11) NULL DEFAULT 0 COMMENT '合作商账单金额',
  `addr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '点位地址',
  `region_id` bigint(20) NULL DEFAULT NULL COMMENT '所属区域Id',
  `region_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域名称',
  `business_type` int(11) NULL DEFAULT NULL COMMENT '所属商圈',
  `partner_id` int(11) NULL DEFAULT NULL COMMENT '合作商Id',
  `open_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跨站身份验证',
  `node_id` bigint(20) NULL DEFAULT NULL COMMENT '点位Id',
  `node_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '点位名称',
  `cancel_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '取消原因',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Order_OrderNo_uindex`(`order_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES (1639542977692344321, 'A1000001802891882192300', NULL, 'A1000001', NULL, 3, '统一奶茶', 1, 1, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '1', '2023-03-25 16:21:22', '2023-03-25 16:21:51');
INSERT INTO `tb_order` VALUES (1639551491689062401, 'A1000001804921842908200', NULL, 'A1000001', NULL, 2, '小康师傅', 1, 4, 1, 1, 'wxpay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '2', '2023-03-25 16:55:12', '2023-03-25 17:00:13');
INSERT INTO `tb_order` VALUES (1639551769091940353, 'A1000001804987986430800', NULL, 'A1000001', NULL, 7, '一百橙汁', 1, 4, 1, 1, 'wxpay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-03-25 16:56:18', '2023-03-25 17:01:19');
INSERT INTO `tb_order` VALUES (1639570465608884226, 'A1000001809445445129300', NULL, 'A1000001', NULL, 2, '小康师傅', 1, 4, 1, 1, 'wxpay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-03-25 18:10:35', '2023-03-25 18:11:05');
INSERT INTO `tb_order` VALUES (1640253438704431106, 'A1000001972287294582300', NULL, 'A1000001', NULL, 1, '可口可乐', 1, 2, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-03-27 15:24:29', '2023-03-27 15:24:52');
INSERT INTO `tb_order` VALUES (1640291223389851650, 'A1000001981295877562800', NULL, 'A1000001', NULL, 1, '可口可乐', 1, 4, 1, 1, 'wxpay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-03-27 17:54:37', '2023-03-27 17:59:39');
INSERT INTO `tb_order` VALUES (1640291496925581313, 'A1000001981361996771600', NULL, 'A1000001', NULL, 1, '可口可乐', 1, 4, 1, 1, 'wxpay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-03-27 17:55:43', '2023-03-27 18:00:44');
INSERT INTO `tb_order` VALUES (1640292440643940353, 'A1000001981586907029400', NULL, 'A1000001', NULL, 1, '可口可乐', 1, 4, 1, 1, 'alipay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-03-27 17:59:28', '2023-03-27 18:04:29');
INSERT INTO `tb_order` VALUES (1640294278558597121, 'A1000001982025093546600', NULL, 'A1000001', NULL, 1, '可口可乐', 1, 1, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-03-27 18:06:46', '2023-03-27 18:06:59');
INSERT INTO `tb_order` VALUES (1640295466658119682, 'A1000001982308461482000', NULL, 'A1000001', NULL, 1, '可口可乐', 1, 3, 1, 1, 'wxpay', 3, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-03-27 18:11:29', '2023-03-27 18:11:56');
INSERT INTO `tb_order` VALUES (1665192943211196418, 'A10000011867384516930600', NULL, 'A1000001', NULL, 2, '小康师傅', 1, 1, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-06-04 11:05:10', '2023-06-04 11:05:30');
INSERT INTO `tb_order` VALUES (1665193128339386370, 'A10000011867429590093200', NULL, 'A1000001', NULL, 3, '统一奶茶', 1, 1, 1, 1, 'alipay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-06-04 11:05:54', '2023-06-04 11:06:07');
INSERT INTO `tb_order` VALUES (1665193628363337730, 'A10000011867548883835400', NULL, 'A1000001', NULL, 1, '可口可乐', 1, 1, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-06-04 11:07:53', '2023-06-04 11:11:41');
INSERT INTO `tb_order` VALUES (1665197835275415554, 'A10000011868551878012500', NULL, 'A1000001', NULL, 2, '小康师傅', 1, 1, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, 'oJ9WJ5MhIS-hiwuUX0GmsHDzqTyQ', 1, '龙门石窟', '', '2023-06-04 11:24:36', '2023-06-04 11:24:58');
INSERT INTO `tb_order` VALUES (1665199941424197633, 'A10000011869054027266500', NULL, 'A1000001', NULL, 2, '小康师傅', 1, 1, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, 'oJ9WJ5MhIS-hiwuUX0GmsHDzqTyQ', 1, '龙门石窟', '', '2023-06-04 11:32:59', '2023-06-04 11:33:54');
INSERT INTO `tb_order` VALUES (1665294465416785921, 'A10000011891589370978600', NULL, 'A1000001', NULL, 9, '新星巴克', 1, 2, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-06-04 17:48:35', '2023-06-04 17:51:34');
INSERT INTO `tb_order` VALUES (1665296000083259393, 'A10000011891956192562900', NULL, 'A1000001', NULL, 9, '新星巴克', 1, 3, 1, 1, 'wxpay', 3, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-06-04 17:54:41', '2023-06-04 17:55:42');
INSERT INTO `tb_order` VALUES (1699412789128679425, 'A100000132363273473600', NULL, 'A1000001', NULL, 3, '统一奶茶', 1, 0, 1, 1, 'wxpay', 0, 0, NULL, 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-06 21:22:37', '2023-09-06 21:22:37');
INSERT INTO `tb_order` VALUES (1699413852900573185, 'A100000132616927206000', NULL, 'A1000001', '1-8', 3, '统一奶茶', 1, 1, 1, 1, 'wxpay', 1, 0, NULL, 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-06 21:26:51', '2023-09-06 21:27:51');
INSERT INTO `tb_order` VALUES (1699609497649393665, 'A100000179261600800100', NULL, 'A1000001', '1-3', 2, '小康师傅', NULL, 1, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-07 10:24:16', '2023-09-07 10:25:17');
INSERT INTO `tb_order` VALUES (1699665320891179009, 'A100000192570825504800', NULL, 'A1000001', '1-5', 3, '统一奶茶', NULL, 0, 1, 1, 'alipay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-07 14:06:05', '2023-09-07 14:06:05');
INSERT INTO `tb_order` VALUES (1699666273908350978, 'A100000192798155831900', NULL, 'A1000001', '1-3', 2, '小康师傅', NULL, 2, 1, 1, 'alipay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-07 14:09:53', '2023-09-07 14:12:18');
INSERT INTO `tb_order` VALUES (1699667483335909378, 'A100000193086524012200', NULL, 'A1000001', '1-1', 1, '可口可乐', NULL, 2, 1, 1, 'alipay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-10 14:14:41', '2023-09-07 14:15:51');
INSERT INTO `tb_order` VALUES (1700104081533829121, 'A1000001197178608837400', NULL, 'A1000001', '1-5', 3, '统一奶茶', NULL, 2, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-10 19:09:34', '2023-09-08 19:10:36');
INSERT INTO `tb_order` VALUES (1700104233585737730, 'A1000001197215723001700', NULL, 'A1000001', '1-1', 1, '可口可乐', NULL, 2, 1, 1, 'wxpay', 1, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-10 19:10:10', '2023-09-08 19:11:11');
INSERT INTO `tb_order` VALUES (1702608867975180289, 'A1000001794398419433700', NULL, 'A1000001', '2-2', 6, '怡宝至尊', NULL, 2, 3, 1, 'wxpay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-15 17:02:42', '2023-09-15 17:02:42');
INSERT INTO `tb_order` VALUES (1702614203809349633, 'A1000001795671154933400', NULL, 'A1000001', '1-3', 2, '小康师傅', NULL, 0, 1, 1, 'alipay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-15 17:23:54', '2023-09-15 17:23:54');
INSERT INTO `tb_order` VALUES (1702615729550376962, 'A1000001796034964829100', NULL, 'A1000001', '2-3', 8, '魔力花茶', NULL, 4, 1, 1, 'alipay', 0, 0, '河南省-洛阳市-龙门石窟', 1, NULL, 1, 1, '', 1, '龙门石窟', '', '2023-09-15 17:29:58', '2023-09-15 17:30:58');

-- ----------------------------
-- Table structure for tb_order_collect
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_collect`;
CREATE TABLE `tb_order_collect`  (
  `id` bigint(20) NOT NULL COMMENT 'Id',
  `partner_id` int(11) NULL DEFAULT NULL COMMENT '合作商Id',
  `partner_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合作商名称',
  `order_total_money` bigint(20) NULL DEFAULT NULL COMMENT '日订单收入总金额(平台端总数)',
  `order_date` date NULL DEFAULT NULL COMMENT '发生日期',
  `total_bill` int(11) NULL DEFAULT 0 COMMENT '分成总金额',
  `node_id` int(11) NULL DEFAULT NULL,
  `node_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '点位',
  `order_count` int(11) NULL DEFAULT NULL COMMENT '订单数',
  `ratio` int(11) NULL DEFAULT NULL COMMENT '分成比例',
  `region_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tb_order_collect_id_uindex`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合作商订单汇总表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_order_collect
-- ----------------------------
INSERT INTO `tb_order_collect` VALUES (1701144293748969474, 1, '金燕龙合作商', 6, '2023-09-27', 0, 1, '龙门石窟', 3, 15, '昌平');
INSERT INTO `tb_order_collect` VALUES (1701167701270380546, 1, '金燕龙合作商', 1, '2023-09-27', 0, 1, '龙门石窟', 3, 15, '顺义');
INSERT INTO `tb_order_collect` VALUES (1701168456614256642, 1, '金燕龙合作商', 2, '2023-09-27', 0, 1, '龙门石窟', 3, 15, '海淀');
INSERT INTO `tb_order_collect` VALUES (1701168704594092033, 1, '金燕龙合作商', 4, '2023-09-27', 0, 1, '龙门石窟', 3, 15, '东城');
INSERT INTO `tb_order_collect` VALUES (1701168956252332033, 1, '金燕龙合作商', 5, '2023-09-27', 0, 1, '龙门石窟', 3, 15, '朝阳');

-- ----------------------------
-- Table structure for tb_order_month_collect
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_month_collect`;
CREATE TABLE `tb_order_month_collect`  (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `partner_id` int(11) NULL DEFAULT NULL COMMENT '合作商Id',
  `partner_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合作商名称',
  `region_id` int(11) NULL DEFAULT NULL COMMENT '区域Id',
  `region_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区名称',
  `order_total_money` bigint(20) NULL DEFAULT NULL COMMENT '订单总金额',
  `order_total_count` bigint(20) NULL DEFAULT NULL COMMENT '订单总数',
  `month` int(11) NULL DEFAULT NULL COMMENT '月份',
  `year` int(11) NULL DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tb_order_month_collect_id_uindex`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '按月统计各公司销售情况表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_order_month_collect
-- ----------------------------

-- ----------------------------
-- Table structure for tb_partner
-- ----------------------------
DROP TABLE IF EXISTS `tb_partner`;
CREATE TABLE `tb_partner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `partner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '合作商名称',
  `contact_person` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `contact_phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `profit_ratio` int(11) NULL DEFAULT NULL COMMENT '分成比例',
  `account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '合作商表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_partner
-- ----------------------------
INSERT INTO `tb_partner` VALUES (1, '合作商A', '张三', '13800138000', 30, 'hzsA', '$2a$10$q.2kYcVDPWlUm6JZIk9c1.u5HMmxtwh7mB1JLtIAMUBg/M3cB.9fm', '2024-07-03 10:26:05', '2024-09-30 09:45:46', NULL, NULL, NULL);
INSERT INTO `tb_partner` VALUES (2, '合作商B', '李四', '13912345678', 25, 'hzsB', '$2a$10$eg5eSOuJwEJCwCwHYo5CCutwi6CsV6vwj3TMyEnGZHwiNqaIPFRWW', '2024-07-03 10:26:05', '2024-09-30 09:45:53', NULL, NULL, NULL);
INSERT INTO `tb_partner` VALUES (3, '康师傅', '康先生', '1898989778', 40, 'ksf', '$2a$10$wsvQM5Ko26EP.xi4xafbX.GxFjoDi76M6b4w.TdnOT/bYMllJ2/vW', '2024-09-29 12:04:51', '2024-09-30 09:46:34', NULL, NULL, '');
INSERT INTO `tb_partner` VALUES (7, '怡保', '怡先生', '15489562145', 10, 'yb', '$2a$10$YkLKQw8ke9bdgKqmuoLYHeyQSsvJTG26x7PgLWq5pyFxo9H5QFrEK', '2024-10-02 16:51:14', '2024-10-02 16:51:32', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_policy
-- ----------------------------
DROP TABLE IF EXISTS `tb_policy`;
CREATE TABLE `tb_policy`  (
  `policy_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '策略id',
  `policy_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '策略名称',
  `discount` int(11) NULL DEFAULT NULL COMMENT '策略方案，如：80代表8折',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`policy_id`) USING BTREE,
  UNIQUE INDEX `tb_policy_policy_name_uindex`(`policy_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '策略表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_policy
-- ----------------------------
INSERT INTO `tb_policy` VALUES (1, '九折优惠', 90, '2020-09-14 10:51:05', '2021-02-01 16:25:06');
INSERT INTO `tb_policy` VALUES (2, '八折优惠', 80, '2020-12-18 14:10:39', '2020-12-18 14:10:39');
INSERT INTO `tb_policy` VALUES (5, '冬季折扣', 70, '2021-01-11 15:29:32', '2024-05-13 22:15:32');
INSERT INTO `tb_policy` VALUES (9, '清爽夏日', 50, '2021-02-01 16:23:10', '2024-05-13 22:15:51');

-- ----------------------------
-- Table structure for tb_region
-- ----------------------------
DROP TABLE IF EXISTS `tb_region`;
CREATE TABLE `tb_region`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `region_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '区域名称',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '区域表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_region
-- ----------------------------
INSERT INTO `tb_region` VALUES (1, '北京市朝阳区', '2024-07-03 10:26:05', '2024-07-03 10:26:05', NULL, NULL, '北京市朝阳区');
INSERT INTO `tb_region` VALUES (2, '北京市海淀区', '2024-07-03 10:26:05', '2024-07-03 10:26:05', NULL, NULL, '北京市海淀区');
INSERT INTO `tb_region` VALUES (3, '北京市东城区', '2024-07-03 10:26:05', '2024-07-03 10:26:05', NULL, NULL, '北京市东城区');
INSERT INTO `tb_region` VALUES (4, '北京市顺义区', '2024-10-02 16:52:01', '2024-10-02 16:52:00', NULL, NULL, '顺义');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色编码\n',
  `role_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称\n',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE INDEX `tb_role_role_code_uindex`(`role_code`) USING BTREE,
  UNIQUE INDEX `tb_role_role_name_uindex`(`role_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工单角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES (1, '1001', '工单管理员');
INSERT INTO `tb_role` VALUES (2, '1002', '运营员');
INSERT INTO `tb_role` VALUES (3, '1003', '维修员');

-- ----------------------------
-- Table structure for tb_sku
-- ----------------------------
DROP TABLE IF EXISTS `tb_sku`;
CREATE TABLE `tb_sku`  (
  `sku_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sku_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `sku_image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品图片',
  `brand_Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品牌',
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格(净含量)',
  `price` int(11) NOT NULL DEFAULT 1 COMMENT '商品价格，单位分',
  `class_id` int(11) NOT NULL COMMENT '商品类型Id',
  `is_discount` tinyint(1) NULL DEFAULT 0 COMMENT '是否打折促销',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`sku_id`) USING BTREE,
  UNIQUE INDEX `tb_sku_sku_name_uindex`(`sku_name`) USING BTREE,
  INDEX `sku_sku_class_ClassId_fk`(`class_id`) USING BTREE,
  CONSTRAINT `tb_sku_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `tb_sku_class` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_sku
-- ----------------------------
INSERT INTO `tb_sku` VALUES (1, '可口可乐', 'https://likede2-java.itheima.net/image/product1.png', '可口可乐', '550ML', 200, 1, 1, '2020-09-14 09:14:17', '2024-05-14 10:47:42');
INSERT INTO `tb_sku` VALUES (2, '康师傅', 'https://likede2-java.itheima.net/image/product2.png', '可口可乐', '330ML', 200, 1, 0, '2020-09-14 09:15:43', '2024-05-14 10:47:52');
INSERT INTO `tb_sku` VALUES (3, '统一奶茶', 'https://likede2-java.itheima.net/image/product3.png', '可口可乐', '500ML', 100, 1, 0, '2020-09-16 14:41:50', '2020-09-16 14:41:50');
INSERT INTO `tb_sku` VALUES (4, '青梅绿茶', 'https://likede2-java.itheima.net/image/product4.png', '可口可乐', '500ML', 200, 1, 0, '2020-11-20 18:27:35', '2020-11-20 18:27:35');
INSERT INTO `tb_sku` VALUES (5, '冰糖雪梨', 'https://likede2-java.itheima.net/image/product5.png', '冰糖雪梨', '500ML', 250, 1, 0, '2020-12-18 14:03:41', '2024-05-14 10:47:28');
INSERT INTO `tb_sku` VALUES (6, '怡宝至尊', 'https://likede2-java.itheima.net/image/product6.png', '怡宝', '500ML', 200, 1, 0, '2020-12-18 14:04:02', '2024-05-14 10:47:35');
INSERT INTO `tb_sku` VALUES (7, '一百橙汁', 'https://likede2-java.itheima.net/image/product7.png', '100橙汁自然纯', '500ML', 100, 1, 0, '2020-12-18 14:04:26', '2020-12-18 14:04:26');
INSERT INTO `tb_sku` VALUES (8, '魔力花茶', 'https://likede2-java.itheima.net/image/product8.png', '茉莉花茶', '500ML', 100, 1, 0, '2020-12-18 14:04:45', '2020-12-18 14:04:45');
INSERT INTO `tb_sku` VALUES (9, '新星巴克', 'https://likede2-java.itheima.net/image/product9.png', '星巴克', '500ML', 100, 1, 0, '2020-12-18 14:05:01', '2020-12-18 14:05:01');

-- ----------------------------
-- Table structure for tb_sku_class
-- ----------------------------
DROP TABLE IF EXISTS `tb_sku_class`;
CREATE TABLE `tb_sku_class`  (
  `class_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `class_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '类别名称',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '上级id',
  PRIMARY KEY (`class_id`) USING BTREE,
  UNIQUE INDEX `tb_sku_class_class_name_uindex`(`class_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_sku_class
-- ----------------------------
INSERT INTO `tb_sku_class` VALUES (1, '饮料', 0);
INSERT INTO `tb_sku_class` VALUES (2, '零食', 0);
INSERT INTO `tb_sku_class` VALUES (3, '食品', 0);
INSERT INTO `tb_sku_class` VALUES (4, '玩具', 0);
INSERT INTO `tb_sku_class` VALUES (14, '化妆品', 0);

-- ----------------------------
-- Table structure for tb_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_task`;
CREATE TABLE `tb_task`  (
  `task_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '工单ID',
  `task_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '工单编号',
  `task_status` int(11) NULL DEFAULT NULL COMMENT '工单状态',
  `create_type` int(11) NULL DEFAULT NULL COMMENT '创建类型 0：自动 1：手动',
  `inner_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '售货机编码',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '执行人id',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '执行人名称',
  `region_id` bigint(20) NULL DEFAULT NULL COMMENT '所属区域Id',
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `product_type_id` int(11) NULL DEFAULT 1 COMMENT '工单类型id',
  `assignor_id` int(11) NULL DEFAULT NULL COMMENT '指派人Id',
  `addr` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`task_id`) USING BTREE,
  UNIQUE INDEX `tb_task_task_code_uindex`(`task_code`) USING BTREE,
  INDEX `task_productiontype_TypeId_fk`(`product_type_id`) USING BTREE,
  INDEX `task_taskstatustype_StatusID_fk`(`task_status`) USING BTREE,
  INDEX `task_tasktype_TypeId_fk`(`create_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 544 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '工单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_task
-- ----------------------------
INSERT INTO `tb_task` VALUES (523, '202303220001', 4, 1, 'RhLWjaeR', 8, '许褚', 1, '投放', 1, 1, '河南省-洛阳市-龙门石窟', '2023-03-22 15:51:54', '2023-03-22 15:57:05');
INSERT INTO `tb_task` VALUES (524, '202303220002', 4, 1, 'iSzMcQXJ', 8, '许褚', 1, '投放', 1, 1, '河南省-洛阳市-龙门石窟', '2023-03-22 16:02:26', '2023-03-22 16:13:24');
INSERT INTO `tb_task` VALUES (525, '202303220003', 4, 1, 'iSzMcQXJ', 8, '许褚', 1, '11', 1, 1, '河南省-洛阳市-龙门石窟', '2023-03-22 17:11:22', '2023-03-22 17:12:15');
INSERT INTO `tb_task` VALUES (526, '202303220004', 4, 1, 'A1000001', 6, '曹操', 1, '1', 2, 1, '河南省-洛阳市-龙门石窟', '2023-03-22 17:14:45', '2023-03-22 17:16:46');
INSERT INTO `tb_task` VALUES (527, '202303240001', 4, 1, 'A1000001', 9, '张辽', 1, '111', 3, 1, '河南省-洛阳市-龙门石窟', '2023-03-24 10:41:10', '2023-03-24 10:41:10');
INSERT INTO `tb_task` VALUES (528, '202303240002', 4, 1, 'Ut548Hpf', 8, '许褚', 1, '111', 3, 1, '河南省-洛阳市-洛阳白云山', '2023-03-24 10:42:50', '2023-03-24 10:42:50');
INSERT INTO `tb_task` VALUES (529, '202303240003', 4, 1, 'aim5xu4I', 50, '孙一百', 1, '111', 3, 1, '河南省-洛阳市-洛阳白云山', '2023-03-24 10:43:43', '2023-03-24 10:43:43');
INSERT INTO `tb_task` VALUES (530, '202303240004', 4, 1, '5cy5BdUs', 50, '孙一百', 1, '111', 3, 1, '河南省-洛阳市-洛阳白云山', '2023-03-24 10:44:26', '2023-03-24 10:44:26');
INSERT INTO `tb_task` VALUES (531, '202303240005', 1, 0, 'A1000001', 50, '孙一百', 1, '{\"innerCode\":\"A1000001\",\"statusInfo\":[{\"statusCode\":\"1001\",\"status\":true},{\"statusCode\":\"1002\",\"status\":false},{\"statusCode\":\"1003\",\"status\":true}]}', 3, 0, '河南省-洛阳市-龙门石窟', '2023-03-24 18:04:44', '2023-03-24 18:04:44');
INSERT INTO `tb_task` VALUES (533, '202309200001', 3, 1, 'RhLWjaeR', 8, '许褚', 1, '', 1, 1, '河南省-洛阳市-龙门石窟', '2023-09-20 16:30:53', '2024-05-18 16:08:00');
INSERT INTO `tb_task` VALUES (535, '202405170001', 4, 1, 'vWgqPhpu', 8, '许褚', 1, '不想干了', 1, 1, '北京市昌平区建材城西路22号', '2024-05-17 14:39:26', NULL);
INSERT INTO `tb_task` VALUES (542, '202405180001', 4, 1, 'vWgqPhpu', 6, '曹操', 1, '卖完货了', 2, 1, '北京市昌平区建材城西路22号', '2024-05-18 15:13:05', NULL);
INSERT INTO `tb_task` VALUES (543, '202405190001', 1, 1, 'K6YYXHLY', 13, '陆逊', 3, '', 1, 1, '北京顺义区国际鲜花港', '2024-05-19 18:45:06', '2024-05-19 21:13:16');

-- ----------------------------
-- Table structure for tb_task_collect
-- ----------------------------
DROP TABLE IF EXISTS `tb_task_collect`;
CREATE TABLE `tb_task_collect`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `finish_count` int(11) NULL DEFAULT 0 COMMENT '当日工单完成数',
  `progress_count` int(11) NULL DEFAULT 0 COMMENT '当日进行中的工单数',
  `cancel_count` int(11) NULL DEFAULT 0 COMMENT '当日取消工单数',
  `collect_date` date NULL DEFAULT NULL COMMENT '汇总的日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '工单按日统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_task_collect
-- ----------------------------
INSERT INTO `tb_task_collect` VALUES (89, NULL, 0, 0, 0, NULL);

-- ----------------------------
-- Table structure for tb_task_details
-- ----------------------------
DROP TABLE IF EXISTS `tb_task_details`;
CREATE TABLE `tb_task_details`  (
  `details_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `task_id` bigint(20) NULL DEFAULT NULL COMMENT '工单Id',
  `channel_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '货道编号',
  `expect_capacity` int(11) NOT NULL DEFAULT 0 COMMENT '补货期望容量',
  `sku_id` bigint(20) NULL DEFAULT NULL COMMENT '商品Id',
  `sku_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sku_image` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`details_id`) USING BTREE,
  INDEX `taskdetails_task_TaskId_fk`(`task_id`) USING BTREE,
  CONSTRAINT `taskdetails_task_TaskId_fk` FOREIGN KEY (`task_id`) REFERENCES `tb_task` (`task_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3770 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '工单详情，只有补货工单才有' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_task_details
-- ----------------------------
INSERT INTO `tb_task_details` VALUES (3750, 526, '1-1', 8, 1, '可口可乐', 'https://likede2-java.itheima.net/image/product1.png');
INSERT INTO `tb_task_details` VALUES (3751, 526, '1-2', 9, 1, '可口可乐', 'https://likede2-java.itheima.net/image/product1.png');
INSERT INTO `tb_task_details` VALUES (3752, 526, '1-3', 1, 2, '小康师傅', 'https://likede2-java.itheima.net/image/product2.png');
INSERT INTO `tb_task_details` VALUES (3753, 526, '1-5', 6, 3, '统一奶茶', 'https://likede2-java.itheima.net/image/product3.png');
INSERT INTO `tb_task_details` VALUES (3754, 526, '3-1', 1, 7, '一百橙汁', 'https://likede2-java.itheima.net/image/product7.png');
INSERT INTO `tb_task_details` VALUES (3755, 526, '3-6', 10, 1, '可口可乐', 'https://likede2-java.itheima.net/image/product1.png');
INSERT INTO `tb_task_details` VALUES (3768, 542, '1-1', 5, 1, '可口可乐', 'https://likede2-java.itheima.net/image/product1.png');
INSERT INTO `tb_task_details` VALUES (3769, 542, '1-2', 5, 2, '康师傅', 'https://likede2-java.itheima.net/image/product2.png');

-- ----------------------------
-- Table structure for tb_task_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_task_type`;
CREATE TABLE `tb_task_type`  (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '类型名称',
  `type` int(11) NULL DEFAULT 1 COMMENT '工单类型。1:维修工单;2:运营工单',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '工单类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_task_type
-- ----------------------------
INSERT INTO `tb_task_type` VALUES (1, '投放工单', 1);
INSERT INTO `tb_task_type` VALUES (2, '补货工单', 2);
INSERT INTO `tb_task_type` VALUES (3, '维修工单', 1);
INSERT INTO `tb_task_type` VALUES (4, '撤机工单', 1);

-- ----------------------------
-- Table structure for tb_vending_machine
-- ----------------------------
DROP TABLE IF EXISTS `tb_vending_machine`;
CREATE TABLE `tb_vending_machine`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `inner_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '000' COMMENT '设备编号',
  `channel_max_capacity` int(11) NULL DEFAULT NULL COMMENT '设备容量',
  `node_id` int(11) NOT NULL COMMENT '点位Id',
  `addr` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `last_supply_time` datetime(0) NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '上次补货时间',
  `business_type` int(11) NOT NULL COMMENT '商圈类型',
  `region_id` int(11) NOT NULL COMMENT '区域Id',
  `partner_id` int(11) NOT NULL COMMENT '合作商Id',
  `vm_type_id` int(11) NOT NULL DEFAULT 0 COMMENT '设备型号',
  `vm_status` int(11) NOT NULL DEFAULT 0 COMMENT '设备状态，0:未投放;1-运营;3-撤机',
  `running_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运行状态',
  `longitudes` double NULL DEFAULT 0 COMMENT '经度',
  `latitude` double NULL DEFAULT 0 COMMENT '维度',
  `client_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户端连接Id,做emq认证用',
  `policy_id` bigint(20) NULL DEFAULT NULL COMMENT '策略id',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `vendingmachine_VmId_uindex`(`inner_code`) USING BTREE,
  INDEX `vendingmachine_node_Id_fk`(`node_id`) USING BTREE,
  INDEX `vendingmachine_vmtype_TypeId_fk`(`vm_type_id`) USING BTREE,
  INDEX `policy_id`(`policy_id`) USING BTREE,
  CONSTRAINT `tb_vending_machine_ibfk_1` FOREIGN KEY (`vm_type_id`) REFERENCES `tb_vm_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_vending_machine_ibfk_2` FOREIGN KEY (`node_id`) REFERENCES `tb_node` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_vending_machine_ibfk_3` FOREIGN KEY (`policy_id`) REFERENCES `tb_policy` (`policy_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设备表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_vending_machine
-- ----------------------------
INSERT INTO `tb_vending_machine` VALUES (80, 'A1000001', 10, 2, '顺义奥林匹克水上公园', '2023-03-22 00:00:00', 1, 3, 28, 1, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '70122567fcc13e7615e7239812c20448', 1, '2020-12-18 15:49:03', '2024-05-14 09:21:58');
INSERT INTO `tb_vending_machine` VALUES (86, 'aim5xu4I', 10, 2, '北京市海淀区西直门北大街32号', '2000-01-01 00:00:00', 2, 1, 1, 2, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '9d1d927b2651dba9f117a9801e7fd916', 1, '2020-12-18 10:39:22', '2024-05-14 09:24:53');
INSERT INTO `tb_vending_machine` VALUES (87, '5cy5BdUs', 10, 2, '北京市海淀区西直门北大街32号', '2022-12-05 00:00:00', 2, 1, 1, 2, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, 'fdf33db4de889d6c31fe6351a7333072', 2, '2020-12-18 10:39:22', '2024-05-12 23:19:10');
INSERT INTO `tb_vending_machine` VALUES (88, 'tCeiyxLx', 10, 1, '北京市昌平区建材城西路22号', '2000-01-01 00:00:00', 2, 1, 1, 1, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '0805f7585e4366b021268f8850d1e091', 1, '2020-09-10 09:41:02', '2024-05-14 09:24:55');
INSERT INTO `tb_vending_machine` VALUES (89, 'bR1cfQRa', 10, 2, '北京市海淀区西直门北大街32号', '2000-01-01 00:00:00', 2, 1, 1, 2, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, 'e4e02a07b11865bf262afb5d4507e7b3', 1, '2020-12-18 10:39:22', '2024-05-14 09:24:56');
INSERT INTO `tb_vending_machine` VALUES (90, 'RhLWjaeR', 10, 1, '北京市昌平区建材城西路22号', '2000-01-01 00:00:00', 2, 1, 1, 1, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '0cc9e22badf6a0f41b5fad2c8b788fcd', 2, '2020-09-10 09:41:02', '2024-05-14 09:25:07');
INSERT INTO `tb_vending_machine` VALUES (91, 'qUObmvbM', 10, 2, '北京市海淀区西直门北大街32号', '2022-12-06 00:00:00', 2, 1, 1, 2, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '34a1779725b4e06edd7cac8a518474f1', 2, '2020-12-18 10:39:22', '2024-05-14 09:25:11');
INSERT INTO `tb_vending_machine` VALUES (92, 'tU6K5IHg', 10, 1, '北京市昌平区建材城西路22号', '2000-01-01 00:00:00', 2, 1, 1, 2, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, 'fbb7f7c0bfd38785866844f983b3a887', 5, '2020-09-10 09:41:02', '2024-05-14 09:25:14');
INSERT INTO `tb_vending_machine` VALUES (93, 'iSzMcQXJ', 10, 1, '北京市昌平区建材城西路22号', '2000-01-01 00:00:00', 2, 1, 1, 1, 1, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, '7c6f5ad6edd6e161d6ca8b94d0324fe5', 2, '2020-09-10 09:41:02', '2024-05-14 09:25:19');
INSERT INTO `tb_vending_machine` VALUES (105, 'nf2UVwi5', 8, 2, '北京顺义区国际鲜花港', '2000-01-01 00:00:00', 1, 3, 1, 4, 0, NULL, 0, 0, NULL, NULL, '2020-12-18 15:48:13', '2024-05-13 18:47:32');
INSERT INTO `tb_vending_machine` VALUES (106, 'vWgqPhpu', 10, 1, '北京市昌平区建材城西路22号', '2024-05-18 15:26:37', 2, 1, 1, 1, 1, NULL, 0, 0, NULL, NULL, '2020-09-10 09:41:02', '2024-05-12 23:20:41');
INSERT INTO `tb_vending_machine` VALUES (107, 'SFNuCUe8', 8, 1, '北京市昌平区建材城西路22号', '2000-01-01 00:00:00', 2, 1, 1, 4, 0, NULL, 0, 0, NULL, NULL, '2020-09-10 09:41:02', '2024-05-12 23:20:41');
INSERT INTO `tb_vending_machine` VALUES (111, 'K6YYXHLY', 10, 2, '北京顺义区国际鲜花港', '2000-01-01 00:00:00', 1, 3, 1, 1, 0, '{\"statusCode\":\"1001\",\"status\":true}', 0, 0, NULL, NULL, '2020-12-18 15:48:13', '2024-05-19 15:32:27');

-- ----------------------------
-- Table structure for tb_vendout_running
-- ----------------------------
DROP TABLE IF EXISTS `tb_vendout_running`;
CREATE TABLE `tb_vendout_running`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_no` varchar(38) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单编号',
  `inner_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '售货机编号',
  `channel_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货道编号',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1665296081440129026 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出货流水' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_vendout_running
-- ----------------------------
INSERT INTO `tb_vendout_running` VALUES (1640253535886454786, 'A1000001972287294582300', 'A1000001', NULL, '1', '2023-03-27 15:24:52', '2023-03-27 15:24:52');
INSERT INTO `tb_vendout_running` VALUES (1640294341087305730, 'A1000001982025093546600', 'A1000001', NULL, '0', '2023-03-27 18:07:01', '2023-03-27 18:07:01');
INSERT INTO `tb_vendout_running` VALUES (1640295508953505793, 'A1000001982308461482000', 'A1000001', NULL, '0', '2023-03-27 18:11:39', '2023-03-27 18:11:39');
INSERT INTO `tb_vendout_running` VALUES (1665193032268836866, 'A10000011867384516930600', 'A1000001', NULL, '0', '2023-06-04 11:05:31', '2023-06-04 11:05:31');
INSERT INTO `tb_vendout_running` VALUES (1665193181468618753, 'A10000011867429590093200', 'A1000001', NULL, '0', '2023-06-04 11:06:07', '2023-06-04 11:06:07');
INSERT INTO `tb_vendout_running` VALUES (1665194583502811137, 'A10000011867548883835400', 'A1000001', NULL, '0', '2023-06-04 11:11:41', '2023-06-04 11:11:41');
INSERT INTO `tb_vendout_running` VALUES (1665197927541698561, 'A10000011868551878012500', 'A1000001', NULL, '0', '2023-06-04 11:24:58', '2023-06-04 11:24:58');
INSERT INTO `tb_vendout_running` VALUES (1665200173490827265, 'A10000011869054027266500', 'A1000001', NULL, '0', '2023-06-04 11:33:54', '2023-06-04 11:33:54');
INSERT INTO `tb_vendout_running` VALUES (1665295023343058946, 'A10000011891589370978600', 'A1000001', NULL, '1', '2023-06-04 17:50:48', '2023-06-04 17:51:34');
INSERT INTO `tb_vendout_running` VALUES (1665296081440129025, 'A10000011891956192562900', 'A1000001', NULL, '0', '2023-06-04 17:55:00', '2023-06-04 17:55:00');

-- ----------------------------
-- Table structure for tb_vm_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_vm_type`;
CREATE TABLE `tb_vm_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '型号名称',
  `model` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '型号编码',
  `image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备图片',
  `vm_row` int(11) NOT NULL DEFAULT 1 COMMENT '货道行',
  `vm_col` int(11) NOT NULL DEFAULT 1 COMMENT '货道列',
  `channel_max_capacity` int(11) NULL DEFAULT 0 COMMENT '设备容量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tb_vm_type_name_uindex`(`name`) USING BTREE,
  UNIQUE INDEX `tb_vm_type_model_uindex`(`model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设备类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_vm_type
-- ----------------------------
INSERT INTO `tb_vm_type` VALUES (1, '饮料机', 'CZ-10011', 'https://sy-192-ys.oss-cn-beijing.aliyuncs.com/images/2024/05/15/1715762932971.png', 5, 6, 10);
INSERT INTO `tb_vm_type` VALUES (2, '综合机', 'CZ-10012', 'https://sy-192-ys.oss-cn-beijing.aliyuncs.com/images/2024/05/15/1715762984492.png', 2, 2, 10);
INSERT INTO `tb_vm_type` VALUES (3, '零食机', 'CZ-10013', 'https://sy-192-ys.oss-cn-beijing.aliyuncs.com/images/2024/05/15/1715763009476.png', 2, 5, 5);
INSERT INTO `tb_vm_type` VALUES (4, '果蔬机', 'CZ-10014', 'https://sy-192-ys.oss-cn-beijing.aliyuncs.com/images/2024/05/15/1715763319518.png\n', 4, 4, 8);

SET FOREIGN_KEY_CHECKS = 1;
