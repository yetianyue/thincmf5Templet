/*
Navicat MySQL Data Transfer

Source Server         : Root_192.168.1.198
Source Server Version : 50553
Source Host           : 192.168.1.198:3306
Source Database       : foodie

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-09-15 17:12:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_admin_menu`;
CREATE TABLE `cmf_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float unsigned NOT NULL DEFAULT '10000' COMMENT '排序ID',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parent_id`),
  KEY `model` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of cmf_admin_menu
-- ----------------------------
INSERT INTO `cmf_admin_menu` VALUES ('1', '0', '0', '1', '20', 'admin', 'Plugin', 'default', '', '插件管理', 'cloud', '插件管理');
INSERT INTO `cmf_admin_menu` VALUES ('2', '1', '1', '1', '10000', 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理');
INSERT INTO `cmf_admin_menu` VALUES ('3', '2', '1', '0', '10000', 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理');
INSERT INTO `cmf_admin_menu` VALUES ('4', '2', '2', '0', '10000', 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序');
INSERT INTO `cmf_admin_menu` VALUES ('5', '0', '0', '1', '0', 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口');
INSERT INTO `cmf_admin_menu` VALUES ('6', '5', '1', '1', '50', 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理');
INSERT INTO `cmf_admin_menu` VALUES ('7', '6', '1', '0', '10000', 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('8', '6', '2', '0', '10000', 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('9', '6', '1', '0', '10000', 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('10', '6', '2', '0', '10000', 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('11', '6', '2', '0', '10000', 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('12', '6', '2', '0', '10000', 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序');
INSERT INTO `cmf_admin_menu` VALUES ('13', '6', '2', '0', '10000', 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏');
INSERT INTO `cmf_admin_menu` VALUES ('14', '5', '1', '1', '10', 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置');
INSERT INTO `cmf_admin_menu` VALUES ('15', '14', '2', '0', '10000', 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('16', '14', '1', '0', '10000', 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板');
INSERT INTO `cmf_admin_menu` VALUES ('17', '14', '2', '0', '10000', 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交');
INSERT INTO `cmf_admin_menu` VALUES ('18', '14', '1', '0', '10000', 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试');
INSERT INTO `cmf_admin_menu` VALUES ('19', '5', '1', '0', '10000', 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理');
INSERT INTO `cmf_admin_menu` VALUES ('20', '19', '1', '0', '10000', 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表');
INSERT INTO `cmf_admin_menu` VALUES ('21', '19', '1', '0', '10000', 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加');
INSERT INTO `cmf_admin_menu` VALUES ('22', '19', '2', '0', '10000', 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('23', '19', '1', '0', '10000', 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑');
INSERT INTO `cmf_admin_menu` VALUES ('24', '19', '2', '0', '10000', 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('25', '19', '2', '0', '10000', 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除');
INSERT INTO `cmf_admin_menu` VALUES ('26', '19', '2', '0', '10000', 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序');
INSERT INTO `cmf_admin_menu` VALUES ('27', '19', '1', '0', '10000', 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单');
INSERT INTO `cmf_admin_menu` VALUES ('28', '5', '1', '1', '30', 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理');
INSERT INTO `cmf_admin_menu` VALUES ('29', '28', '1', '0', '10000', 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航');
INSERT INTO `cmf_admin_menu` VALUES ('30', '28', '2', '0', '10000', 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('31', '28', '1', '0', '10000', 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航');
INSERT INTO `cmf_admin_menu` VALUES ('32', '28', '2', '0', '10000', 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('33', '28', '2', '0', '10000', 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航');
INSERT INTO `cmf_admin_menu` VALUES ('34', '28', '1', '0', '10000', 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('35', '34', '1', '0', '10000', 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('36', '34', '2', '0', '10000', 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('37', '34', '1', '0', '10000', 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('38', '34', '2', '0', '10000', 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('39', '34', '2', '0', '10000', 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('40', '34', '2', '0', '10000', 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序');
INSERT INTO `cmf_admin_menu` VALUES ('41', '1', '1', '1', '10000', 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表');
INSERT INTO `cmf_admin_menu` VALUES ('42', '41', '2', '0', '10000', 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用');
INSERT INTO `cmf_admin_menu` VALUES ('43', '41', '1', '0', '10000', 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置');
INSERT INTO `cmf_admin_menu` VALUES ('44', '41', '2', '0', '10000', 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('45', '41', '2', '0', '10000', 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装');
INSERT INTO `cmf_admin_menu` VALUES ('46', '41', '2', '0', '10000', 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新');
INSERT INTO `cmf_admin_menu` VALUES ('47', '41', '2', '0', '10000', 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件');
INSERT INTO `cmf_admin_menu` VALUES ('48', '108', '0', '1', '10000', 'admin', 'User', 'default', '', '管理组', '', '管理组');
INSERT INTO `cmf_admin_menu` VALUES ('49', '48', '1', '1', '10000', 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理');
INSERT INTO `cmf_admin_menu` VALUES ('50', '49', '1', '0', '10000', 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色');
INSERT INTO `cmf_admin_menu` VALUES ('51', '49', '2', '0', '10000', 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交');
INSERT INTO `cmf_admin_menu` VALUES ('52', '49', '1', '0', '10000', 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色');
INSERT INTO `cmf_admin_menu` VALUES ('53', '49', '2', '0', '10000', 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交');
INSERT INTO `cmf_admin_menu` VALUES ('54', '49', '2', '0', '10000', 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色');
INSERT INTO `cmf_admin_menu` VALUES ('55', '49', '1', '0', '10000', 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限');
INSERT INTO `cmf_admin_menu` VALUES ('56', '49', '2', '0', '10000', 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交');
INSERT INTO `cmf_admin_menu` VALUES ('57', '0', '1', '0', '10000', 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站');
INSERT INTO `cmf_admin_menu` VALUES ('58', '57', '2', '0', '10000', 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原');
INSERT INTO `cmf_admin_menu` VALUES ('59', '57', '2', '0', '10000', 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除');
INSERT INTO `cmf_admin_menu` VALUES ('60', '5', '1', '1', '10000', 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理');
INSERT INTO `cmf_admin_menu` VALUES ('61', '60', '1', '0', '10000', 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则');
INSERT INTO `cmf_admin_menu` VALUES ('62', '60', '2', '0', '10000', 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交');
INSERT INTO `cmf_admin_menu` VALUES ('63', '60', '1', '0', '10000', 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑');
INSERT INTO `cmf_admin_menu` VALUES ('64', '60', '2', '0', '10000', 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('65', '60', '2', '0', '10000', 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除');
INSERT INTO `cmf_admin_menu` VALUES ('66', '60', '2', '0', '10000', 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用');
INSERT INTO `cmf_admin_menu` VALUES ('67', '60', '2', '0', '10000', 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用');
INSERT INTO `cmf_admin_menu` VALUES ('68', '60', '2', '0', '10000', 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序');
INSERT INTO `cmf_admin_menu` VALUES ('69', '60', '1', '0', '10000', 'admin', 'Route', 'select', '', '选择URL', '', '选择URL');
INSERT INTO `cmf_admin_menu` VALUES ('70', '5', '1', '1', '0', 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息');
INSERT INTO `cmf_admin_menu` VALUES ('71', '70', '2', '0', '10000', 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('72', '5', '1', '0', '10000', 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改');
INSERT INTO `cmf_admin_menu` VALUES ('73', '72', '2', '0', '10000', 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交');
INSERT INTO `cmf_admin_menu` VALUES ('74', '5', '1', '1', '10000', 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置');
INSERT INTO `cmf_admin_menu` VALUES ('75', '74', '2', '0', '10000', 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('76', '5', '1', '0', '10000', 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存');
INSERT INTO `cmf_admin_menu` VALUES ('77', '5', '1', '1', '40', 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理');
INSERT INTO `cmf_admin_menu` VALUES ('78', '77', '1', '0', '10000', 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('79', '77', '2', '0', '10000', 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES ('80', '77', '1', '0', '10000', 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('81', '77', '2', '0', '10000', 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES ('82', '77', '2', '0', '10000', 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('83', '77', '1', '0', '10000', 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表');
INSERT INTO `cmf_admin_menu` VALUES ('84', '83', '1', '0', '10000', 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加');
INSERT INTO `cmf_admin_menu` VALUES ('85', '83', '2', '0', '10000', 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交');
INSERT INTO `cmf_admin_menu` VALUES ('86', '83', '1', '0', '10000', 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑');
INSERT INTO `cmf_admin_menu` VALUES ('87', '83', '2', '0', '10000', 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('88', '83', '2', '0', '10000', 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除');
INSERT INTO `cmf_admin_menu` VALUES ('89', '83', '2', '0', '10000', 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏');
INSERT INTO `cmf_admin_menu` VALUES ('90', '83', '2', '0', '10000', 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示');
INSERT INTO `cmf_admin_menu` VALUES ('91', '83', '2', '0', '10000', 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序');
INSERT INTO `cmf_admin_menu` VALUES ('92', '5', '1', '1', '10000', 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储');
INSERT INTO `cmf_admin_menu` VALUES ('93', '92', '2', '0', '10000', 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('94', '5', '1', '1', '20', 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理');
INSERT INTO `cmf_admin_menu` VALUES ('95', '94', '1', '0', '10000', 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板');
INSERT INTO `cmf_admin_menu` VALUES ('96', '94', '2', '0', '10000', 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板');
INSERT INTO `cmf_admin_menu` VALUES ('97', '94', '2', '0', '10000', 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装');
INSERT INTO `cmf_admin_menu` VALUES ('98', '94', '2', '0', '10000', 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新');
INSERT INTO `cmf_admin_menu` VALUES ('99', '94', '2', '0', '10000', 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES ('100', '94', '1', '0', '10000', 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES ('101', '94', '1', '0', '10000', 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置');
INSERT INTO `cmf_admin_menu` VALUES ('102', '94', '1', '0', '10000', 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表');
INSERT INTO `cmf_admin_menu` VALUES ('103', '94', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑');
INSERT INTO `cmf_admin_menu` VALUES ('104', '94', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('105', '94', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除');
INSERT INTO `cmf_admin_menu` VALUES ('106', '94', '2', '0', '10000', 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('107', '94', '1', '0', '10000', 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源');
INSERT INTO `cmf_admin_menu` VALUES ('108', '0', '0', '1', '10', 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理');
INSERT INTO `cmf_admin_menu` VALUES ('109', '48', '1', '1', '10000', 'admin', 'User', 'index', '', '管理员', '', '管理员管理');
INSERT INTO `cmf_admin_menu` VALUES ('110', '109', '1', '0', '10000', 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加');
INSERT INTO `cmf_admin_menu` VALUES ('111', '109', '2', '0', '10000', 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交');
INSERT INTO `cmf_admin_menu` VALUES ('112', '109', '1', '0', '10000', 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑');
INSERT INTO `cmf_admin_menu` VALUES ('113', '109', '2', '0', '10000', 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('114', '109', '1', '0', '10000', 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改');
INSERT INTO `cmf_admin_menu` VALUES ('115', '109', '2', '0', '10000', 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交');
INSERT INTO `cmf_admin_menu` VALUES ('116', '109', '2', '0', '10000', 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除');
INSERT INTO `cmf_admin_menu` VALUES ('117', '109', '2', '0', '10000', 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员');
INSERT INTO `cmf_admin_menu` VALUES ('118', '109', '2', '0', '10000', 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员');
INSERT INTO `cmf_admin_menu` VALUES ('119', '0', '0', '1', '30', 'portal', 'AdminIndex', 'default', '', '门户管理', 'th', '门户管理');
INSERT INTO `cmf_admin_menu` VALUES ('120', '119', '1', '1', '10000', 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表');
INSERT INTO `cmf_admin_menu` VALUES ('121', '120', '1', '0', '10000', 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章');
INSERT INTO `cmf_admin_menu` VALUES ('122', '120', '2', '0', '10000', 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交');
INSERT INTO `cmf_admin_menu` VALUES ('123', '120', '1', '0', '10000', 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章');
INSERT INTO `cmf_admin_menu` VALUES ('124', '120', '2', '0', '10000', 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交');
INSERT INTO `cmf_admin_menu` VALUES ('125', '120', '2', '0', '10000', 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除');
INSERT INTO `cmf_admin_menu` VALUES ('126', '120', '2', '0', '10000', 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布');
INSERT INTO `cmf_admin_menu` VALUES ('127', '120', '2', '0', '10000', 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶');
INSERT INTO `cmf_admin_menu` VALUES ('128', '120', '2', '0', '10000', 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐');
INSERT INTO `cmf_admin_menu` VALUES ('129', '120', '2', '0', '10000', 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序');
INSERT INTO `cmf_admin_menu` VALUES ('130', '119', '1', '1', '10000', 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表');
INSERT INTO `cmf_admin_menu` VALUES ('131', '130', '1', '0', '10000', 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('132', '130', '2', '0', '10000', 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES ('133', '130', '1', '0', '10000', 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('134', '130', '2', '0', '10000', 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES ('135', '130', '1', '0', '10000', 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框');
INSERT INTO `cmf_admin_menu` VALUES ('136', '130', '2', '0', '10000', 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序');
INSERT INTO `cmf_admin_menu` VALUES ('137', '130', '2', '0', '10000', 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('138', '119', '1', '1', '10000', 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理');
INSERT INTO `cmf_admin_menu` VALUES ('139', '138', '1', '0', '10000', 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面');
INSERT INTO `cmf_admin_menu` VALUES ('140', '138', '2', '0', '10000', 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交');
INSERT INTO `cmf_admin_menu` VALUES ('141', '138', '1', '0', '10000', 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面');
INSERT INTO `cmf_admin_menu` VALUES ('142', '138', '2', '0', '10000', 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交');
INSERT INTO `cmf_admin_menu` VALUES ('143', '138', '2', '0', '10000', 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面');
INSERT INTO `cmf_admin_menu` VALUES ('144', '119', '1', '1', '10000', 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('145', '144', '1', '0', '10000', 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('146', '144', '2', '0', '10000', 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交');
INSERT INTO `cmf_admin_menu` VALUES ('147', '144', '2', '0', '10000', 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态');
INSERT INTO `cmf_admin_menu` VALUES ('148', '144', '2', '0', '10000', 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('149', '0', '1', '0', '10000', 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表');
INSERT INTO `cmf_admin_menu` VALUES ('150', '149', '2', '0', '10000', 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件');
INSERT INTO `cmf_admin_menu` VALUES ('151', '108', '0', '1', '10000', 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组');
INSERT INTO `cmf_admin_menu` VALUES ('152', '151', '1', '1', '10000', 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户');
INSERT INTO `cmf_admin_menu` VALUES ('153', '152', '1', '0', '10000', 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑');
INSERT INTO `cmf_admin_menu` VALUES ('154', '152', '2', '0', '10000', 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用');
INSERT INTO `cmf_admin_menu` VALUES ('155', '151', '1', '1', '10000', 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户');
INSERT INTO `cmf_admin_menu` VALUES ('156', '155', '2', '0', '10000', 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定');
INSERT INTO `cmf_admin_menu` VALUES ('157', '5', '1', '1', '10000', 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理');

-- ----------------------------
-- Table structure for cmf_asset
-- ----------------------------
DROP TABLE IF EXISTS `cmf_asset`;
CREATE TABLE `cmf_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='资源表';

-- ----------------------------
-- Records of cmf_asset
-- ----------------------------
INSERT INTO `cmf_asset` VALUES ('1', '1', '33215', '1503297423', '1', '0', '34e466fc003de2df32fa2423f0c1379863102bddbd3773e01f2ffe7cd6b40779', '14962937196.jpg', 'admin/20170821/2fcd98c42d83939b6a20b0bcb0421d35.jpg', '34e466fc003de2df32fa2423f0c13798', 'eb113d0f2eb7fbdf813c38407735db5f23e13d16', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('2', '1', '119126', '1503362996', '1', '0', 'e09ae9216956c1fce3eee82fe8971a2b9e5b496126145ef9d04f218cfb351b82', '91445647654.jpg', 'portal/20170822/3204445a987f84955e2c838acc7500fd.jpg', 'e09ae9216956c1fce3eee82fe8971a2b', 'fe70f4653d17f8d0b21af6788519fd6b54abb91b', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('3', '1', '54215', '1503363388', '1', '0', '479d63ebc487921447b97e73158c18be6d1f4ca8ce0f8c3a464f85b365692551', '14695307646.jpg', 'portal/20170822/eaa077a097793e98e5be8352c833e11a.jpg', '479d63ebc487921447b97e73158c18be', 'cf95eef17976a98f987bfe8989a96bdb1aca6046', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('4', '1', '55957', '1503364911', '1', '0', 'a6e5523e98b708e4abf40c4a3314b49b94e160d4930d04b9b287a28e02495aaa', '14604424271.jpg', 'portal/20170822/844acc5d8cf15e0157d90f11eaf68028.jpg', 'a6e5523e98b708e4abf40c4a3314b49b', '05db289eefbcd5573a959c8ed6b35eb3d50a2764', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('5', '1', '205753', '1503366761', '1', '0', '13c444b96427def2f5c2ca988422df785af5cf0ea1a37fb79b794efdcd9b02c4', 'f20327e902de77f9ef74e97dda8e5ec4.jpg', 'portal/20170822/38a48d7474a64c5e453d30a699211f6d.jpg', '13c444b96427def2f5c2ca988422df78', '7336ecdd95783cdf1a27609510e8fe95826dea0b', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('6', '1', '120720', '1503370539', '1', '0', '1aaab4e41f51149d63d25fcecc5c97ea1650ca86dbb937abb03db9a154dfb5e4', 'n5241145_150321825456399.jpg', 'portal/20170822/abef012d5ab0718858efd9810d3bb80f.jpg', '1aaab4e41f51149d63d25fcecc5c97ea', 'da0bb7dbdf1e13771dffe126bf2194ccb212ce76', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('7', '1', '105813', '1503370552', '1', '0', 'fa71145d636e344c28e2e64a62d496091df2ddca03a45bc60cb0dffa38683aab', 'n5241145_150321782733084.jpg', 'portal/20170822/ac7eea21198de0a5414f346ae83ec2ed.jpg', 'fa71145d636e344c28e2e64a62d49609', '4bc6002737f8f315f0ed9e6021b1ade30fc458d5', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('8', '1', '101597', '1503370553', '1', '0', '23887e4c88685ad6d783948e9dda67758ff93ca33b8444f8f7d698bcce8ae1c5', 'n5241145_150321789613999.jpg', 'portal/20170822/3ebfdbad8c564d94ef28cf93105f558f.jpg', '23887e4c88685ad6d783948e9dda6775', '328ed9e60a079f870e6ffc61baaa47b1237b2670', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('9', '1', '101358', '1503370553', '1', '0', 'e6d9089d7b46bfb62756b1f30884fcf57326b7bbbb087479468ff0c6c82744fc', 'n5241145_150321787507630.jpg', 'portal/20170822/7834b2ae668fc174186c73a106179fbe.jpg', 'e6d9089d7b46bfb62756b1f30884fcf5', '8fb6063c0e1ddac2a5290043907a6ef3dcaa2dfd', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('10', '1', '206343', '1503370553', '1', '0', '0e47547ee2261591625506cffa17293fdf439d781dc2be839a67bf54de96ebfd', 'n5241145_150321825402793.jpg', 'portal/20170822/024ccaa8bcbafac0c67db11af813790c.jpg', '0e47547ee2261591625506cffa17293f', '938f9b0e717d9854393d1cc3e0f5a33b81670bd3', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('11', '1', '65837', '1503452374', '1', '0', 'd52c37cba57e3d59929fc91dd0e516bd63809028abcbc7115476f74e25be91fa', 'fa2c140dc2430dbe2d77d99feec450c4.jpg', 'portal/20170823/70ba7668665f1369cc386dc56baa78c4.jpg', 'd52c37cba57e3d59929fc91dd0e516bd', '284eae5704d6dac6bb767b7db31b5d0824d0fc72', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('12', '1', '107897', '1503454261', '1', '0', 'b1efd3f3a5a289c1bf6ee74902374e752e7322441d20ee9084aab918f99dc3b9', 'n3544412_150000462732840.jpg', 'portal/20170823/a07e80992c99eeaf9b29db4aad2aa5ff.jpg', 'b1efd3f3a5a289c1bf6ee74902374e75', 'a08fa37819bab740647652ec5e17bff7dba51bc8', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('13', '1', '90958', '1503454261', '1', '0', '23851e06a77861065c0d3277816915e29fb46c391e062bd7d8c53c39263b07da', 'n3544412_150000460890455.jpg', 'portal/20170823/428f861811e4cb91ea7376f7526dd76c.jpg', '23851e06a77861065c0d3277816915e2', '51499792b4884a5cd37ef670b86497f55d60786c', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('14', '1', '127734', '1503454261', '1', '0', 'dc6f0ec5fca6c084780db3fcfe7f36571e76e1b11a4afd5694b447cb3d820b50', 'n3544412_150000463671612.jpg', 'portal/20170823/037265974899036743a48bb21a1347ac.jpg', 'dc6f0ec5fca6c084780db3fcfe7f3657', 'b6e6977617252154944f84cf1de0b6dd2d47af1a', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('15', '1', '83501', '1503454261', '1', '0', 'fcc8dd03484c5a3d92af03aa800e79a112726ad1c1a552a927aba04d4eeb7531', 'n3544412_150000467271550.jpg', 'portal/20170823/9195f6925a3c2c705805cb2350c9560b.jpg', 'fcc8dd03484c5a3d92af03aa800e79a1', 'ed5760d7b237c8c5620c2e15488b6dcc6b3c1051', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('16', '1', '131733', '1503454261', '1', '0', 'f0eb0e233cf0eeecc852aefc8fce03e385ffb3d7dfdd93e8309f0b83a59d2259', 'n3544412_150000469163524.jpg', 'portal/20170823/9b44028c866f2c343b41e9ed08671643.jpg', 'f0eb0e233cf0eeecc852aefc8fce03e3', '9cc1a70eaa855604522ff82f1467c3e2d64a8c59', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('17', '1', '47410', '1503454261', '1', '0', '2b172401e1160d556e9549e82b8b44a10ebcff8f96261bf7ec1f4fa1d6d2ba94', 's3544412_150000115363371.jpg', 'portal/20170823/b9f7baf97fd01e0b908635ebf1f97f70.jpg', '2b172401e1160d556e9549e82b8b44a1', '4e6c9ef9697c7e4c16a27ff0c7d96f53c88ed0f2', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('18', '1', '73770', '1503533841', '1', '0', 'a5be3493c7c1e9c7d25ef7968319f227f92b990df4288576574505bebe2ff859', 'n5403083_147463949277823.jpg', 'portal/20170824/8c7d2d012886fa966531423fc2a41916.jpg', 'a5be3493c7c1e9c7d25ef7968319f227', '224887feadbb85536e8f1026aa32e1b802ea202d', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('19', '1', '59151', '1503639058', '1', '0', '407cd9af781f18d461ece68f4db22a84662712eeea29817e412c8b008284cfb3', 'dd7d284289302d1909f3b495ae083eff.jpg', 'portal/20170825/76b187809d210a98dc344aefd7442dda.jpg', '407cd9af781f18d461ece68f4db22a84', '205e38487c20e07e907f671bd062aee64f2023ec', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('20', '1', '54983', '1503639316', '1', '0', 'f46b53e45f5d60d004ffa174ef4c37eeb2344dc3f8d459a5ee0bdc49f315149b', '217dbb41ff4a8d98ff3026a374dc2990.jpg', 'portal/20170825/59631c3de9b58ebba3b94a570f3d2893.jpg', 'f46b53e45f5d60d004ffa174ef4c37ee', '9beddf5640976e65496dd3771730fa150f487008', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('21', '1', '281636', '1504065021', '1', '0', 'd3aaf6aa515dd9911b7a6e7b942ec96df18d59d1db802228505dacd3a1bc60cf', 'n4021908_145647836507255.jpg', 'portal/20170830/85af51355dd25fa7b08a879b45aca7a3.jpg', 'd3aaf6aa515dd9911b7a6e7b942ec96d', 'dc5ab541c44eb36dd87ec18355ec62e87add96bc', 'jpg', null);

-- ----------------------------
-- Table structure for cmf_auth_access
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_access`;
CREATE TABLE `cmf_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- ----------------------------
-- Records of cmf_auth_access
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_rule`;
CREATE TABLE `cmf_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(15) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COMMENT='权限规则表';

-- ----------------------------
-- Records of cmf_auth_rule
-- ----------------------------
INSERT INTO `cmf_auth_rule` VALUES ('1', '1', 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('2', '1', 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('3', '1', 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('4', '1', 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('5', '1', 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('6', '1', 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('7', '1', 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('8', '1', 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('9', '1', 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('10', '1', 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('11', '1', 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES ('12', '1', 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', '');
INSERT INTO `cmf_auth_rule` VALUES ('13', '1', 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('14', '1', 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('15', '1', 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('16', '1', 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', '');
INSERT INTO `cmf_auth_rule` VALUES ('17', '1', 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('18', '1', 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('19', '1', 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('20', '1', 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('21', '1', 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('22', '1', 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('23', '1', 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('24', '1', 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('25', '1', 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('26', '1', 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('27', '1', 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('28', '1', 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('29', '1', 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('30', '1', 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('31', '1', 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('32', '1', 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('33', '1', 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('34', '1', 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('35', '1', 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('36', '1', 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('37', '1', 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('38', '1', 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('39', '1', 'admin', 'admin_url', 'admin/Plugin/default', '', '插件管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('40', '1', 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('41', '1', 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', '');
INSERT INTO `cmf_auth_rule` VALUES ('42', '1', 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('43', '1', 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('44', '1', 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', '');
INSERT INTO `cmf_auth_rule` VALUES ('45', '1', 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', '');
INSERT INTO `cmf_auth_rule` VALUES ('46', '1', 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', '');
INSERT INTO `cmf_auth_rule` VALUES ('47', '1', 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('48', '1', 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('49', '1', 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('50', '1', 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('51', '1', 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('52', '1', 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('53', '1', 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', '');
INSERT INTO `cmf_auth_rule` VALUES ('54', '1', 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('55', '1', 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', '');
INSERT INTO `cmf_auth_rule` VALUES ('56', '1', 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', '');
INSERT INTO `cmf_auth_rule` VALUES ('57', '1', 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('58', '1', 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', '');
INSERT INTO `cmf_auth_rule` VALUES ('59', '1', 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', '');
INSERT INTO `cmf_auth_rule` VALUES ('60', '1', 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('61', '1', 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('62', '1', 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('63', '1', 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('64', '1', 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', '');
INSERT INTO `cmf_auth_rule` VALUES ('65', '1', 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', '');
INSERT INTO `cmf_auth_rule` VALUES ('66', '1', 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('67', '1', 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', '');
INSERT INTO `cmf_auth_rule` VALUES ('68', '1', 'admin', 'admin_url', 'admin/Setting/default', '', '设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('69', '1', 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', '');
INSERT INTO `cmf_auth_rule` VALUES ('70', '1', 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('71', '1', 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', '');
INSERT INTO `cmf_auth_rule` VALUES ('72', '1', 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('73', '1', 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('74', '1', 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('75', '1', 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', '');
INSERT INTO `cmf_auth_rule` VALUES ('76', '1', 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('77', '1', 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('78', '1', 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('79', '1', 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('80', '1', 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('81', '1', 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('82', '1', 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('83', '1', 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('84', '1', 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('85', '1', 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('86', '1', 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('87', '1', 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('88', '1', 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES ('89', '1', 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', '');
INSERT INTO `cmf_auth_rule` VALUES ('90', '1', 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('91', '1', 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', '');
INSERT INTO `cmf_auth_rule` VALUES ('92', '1', 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('93', '1', 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('94', '1', 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('95', '1', 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('96', '1', 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', '');
INSERT INTO `cmf_auth_rule` VALUES ('97', '1', 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', '');
INSERT INTO `cmf_auth_rule` VALUES ('98', '1', 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('99', '1', 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('100', '1', 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('101', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('102', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('103', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('104', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('105', '1', 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('106', '1', 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', '');
INSERT INTO `cmf_auth_rule` VALUES ('107', '1', 'admin', 'admin_url', 'admin/User/default', '', '管理组', '');
INSERT INTO `cmf_auth_rule` VALUES ('108', '1', 'admin', 'admin_url', 'admin/User/index', '', '管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('109', '1', 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('110', '1', 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('111', '1', 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('112', '1', 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('113', '1', 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', '');
INSERT INTO `cmf_auth_rule` VALUES ('114', '1', 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('115', '1', 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('116', '1', 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('117', '1', 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('118', '1', 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('119', '1', 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', '');
INSERT INTO `cmf_auth_rule` VALUES ('120', '1', 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('121', '1', 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', '');
INSERT INTO `cmf_auth_rule` VALUES ('122', '1', 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('123', '1', 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('124', '1', 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', '');
INSERT INTO `cmf_auth_rule` VALUES ('125', '1', 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', '');
INSERT INTO `cmf_auth_rule` VALUES ('126', '1', 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', '');
INSERT INTO `cmf_auth_rule` VALUES ('127', '1', 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('128', '1', 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('129', '1', 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('130', '1', 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('131', '1', 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('132', '1', 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('133', '1', 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', '');
INSERT INTO `cmf_auth_rule` VALUES ('134', '1', 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('135', '1', 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('136', '1', 'portal', 'admin_url', 'portal/AdminIndex/default', '', '门户管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('137', '1', 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('138', '1', 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('139', '1', 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('140', '1', 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('141', '1', 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('142', '1', 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('143', '1', 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('144', '1', 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('145', '1', 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('146', '1', 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', '');
INSERT INTO `cmf_auth_rule` VALUES ('147', '1', 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('148', '1', 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('149', '1', 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', '');
INSERT INTO `cmf_auth_rule` VALUES ('150', '1', 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('151', '1', 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', '');
INSERT INTO `cmf_auth_rule` VALUES ('152', '1', 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', '');
INSERT INTO `cmf_auth_rule` VALUES ('153', '1', 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', '');
INSERT INTO `cmf_auth_rule` VALUES ('154', '1', 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', '');
INSERT INTO `cmf_auth_rule` VALUES ('155', '1', 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', '');
INSERT INTO `cmf_auth_rule` VALUES ('156', '1', 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
INSERT INTO `cmf_auth_rule` VALUES ('157', '1', 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', '');

-- ----------------------------
-- Table structure for cmf_comment
-- ----------------------------
DROP TABLE IF EXISTS `cmf_comment`;
CREATE TABLE `cmf_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text COMMENT '评论内容',
  `more` text COMMENT '扩展属性',
  `click_up` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数据',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`object_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parent_id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `createtime` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of cmf_comment
-- ----------------------------
INSERT INTO `cmf_comment` VALUES ('1', '0', '1', '0', '5', '1503473056', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', 'TEST', null, '0');
INSERT INTO `cmf_comment` VALUES ('2', '0', '1', '0', '5', '1503555652', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '学习学习', null, '0');
INSERT INTO `cmf_comment` VALUES ('3', '0', '1', '0', '5', '1503555799', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', 'TEST', null, '0');
INSERT INTO `cmf_comment` VALUES ('4', '0', '1', '0', '5', '1503555864', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', 'TEST', null, '0');
INSERT INTO `cmf_comment` VALUES ('5', '0', '1', '0', '5', '1503555933', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', 'TEST222', null, '0');
INSERT INTO `cmf_comment` VALUES ('6', '0', '1', '0', '5', '1503556022', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '测试222\n', null, '0');
INSERT INTO `cmf_comment` VALUES ('7', '0', '1', '0', '5', '1503556210', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '11111', null, '0');
INSERT INTO `cmf_comment` VALUES ('8', '0', '1', '0', '5', '1503556569', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '劲爆辣子鸡，这个夏天真嗨皮', null, '0');
INSERT INTO `cmf_comment` VALUES ('9', '0', '1', '0', '5', '1503557686', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '劲爆辣子鸡，这个夏天真嗨皮', null, '0');
INSERT INTO `cmf_comment` VALUES ('10', '0', '1', '0', '5', '1503557755', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '劲爆辣子鸡，这个夏天真嗨皮', null, '0');
INSERT INTO `cmf_comment` VALUES ('11', '0', '1', '0', '5', '1503557834', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '劲爆辣子鸡，这个夏天真嗨皮', null, '0');
INSERT INTO `cmf_comment` VALUES ('12', '0', '1', '0', '5', '1503557894', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '劲爆辣子鸡，这个夏天真嗨皮', null, '1');
INSERT INTO `cmf_comment` VALUES ('13', '0', '1', '0', '5', '1503558049', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '劲爆辣子鸡，这个夏天真嗨皮', null, '1');
INSERT INTO `cmf_comment` VALUES ('14', '0', '1', '0', '5', '1503558061', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '劲爆辣子鸡，这个夏天真嗨皮', null, '25');
INSERT INTO `cmf_comment` VALUES ('15', '0', '1', '0', '5', '1503558982', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '1111', null, '3');
INSERT INTO `cmf_comment` VALUES ('16', '0', '1', '0', '5', '1503560890', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '劲爆辣子鸡，这个夏天真嗨皮', null, '0');
INSERT INTO `cmf_comment` VALUES ('17', '0', '1', '0', '5', '1503560951', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '劲爆辣子鸡，这个夏天真嗨皮', null, '0');
INSERT INTO `cmf_comment` VALUES ('18', '0', '1', '0', '5', '1503561025', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '劲爆辣子鸡，这个夏天真嗨皮', null, '0');
INSERT INTO `cmf_comment` VALUES ('19', '0', '1', '0', '5', '1503561040', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '劲爆辣子鸡，这个夏天真嗨皮', null, '0');
INSERT INTO `cmf_comment` VALUES ('20', '0', '1', '0', '5', '1503561070', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '劲爆辣子鸡，这个夏天真嗨皮', null, '0');
INSERT INTO `cmf_comment` VALUES ('21', '0', '1', '0', '5', '1503561077', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '劲爆辣子鸡，这个夏天真嗨皮\n\n', null, '0');
INSERT INTO `cmf_comment` VALUES ('22', '0', '1', '0', '5', '1503561118', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '劲爆辣子鸡，这个夏天真嗨皮', null, '1');
INSERT INTO `cmf_comment` VALUES ('23', '0', '1', '0', '5', '1503562655', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', 'TEST', null, '1');
INSERT INTO `cmf_comment` VALUES ('24', '0', '1', '0', '5', '1503563132', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '相信大家都已经知道嗨氏和楚河撕逼的事件了，我认为嗨氏没有做什么不对的事，也有许多人挖出嗨氏学历造假的事。画手的事也是引起了更多鄙夷的眼光，但是嗨氏他已经道歉了，谁没有犯错的时候呢？这一次，我们永远站在嗨氏这边！加油！(一条一元 括号内容删除，012)', null, '115');
INSERT INTO `cmf_comment` VALUES ('25', '0', '1', '0', '5', '1503563684', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', 'TEST', null, '1');
INSERT INTO `cmf_comment` VALUES ('26', '0', '1', '0', '8', '1503563843', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-min/8.html', '烫蛋皮这道菜在我们赣南客家人摆宴席很常见，味道鲜美，入口鲜香', null, '4');
INSERT INTO `cmf_comment` VALUES ('27', '0', '1', '0', '7', '1503563938', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-xiang/7.html', '泡椒碎肉香芋丝-细腻醇香的香芋丝，放入剁辣椒的浓香肉沫，超级下饭', null, '1');
INSERT INTO `cmf_comment` VALUES ('28', '0', '1', '0', '6', '1503564011', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-lu/6.html', '山东名小吃武城旋饼的做法，色泽黄亮，皮酥馅嫩，香味四溢，风味独特，使人回味无穷', null, '1');
INSERT INTO `cmf_comment` VALUES ('29', '0', '1', '0', '4', '1503564039', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-yue/4.html', '干炒牛河是传统的广东小炒，大排档几乎都可以看到它的身影', null, '0');
INSERT INTO `cmf_comment` VALUES ('30', '0', '1', '0', '4', '1503564044', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-yue/4.html', '干炒牛河是传统的广东小炒，大排档几乎都可以看到它的身影', null, '2');
INSERT INTO `cmf_comment` VALUES ('31', '0', '1', '0', '5', '1503621216', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', 'TEST', null, '0');
INSERT INTO `cmf_comment` VALUES ('32', '0', '1', '0', '5', '1503621230', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', 'TEST', null, '0');
INSERT INTO `cmf_comment` VALUES ('33', '0', '1', '0', '5', '1503621586', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', 'TEST', null, '0');
INSERT INTO `cmf_comment` VALUES ('35', '0', '1', '0', '5', '1503622088', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '111', null, '0');
INSERT INTO `cmf_comment` VALUES ('36', '0', '1', '0', '5', '1503622088', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '111', null, '0');
INSERT INTO `cmf_comment` VALUES ('37', '0', '1', '0', '5', '1503622091', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '111111', null, '0');
INSERT INTO `cmf_comment` VALUES ('38', '24', '1', '0', '5', '1503622371', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '测试回复', null, '0');
INSERT INTO `cmf_comment` VALUES ('39', '14', '1', '0', '5', '1503622473', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '劲爆辣子鸡，这个夏天真嗨皮', null, '0');
INSERT INTO `cmf_comment` VALUES ('40', '0', '1', '0', '5', '1503628208', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', 'TEST', null, '0');
INSERT INTO `cmf_comment` VALUES ('41', '0', '1', '0', '5', '1503628245', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', 'test', null, '0');
INSERT INTO `cmf_comment` VALUES ('42', '38', '1', '0', '5', '1503628366', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', 'TEST', null, '0');
INSERT INTO `cmf_comment` VALUES ('43', '42', '1', '0', '5', '1503628373', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '哈哈', null, '0');
INSERT INTO `cmf_comment` VALUES ('44', '43', '1', '0', '5', '1503628392', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '厉害哦\r\n', null, '0');
INSERT INTO `cmf_comment` VALUES ('45', '0', '1', '0', '5', '1503628471', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '牛逼', null, '0');
INSERT INTO `cmf_comment` VALUES ('46', '0', '1', '0', '5', '1503628644', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '垃圾', null, '0');
INSERT INTO `cmf_comment` VALUES ('47', '0', '1', '0', '5', '1503628855', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '垃圾', null, '1');
INSERT INTO `cmf_comment` VALUES ('48', '39', '1', '0', '5', '1503628957', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '你还', null, '0');
INSERT INTO `cmf_comment` VALUES ('49', '48', '1', '0', '5', '1503629009', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '是吧欧巴', null, '0');
INSERT INTO `cmf_comment` VALUES ('50', '15', '1', '0', '5', '1503629035', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '1111111', null, '0');
INSERT INTO `cmf_comment` VALUES ('51', '47', '1', '0', '5', '1503629180', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '11111', null, '0');
INSERT INTO `cmf_comment` VALUES ('52', '25', '1', '0', '5', '1503629197', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '2222', null, '0');
INSERT INTO `cmf_comment` VALUES ('53', '52', '1', '0', '5', '1503629239', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '33333', null, '0');
INSERT INTO `cmf_comment` VALUES ('54', '52', '1', '0', '5', '1503629248', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-chuan/5.html', '33333', null, '0');
INSERT INTO `cmf_comment` VALUES ('55', '30', '1', '0', '4', '1503629434', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-yue/4.html', 'TEST', null, '1');
INSERT INTO `cmf_comment` VALUES ('56', '55', '1', '0', '4', '1503629444', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-yue/4.html', 'TY', null, '0');
INSERT INTO `cmf_comment` VALUES ('57', '56', '1', '0', '4', '1503629451', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-yue/4.html', '少时诵诗书', null, '0');
INSERT INTO `cmf_comment` VALUES ('58', '57', '1', '0', '4', '1503629471', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-yue/4.html', 'you can you do', null, '0');
INSERT INTO `cmf_comment` VALUES ('59', '58', '1', '0', '4', '1503629488', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-yue/4.html', '社会主义核心价值观', null, '0');
INSERT INTO `cmf_comment` VALUES ('60', '0', '1', '0', '4', '1503629570', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-yue/4.html', 'TEST', null, '1');
INSERT INTO `cmf_comment` VALUES ('61', '60', '1', '0', '4', '1503629575', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-yue/4.html', 'AB', null, '0');
INSERT INTO `cmf_comment` VALUES ('62', '61', '1', '0', '4', '1503629579', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-yue/4.html', '啛啛喳喳', null, '0');
INSERT INTO `cmf_comment` VALUES ('63', '0', '1', '0', '8', '1503631979', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-min/8.html', 'test', null, '0');
INSERT INTO `cmf_comment` VALUES ('64', '0', '1', '0', '8', '1503631979', '0', '1', '1', 'portal_post', '我是站长哈哈', '646682485@qq.com', '', 'http://iamfoodie.cn/food-min/8.html', 'test', null, '0');
INSERT INTO `cmf_comment` VALUES ('65', '0', '1', '0', '10', '1504052854', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-su/10.html', '正宗的大煮干丝，要用到正宗的淮扬方干', null, '0');
INSERT INTO `cmf_comment` VALUES ('66', '0', '1', '0', '11', '1504225208', '0', '1', '1', 'portal_post', 'admin', '646682485@qq.com', '', 'http://iamfoodie.cn/food-zhe/11.html', '6666666666666666', null, '0');

-- ----------------------------
-- Table structure for cmf_hook
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook`;
CREATE TABLE `cmf_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(30) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='系统钩子表';

-- ----------------------------
-- Records of cmf_hook
-- ----------------------------
INSERT INTO `cmf_hook` VALUES ('1', '1', '0', '应用初始化', 'app_init', 'cmf', '应用初始化');
INSERT INTO `cmf_hook` VALUES ('2', '1', '0', '应用开始', 'app_begin', 'cmf', '应用开始');
INSERT INTO `cmf_hook` VALUES ('3', '1', '0', '模块初始化', 'module_init', 'cmf', '模块初始化');
INSERT INTO `cmf_hook` VALUES ('4', '1', '0', '控制器开始', 'action_begin', 'cmf', '控制器开始');
INSERT INTO `cmf_hook` VALUES ('5', '1', '0', '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤');
INSERT INTO `cmf_hook` VALUES ('6', '1', '0', '应用结束', 'app_end', 'cmf', '应用结束');
INSERT INTO `cmf_hook` VALUES ('7', '1', '0', '日志write方法', 'log_write', 'cmf', '日志write方法');
INSERT INTO `cmf_hook` VALUES ('8', '1', '0', '输出结束', 'response_end', 'cmf', '输出结束');
INSERT INTO `cmf_hook` VALUES ('9', '1', '0', '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化');
INSERT INTO `cmf_hook` VALUES ('10', '1', '0', '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化');
INSERT INTO `cmf_hook` VALUES ('11', '1', '1', '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码');
INSERT INTO `cmf_hook` VALUES ('12', '3', '0', '模板 body标签开始', 'body_start', '', '模板 body标签开始');
INSERT INTO `cmf_hook` VALUES ('13', '3', '0', '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES ('14', '3', '0', '模板底部开始', 'footer_start', '', '模板底部开始');
INSERT INTO `cmf_hook` VALUES ('15', '3', '0', '模板底部开始之前', 'before_footer', '', '模板底部开始之前');
INSERT INTO `cmf_hook` VALUES ('16', '3', '0', '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前');
INSERT INTO `cmf_hook` VALUES ('17', '3', '0', '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES ('18', '3', '0', '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始');
INSERT INTO `cmf_hook` VALUES ('19', '3', '0', '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前');
INSERT INTO `cmf_hook` VALUES ('20', '3', '0', '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始');
INSERT INTO `cmf_hook` VALUES ('21', '3', '0', '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前');
INSERT INTO `cmf_hook` VALUES ('22', '3', '1', '评论区', 'comment', '', '评论区');
INSERT INTO `cmf_hook` VALUES ('23', '3', '1', '留言区', 'guestbook', '', '留言区');
INSERT INTO `cmf_hook` VALUES ('24', '2', '0', '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘');
INSERT INTO `cmf_hook` VALUES ('25', '4', '0', '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES ('26', '4', '0', '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES ('27', '2', '0', '后台登录页面', 'admin_login', 'admin', '后台登录页面');
INSERT INTO `cmf_hook` VALUES ('28', '1', '1', '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');
INSERT INTO `cmf_hook` VALUES ('29', '1', '1', '登录逻辑开始之前', 'user_login_start', 'cmf', '登录逻辑开始之前');

-- ----------------------------
-- Table structure for cmf_hook_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook_plugin`;
CREATE TABLE `cmf_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(30) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(30) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='系统钩子插件表';

-- ----------------------------
-- Records of cmf_hook_plugin
-- ----------------------------
INSERT INTO `cmf_hook_plugin` VALUES ('8', '10000', '1', 'admin_dashboard', 'SystemInfo');
INSERT INTO `cmf_hook_plugin` VALUES ('11', '10000', '1', 'comment', 'comments');

-- ----------------------------
-- Table structure for cmf_link
-- ----------------------------
DROP TABLE IF EXISTS `cmf_link`;
CREATE TABLE `cmf_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `link_visible` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of cmf_link
-- ----------------------------
INSERT INTO `cmf_link` VALUES ('2', '1', '0', '10000', '', 'http://www.gmw.cn/', '光明网', '', '_blank', '');
INSERT INTO `cmf_link` VALUES ('3', '1', '0', '10000', '', 'https://www.toutiao.com/', '今日头条', '', '_blank', '');
INSERT INTO `cmf_link` VALUES ('4', '1', '0', '10000', 'P2P', 'https://www.yrfax.com/', '悦融庄', '', '_blank', '');

-- ----------------------------
-- Table structure for cmf_nav
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav`;
CREATE TABLE `cmf_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='前台导航位置表';

-- ----------------------------
-- Records of cmf_nav
-- ----------------------------
INSERT INTO `cmf_nav` VALUES ('1', '1', '主导航', '主导航');
INSERT INTO `cmf_nav` VALUES ('2', '0', '底部导航', '');

-- ----------------------------
-- Table structure for cmf_nav_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav_menu`;
CREATE TABLE `cmf_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='前台导航菜单表';

-- ----------------------------
-- Records of cmf_nav_menu
-- ----------------------------
INSERT INTO `cmf_nav_menu` VALUES ('1', '1', '0', '1', '0', '首页', '', 'home', '', '0-1');
INSERT INTO `cmf_nav_menu` VALUES ('2', '1', '0', '1', '10000', '川菜', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":1}}', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('3', '1', '0', '1', '10000', '粤菜', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":2}}', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('4', '1', '0', '1', '10000', '湘菜', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":3}}', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('5', '1', '0', '1', '10000', '鲁菜', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":4}}', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('6', '1', '0', '1', '10000', '浙菜', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":5}}', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('7', '1', '0', '1', '10000', '闽菜', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":6}}', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('8', '1', '0', '1', '10000', '徽菜', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":7}}', '', '');
INSERT INTO `cmf_nav_menu` VALUES ('9', '1', '0', '1', '10000', '苏菜', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":8}}', '', '');

-- ----------------------------
-- Table structure for cmf_option
-- ----------------------------
DROP TABLE IF EXISTS `cmf_option`;
CREATE TABLE `cmf_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='全站配置表';

-- ----------------------------
-- Records of cmf_option
-- ----------------------------
INSERT INTO `cmf_option` VALUES ('7', '1', 'site_info', '{\"site_name\":\"\\u5403\\u8d27\\u5934\\u6761\",\"site_seo_title\":\"\\u6211\\u662f\\u5403\\u8d27\",\"site_seo_keywords\":\"\",\"site_seo_description\":\"\",\"site_icp\":\"\\u7ca4ICP\\u5907XXXXX\\u53f7-1\",\"site_admin_email\":\"646682485@qq.com\",\"site_analytics\":\"\",\"urlmode\":\"1\",\"html_suffix\":\"\"}');
INSERT INTO `cmf_option` VALUES ('8', '1', 'storage', '{\"type\":\"Local\",\"storages\":[]}');
INSERT INTO `cmf_option` VALUES ('9', '1', 'cmf_settings', '{\"open_registration\":\"0\",\"banned_usernames\":\"\"}');
INSERT INTO `cmf_option` VALUES ('10', '1', 'cdn_settings', '{\"cdn_static_root\":\"\"}');
INSERT INTO `cmf_option` VALUES ('11', '1', 'admin_settings', '{\"admin_password\":\"\",\"admin_style\":\"flatadmin\"}');
INSERT INTO `cmf_option` VALUES ('12', '1', 'smtp_setting', '{\"from_name\":\"iamfoodieye@qq.com\",\"from\":\"iamfoodieye@qq.com\",\"host\":\"smtp.qq.com\",\"smtp_secure\":\"ssl\",\"port\":\"465\",\"username\":\"iamfoodieye@qq.com\",\"password\":\"tgesfbpwbywebcag\"}');
INSERT INTO `cmf_option` VALUES ('13', '1', 'email_template_verification_code', '{\"subject\":\"\\u3010\\u5403\\u8d27\\u5934\\u6761\\u7528\\u6237\\u6ce8\\u518c\\u3011\",\"template\":\"&lt;p&gt;\\u3010\\u5403\\u8d27\\u5934\\u6761\\u3011Hi\\uff0c\\u611f\\u8c22\\u60a8\\u6ce8\\u518c\\u5403\\u8d27\\u5934\\u6761\\uff0c\\u60a8\\u7684\\u9a8c\\u8bc1\\u7801\\u4e3a{$code}\\u3002&lt;\\/p&gt;\"}');

-- ----------------------------
-- Table structure for cmf_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_plugin`;
CREATE TABLE `cmf_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of cmf_plugin
-- ----------------------------
INSERT INTO `cmf_plugin` VALUES ('9', '1', '0', '1', '0', 'SystemInfo', '系统信息', '', '', 'ThinkCMF', '', '1.0', '系统信息', '[]');
INSERT INTO `cmf_plugin` VALUES ('12', '1', '1', '1', '0', 'comments', '评论管理', 'http://www.iamfoodie.cn', '', 'yetianyue', 'http://www.iamfoodie.cn', '1.0', '评论管理', '[]');

-- ----------------------------
-- Table structure for cmf_portal_category
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category`;
CREATE TABLE `cmf_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='portal应用 文章分类表';

-- ----------------------------
-- Records of cmf_portal_category
-- ----------------------------
INSERT INTO `cmf_portal_category` VALUES ('1', '0', '0', '1', '0', '10000', '川菜', '四川菜', '0-1', '', '', '', '', '', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('2', '0', '0', '1', '0', '10000', '粤菜', '粤菜', '0-2', '', '', '', '', '', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('3', '0', '0', '1', '0', '10000', '湘菜', '湘菜', '0-3', '', '', '', '', '', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('4', '0', '0', '1', '0', '10000', '鲁菜', '鲁菜', '0-4', '', '', '', '', '', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('5', '0', '0', '1', '0', '10000', '浙菜', '浙菜', '0-5', '', '', '', '', '', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('6', '0', '0', '1', '0', '10000', '闽菜', '闽菜', '0-6', '', '', '', '', '', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('7', '0', '0', '1', '0', '10000', '徽菜', '徽菜', '0-7', '', '', '', '', '', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES ('8', '0', '0', '1', '0', '10000', '苏菜', '苏菜', '0-8', '', '', '', '', '', '{\"thumbnail\":\"\"}');

-- ----------------------------
-- Table structure for cmf_portal_category_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category_post`;
CREATE TABLE `cmf_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';

-- ----------------------------
-- Records of cmf_portal_category_post
-- ----------------------------
INSERT INTO `cmf_portal_category_post` VALUES ('1', '1', '1', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('2', '2', '1', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('3', '3', '5', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('4', '4', '2', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('5', '5', '1', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('6', '6', '4', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('7', '7', '3', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('8', '8', '6', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('9', '9', '7', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('10', '10', '8', '10000', '1');
INSERT INTO `cmf_portal_category_post` VALUES ('11', '11', '5', '10000', '1');

-- ----------------------------
-- Table structure for cmf_portal_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_post`;
CREATE TABLE `cmf_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `post_parent` (`parent_id`),
  KEY `post_author` (`user_id`),
  KEY `post_date` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';

-- ----------------------------
-- Records of cmf_portal_post
-- ----------------------------
INSERT INTO `cmf_portal_post` VALUES ('1', '0', '1', '1', '1', '1', '1', '0', '0', '20', '0', '0', '1503304377', '1503363119', '1503304140', '0', '川味粉蒸肉不仅有红薯的甜味，还有辣椒的辣味，这样的甜辣，绝对让你吃到爽', '粉蒸肉', '秋季是红薯上市的季节，红薯味道香甜鲜美，能生吃，也能蒸煮食用。这道川味粉蒸肉不仅有红薯的甜味，还有辣椒的辣味，这样的甜辣，绝对让你吃到爽。 ', '中国菜谱网', '\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;秋季是红薯上市的季节，红薯味道香甜鲜美，能生吃，也能蒸煮食用。这道川味粉蒸肉不仅有红薯的甜味，还有辣椒的辣味，这样的甜辣，绝对让你吃到爽。 &lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248); text-align: center;&quot;&gt;&lt;img src=&quot;http://static.chinacaipu.com/d/file/menu/sichuanfengwei/2015-10-16/1b6f81a2c3bd77d7d00698eda730492a.jpg&quot; alt=&quot;川味粉蒸肉&quot; width=&quot;300&quot; height=&quot;400&quot; align=&quot;center&quot; style=&quot;border: 0px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248); text-align: center;&quot;&gt;&lt;strong&gt;川味粉蒸肉&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;strong&gt;材料：&lt;/strong&gt;&lt;/span&gt;五花肉 红薯 自制蒸肉粉&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　&lt;span style=&quot;color: rgb(255, 0, 255);&quot;&gt;&lt;strong&gt;配料：&lt;/strong&gt;&lt;/span&gt;白糖1勺，盐，生抽1勺，老3勺，蚝油1勺，粽叶4张，郫县豆瓣酱2勺，料酒1勺　　&lt;/p&gt;\n&lt;center style=&quot;font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;\n&lt;img src=&quot;http://static.chinacaipu.com/d/file/menu/sichuanfengwei/2015-10-16/5050f026883abc3955376dbf057e6d05.jpg&quot; width=&quot;494&quot; height=&quot;534&quot; alt=&quot;川味粉蒸肉&quot; align=&quot;center&quot; style=&quot;border: 0px;&quot;&gt;&lt;br&gt;\n&lt;/center&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　1.干锅不加油，加入八角2个、桂皮1个、花椒10粒、香叶2片、大米半碗小火翻炒&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　2.炒至米香扑鼻，焦黄干燥，盛出来装碗里摊开晾凉&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　3.用料理机将炒好大米和香料稍微搅打成较粗的米粒&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　4.五花肉切成长薄片，切好的五花肉中加入料酒1勺，生抽1勺，老抽3勺，郫县豆瓣酱2勺，白糖1勺，蚝油1勺拌匀腌制半小时&lt;/p&gt;\n&lt;center style=&quot;font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;\n&lt;img src=&quot;http://static.chinacaipu.com/d/file/menu/sichuanfengwei/2015-10-16/d5ecb443174e89c39098ef08880bc0ca.jpg&quot; width=&quot;537&quot; height=&quot;511&quot; alt=&quot;川味粉蒸肉&quot; align=&quot;center&quot; style=&quot;border: 0px;&quot;&gt;&lt;br&gt;\n&lt;/center&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　5.再把打好的五香蒸肉粉加入&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　6.与腌制好的五花肉拌均，让每一片肉都均匀的裹上米粉&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　7.红薯去皮后切成大块，蒸笼底部铺上粽叶，放入切好的红薯打底&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　8.再铺上拌好的米粉肉，放入蒸锅，盖上盖子，上汽后中火蒸60分钟即好&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248); text-align: center;&quot;&gt;&lt;img src=&quot;http://static.chinacaipu.com/d/file/menu/sichuanfengwei/2015-10-16/56154af7b5b6bf64bfd013c02bb4e5f7.jpg&quot; alt=&quot;川味粉蒸肉&quot; width=&quot;550&quot; height=&quot;393&quot; align=&quot;center&quot; style=&quot;border: 0px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;strong&gt;厨房小贴士：&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　1，也可以垫一些土豆或芋头打底。&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　2.米粉的用量和口味可以根据自己喜欢调整，但至少要让每一个肉片都均匀的裹上米粉&lt;/p&gt;\n', null, '{\"thumbnail\":\"portal\\/20170822\\/3204445a987f84955e2c838acc7500fd.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('2', '0', '1', '1', '1', '1', '1', '0', '0', '5', '0', '0', '1503363364', '1503363393', '1503363120', '0', '麻婆豆腐可谓是家喻户晓的一道菜肴', '麻婆豆腐', '麻婆豆腐可谓是家喻户晓的一道菜肴了，这么家喻户晓的菜肴一定每家每户都做过，而且各家风味不相同。所以今天我来做的就是我加评价不错的麻婆豆腐，虽然不是什么正宗之流，但是味道还是过硬，毕竟下饭一绝的菜肴，希望大家喜欢。', '中国菜谱网', '\n&lt;p&gt;&lt;img src=&quot;http://static.chinacaipu.com/upload/1/14695307646.jpg&quot; alt=&quot;&quot; class=&quot;cp-show-pic&quot; style=&quot;border: 0px; display: block; width: 550px; height: 350px; margin: auto; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;img src=&quot;http://www.chinacaipu.com//static/20141218/images/show_1.jpg&quot; alt=&quot;&quot; style=&quot;border: 0px; vertical-align: middle;&quot;&gt;麻婆豆腐可谓是家喻户晓的一道菜肴了，这么家喻户晓的菜肴一定每家每户都做过，而且各家风味不相同。所以今天我来做的就是我加评价不错的麻婆豆腐，虽然不是什么正宗之流，但是味道还是过硬，毕竟下饭一绝的菜肴，希望大家喜欢。&lt;img src=&quot;http://www.chinacaipu.com//static/20141218/images/show_2.jpg&quot; alt=&quot;&quot; style=&quot;border: 0px; vertical-align: middle;&quot;&gt;&lt;/p&gt;\n&lt;table class=&quot;cp-show-tab&quot; width=&quot;649&quot;&gt;&lt;tbody&gt;\n&lt;tr class=&quot;firstRow&quot;&gt;\n&lt;th style=&quot;text-align: left; font-weight: 400; background-color: rgb(251, 251, 251); border-color: rgb(216, 216, 215); width: 308px; padding-left: 15px; height: 38px; line-height: 38px;&quot;&gt;\n&lt;strong&gt;烹饪难度：&lt;/strong&gt;容易&lt;/th&gt;\n&lt;th style=&quot;text-align: left; font-weight: 400; background-color: rgb(251, 251, 251); border-color: rgb(216, 216, 215); width: 307px; padding-left: 15px; height: 38px; line-height: 38px;&quot;&gt;\n&lt;strong&gt;烹饪时间：&lt;/strong&gt;&amp;lt;20分钟&lt;/th&gt;\n&lt;/tr&gt;\n&lt;tr&gt;&lt;th colspan=&quot;2&quot; style=&quot;text-align: left; font-weight: 400; background-color: rgb(251, 251, 251); border-color: rgb(216, 216, 215); width: 632px; padding-left: 15px; height: 38px; line-height: 38px; color: red;&quot;&gt;&lt;strong&gt;主料&lt;/strong&gt;&lt;/th&gt;&lt;/tr&gt;\n&lt;tr&gt;\n&lt;td style=&quot;border-color: rgb(216, 216, 215); padding-left: 15px; line-height: 38px;&quot; width=&quot;308&quot; height=&quot;38&quot;&gt;\n&lt;span style=&quot;float: left; width: 180px;&quot;&gt;豆腐&lt;/span&gt;&lt;em style=&quot;float: right; text-align: right; color: rgb(153, 153, 153); width: 100px; margin-right: 15px;&quot;&gt;230g&lt;/em&gt;\n&lt;/td&gt;\n&lt;td style=&quot;border-color: rgb(216, 216, 215); padding-left: 15px; line-height: 38px;&quot; width=&quot;307&quot; height=&quot;38&quot;&gt;\n&lt;span style=&quot;float: left; width: 180px;&quot;&gt;牛肉末&lt;/span&gt;&lt;em style=&quot;float: right; text-align: right; color: rgb(153, 153, 153); width: 100px; margin-right: 15px;&quot;&gt;适量&lt;/em&gt;\n&lt;/td&gt;\n&lt;/tr&gt;\n&lt;tr&gt;&lt;th colspan=&quot;2&quot; style=&quot;text-align: left; font-weight: 400; background-color: rgb(251, 251, 251); border-color: rgb(216, 216, 215); width: 632px; padding-left: 15px; height: 38px; line-height: 38px; color: rgb(0, 64, 255);&quot;&gt;&lt;strong&gt;调料&lt;/strong&gt;&lt;/th&gt;&lt;/tr&gt;\n&lt;tr&gt;\n&lt;td style=&quot;border-color: rgb(216, 216, 215); padding-left: 15px; line-height: 38px;&quot; width=&quot;308&quot; height=&quot;38&quot;&gt;\n&lt;span style=&quot;float: left; width: 180px;&quot;&gt;豆豉酱&lt;/span&gt;&lt;em style=&quot;float: right; text-align: right; color: rgb(153, 153, 153); width: 100px; margin-right: 15px;&quot;&gt;一勺&lt;/em&gt;\n&lt;/td&gt;\n&lt;td style=&quot;border-color: rgb(216, 216, 215); padding-left: 15px; line-height: 38px;&quot; width=&quot;307&quot; height=&quot;38&quot;&gt;\n&lt;span style=&quot;float: left; width: 180px;&quot;&gt;豆瓣酱&lt;/span&gt;&lt;em style=&quot;float: right; text-align: right; color: rgb(153, 153, 153); width: 100px; margin-right: 15px;&quot;&gt;一勺&lt;/em&gt;\n&lt;/td&gt;\n&lt;/tr&gt;\n&lt;tr&gt;\n&lt;td style=&quot;border-color: rgb(216, 216, 215); padding-left: 15px; line-height: 38px;&quot; width=&quot;308&quot; height=&quot;38&quot;&gt;\n&lt;span style=&quot;float: left; width: 180px;&quot;&gt;酱油&lt;/span&gt;&lt;em style=&quot;float: right; text-align: right; color: rgb(153, 153, 153); width: 100px; margin-right: 15px;&quot;&gt;一勺&lt;/em&gt;\n&lt;/td&gt;\n&lt;td style=&quot;border-color: rgb(216, 216, 215); padding-left: 15px; line-height: 38px;&quot; width=&quot;307&quot; height=&quot;38&quot;&gt;\n&lt;span style=&quot;float: left; width: 180px;&quot;&gt;绍兴酒&lt;/span&gt;&lt;em style=&quot;float: right; text-align: right; color: rgb(153, 153, 153); width: 100px; margin-right: 15px;&quot;&gt;一勺&lt;/em&gt;\n&lt;/td&gt;\n&lt;/tr&gt;\n&lt;/tbody&gt;&lt;/table&gt;\n&lt;p&gt;&lt;strong class=&quot;cp-show-main-t1&quot; style=&quot;display: block; font-size: 14px; height: 40px; line-height: 40px; padding-top: 17px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;做法步骤&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;将生姜、大蒜、长葱放入油中爆炒，直至香气四溢；&lt;/p&gt;\n&lt;p&gt;&lt;img src=&quot;http://static.chinacaipu.com/upload/c/14695307192.jpg&quot;&gt;&lt;/p&gt;\n&lt;p&gt;然后将牛肉末放入其中，弱火炒至肉末变色（如图）；&lt;/p&gt;\n&lt;p&gt;&lt;img src=&quot;http://static.chinacaipu.com/upload/c/14695307218.jpg&quot;&gt;&lt;/p&gt;\n&lt;p&gt;将豆豉酱、豆瓣酱放入其中，然后倒入酱油，炒一会后加入绍兴酒、鸡骨汤，之后将豆腐倒入锅中；&lt;/p&gt;\n&lt;p&gt;&lt;img src=&quot;http://static.chinacaipu.com/upload/c/14695307248.jpg&quot;&gt;&lt;/p&gt;\n&lt;p&gt;待沸腾后改为中火，然后加入砂糖；&lt;/p&gt;\n&lt;p&gt;&lt;img src=&quot;http://static.chinacaipu.com/upload/4/14695307289.jpg&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;color: rgb(89, 89, 89); font-weight: 700;&quot;&gt;豆腐表面隐隐有油渍浮现之时，改为弱火熬煮3分钟&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;color: rgb(89, 89, 89); font-weight: 700;&quot;&gt;&lt;img src=&quot;http://static.chinacaipu.com/upload/c/14695307301.jpg&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;装盘撒上花椒、万能葱即可~&lt;/p&gt;\n&lt;p&gt;&lt;img src=&quot;http://static.chinacaipu.com/upload/c/14695307358.jpg&quot;&gt;&lt;img src=&quot;http://static.chinacaipu.com/upload/e/14695307385.jpg&quot;&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"portal\\/20170822\\/eaa077a097793e98e5be8352c833e11a.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('3', '0', '1', '1', '1', '1', '1', '0', '0', '305', '0', '0', '1503364917', '1503456065', '1503364680', '0', '梅干菜是绍兴地区的传统名菜，具有奇香，用它来烧肉更是美味', '梅干菜,梅菜扣肉,烧肉', '梅干菜是绍兴地区的传统名菜，具有奇香，用它来烧肉更是美味', '美食杰', '\n&lt;h3 style=&quot;margin: 0px 0px 8px; padding: 0px; font-stretch: normal; font-size: 14px; line-height: normal; color: rgb(102, 102, 102);&quot;&gt;健康功效&lt;/h3&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 35px; padding: 0px; font-stretch: normal; font-size: 14px; line-height: 22px;&quot;&gt;五花肉：补肾、滋阴、益气&lt;br&gt;冰糖：和胃、健脾、润肺止咳&lt;br&gt;八角：理气、止痛、温阳&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num1&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px; white-space: normal;&quot;&gt;1.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;提前处理：梅菜干建议提前一晚泡上，有的梅菜干特别咸，为了泡开最好提前泡上可以去除多余咸味&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_61963.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num2&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;2.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;肉用开水烫一下撇去浮沫，煮半小时左右&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_14435.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num3&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;3.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;处理猪肉把猪皮用锅煎一下；只煎猪皮那一面，为了将猪皮去油，并且紧实一下，这样过一会切开的时候好操作&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_35228.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num4&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;4.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;将肉皮向下，慢慢切开，这个比较费时间以及考验技术，切得好看成品你叫漂亮，不过如果切不成功也没关系，只是影响外表，不影响味道&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_08689.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num5&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;5.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;肉里面是生的，没关系，过一会还要蒸，生的是正常&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_97428.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num6&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;6.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;下面将切好的肉片整整齐齐的码放在一个盆中从左到右码好，多余的肉以及切得不整齐的肉放到最上面&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_00156.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num7&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;7.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;泡好的梅干菜，好好冲洗几次，梅干菜砂子很严重的，如果不好好洗，会牙碜的；洗干净后去水，将梅干菜铺在刚刚的肉片上&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_53576.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num8&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;8.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;取一个容器倒入生抽&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_81527.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num9&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;9.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;倒入老抽&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_27562.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num10&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;10.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;放入鸡粉、糖、料酒,我没有再放盐哈~&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_02096.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num11&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;11.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;将大料放在梅干菜上面,将调好的调料倒入梅菜扣肉的盆中，慢慢的均匀倒入&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_90448.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num12&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;12.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;最后再将梅菜干压一压，最后的状态是不要太湿润，但是一压能够看到汤汁是最好的状态，压一压可以让调料混合均匀，调好后，腌制两小时&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_83800.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num13&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;13.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;铺上锡纸，两边不要压实，留一点空隙，放入锅中蒸一个钟头到一个半钟头；锡纸是为了防止水汽进入碗中，蒸到后来可以看下碗中是不是很湿润，如果不湿润，就将锡纸拿掉&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_17885.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num14&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;14.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;梅菜扣肉蒸好了，打开盖子香气扑鼻&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_27402.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num15&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;15.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;下面这个步骤要小心哦~~~找一个比蒸的时候用的碗大一圈的盆，将盆倒扣在碗上，要踏踏实实的扣上，盆要有一点深度，因为蒸菜水份多，一使劲翻转过来，要快速别犹豫，小心烫哦&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_91781.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num16&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;16.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;翻转后，肉就在上面了，蒸之前如果码放得整齐，倒出后肉也会排列的很漂亮，撒上小葱或者香菜装饰即可&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_91072.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; border=&quot;0&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_92331.jpg&quot; style=&quot;margin: 0px 0px 0px 100px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; border=&quot;0&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_88601.jpg&quot; style=&quot;margin: 0px 0px 0px 100px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; border=&quot;0&quot; src=&quot;http://site.meishij.net/rs/04/143/2598254/n2598254_04335.jpg&quot; style=&quot;margin: 0px 0px 0px 100px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;h3 class=&quot;step_tit&quot; style=&quot;margin: 0px 0px 8px; padding: 0px; font-stretch: normal; font-size: 14px; line-height: normal; color: rgb(102, 102, 102);&quot;&gt;&lt;ul&gt;\n&lt;li&gt;&lt;p&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;br&gt;\n&lt;/ul&gt;&lt;/h3&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"portal\\/20170822\\/844acc5d8cf15e0157d90f11eaf68028.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('4', '0', '1', '1', '1', '1', '1', '0', '0', '38', '0', '10', '1503366766', '1503366766', '1503366712', '0', '干炒牛河是传统的广东小炒，大排档几乎都可以看到它的身影', '干炒牛河', '干炒牛河是传统的广东小炒，在粤菜酒家餐厅，大排档几乎都可以看到它的身影。干炒牛河色泽油润亮泽，配料多样丰富，牛肉滑嫩焦香，河粉爽滑筋道，看着干爽无汁，入口却鲜香味美。', '中国菜谱网', '\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;干炒牛河是传统的广东小炒，在粤菜酒家餐厅，大排档几乎都可以看到它的身影。干炒牛河色泽油润亮泽，配料多样丰富，牛肉滑嫩焦香，河粉爽滑筋道，看着干爽无汁，入口却鲜香味美。&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248); text-align: center;&quot;&gt;&lt;img src=&quot;http://static.chinacaipu.com/d/file/menu/guangdongecai/2015-05-19/f20327e902de77f9ef74e97dda8e5ec4.jpg&quot; alt=&quot;干炒牛河&quot; width=&quot;400&quot; height=&quot;300&quot; align=&quot;center&quot; style=&quot;border: 0px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248); text-align: center;&quot;&gt;&lt;strong&gt;干炒牛河&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　&lt;span style=&quot;color: rgb(0, 0, 255);&quot;&gt;&lt;strong&gt;用料：&lt;/strong&gt;&lt;/span&gt;牛里脊100g、鲜河粉500g、洋葱半个、绿豆芽50g、姜丝5g、大蒜2瓣、小葱2棵、料酒10ml、生抽20ml、老抽15ml、白糖2g、淀粉5g、盐少许、油适量&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;strong&gt;做法：&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　1.将牛里脊洗净切成薄片，放入碗中，加入料酒、5ml生抽、白糖、姜丝(炒前去掉)、干淀粉抓拌均匀，腌制10分钟入味;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　2.洋葱切细丝，绿豆芽择洗干净，沥干水分，小葱择洗干净，切成寸段，大蒜切碎;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248);&quot;&gt;　　3.锅中放入油，大火加热至油温七成热时，放入腌制好的牛肉片滑炒至肉片变色，盛出;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 20px; margin-bottom: 0px; font-family: 微软雅黑, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(248, 248, 248); text-align: center;&quot;&gt;&lt;img src=&quot;http://static.chinacaipu.com/d/file/menu/guangdongecai/2015-05-19/d5357212243d1d705449b411cb6c8b73.jpg&quot; alt=&quot;干炒牛河&quot; width=&quot;550&quot; height=&quot;383&quot; align=&quot;center&quot; style=&quot;border: 0px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"portal\\/20170822\\/38a48d7474a64c5e453d30a699211f6d.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('5', '0', '1', '1', '1', '1', '1', '0', '0', '545', '0', '48', '1503370574', '1503473635', '1503370140', '0', '劲爆辣子鸡，这个夏天真嗨皮', '辣子鸡', '我喜辣，做任何菜都会下辣椒，好像无辣不欢，金龙鱼的外婆乡菜籽油真的很适合做香辣菜，它有与众不同的口感和香气，今天做的辣子鸡出锅就秒光，连干辣椒都不舍得放过呢', '美食杰', '\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 20px 24px 10px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 24px; color: rgb(102, 102, 102);&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px 3px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(221, 221, 221); font-family: arial;&quot;&gt;“&lt;/strong&gt;我喜辣，做任何菜都会下辣椒，好像无辣不欢，金龙鱼的外婆乡菜籽油真的很适合做香辣菜，它有与众不同的口感和香气，今天做的辣子鸡出锅就秒光，连干辣椒都不舍得放过呢&lt;strong style=&quot;margin: 0px; padding: 0px 3px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(221, 221, 221); font-family: arial;&quot;&gt;”&lt;/strong&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num1&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;1.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;准备好材料&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/145/214/5241145/n5241145_150321737843170.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num2&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;2.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;干辣椒和湿红辣椒剪段，干辣椒用清水浸泡&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/145/214/5241145/n5241145_150321755118364.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num3&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;3.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;鸡翅中和小鸡腿洗净后砍小块&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/145/214/5241145/n5241145_150321761730498.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num4&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;4.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;加入姜片，料酒，酱油，蚝油，盐，胡椒粉&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/145/214/5241145/n5241145_150321765975140.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num5&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;5.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;抓匀腌制20分钟&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/145/214/5241145/n5241145_150321769866144.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num6&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;6.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;金龙鱼菜籽油倒入奶锅内&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/145/214/5241145/n5241145_150321772387447.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num7&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;7.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;中火煮至冒热气&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/145/214/5241145/n5241145_150321775288847.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num8&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;8.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;放入沥干水的鸡块小火炸至金黄&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/145/214/5241145/n5241145_150321778893216.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num9&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;9.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;全部炸好后备用&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/145/214/5241145/n5241145_150321782733084.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num10&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;10.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;热锅，倒入适量的金龙鱼外婆乡小榨菜籽油，爆香蒜末后放入湿辣椒炒至表皮起泡&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/145/214/5241145/n5241145_150321785189021.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num11&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;11.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;再倒入干辣椒段和花椒翻炒出香气&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/145/214/5241145/n5241145_150321787507630.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num12&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;12.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;倒入鸡块翻炒均匀即可出锅&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/145/214/5241145/n5241145_150321789613999.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; border=&quot;0&quot; src=&quot;http://site.meishij.net/rs/145/214/5241145/n5241145_150321825402793.jpg&quot; style=&quot;margin: 0px 0px 0px 100px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; border=&quot;0&quot; src=&quot;http://site.meishij.net/rs/145/214/5241145/n5241145_150321825456399.jpg&quot; style=&quot;margin: 0px 0px 0px 100px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"portal\\/20170822\\/abef012d5ab0718858efd9810d3bb80f.jpg\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20170822\\/ac7eea21198de0a5414f346ae83ec2ed.jpg\",\"name\":\"n5241145_150321782733084.jpg\"},{\"url\":\"portal\\/20170822\\/7834b2ae668fc174186c73a106179fbe.jpg\",\"name\":\"n5241145_150321787507630.jpg\"},{\"url\":\"portal\\/20170822\\/3ebfdbad8c564d94ef28cf93105f558f.jpg\",\"name\":\"n5241145_150321789613999.jpg\"},{\"url\":\"portal\\/20170822\\/024ccaa8bcbafac0c67db11af813790c.jpg\",\"name\":\"n5241145_150321825402793.jpg\"},{\"url\":\"portal\\/20170822\\/abef012d5ab0718858efd9810d3bb80f.jpg\",\"name\":\"n5241145_150321825456399.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES ('6', '0', '1', '1', '1', '1', '1', '0', '0', '55', '0', '1', '1503452379', '1503452379', '1503452257', '0', '山东名小吃武城旋饼的做法，色泽黄亮，皮酥馅嫩，香味四溢，风味独特，使人回味无穷', '武城旋饼', '武城旋饼是山东省武城县的传统名吃，已有400多年的历史。2004年被授予“山东名小吃”称号。武城旋饼，其制作更加讲究，和面要根据四季温度的不同掌握软硬，并反复的揉捏。馅有猪、牛、羊肉和鸡蛋，各色俱全。多以肉要切成玉米粒大小的细块，并配以蔬菜，一般牛肉配大葱，猪肉配韭菜，羊肉配香菜，再加花椒面、味精、精盐、生姜、香油等作料调和。武城旋饼，饼大20厘米左右，厚2厘米左右，大如盘，厚如指，色泽黄亮，皮酥馅嫩，香味四溢，风味独特，使人回味无穷。', '美食杰', '\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num1&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;1.&lt;/em&gt;面粉中加入清水和成较柔软的面团，用保鲜膜盖上，醒20分钟，猪肉切末&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; height=&quot;212&quot; width=&quot;600&quot; alt=&quot;武城旋饼Hs.jpg&quot; src=&quot;http://images.meishij.net/p/20140923/8f3ec42679821548860e76088af2f236.jpg&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num2&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;2.&lt;/em&gt;洋葱切末，在肉馅儿中加入盐、生抽、糖、料酒、五香粉、香油&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; height=&quot;213&quot; width=&quot;600&quot; alt=&quot;武城旋饼xY.jpg&quot; src=&quot;http://images.meishij.net/p/20140923/ed227563022dd26e3a2b7056bf50e4a9.jpg&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num3&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;3.&lt;/em&gt;将肉馅朝一个方向搅拌均匀，放入切好的洋葱&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; height=&quot;212&quot; width=&quot;600&quot; alt=&quot;武城旋饼OC.jpg&quot; src=&quot;http://images.meishij.net/p/20140923/2176f6c985a12005118df8e87d9a9cc1.jpg&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num4&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;4.&lt;/em&gt;将醒发好的面团用力搓揉几分钟，擀成皮，铺上馅料&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; height=&quot;210&quot; width=&quot;600&quot; alt=&quot;武城旋饼HP.jpg&quot; src=&quot;http://images.meishij.net/p/20140923/21465ccbd84c8f0f244493ef24fc7d47.jpg&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num5&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;5.&lt;/em&gt;从面皮的一边切一刀，慢慢卷起&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; height=&quot;210&quot; width=&quot;600&quot; alt=&quot;武城旋饼qJ.jpg&quot; src=&quot;http://images.meishij.net/p/20140923/c4ba3912f10264c92230ea15f66aba99.jpg&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num6&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;6.&lt;/em&gt;卷好后，捏紧，擀成直径20厘米、2厘米厚的饼&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; height=&quot;215&quot; width=&quot;600&quot; alt=&quot;武城旋饼Ej.jpg&quot; src=&quot;http://images.meishij.net/p/20140923/782bf4066e35285a35ffd8cb0f16ce45.jpg&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num7&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;7.&lt;/em&gt;往平底锅中放入石子，刷上一层油，烧热待用，另一只锅，刷油，放入面饼&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; height=&quot;213&quot; width=&quot;600&quot; alt=&quot;武城旋饼dP.jpg&quot; src=&quot;http://images.meishij.net/p/20140923/4e165a079a6d8252652277d61c085a23.jpg&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num8&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;8.&lt;/em&gt;面饼稍硬，移至有石子的锅上烘烤至两面金黄即可&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; height=&quot;211&quot; width=&quot;600&quot; alt=&quot;武城旋饼xN.jpg&quot; src=&quot;http://images.meishij.net/p/20140923/5f653b05fc1e05ba78340033159cdc3c.jpg&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; height=&quot;705&quot; width=&quot;600&quot; alt=&quot;武城旋饼Vl.jpg&quot; src=&quot;http://images.meishij.net/p/20140923/aaaaa8a49531923bf999f28d9f060289.jpg&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;h2 class=&quot;cpc_h2&quot; style=\'margin: 0px; padding: 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(238, 238, 238); border-left-color: initial; border-image: initial; outline: 0px; font-size: 24px; vertical-align: baseline; background: rgb(255, 255, 255); font-weight: normal; color: rgb(51, 51, 51); height: 66px; line-height: 66px; text-indent: 24px; font-family: &quot;Microsoft Yahei&quot;; white-space: normal;\'&gt;烹饪技巧&lt;/h2&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;武城旋饼，必备两只锅，和一堆石子，若没有这些，就不是武城旋饼了，也就家常烙饼了。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"portal\\/20170823\\/70ba7668665f1369cc386dc56baa78c4.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('7', '0', '1', '1', '1', '1', '1', '0', '0', '7', '0', '1', '1503454280', '1503454280', '1503454135', '0', '泡椒碎肉香芋丝-细腻醇香的香芋丝，放入剁辣椒的浓香肉沫，超级下饭', '泡椒碎肉香芋丝', '剁辣椒，日常花儿最爱的就是剁椒鸡蛋，香嫩的鸡蛋加入1大勺的剁辣椒，辣椒是鲜辣的口感，这样炒出一盘，只要5分钟，美味又快手。剁辣椒还是去油腻增香的好食材，蒸排骨、炒鸡胗，配上剁辣椒，都让菜品的味道增香不少。这里花儿想起一道经典的湖南菜，在不少湘菜馆子都能吃到，听一些湖南朋友说，这可是他们下馆子必点的一道美食。细腻醇香的香芋丝，放入剁辣椒的浓香肉沫，超级下饭。', '美食杰', '\n&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px 3px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(221, 221, 221); font-family: arial; white-space: normal;&quot;&gt;“&lt;/strong&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;剁辣椒，日常花儿最爱的就是剁椒鸡蛋，香嫩的鸡蛋加入1大勺的剁辣椒，辣椒是鲜辣的口感，这样炒出一盘，只要5分钟，美味又快手。剁辣椒还是去油腻增香的好食材，蒸排骨、炒鸡胗，配上剁辣椒，都让菜品的味道增香不少。这里花儿想起一道经典的湖南菜，在不少湘菜馆子都能吃到，听一些湖南朋友说，这可是他们下馆子必点的一道美食。细腻醇香的香芋丝，放入剁辣椒的浓香肉沫，超级下饭。&lt;/span&gt;&lt;strong style=&quot;margin: 0px; padding: 0px 3px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(221, 221, 221); font-family: arial; white-space: normal;&quot;&gt;”&lt;/strong&gt;&lt;/p&gt;\n&lt;h2 class=&quot;cpc_h2&quot; style=\'margin: 0px; padding: 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(238, 238, 238); border-left-color: initial; border-image: initial; outline: 0px; font-size: 24px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; color: rgb(51, 51, 51); height: 66px; line-height: 66px; text-indent: 24px; font-family: &quot;Microsoft Yahei&quot;;\'&gt;泡椒碎肉香芋丝的做法&lt;/h2&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num1&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;1.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;芋头取300克，去皮切细丝。&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/162/177/3544412/n3544412_150000406543314.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num2&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;2.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;切好的香芋丝摆在盘子中。&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/162/177/3544412/n3544412_150000459432553.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num3&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;3.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;猪肉馅150克加入适量葱末姜末，1勺生抽、1勺蚝油，适量盐，搅拌均匀再点上适量麻油。&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/162/177/3544412/n3544412_150000460890455.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num4&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;4.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;坐热油锅，放入适量食用油，猪肉馅入锅快速炒散，变色后加入料酒1勺，2大勺剁辣椒。&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/162/177/3544412/n3544412_150000461751167.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num5&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;5.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;再加入1大勺的蚝油，炒匀。&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/162/177/3544412/n3544412_150000462732840.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num6&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;6.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;炒好的肉沫加入适量香葱末，味道更香，倒在香芋丝上。&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/162/177/3544412/n3544412_150000463671612.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num7&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;7.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;放入蒸锅，上汽后蒸10分钟。&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/162/177/3544412/n3544412_150000466032490.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num8&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;8.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;蒸好后倒入少许蒸鱼豉油，撒上葱花即可。&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/162/177/3544412/n3544412_150000467271550.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; border=&quot;0&quot; src=&quot;http://site.meishij.net/rs/162/177/3544412/n3544412_150000467715230.jpg&quot; style=&quot;margin: 0px 0px 0px 100px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; border=&quot;0&quot; src=&quot;http://site.meishij.net/rs/162/177/3544412/n3544412_150000468175176.jpg&quot; style=&quot;margin: 0px 0px 0px 100px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; border=&quot;0&quot; src=&quot;http://site.meishij.net/rs/162/177/3544412/n3544412_150000468869828.jpg&quot; style=&quot;margin: 0px 0px 0px 100px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"portal\\/20170823\\/9195f6925a3c2c705805cb2350c9560b.jpg\",\"template\":\"\",\"photos\":[{\"url\":\"portal\\/20170823\\/428f861811e4cb91ea7376f7526dd76c.jpg\",\"name\":\"n3544412_150000460890455.jpg\"},{\"url\":\"portal\\/20170823\\/a07e80992c99eeaf9b29db4aad2aa5ff.jpg\",\"name\":\"n3544412_150000462732840.jpg\"},{\"url\":\"portal\\/20170823\\/037265974899036743a48bb21a1347ac.jpg\",\"name\":\"n3544412_150000463671612.jpg\"},{\"url\":\"portal\\/20170823\\/9195f6925a3c2c705805cb2350c9560b.jpg\",\"name\":\"n3544412_150000467271550.jpg\"},{\"url\":\"portal\\/20170823\\/9b44028c866f2c343b41e9ed08671643.jpg\",\"name\":\"n3544412_150000469163524.jpg\"},{\"url\":\"portal\\/20170823\\/b9f7baf97fd01e0b908635ebf1f97f70.jpg\",\"name\":\"s3544412_150000115363371.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES ('8', '0', '1', '1', '1', '1', '1', '0', '0', '116', '0', '3', '1503533848', '1503533848', '1503533757', '0', '烫蛋皮这道菜在我们赣南客家人摆宴席很常见，味道鲜美，入口鲜香', '烫蛋皮', '烫蛋皮这道菜在我们赣南客家人摆宴席很常见，味道鲜美，入口鲜香。', '美食杰', '\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num1&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;1.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;把两个鸡蛋打入容器里，放入木薯粉，淀粉。&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/83/112/5403083/n5403083_147463949462452.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num2&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;2.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;用手把鸡蛋木薯粉淀粉揉均匀，如果太干加一点点水。&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/83/112/5403083/n5403083_147463949731240.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num3&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;3.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;揉至光滑&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/83/112/5403083/n5403083_147463949961699.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num4&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;4.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;加入两碗水，搅拌均匀至无颗粒&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/83/112/5403083/n5403083_147463950156290.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num5&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;5.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;热锅刷油&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/83/112/5403083/n5403083_147463950359396.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num6&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;6.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;用汤勺盛一汤勺蛋浆倒入锅内，迅速摊匀蛋浆&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/83/112/5403083/n5403083_147463950559530.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num7&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;7.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;蛋皮煎熟后盛出&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/83/112/5403083/n5403083_147463950862115.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num8&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;8.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;摊在盘子上，放凉&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/83/112/5403083/n5403083_147463951029970.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num9&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;9.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;蛋皮凉后折叠&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/83/112/5403083/n5403083_147463951325689.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num10&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;10.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;将蛋皮切条，备用。 锅内倒入水烧开加油姜油盐，将蛋皮倒入烧开的汤内，20秒迅速起锅。加入葱花~~就完成啦。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"portal\\/20170824\\/8c7d2d012886fa966531423fc2a41916.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('9', '0', '1', '1', '1', '1', '1', '0', '0', '3', '0', '0', '1503639061', '1503639061', '1503639014', '0', '雪花丁香鸡', '雪花丁香鸡', '雪花丁香鸡', '美食杰', '\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num1&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;1.&lt;/em&gt;将嫩鸡洗净，用沸水烫紧鸡皮，抹匀酱油，入五成热油锅炸至皮脆捞出，斩成块，排入扣碗，加丁香、桂皮、八角、黄酒、味精、酱油、葱结和姜片，入笼蒸至酥软取出，去葱、姜、香料，倒出汤汁待用，将鸡块倒扣入盘中。&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num2&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;2.&lt;/em&gt;蛋清里加200克清水、盐、味精、淀粉，拌匀成蛋清糊，入二成热的油锅，用文火烧至蛋白凝固浮起，取出。&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num3&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;3.&lt;/em&gt;蒸鸡原汤入净锅，上旺火，首浓汁水，下水淀粉勾薄芡，浇于鸡块上，再盖上熟蛋白即成。&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; border=&quot;0&quot; alt=&quot;雪花丁香鸡oV.jpg&quot; src=&quot;http://images.meishij.net/p/20120723/dd7d284289302d1909f3b495ae083eff.jpg&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"portal\\/20170825\\/76b187809d210a98dc344aefd7442dda.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('10', '0', '1', '1', '1', '1', '1', '0', '0', '13', '0', '1', '1503639320', '1503639320', '1503639233', '0', '正宗的大煮干丝，要用到正宗的淮扬方干', '大煮干丝的做法', '正宗的大煮干丝，要用到正宗的淮扬方干。淮扬方干比我们一般在市场上见到的豆腐干质地要扎实一些，口感更有韧劲儿，所以可以切成极细的丝，而且下锅久煮不烂。我试过了我们这边市场能买到的所有豆腐干，没有一种可以片出薄片来，最后木有办法，只好打网购的主意。淘宝上的淮扬方干倒是不贵，几块钱就可以买到，可是加上邮费那是真正的豆腐盘成肉价钱，但也只好买啊。买就买呗，可俺就是这么一点犯糊涂，当时都准备付款了，结果在买的那家店看到居然还有卖已经切成丝的干丝，俺当时还偷着乐呵，心想，这下省事了，贵点儿就贵点儿吧，买回来直接下锅煮多好。所以俺满心欢喜等着俺的干丝到货，等到货了打开一看俺就傻眼咧，那干丝一开袋全都碎成了渣，根本没法用', '美食杰', '\n&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px 3px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(221, 221, 221); font-family: arial; white-space: normal;&quot;&gt;“&lt;/strong&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;今天这菜充分证明了俺某一方面的人生哲学，那就是——自做孽不可活！从何说起呢？&lt;/span&gt;&lt;br style=&quot;color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　上周某杂志约稿，让俺给做两个有地方特色的菜，俺觉着吧，自己平时川、湘、鄂菜做得挺多的了，粤菜的参鲍翅之类的又太麻烦，所以俺想着整几个简单点儿的。江南的地方菜式都比较清淡，感觉比较好做，于是乎，俺当时脑子也没动就选了个淮扬菜系。&lt;/span&gt;&lt;br style=&quot;color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　说起淮扬菜的代表，那自然是“大煮干丝”和“灌汤包”了。那超大个的汤包俺还没开始挑战，先只想着从简单的做起，在俺的感觉中，那大煮干丝应该是比较好做的，无非是高汤煮干丝，加些其它的配料佐味而已。可是等俺真的开始做，才发现俺犯了一个致命的错误，那就是材料的选择。&lt;/span&gt;&lt;br style=&quot;color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　正宗的大煮干丝，要用到正宗的淮扬方干。淮扬方干比我们一般在市场上见到的豆腐干质地要扎实一些，口感更有韧劲儿，所以可以切成极细的丝，而且下锅久煮不烂。我试过了我们这边市场能买到的所有豆腐干，没有一种可以片出薄片来，最后木有办法，只好打网购的主意。淘宝上的淮扬方干倒是不贵，几块钱就可以买到，可是加上邮费那是真正的豆腐盘成肉价钱，但也只好买啊。买就买呗，可俺就是这么一点犯糊涂，当时都准备付款了，结果在买的那家店看到居然还有卖已经切成丝的干丝，俺当时还偷着乐呵，心想，这下省事了，贵点儿就贵点儿吧，买回来直接下锅煮多好。所以俺满心欢喜等着俺的干丝到货，等到货了打开一看俺就傻眼咧，那干丝一开袋全都碎成了渣，根本没法用。&lt;/span&gt;&lt;br style=&quot;color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　经过这么一折腾，交稿的时间也要到了，俺也没办法再等了，所以只好硬着头皮上，用千张皮代替豆干，虽然也还是厚了点儿，可至少比菜场卖的那一刀下去就成渣的豆干强点儿。所以筒子们，今天这菜俺自知不正宗，也不用各位拍砖，俺自个就拍了，哈哈！&lt;/span&gt;&lt;strong style=&quot;margin: 0px; padding: 0px 3px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(221, 221, 221); font-family: arial; white-space: normal;&quot;&gt;”&lt;/strong&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num1&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;1.&lt;/em&gt;千张切细丝(有淮扬方干最好，千张只是替代品)&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num2&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;2.&lt;/em&gt;火腿切细丝，香菇泡发后切细丝，鸡脯肉过沸水抄熟后同样拆成细丝备用&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; alt=&quot;大煮干丝mj.jpg&quot; src=&quot;http://images.meishij.net/p/20141125/561bc52c75144bf18816403e25f02dc2.jpg&quot; width=&quot;500&quot; height=&quot;163&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num3&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;3.&lt;/em&gt;锅内注水烧开，下入干丝烫煮至再次沸腾时关火&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num4&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;4.&lt;/em&gt;捞出过水冲滤一遍，以去除豆腐本身的豆腥味&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; alt=&quot;大煮干丝pa.jpg&quot; src=&quot;http://images.meishij.net/p/20141125/21da3757f7fe33d240e2941be8bacefb.jpg&quot; width=&quot;500&quot; height=&quot;163&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num5&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;5.&lt;/em&gt;鸡汤(带鸡油)下入干虾煮开，下入火腿、香菇、鸡丝和干丝，小火煮10分钟左右至入味&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;em class=&quot;step&quot; id=&quot;step_num6&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; position: absolute; left: 0px; top: -6px; height: 100px; width: 100px; display: block; line-height: 52px;&quot;&gt;6.&lt;/em&gt;起锅装盘，表面再撒上些火腿和鸡丝即可&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; alt=&quot;大煮干丝yZ.jpg&quot; src=&quot;http://images.meishij.net/p/20141125/c08a398b368b4b76e73ae1cdf6ac86df.jpg&quot; width=&quot;500&quot; height=&quot;163&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; alt=&quot;大煮干丝sU.jpg&quot; src=&quot;http://images.meishij.net/p/20141125/be5aff7f6c6fca8138e37e123bf796ea.jpg&quot; width=&quot;500&quot; height=&quot;334&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; alt=&quot;大煮干丝Mp.jpg&quot; src=&quot;http://images.meishij.net/p/20141125/65169baa108948826cc4d1a7ea4070ab.jpg&quot; width=&quot;500&quot; height=&quot;750&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;h2 class=&quot;cpc_h2&quot; style=\'margin: 0px; padding: 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(238, 238, 238); border-left-color: initial; border-image: initial; outline: 0px; font-size: 24px; vertical-align: baseline; background: rgb(255, 255, 255); font-weight: normal; color: rgb(51, 51, 51); height: 66px; line-height: 66px; text-indent: 24px; font-family: &quot;Microsoft Yahei&quot;; white-space: normal;\'&gt;烹饪技巧&lt;/h2&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;　　鸡汤如果用带鸡油的汤汁，则不用再加油，如果是清鸡汤，则要加入30克左右的猪油，用猪油的颜色偏灰白，没有用鸡油的黄色来得好看。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"portal\\/20170825\\/59631c3de9b58ebba3b94a570f3d2893.jpg\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES ('11', '0', '1', '1', '1', '1', '1', '0', '0', '6', '0', '1', '1504065055', '1504065055', '1504064934', '0', '酸甜酥香的酥焖鲫鱼', '酸甜酥香的酥焖鲫鱼', '“这道菜基本做出了我想要的口味儿，酸甜咸香酥，主要是肉很入味儿，吃起来刺也都软了。稍稍不恰当的就是鱼用的比较大，要是鱼再稍小些，就更加完美了。”', '美食杰', '\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num1&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;1.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;鲫鱼杀洗干净擦干水份，加生抽料酒和葱姜碎腌上&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num2&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;2.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;腌好的鱼拍上干淀粉&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num3&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;3.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;坐锅烧油，油要热到冒烧的程度，放鱼入锅炸制&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/158/87/4021908/n4021908_145647824309738.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num4&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;4.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;炸好的鱼要回一下锅，保证鱼炸透&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num5&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;5.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;倒出热油，留下低油，将葱段姜片辣椒放在锅中爆一下&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num6&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;6.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;将鱼放在锅中&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/158/87/4021908/n4021908_145647824925162.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num7&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;7.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;加上调料（糖醋老抽生抽料酒），看到的白色调料为糖，这个菜糖和醋的用量都比较大&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num8&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;8.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;加上高汤，大火烧开，转小火焖至鱼完全入味儿，关火焖在锅中&lt;/p&gt;\n&lt;p&gt;&lt;em class=&quot;step&quot; id=&quot;step_num9&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 50px; vertical-align: baseline; background: transparent; color: rgb(255, 50, 50); text-align: center; font-family: arial; height: 50px; width: 100px; display: block; float: left; line-height: 50px;&quot;&gt;9.&lt;/em&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;这道菜可以冷吃也可以热吃，热吃最好用蒸的方法加热，避免鱼被弄碎&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: transparent; line-height: 24px; position: relative;&quot;&gt;&lt;img class=&quot;conimg&quot; src=&quot;http://site.meishij.net/rs/158/87/4021908/n4021908_145647825092037.jpg&quot; alt=&quot;&quot; style=&quot;margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; border=&quot;0&quot; src=&quot;http://site.meishij.net/rs/158/87/4021908/n4021908_145647834969682.jpg&quot; style=&quot;margin: 0px 0px 0px 100px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; border=&quot;0&quot; src=&quot;http://site.meishij.net/rs/158/87/4021908/n4021908_145647836044363.jpg&quot; style=&quot;margin: 0px 0px 0px 100px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;&lt;img class=&quot;conimg&quot; border=&quot;0&quot; src=&quot;http://site.meishij.net/rs/158/87/4021908/n4021908_145647836507255.jpg&quot; style=&quot;margin: 0px 0px 0px 100px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; display: block; max-width: 550px;&quot;&gt;&lt;/p&gt;\n&lt;h2 class=&quot;cpc_h2&quot; style=\'margin: 0px; padding: 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(238, 238, 238); border-left-color: initial; border-image: initial; outline: 0px; font-size: 24px; vertical-align: baseline; background: rgb(255, 255, 255); font-weight: normal; color: rgb(51, 51, 51); height: 66px; line-height: 66px; text-indent: 24px; font-family: &quot;Microsoft Yahei&quot;; white-space: normal;\'&gt;烹饪技巧&lt;/h2&gt;\n&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 10px 20px 10px 100px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); line-height: 24px; color: rgb(102, 102, 102); position: relative; font-family: Arial, Helvetica, sans-serif; white-space: normal;&quot;&gt;1、老抽主要上色，糖和醋的量较大些；&lt;br&gt;2、焖煮过程中，不宜大动作翻锅，保持鱼的形状。葱段和姜片起防粘防糊作用，也可以铺上菜叶或者竹蓖。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', null, '{\"thumbnail\":\"portal\\/20170830\\/85af51355dd25fa7b08a879b45aca7a3.jpg\",\"template\":\"\"}');

-- ----------------------------
-- Table structure for cmf_portal_tag
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag`;
CREATE TABLE `cmf_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='portal应用 文章标签表';

-- ----------------------------
-- Records of cmf_portal_tag
-- ----------------------------
INSERT INTO `cmf_portal_tag` VALUES ('1', '1', '0', '0', '粉蒸肉');
INSERT INTO `cmf_portal_tag` VALUES ('2', '1', '0', '0', '麻婆豆腐');
INSERT INTO `cmf_portal_tag` VALUES ('3', '1', '0', '0', '梅干菜');
INSERT INTO `cmf_portal_tag` VALUES ('4', '1', '0', '0', '梅菜扣肉');
INSERT INTO `cmf_portal_tag` VALUES ('5', '1', '0', '0', '烧肉');
INSERT INTO `cmf_portal_tag` VALUES ('6', '1', '0', '0', '干炒牛河');
INSERT INTO `cmf_portal_tag` VALUES ('7', '1', '0', '0', '辣子鸡');
INSERT INTO `cmf_portal_tag` VALUES ('8', '1', '0', '0', '武城旋饼');
INSERT INTO `cmf_portal_tag` VALUES ('9', '1', '0', '0', '泡椒碎肉香芋丝');
INSERT INTO `cmf_portal_tag` VALUES ('10', '1', '0', '0', '烫蛋皮');
INSERT INTO `cmf_portal_tag` VALUES ('11', '1', '0', '0', '雪花丁香鸡');
INSERT INTO `cmf_portal_tag` VALUES ('12', '1', '0', '0', '大煮干丝的做法');
INSERT INTO `cmf_portal_tag` VALUES ('13', '1', '0', '0', '酸甜酥香的酥焖鲫鱼');

-- ----------------------------
-- Table structure for cmf_portal_tag_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag_post`;
CREATE TABLE `cmf_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';

-- ----------------------------
-- Records of cmf_portal_tag_post
-- ----------------------------
INSERT INTO `cmf_portal_tag_post` VALUES ('1', '1', '1', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('2', '2', '2', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('3', '3', '3', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('4', '4', '3', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('5', '5', '3', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('6', '6', '4', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('7', '7', '5', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('8', '8', '6', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('9', '9', '7', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('10', '10', '8', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('11', '11', '9', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('12', '12', '10', '1');
INSERT INTO `cmf_portal_tag_post` VALUES ('13', '13', '11', '1');

-- ----------------------------
-- Table structure for cmf_recycle_bin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_recycle_bin`;
CREATE TABLE `cmf_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=' 回收站';

-- ----------------------------
-- Records of cmf_recycle_bin
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_role
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role`;
CREATE TABLE `cmf_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of cmf_role
-- ----------------------------
INSERT INTO `cmf_role` VALUES ('1', '0', '1', '1329633709', '1329633709', '0', '超级管理员', '拥有网站最高管理员权限！');
INSERT INTO `cmf_role` VALUES ('2', '0', '1', '1329633709', '1329633709', '0', '普通管理员', '权限由最高管理员分配！');

-- ----------------------------
-- Table structure for cmf_role_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role_user`;
CREATE TABLE `cmf_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- ----------------------------
-- Records of cmf_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_route
-- ----------------------------
DROP TABLE IF EXISTS `cmf_route`;
CREATE TABLE `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='url路由表';

-- ----------------------------
-- Records of cmf_route
-- ----------------------------
INSERT INTO `cmf_route` VALUES ('1', '5000', '1', '2', 'portal/List/index?id=1', 'food-chuan');
INSERT INTO `cmf_route` VALUES ('2', '4999', '1', '2', 'portal/Article/index?cid=1', 'food-chuan/:id');
INSERT INTO `cmf_route` VALUES ('3', '5000', '1', '2', 'portal/List/index?id=2', 'food-yue');
INSERT INTO `cmf_route` VALUES ('4', '4999', '1', '2', 'portal/Article/index?cid=2', 'food-yue/:id');
INSERT INTO `cmf_route` VALUES ('5', '5000', '1', '2', 'portal/List/index?id=3', 'food-xiang');
INSERT INTO `cmf_route` VALUES ('6', '4999', '1', '2', 'portal/Article/index?cid=3', 'food-xiang/:id');
INSERT INTO `cmf_route` VALUES ('7', '5000', '1', '2', 'portal/List/index?id=4', 'food-lu');
INSERT INTO `cmf_route` VALUES ('8', '4999', '1', '2', 'portal/Article/index?cid=4', 'food-lu/:id');
INSERT INTO `cmf_route` VALUES ('9', '5000', '1', '2', 'portal/List/index?id=5', 'food-zhe');
INSERT INTO `cmf_route` VALUES ('10', '4999', '1', '2', 'portal/Article/index?cid=5', 'food-zhe/:id');
INSERT INTO `cmf_route` VALUES ('11', '5000', '1', '2', 'portal/List/index?id=6', 'food-min');
INSERT INTO `cmf_route` VALUES ('12', '4999', '1', '2', 'portal/Article/index?cid=6', 'food-min/:id');
INSERT INTO `cmf_route` VALUES ('13', '5000', '1', '2', 'portal/List/index?id=7', 'food-hui');
INSERT INTO `cmf_route` VALUES ('14', '4999', '1', '2', 'portal/Article/index?cid=7', 'food-hui/:id');
INSERT INTO `cmf_route` VALUES ('15', '5000', '1', '2', 'portal/List/index?id=8', 'food-su');
INSERT INTO `cmf_route` VALUES ('16', '4999', '1', '2', 'portal/Article/index?cid=8', 'food-su/:id');
INSERT INTO `cmf_route` VALUES ('17', '10000', '1', '1', 'user/Login/index', 'login$');
INSERT INTO `cmf_route` VALUES ('18', '10000', '1', '1', 'user/Register/index', 'register$');
INSERT INTO `cmf_route` VALUES ('19', '10000', '1', '1', 'portal/Search/index', 'search$');
INSERT INTO `cmf_route` VALUES ('20', '10000', '1', '1', 'user/Login/findPassword', 'find_password$');

-- ----------------------------
-- Table structure for cmf_slide
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='幻灯片表';

-- ----------------------------
-- Records of cmf_slide
-- ----------------------------
INSERT INTO `cmf_slide` VALUES ('3', '1', '0', 'toutiao_index', '今日头条模板轮播图');

-- ----------------------------
-- Table structure for cmf_slide_item
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide_item`;
CREATE TABLE `cmf_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) NOT NULL COMMENT '幻灯片描述',
  `content` text COMMENT '幻灯片内容',
  `more` text COMMENT '链接打开方式',
  PRIMARY KEY (`id`),
  KEY `slide_cid` (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='幻灯片子项表';

-- ----------------------------
-- Records of cmf_slide_item
-- ----------------------------
INSERT INTO `cmf_slide_item` VALUES ('2', '3', '1', '10000', '梅干菜是绍兴地区的传统名菜，具有奇香，用它来烧肉更是美味', 'portal/20170822/844acc5d8cf15e0157d90f11eaf68028.jpg', '/food-zhe/3.html', '', '梅干菜是绍兴地区的传统名菜，具有奇香，用它来烧肉更是美味', '', null);
INSERT INTO `cmf_slide_item` VALUES ('3', '3', '1', '10000', '干炒牛河是传统的广东小炒', 'portal/20170822/38a48d7474a64c5e453d30a699211f6d.jpg', '/food-yue/4.html', '', '干炒牛河是传统的广东小炒，在粤菜酒家餐厅，大排档几乎都可以看到它的身影。干炒牛河色泽油润亮泽，配料多样丰富，牛肉滑嫩焦香，河粉爽滑筋道，看着干爽无汁，入口却鲜香味美。', '干炒牛河是传统的广东小炒，在粤菜酒家餐厅，大排档几乎都可以看到它的身影。干炒牛河色泽油润亮泽，配料多样丰富，牛肉滑嫩焦香，河粉爽滑筋道，看着干爽无汁，入口却鲜香味美。', null);

-- ----------------------------
-- Table structure for cmf_theme
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme`;
CREATE TABLE `cmf_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmf_theme
-- ----------------------------
INSERT INTO `cmf_theme` VALUES ('19', '0', '0', '0', '0', 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板');
INSERT INTO `cmf_theme` VALUES ('20', '0', '0', '0', '0', 'toutiao', 'toutiao', '1.0.0', 'https://www.toutiao.com/', '', 'yetianyue', 'https://www.toutiao.com/', 'zh-cn', '仿头条模板', '仿头条模板');

-- ----------------------------
-- Table structure for cmf_theme_file
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme_file`;
CREATE TABLE `cmf_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmf_theme_file
-- ----------------------------
INSERT INTO `cmf_theme_file` VALUES ('105', '0', '10', 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('106', '0', '10', 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('107', '0', '5', 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('108', '0', '10', 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('109', '0', '10', 'simpleboot3', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('110', '0', '10', 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('111', '1', '0', 'simpleboot3', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('112', '1', '1', 'simpleboot3', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('113', '0', '5', 'toutiao', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('114', '0', '5', 'toutiao', '首页', 'portal/Index/index', 'portal/list', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);

-- ----------------------------
-- Table structure for cmf_third_party_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_third_party_user`;
CREATE TABLE `cmf_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='第三方用户表';

-- ----------------------------
-- Records of cmf_third_party_user
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user`;
CREATE TABLE `cmf_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '用户手机号',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of cmf_user
-- ----------------------------
INSERT INTO `cmf_user` VALUES ('1', '1', '0', '704649600', '1504596668', '0', '0', '1503020302', '1', 'admin', '###1e674d96466a183c3c19d87dd0a90a1b', 'admin', '646682485@qq.com', '', 'avatar/20170818/5d77381c012790a53410986ce1ffeb14.jpg', '', '192.168.1.101', '', '');

-- ----------------------------
-- Table structure for cmf_user_action
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action`;
CREATE TABLE `cmf_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户操作表';

-- ----------------------------
-- Records of cmf_user_action
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_action_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action_log`;
CREATE TABLE `cmf_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='访问记录表';

-- ----------------------------
-- Records of cmf_user_action_log
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_favorite
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_favorite`;
CREATE TABLE `cmf_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `url` varchar(255) DEFAULT '' COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) DEFAULT '' COMMENT '收藏内容的描述',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户收藏表';

-- ----------------------------
-- Records of cmf_user_favorite
-- ----------------------------
INSERT INTO `cmf_user_favorite` VALUES ('1', '1', '山东名小吃武城旋饼的做法，色泽黄亮，皮酥馅嫩，香味四溢，风味独特，使人回味无穷', '{\"action\":\"portal\\/Article\\/index\",\"param\":{\"id\":6}}', '山东名小吃武城旋饼的做法，色泽黄亮，皮酥馅嫩，香味四溢，风味独特，使人回味无穷', 'portal_post', '6', '1503467867');

-- ----------------------------
-- Table structure for cmf_user_login_attempt
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_login_attempt`;
CREATE TABLE `cmf_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';

-- ----------------------------
-- Records of cmf_user_login_attempt
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_score_log`;
CREATE TABLE `cmf_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户操作积分等奖励日志表';

-- ----------------------------
-- Records of cmf_user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_token
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_token`;
CREATE TABLE `cmf_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户客户端登录 token 表';

-- ----------------------------
-- Records of cmf_user_token
-- ----------------------------
INSERT INTO `cmf_user_token` VALUES ('3', '1', '1520148668', '1504596668', '79e16063707e28803eaad208fa0bf4fe625dcaf7c7034879696f02aeea671ca2', 'web');

-- ----------------------------
-- Table structure for cmf_verification_code
-- ----------------------------
DROP TABLE IF EXISTS `cmf_verification_code`;
CREATE TABLE `cmf_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='手机邮箱数字验证码表';

-- ----------------------------
-- Records of cmf_verification_code
-- ----------------------------
INSERT INTO `cmf_verification_code` VALUES ('1', '1', '1503633268', '1503635068', '250929', '646682485@qq.com');
