DROP TABLE IF EXISTS m_product;
create table m_product(
  product_key char(11) not null comment '产品的key值',
  product_name varchar(100) not null unique comment '产品名称',
  mark_name varchar(100) comment '产品的别名',
  staticAttribute varchar(20) comment '产品的静态属性',
  status boolean not null default 0 comment '产品状态，0为开发者，1为已发布',
  group_name varchar(20) not null comment '产品所属分类名称',
  type_name varchar(20) not null comment '产品型号名称',
  industry varchar(20) not null comment '产品所属行业',
  communicationMethod tinyint(4) not null comment '产品的通讯方式',
  decription text comment '产品的相关描述',
  date_created_at timestamp not null default current_timestamp() comment '创建时间',
  primary key (product_key)
) comment '产品表';

drop table if exists m_function;
create table m_function(
  id_m_funtion int primary key auto_increment,
  product_key char(11) not null comment '产品的key值',
  function_type tinyint(4) not null comment '功能类型，0为属性 ，1位服务，2位事件',
  function_name varchar(100) comment '功能名称',
  identifier varchar(20) comment '标识符名称',
  data_type char(15) comment '数据类型',
  data_indefinite varchar(100) comment '数据定义',
  value text comment '每个功能下的参数数据，使用json格式存储',
  date_created_at timestamp not null default current_timestamp() comment '创建时间',
  foreign key(product_key) references m_product(product_key)
  on UPDATE cascade on delete cascade
);

drop table if exists m_device;
create table if not exists m_device(
	device_id int comment '设备id' auto_increment,
	parent_product_key char(11) not null comment '所属产品标识（key）',
	device_name varchar(20) not null comment '设备名称',
	device_alias varchar(20) comment '设备别名',
	is_motivated tinyint not null comment '设备状态，0是未激活，1是激活',
	is_auto_create tinyint not null comment '设备创建方式，0是手动，1是自动',
	device_password varchar(20) not null comment '设备密钥',
	create_time timestamp not null default current_timestamp() comment '设备创建时间',
	latest_time timestamp comment '最后上线时间',
	motivate_time timestamp comment '设备激活时间',
	primary key(device_id),
	foreign key(parent_product_key) references m_product(product_key)
)comment = '设备表';

drop table if exists m_device_property;
create table if not exists m_device_property(
	device_id int not null comment '属性所属设备id',
	property_name varchar(100) not null comment '属性名称',
	property_id varchar(20) not null comment '属性id',
	value varchar(50) comment '属性值',
	time timestamp not null comment '属性上报时间',
	unit varchar(20) comment '属性单位',
	decription varchar(100) comment '属性描述',
	foreign key(device_id) references m_device(device_id)
)comment = '设备属性表';

