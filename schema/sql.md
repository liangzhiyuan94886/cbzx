### product表
采集了jira和禅道的项目表数据
用platform字段区分
pid为原项目表主键，用于关联bug缺陷表
deleted删除标识，1表示已删除

### bug
project表示项目表的pid
platform为平台标识
依据平台标识，表里的状态严重等级字段等可以关联对应平台的字典类表

### user
用户表，有用户重叠，区分平台，不影响

### zt_lang
禅道字典相关表，包括缺陷类型，严重等级，操作系统浏览器等
禅道所有的字典都在这张表

### jira_issuestatus
jira和gitlab都是用issue的，不一定是bug缺陷，这个表里有issue当前状态

### jira_issuetype
issue类型，自定义的==故障==表示的就是缺陷

### jira_priority
issue的优先级，可以理解成缺陷的严重等级

### jira_resolution
issue当前的解决措施，用于判断issue是否关闭