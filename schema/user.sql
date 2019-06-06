/*
Navicat MySQL Data Transfer

Source Server         : localhost_wamp
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : cbzx

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-05-22 17:11:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` varchar(10) DEFAULT NULL COMMENT '原表主键',
  `account` varchar(20) DEFAULT NULL COMMENT '用户账号一般是拼音',
  `realname` varchar(50) DEFAULT NULL COMMENT '用户真实名字',
  `platform` varchar(20) DEFAULT NULL COMMENT '平台',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', 'admin', '超级管理员', 'zt');
INSERT INTO `user` VALUES ('2', '2', 'heliujie', '贺刘杰', 'zt');
INSERT INTO `user` VALUES ('3', '3', 'lizhenjia', '李振佳', 'zt');
INSERT INTO `user` VALUES ('4', '4', 'lifengjian', '李峰健', 'zt');
INSERT INTO `user` VALUES ('5', '5', 'yangzixi', '杨紫熹', 'zt');
INSERT INTO `user` VALUES ('6', '6', 'wuhaili', '吴海莉', 'zt');
INSERT INTO `user` VALUES ('7', '7', 'xieyijuan', '谢易涓', 'zt');
INSERT INTO `user` VALUES ('8', '8', 'changguocheng', '常国城', 'zt');
INSERT INTO `user` VALUES ('9', '9', 'xuandekui', '禤德奎', 'zt');
INSERT INTO `user` VALUES ('10', '10', 'jinyangyu', '金杨煜', 'zt');
INSERT INTO `user` VALUES ('11', '11', 'wujiasong', '吴家松', 'zt');
INSERT INTO `user` VALUES ('12', '12', 'wujs', '吴家松', 'zt');
INSERT INTO `user` VALUES ('13', '13', 'wubin', '吴彬', 'zt');
INSERT INTO `user` VALUES ('14', '14', 'lic', '李超', 'zt');
INSERT INTO `user` VALUES ('15', '15', 'hey2', '何勇', 'zt');
INSERT INTO `user` VALUES ('16', '16', 'huanghl1', '黄海立', 'zt');
INSERT INTO `user` VALUES ('17', '17', 'weiz1', '韦增', 'zt');
INSERT INTO `user` VALUES ('18', '18', 'hushh', '胡施惠', 'zt');
INSERT INTO `user` VALUES ('19', '19', 'jingxiaofei', '景晓飞', 'zt');
INSERT INTO `user` VALUES ('20', '20', 'luol2', '罗丽', 'zt');
INSERT INTO `user` VALUES ('21', '21', 'linh', '林慧', 'zt');
INSERT INTO `user` VALUES ('22', '22', 'chenzhm', '陈钊明', 'zt');
INSERT INTO `user` VALUES ('23', '23', 'shenj', '沈杰', 'zt');
INSERT INTO `user` VALUES ('24', '24', 'linw', '林威', 'zt');
INSERT INTO `user` VALUES ('25', '25', 'zhangchl', '张重灵', 'zt');
INSERT INTO `user` VALUES ('26', '26', 'shizhx', '石贞雄', 'zt');
INSERT INTO `user` VALUES ('27', '27', 'lizq', '李忠其', 'zt');
INSERT INTO `user` VALUES ('28', '28', 'qink', '覃凯', 'zt');
INSERT INTO `user` VALUES ('29', '29', 'wangl', '王力', 'zt');
INSERT INTO `user` VALUES ('30', '30', 'taowj', '陶文杰', 'zt');
INSERT INTO `user` VALUES ('31', '31', 'motb', '莫通北', 'zt');
INSERT INTO `user` VALUES ('32', '32', 'zhangx', '张星', 'zt');
INSERT INTO `user` VALUES ('33', '33', 'qiankairu', '潜凯茹', 'zt');
INSERT INTO `user` VALUES ('34', '34', 'yangjz', '杨进展', 'zt');
INSERT INTO `user` VALUES ('35', '35', 'shengq', '沈国权', 'zt');
INSERT INTO `user` VALUES ('36', '36', 'liuh', '刘浩', 'zt');
INSERT INTO `user` VALUES ('37', '37', 'songcx', '宋晨旭', 'zt');
INSERT INTO `user` VALUES ('38', '38', 'yanghj', '杨红静', 'zt');
INSERT INTO `user` VALUES ('39', '39', 'bajiaoshan', '芭蕉扇', 'zt');
INSERT INTO `user` VALUES ('40', '40', 'ziding', '梓鼎', 'zt');
INSERT INTO `user` VALUES ('41', '41', 'zhangbin', '张斌', 'zt');
INSERT INTO `user` VALUES ('42', '42', 'zhongle', '钟丽娥', 'zt');
INSERT INTO `user` VALUES ('43', '43', 'pingaoy', '品高', 'zt');
INSERT INTO `user` VALUES ('44', '44', 'zhangjch', '张建超', 'zt');
INSERT INTO `user` VALUES ('45', '45', 'baij', '白军', 'zt');
INSERT INTO `user` VALUES ('46', '46', 'pangmr', '庞茗仁', 'zt');
INSERT INTO `user` VALUES ('47', '47', 'tianmy', '田明宇', 'zt');
INSERT INTO `user` VALUES ('48', '48', 'liangzy', '梁志远', 'zt');
INSERT INTO `user` VALUES ('49', '49', 'gonggf', '龚桂峰', 'zt');
INSERT INTO `user` VALUES ('50', '50', 'chenzm', '陈钊明', 'zt');
INSERT INTO `user` VALUES ('51', '51', 'gaoxc', '高咸池', 'zt');
INSERT INTO `user` VALUES ('52', '52', 'xinqid', '新启点', 'zt');
INSERT INTO `user` VALUES ('53', '53', 'gujj', '顾金杰', 'zt');
INSERT INTO `user` VALUES ('54', '54', 'xuxq', '徐雪强', 'zt');
INSERT INTO `user` VALUES ('55', '55', 'zhuyj', '祝垚杰', 'zt');
INSERT INTO `user` VALUES ('56', '56', 'huangr', '黄荣', 'zt');
INSERT INTO `user` VALUES ('57', '57', 'dengyl', '邓杨连', 'zt');
INSERT INTO `user` VALUES ('58', '58', 'taoxu', '陶旭', 'zt');
INSERT INTO `user` VALUES ('59', '59', 'huangjinhu', '黄金虎', 'zt');
INSERT INTO `user` VALUES ('60', '60', 'shenyx', '沈宇欣', 'zt');
INSERT INTO `user` VALUES ('61', '61', 'liangy', '梁园', 'zt');
INSERT INTO `user` VALUES ('62', '62', 'hanlulu', '韩璐璐', 'zt');
INSERT INTO `user` VALUES ('63', '63', 'zhaoj', '赵健', 'zt');
INSERT INTO `user` VALUES ('64', '64', 'wangsw', '王舒文', 'zt');
INSERT INTO `user` VALUES ('65', '65', 'liujin', '刘敬', 'zt');
INSERT INTO `user` VALUES ('66', '66', 'zhuyaojie', '祝垚杰', 'zt');
INSERT INTO `user` VALUES ('67', '67', 'songchunhong', '宋春红', 'zt');
INSERT INTO `user` VALUES ('68', '68', 'luokejiahua', '罗克佳华', 'zt');
INSERT INTO `user` VALUES ('69', '69', 'wsgz', '源态环保', 'zt');
INSERT INTO `user` VALUES ('70', '70', 'liaoxm', '廖晓梅', 'zt');
INSERT INTO `user` VALUES ('71', '78', 'wangwenhao', '王文豪', 'zt');
INSERT INTO `user` VALUES ('72', '71', 'wangchh', '王晨昊', 'zt');
INSERT INTO `user` VALUES ('73', '72', 'huguijun', '胡桂军', 'zt');
INSERT INTO `user` VALUES ('74', '73', 'rensongxin', '任松鑫', 'zt');
INSERT INTO `user` VALUES ('75', '74', 'chenzq', '陈子琪', 'zt');
INSERT INTO `user` VALUES ('76', '75', 'putaof', '蒲涛峰', 'zt');
INSERT INTO `user` VALUES ('77', '76', 'songxuejie', '宋雪洁', 'zt');
INSERT INTO `user` VALUES ('78', '77', 'huanglijuan', '黄丽娟', 'zt');
INSERT INTO `user` VALUES ('79', '79', 'pohuyun', '航天鄱湖云', 'zt');
INSERT INTO `user` VALUES ('80', '80', 'huawang', '华网', 'zt');
INSERT INTO `user` VALUES ('81', '81', 'huanbao01', '浙江环境监测工程有限公司', 'zt');
INSERT INTO `user` VALUES ('82', '82', 'fanjun', '樊军', 'zt');
INSERT INTO `user` VALUES ('83', '83', 'weiyadan', '韦雅丹', 'zt');
INSERT INTO `user` VALUES ('84', '84', 'zhangw', '磐古科技', 'zt');
INSERT INTO `user` VALUES ('85', '85', 'chenmj', '陈敏杰', 'zt');
INSERT INTO `user` VALUES ('86', '86', 'liujialei', '刘嘉磊', 'zt');
INSERT INTO `user` VALUES ('87', '87', 'zhangguangyu', '张广宇', 'zt');
INSERT INTO `user` VALUES ('88', '88', 'caiht', '蔡海通', 'zt');
INSERT INTO `user` VALUES ('89', '90', 'malingyan', '马玲艳', 'zt');
INSERT INTO `user` VALUES ('90', '89', 'sunxiaohui', '孙晓惠', 'zt');
INSERT INTO `user` VALUES ('91', '91', 'fengtao', '冯涛', 'zt');
INSERT INTO `user` VALUES ('92', '10000', 'admin', 'jira-恒嘉管理员', 'jira');
INSERT INTO `user` VALUES ('93', '10100', 'cbdyzj', '赵健', 'jira');
INSERT INTO `user` VALUES ('94', '10102', 'dingjingwen', '丁静雯', 'jira');
INSERT INTO `user` VALUES ('95', '10103', 'fanjun', '樊军', 'jira');
INSERT INTO `user` VALUES ('96', '10104', 'tianmingyu', '田明宇', 'jira');
INSERT INTO `user` VALUES ('97', '10105', 'baozhoujia', '包周嘉', 'jira');
INSERT INTO `user` VALUES ('98', '10106', 'chenminjie', '陈敏杰', 'jira');
INSERT INTO `user` VALUES ('99', '10107', 'gaoxianchi', '高咸池', 'jira');
INSERT INTO `user` VALUES ('100', '10108', 'zhangjianchao', '张建超', 'jira');
INSERT INTO `user` VALUES ('101', '10109', 'yaojiewei', '姚杰炜', 'jira');
INSERT INTO `user` VALUES ('102', '10110', 'huanglijuan', '黄丽娟', 'jira');
INSERT INTO `user` VALUES ('103', '10111', 'songxuejie', '宋雪洁', 'jira');
INSERT INTO `user` VALUES ('104', '10112', 'liaoxiaomei', '廖晓梅', 'jira');
INSERT INTO `user` VALUES ('105', '10113', 'hanlulu', '韩璐璐', 'jira');
INSERT INTO `user` VALUES ('106', '10114', 'weiyadan', '韦雅丹', 'jira');
INSERT INTO `user` VALUES ('107', '10115', 'zhangbin', '张斌', 'jira');
INSERT INTO `user` VALUES ('108', '10116', 'liangyuan', '梁园', 'jira');
INSERT INTO `user` VALUES ('109', '10117', 'shenyuxin', '沈宇欣', 'jira');
INSERT INTO `user` VALUES ('110', '10118', 'taowenjie', '陶文杰', 'jira');
INSERT INTO `user` VALUES ('111', '10119', 'chenkaiyue', '陈开月', 'jira');
INSERT INTO `user` VALUES ('112', '10120', 'vidi', '唐磊', 'jira');
INSERT INTO `user` VALUES ('113', '10121', 'caihaitong', '蔡海通', 'jira');
INSERT INTO `user` VALUES ('114', '10122', 'huangrong', '黄荣', 'jira');
INSERT INTO `user` VALUES ('115', '10123', 'zhangxing', '张星', 'jira');
INSERT INTO `user` VALUES ('116', '10124', 'lichao', '李超', 'jira');
INSERT INTO `user` VALUES ('117', '10125', 'baijun', '白军', 'jira');
INSERT INTO `user` VALUES ('118', '10126', 'taoxu', '陶旭', 'jira');
INSERT INTO `user` VALUES ('119', '10127', 'malingyan', '马玲艳', 'jira');
INSERT INTO `user` VALUES ('120', '10128', 'zhouxudan', '周旭丹', 'jira');
INSERT INTO `user` VALUES ('121', '10129', 'yaojiayan', '姚佳燕', 'jira');
INSERT INTO `user` VALUES ('122', '10130', 'putaofeng', '蒲涛峰', 'jira');
INSERT INTO `user` VALUES ('123', '10131', 'leilin', '雷林', 'jira');
INSERT INTO `user` VALUES ('124', '10132', 'wufengshun', '吴风顺', 'jira');
INSERT INTO `user` VALUES ('125', '10133', 'zhuzhouwang', '朱周望', 'jira');
INSERT INTO `user` VALUES ('126', '10134', 'yupengfei', '俞鹏飞', 'jira');
INSERT INTO `user` VALUES ('127', '10135', 'liweijie', '李伟杰', 'jira');
INSERT INTO `user` VALUES ('128', '10136', 'zhenghanyin', '郑涵尹', 'jira');
INSERT INTO `user` VALUES ('129', '10137', 'wanbaoyue', '万宝月', 'jira');
INSERT INTO `user` VALUES ('130', '10138', 'qiankairu', '潜凯茹', 'jira');
INSERT INTO `user` VALUES ('131', '10139', 'pangwd', '庞伟东', 'jira');
INSERT INTO `user` VALUES ('132', '10140', 'huangjinhu', '黄金虎', 'jira');
INSERT INTO `user` VALUES ('133', '10141', 'shenqiaomin', '沈巧敏', 'jira');
INSERT INTO `user` VALUES ('134', '10142', 'zhonglingjun', '钟灵君', 'jira');
INSERT INTO `user` VALUES ('135', '10143', 'zhaoziqiang', '赵自强', 'jira');
INSERT INTO `user` VALUES ('136', '10144', 'liuhao', '刘浩', 'jira');
INSERT INTO `user` VALUES ('137', '10145', 'songchunhong', '宋春红', 'jira');
INSERT INTO `user` VALUES ('138', '10146', 'sunyufei', '孙玉斐', 'jira');
INSERT INTO `user` VALUES ('139', '10147', 'luyuxing', '卢雨星', 'jira');
INSERT INTO `user` VALUES ('140', '10148', 'sunkezheng', '孙柯征', 'jira');
INSERT INTO `user` VALUES ('141', '10149', 'zhengyifeng', '郑谊峰', 'jira');
INSERT INTO `user` VALUES ('142', '10150', 'wujiasong', '吴家松', 'jira');
INSERT INTO `user` VALUES ('143', '10151', 'gongguifeng', '龚桂峰', 'jira');
INSERT INTO `user` VALUES ('144', '10152', 'zhuyaojie', '祝垚杰', 'jira');
INSERT INTO `user` VALUES ('145', '10153', 'chenziqi', '陈子琪', 'jira');
INSERT INTO `user` VALUES ('146', '10154', 'yangting', '杨婷', 'jira');
INSERT INTO `user` VALUES ('147', '10155', 'jinyangyu', '金杨煜', 'jira');
INSERT INTO `user` VALUES ('148', '10156', 'yangzixi', '杨紫熹', 'jira');
INSERT INTO `user` VALUES ('149', '10157', 'shenjie', '沈杰', 'jira');
INSERT INTO `user` VALUES ('150', '10158', '侯利波', '侯利波', 'jira');
INSERT INTO `user` VALUES ('151', '10159', 'fangchao', '方超', 'jira');
INSERT INTO `user` VALUES ('152', '10160', 'luyeting', '陆叶婷', 'jira');
INSERT INTO `user` VALUES ('153', '10161', 'yanghongjing', '杨红静', 'jira');
INSERT INTO `user` VALUES ('154', '10162', 'liyabo', '李亚博', 'jira');
INSERT INTO `user` VALUES ('155', '10163', 'liuruixing', '刘瑞星', 'jira');
INSERT INTO `user` VALUES ('156', '10164', 'xieyijuan', '谢易娟', 'jira');
INSERT INTO `user` VALUES ('157', '10165', 'pangmingren', '庞茗仁', 'jira');
INSERT INTO `user` VALUES ('158', '10166', 'liangzhiyuan', '梁志远', 'jira');
INSERT INTO `user` VALUES ('159', '10167', 'jingxiaofei', '景晓飞', 'jira');
INSERT INTO `user` VALUES ('160', '10168', 'yangjinzhan', '杨进展', 'jira');
INSERT INTO `user` VALUES ('161', '10169', 'kongweiming', '孔伟名', 'jira');
INSERT INTO `user` VALUES ('162', '10170', 'shizhenxiong', '石贞雄', 'jira');
INSERT INTO `user` VALUES ('163', '10171', 'liujing', '刘敬', 'jira');
INSERT INTO `user` VALUES ('164', '10172', 'liuruo', '刘若', 'jira');
INSERT INTO `user` VALUES ('165', '10173', 'gongwei', '宫潍', 'jira');
INSERT INTO `user` VALUES ('166', '10174', 'hushihui', '胡诗惠', 'jira');
INSERT INTO `user` VALUES ('167', '10175', 'heyong', '何勇', 'jira');
INSERT INTO `user` VALUES ('168', '10176', 'shenguoquan', '沈国权', 'jira');
INSERT INTO `user` VALUES ('169', '10177', 'weizeng', '韦增', 'jira');
INSERT INTO `user` VALUES ('170', '10178', 'shenkaili', '沈凯立', 'jira');
INSERT INTO `user` VALUES ('171', '10179', 'huanghaili', '黄海立', 'jira');
INSERT INTO `user` VALUES ('172', '10181', 'wangyangyang', '王洋洋', 'jira');
INSERT INTO `user` VALUES ('173', '10182', 'linwei', '林威', 'jira');
INSERT INTO `user` VALUES ('174', '10183', 'zhengchenchen', '郑琛琛', 'jira');
INSERT INTO `user` VALUES ('175', '10184', 'lujidong', '陆吉东', 'jira');
INSERT INTO `user` VALUES ('176', '10185', 'jiangxufeng', '蒋旭峰', 'jira');
INSERT INTO `user` VALUES ('177', '10186', 'wubin', '吴彬', 'jira');
INSERT INTO `user` VALUES ('178', '10187', 'wangli', '王力', 'jira');
INSERT INTO `user` VALUES ('179', '10200', 'wangchenhao', '王晨昊', 'jira');
INSERT INTO `user` VALUES ('180', '10201', 'qinkai', '覃凯', 'jira');
INSERT INTO `user` VALUES ('181', '10202', 'chenzhaoming', '陈钊明', 'jira');
INSERT INTO `user` VALUES ('182', '10203', 'zhangguangyu', '张广宇', 'jira');
INSERT INTO `user` VALUES ('183', '10204', 'liujialei', '刘嘉磊', 'jira');
INSERT INTO `user` VALUES ('184', '10205', 'linhui', '林慧', 'jira');
INSERT INTO `user` VALUES ('185', '10206', 'motongbei', '莫通北', 'jira');
INSERT INTO `user` VALUES ('186', '10207', 'huguijun', '胡桂军', 'jira');
INSERT INTO `user` VALUES ('187', '10208', 'lifengjian', '李峰健', 'jira');
INSERT INTO `user` VALUES ('188', '10209', 'xuxueqiang', '徐雪强', 'jira');
INSERT INTO `user` VALUES ('189', '10210', 'liuhua', '刘华', 'jira');
INSERT INTO `user` VALUES ('190', '10211', 'gujinjie', '顾金杰', 'jira');
INSERT INTO `user` VALUES ('191', '10212', 'sunxiaohui', '孙晓惠', 'jira');
INSERT INTO `user` VALUES ('192', '10213', 'qinyongbin', '秦永彬', 'jira');
INSERT INTO `user` VALUES ('193', '10214', 'rensongxin', '任松鑫', 'jira');
INSERT INTO `user` VALUES ('194', '10215', 'wangwenhao', '王文豪', 'jira');
INSERT INTO `user` VALUES ('195', '10216', 'shengchunying', '盛纯颖', 'jira');
INSERT INTO `user` VALUES ('196', '10217', 'chenqiaofeng', '陈巧峰', 'jira');
INSERT INTO `user` VALUES ('197', '10218', 'zhangqing', '张晴', 'jira');
INSERT INTO `user` VALUES ('198', '10219', 'wangxuehui', '王雪慧', 'jira');
INSERT INTO `user` VALUES ('199', '10220', 'lvchunyan', '吕春艳', 'jira');
INSERT INTO `user` VALUES ('200', '10221', 'wangshuwen', '王舒文', 'jira');
INSERT INTO `user` VALUES ('201', '10222', 'lixiayang', '李夏泱', 'jira');
INSERT INTO `user` VALUES ('202', '10223', 'huningning', '胡宁宁', 'jira');
INSERT INTO `user` VALUES ('203', '10224', 'heliujie', '贺刘杰', 'jira');
INSERT INTO `user` VALUES ('204', '10225', 'zhonglie', '钟丽娥', 'jira');
INSERT INTO `user` VALUES ('205', '10226', 'songchenxu', '宋晨旭', 'jira');
INSERT INTO `user` VALUES ('206', '10227', 'wuhaili', '吴海莉', 'jira');
INSERT INTO `user` VALUES ('207', '10228', 'dengyanglian', '邓杨连', 'jira');
INSERT INTO `user` VALUES ('208', '10229', 'changguocheng', '常国城', 'jira');
INSERT INTO `user` VALUES ('209', '10230', 'jinshihao', '金诗壕', 'jira');
INSERT INTO `user` VALUES ('210', '10232', 'jiangyong', '蒋勇', 'jira');
INSERT INTO `user` VALUES ('211', '10233', 'jira_gitlab', 'GitLab用户', 'jira');
INSERT INTO `user` VALUES ('212', '10234', 'chenyuanyuan', '陈园园', 'jira');
INSERT INTO `user` VALUES ('213', '10235', 'zhujianghang', '朱江航', 'jira');
INSERT INTO `user` VALUES ('214', '10236', 'zhangmiaomiao', '张苗苗', 'jira');
INSERT INTO `user` VALUES ('215', '10237', 'dingwensheng', '丁文胜', 'jira');
INSERT INTO `user` VALUES ('216', '10238', 'caoqiuming', '曹秋鸣', 'jira');
INSERT INTO `user` VALUES ('217', '10239', 'wangjiajun', '王佳军', 'jira');
INSERT INTO `user` VALUES ('218', '10240', 'tongxiaojun', '童骁骏', 'jira');
INSERT INTO `user` VALUES ('219', '10241', 'xiewanyang', '谢万阳', 'jira');
INSERT INTO `user` VALUES ('220', '10242', 'jiangzhetao', '姜哲涛', 'jira');
INSERT INTO `user` VALUES ('221', '10243', 'huhaoyu', '胡皓宇', 'jira');
INSERT INTO `user` VALUES ('222', '10244', 'fupengcheng', '付鹏程', 'jira');
INSERT INTO `user` VALUES ('223', '10245', 'ywyyzx', '业务运营中心', 'jira');
INSERT INTO `user` VALUES ('224', '10246', 'lizhongqi', '李忠其', 'jira');
INSERT INTO `user` VALUES ('225', '10247', 'zhoujiong', '周炯', 'jira');
INSERT INTO `user` VALUES ('226', '10248', 'wuyongxin', '吴永新', 'jira');
INSERT INTO `user` VALUES ('227', '10249', 'zhouweihui', '周伟辉', 'jira');
INSERT INTO `user` VALUES ('228', '10250', 'yexincheng', '叶新成', 'jira');
INSERT INTO `user` VALUES ('229', '10251', 'weimin', '魏民', 'jira');
INSERT INTO `user` VALUES ('230', '10252', 'gejingyan', '戈静燕', 'jira');
INSERT INTO `user` VALUES ('231', '10253', 'xubin', '徐彬', 'jira');
INSERT INTO `user` VALUES ('232', '10300', 'yeyang', '叶扬', 'jira');
INSERT INTO `user` VALUES ('233', '10301', 'xushiyu', '徐诗雨', 'jira');
INSERT INTO `user` VALUES ('234', '10302', 'lizhenzhen', '李珍珍', 'jira');
INSERT INTO `user` VALUES ('235', '10303', 'mawenjun', '马文君', 'jira');
INSERT INTO `user` VALUES ('236', '10400', 'luzhouzhou', '陆周宙', 'jira');
INSERT INTO `user` VALUES ('237', '10401', 'xuehan', '薛寒', 'jira');
INSERT INTO `user` VALUES ('238', '10402', 'zhangsiyuan', '张思圆', 'jira');
INSERT INTO `user` VALUES ('239', '10403', 'pankaiyue', '潘凯悦', 'jira');
INSERT INTO `user` VALUES ('240', '10500', 'hanbaoyong', '韩保永', 'jira');
INSERT INTO `user` VALUES ('241', '10501', 'daiyuexin', '戴约新', 'jira');
INSERT INTO `user` VALUES ('242', '10502', 'zhongwenxiu', '钟文秀', 'jira');
INSERT INTO `user` VALUES ('243', '10503', 'fengtao', '冯涛', 'jira');
INSERT INTO `user` VALUES ('244', '10504', 'suqiuqiao', '苏秋桥', 'jira');
INSERT INTO `user` VALUES ('245', '10505', 'pengxianggui', '彭香桂', 'jira');
