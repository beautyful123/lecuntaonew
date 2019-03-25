SET NAMES UTF8;
DROP DATABASE IF EXISTS letaocun;
CREATE DATABASE letaocun charset=utf8;
USE letaocun;
CREATE TABLE login(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   uname  VARCHAR(20),
   phone  VARCHAR(11),
   upwd VARCHAR(20),
   ctime  DATETIME
);
#轮播图
CREATE TABLE home_swiper(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   img_url VARCHAR(255)
);
INSERT INTO home_swiper VALUES(null,"http://127.0.0.1:3000/swiper.jpg");
INSERT INTO home_swiper VALUES(null,"http://127.0.0.1:3000/swiper2.jpg");
#横向滚动条
CREATE TABLE home_scroll(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   img_url VARCHAR(255),
   title VARCHAR(20)
);
INSERT INTO home_scroll VALUES(null,"http://127.0.0.1:3000/scroll1.png","乐6集");
INSERT INTO home_scroll VALUES(null,"http://127.0.0.1:3000/scroll2.png","特色馆");
INSERT INTO home_scroll VALUES(null,"http://127.0.0.1:3000/scroll3.png","乐县域");
INSERT INTO home_scroll VALUES(null,"http://127.0.0.1:3000/scroll4.png","电商扶贫");
INSERT INTO home_scroll VALUES(null,"http://127.0.0.1:3000/scroll5.png","广东优品");
#home_llj
CREATE TABLE home_llj(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   img_url VARCHAR(255),
   title VARCHAR(255),
   price DECIMAL(15,2)
);
INSERT INTO home_llj VALUES(null,"http://127.0.0.1:3000/llj1.jpg","拉芳精油修护精华液120ml*3轻盈补水保湿抚平毛躁 中国大陆 lovefun/拉芳 120ml*3",81.00);
INSERT INTO home_llj VALUES(null,"http://127.0.0.1:3000/llj2.jpg","拉芳氨基酸洗发水550ml*3保湿滋养柔顺修护受损发质送同款护发素 广东汕头 lovefun/拉芳 550ml*3瓶",119.40);
INSERT INTO home_llj VALUES(null,"http://127.0.0.1:3000/llj3.jpg","电动缝纫机家用迷你电动多功能迷你吃厚手动微型缝纫机",60.90);
INSERT INTO home_llj VALUES(null,"http://127.0.0.1:3000/llj4.jpg","拉芳精油修护精华液120ml*3轻盈补水保湿抚平毛躁 中国大陆 lovefun/拉芳 120ml*3",81.00);
INSERT INTO home_llj VALUES(null,"http://127.0.0.1:3000/llj5.jpg","拉芳氨基酸洗发水550ml*3保湿滋养柔顺修护受损发质送同款护发素 广东汕头 lovefun/拉芳 550ml*3瓶",119.40);
INSERT INTO home_llj VALUES(null,"http://127.0.0.1:3000/llj6.jpg","电动缝纫机家用迷你电动多功能迷你吃厚手动微型缝纫机",60.90);
INSERT INTO home_llj VALUES(null,"http://127.0.0.1:3000/llj7.jpg","拉芳精油修护精华液120ml*3轻盈补水保湿抚平毛躁 中国大陆 lovefun/拉芳 120ml*3",81.00);

#home_tsg
CREATE TABLE home_tsg(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   img_url VARCHAR(255),
   title VARCHAR(255),
   price DECIMAL(15,2)
);
INSERT INTO home_tsg VALUES(null,"http://127.0.0.1:3000/tsg1.jpg","【特色馆】岚县面塑单款 （孔雀开屏）手工艺",500.00);
INSERT INTO home_tsg VALUES(null,"http://127.0.0.1:3000/tsg2.jpg","【特色馆】韶关土香楼 竹筒饼 220g/盒 125g/盒*4盒/箱  糕点 220g/盒（黑米味）",18.00);

#home_dianqi
CREATE TABLE home_dianqi(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   img_url VARCHAR(255),
   title VARCHAR(255),
   price DECIMAL(15,2),
   sell INT
);
INSERT INTO home_dianqi VALUES(null,"http://127.0.0.1:3000/dianqi1.jpg","TCL L65P2-UD 65英吋 真4K全生态 HDR 21核 安卓智能LED电视 65吋 65吋 平板电视 全国服务热线 400-812-3456",1599.00,2);
INSERT INTO home_dianqi VALUES(null,"http://127.0.0.1:3000/dianqi2.jpg","TCL  55F6  55英吋 4K超高清 内置WiFi  LED电视 55吋 55吋 平板电视 全国服务热线 400-812-3456",2599.00,10);
INSERT INTO home_dianqi VALUES(null,"http://127.0.0.1:3000/dianqi3.jpg","TCL  55F6  55英吋 4K超高清 内置WiFi  LED电视 55吋 55吋 平板电视 全国服务热线 400-812-3456",3599.00,20);
INSERT INTO home_dianqi VALUES(null,"http://127.0.0.1:3000/dianqi1.jpg","TCL  55F6  55英吋 4K超高清 内置WiFi  LED电视 55吋 55吋 平板电视 全国服务热线 400-812-3456",4599.00,12);

#home_food
CREATE TABLE home_food(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   img_url VARCHAR(255),
   title VARCHAR(255),
   price DECIMAL(15,2),
   sell INT
);
INSERT INTO home_food VALUES(null,"http://127.0.0.1:3000/food.jpg","山西特产 晋升油茶五仁咸400g*20袋/件 1件发货",1599.00,2);
INSERT INTO home_food VALUES(null,"http://127.0.0.1:3000/food2.jpg","山西特产 晋升油茶五仁咸400g*20袋/件 1件发货",2599.00,10);
INSERT INTO home_food VALUES(null,"http://127.0.0.1:3000/food3.jpg","山西特产 晋升油茶五仁咸400g*20袋/件 1件发货",3599.00,20);
INSERT INTO home_food VALUES(null,"http://127.0.0.1:3000/food4.jpg","山西特产 晋升油茶五仁咸400g*20袋/件 1件发货",4599.00,12);
#home_mimian
CREATE TABLE home_mimian(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   img_url VARCHAR(255),
   title VARCHAR(255),
   price DECIMAL(15,2),
   sell INT
);
INSERT INTO home_mimian  VALUES(null,"http://127.0.0.1:3000/mimian1.jpg","15年东北大米新米 老管家富硒大米健康源米5kg正品承诺 真空包装",1599.00,2);
INSERT INTO home_mimian  VALUES(null,"http://127.0.0.1:3000/food2.jpg","15年东北大米新米 老管家富硒大米健康源米5kg正品承诺 真空包装",2599.00,10);
INSERT INTO home_mimian  VALUES(null,"http://127.0.0.1:3000/food3.jpg","15年东北大米新米 老管家富硒大米健康源米5kg正品承诺 真空包装",3599.00,20);
INSERT INTO home_mimian VALUES(null,"http://127.0.0.1:3000/food4.jpg","15年东北大米新米 老管家富硒大米健康源米5kg正品承诺 真空包装",4599.00,12);
#home_fuzhuang
CREATE TABLE home_fuzhuang(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   img_url VARCHAR(255),
   title VARCHAR(255),
   price DECIMAL(15,2),
   sell INT
);
INSERT INTO home_fuzhuang  VALUES(null,"http://127.0.0.1:3000/fuzhuang.jpg","乐淘村徽章",1599.00,2);
INSERT INTO home_fuzhuang  VALUES(null,"http://127.0.0.1:3000/fuzhuang2.jpg","2018冬季新款随心裁磨绒无缝保暖发热德绒长袖T恤A0831",2599.00,10);
INSERT INTO home_fuzhuang  VALUES(null,"http://127.0.0.1:3000/fuzhuang.jpg","2018冬季新款随心裁磨绒无缝保暖发热德绒长袖T恤A0831",3599.00,20);
INSERT INTO home_fuzhuang VALUES(null,"http://127.0.0.1:3000/fuzhuang2.jpg","2018冬季新款随心裁磨绒无缝保暖发热德绒长袖T恤A0831",4599.00,12);
#home_use
CREATE TABLE home_use(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   img_url VARCHAR(255),
   title VARCHAR(255),
   price DECIMAL(15,2),
   sell INT
);
INSERT INTO home_use  VALUES(null,"http://127.0.0.1:3000/use1.jpg","金号毛巾赤金 0120纯棉 纯棉提缎面巾 柔软吸水速干日用洗脸毛巾特价 10条/包 混搭 整包价",19.00,2);
INSERT INTO home_use  VALUES(null,"http://127.0.0.1:3000/use2.jpg","金号毛巾赤金 0120纯棉 纯棉提缎面巾 柔软吸水速干日用洗脸毛巾特价 10条/包 混搭 整包价",29.00,10);
INSERT INTO home_use  VALUES(null,"http://127.0.0.1:3000/use3.jpg","金号毛巾赤金 0120纯棉 纯棉提缎面巾 柔软吸水速干日用洗脸毛巾特价 10条/包 混搭 整包价",39.00,20);
INSERT INTO home_use VALUES(null,"http://127.0.0.1:3000/food4.jpg","金号毛巾赤金 0120纯棉 纯棉提缎面巾 柔软吸水速干日用洗脸毛巾特价 10条/包 混搭 整包价",9.00,12);
#home_hot
CREATE TABLE home_hot(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   img_url VARCHAR(255),
   title VARCHAR(255),
   price DECIMAL(15,2),
   sell INT
);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",19.00,2);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",29.00,10);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",39.00,20);
INSERT INTO home_hot VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",9.00,12);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",19.00,2);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",29.00,10);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",39.00,20);
INSERT INTO home_hot VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",9.00,12);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",19.00,2);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",29.00,10);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",39.00,20);
INSERT INTO home_hot VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",9.00,12);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",19.00,2);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",29.00,10);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",39.00,20);
INSERT INTO home_hot VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",9.00,12);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",19.00,2);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",29.00,10);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",39.00,20);
INSERT INTO home_hot VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",9.00,12);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",19.00,2);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",29.00,10);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",39.00,20);
INSERT INTO home_hot VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",9.00,12);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",19.00,2);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",29.00,10);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",39.00,20);
INSERT INTO home_hot VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",9.00,12);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",19.00,2);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",29.00,10);
INSERT INTO home_hot  VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",39.00,20);
INSERT INTO home_hot VALUES(null,"http://127.0.0.1:3000/hot.jpg","舒蕾洗发露651ml *2瓶 包邮 1套起订 蚕丝柔滑 651ml*2",9.00,12);


#分类页
CREATE TABLE fen(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   img_url VARCHAR(255),
   title VARCHAR(255),
   price DECIMAL(15,2),
   sell INT
);
INSERT INTO home_use  VALUES(null,"http://127.0.0.1:3000/use1.jpg","金号毛巾赤金 0120纯棉 纯棉提缎面巾 柔软吸水速干日用洗脸毛巾特价 10条/包 混搭 整包价",19.00,2);
INSERT INTO home_use  VALUES(null,"http://127.0.0.1:3000/use2.jpg","金号毛巾赤金 0120纯棉 纯棉提缎面巾 柔软吸水速干日用洗脸毛巾特价 10条/包 混搭 整包价",29.00,10);
INSERT INTO home_use  VALUES(null,"http://127.0.0.1:3000/use3.jpg","金号毛巾赤金 0120纯棉 纯棉提缎面巾 柔软吸水速干日用洗脸毛巾特价 10条/包 混搭 整包价",39.00,20);
INSERT INTO home_use VALUES(null,"http://127.0.0.1:3000/food4.jpg","金号毛巾赤金 0120纯棉 纯棉提缎面巾 柔软吸水速干日用洗脸毛巾特价 10条/包 混搭 整包价",9.00,12);

#商品列表 gid楼层id
CREATE TABLE goodslist(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   gid VARCHAR(25),
   img_url VARCHAR(255),
   title VARCHAR(255)
);
INSERT INTO goodslist VALUES(null,'电器/数码',"http://127.0.0.1:3000/floor1_1.png","大家电");
INSERT INTO goodslist VALUES(null,'电器/数码',"http://127.0.0.1:3000/floor1_2.png","生活电器");
INSERT INTO goodslist VALUES(null,'电器/数码',"http://127.0.0.1:3000/floor1_3.png","厨房电器");
INSERT INTO goodslist VALUES(null,'电器/数码',"http://127.0.0.1:3000/floor1_4.png","健康护理");
INSERT INTO goodslist VALUES(null,'电器/数码',"http://127.0.0.1:3000/floor1_5.png","电脑整机");
INSERT INTO goodslist VALUES(null,'电器/数码',"http://127.0.0.1:3000/floor1_6.png","电脑配件");
INSERT INTO goodslist VALUES(null,'电器/数码',"http://127.0.0.1:3000/floor1_7.png","数码配件");
INSERT INTO goodslist VALUES(null,'电器/数码',"http://127.0.0.1:3000/floor1_8.png","时尚影音");
INSERT INTO goodslist VALUES(null,'电器/数码',"http://127.0.0.1:3000/floor1_9.png","智能设备");
INSERT INTO goodslist VALUES(null,'电器/数码',"http://127.0.0.1:3000/floor1_10.png","电子教育");
#二楼
INSERT INTO goodslist VALUES(null,'食品饮料',"http://127.0.0.1:3000/floor2_1.png","米面油");
INSERT INTO goodslist VALUES(null,'食品饮料',"http://127.0.0.1:3000/floor2_2.png","干活/调味");
INSERT INTO goodslist VALUES(null,'食品饮料',"http://127.0.0.1:3000/floor2_3.png","酒类");
INSERT INTO goodslist VALUES(null,'食品饮料',"http://127.0.0.1:3000/floor2_4.png","休闲零食");
INSERT INTO goodslist VALUES(null,'食品饮料',"http://127.0.0.1:3000/floor2_5.png","饮料/冲调");
INSERT INTO goodslist VALUES(null,'食品饮料',"http://127.0.0.1:3000/floor2_6.png","地方特产");
INSERT INTO goodslist VALUES(null,'食品饮料',"http://127.0.0.1:3000/floor2_7.png","茗茶");
INSERT INTO goodslist VALUES(null,'食品饮料',"http://127.0.0.1:3000/floor2_8.png","生鲜食品");
#三楼
INSERT INTO goodslist VALUES(null,'农产品',"http://127.0.0.1:3000/floor1_1.png","大家电");
INSERT INTO goodslist VALUES(null,'农产品',"http://127.0.0.1:3000/floor1_2.png","生活电器");
INSERT INTO goodslist VALUES(null,'农产品',"http://127.0.0.1:3000/floor1_3.png","厨房电器");
INSERT INTO goodslist VALUES(null,'农产品',"http://127.0.0.1:3000/floor1_4.png","健康护理");
INSERT INTO goodslist VALUES(null,'农产品',"http://127.0.0.1:3000/floor1_5.png","电脑整机");
INSERT INTO goodslist VALUES(null,'农产品',"http://127.0.0.1:3000/floor1_6.png","电脑配件");
INSERT INTO goodslist VALUES(null,'农产品',"http://127.0.0.1:3000/floor1_7.png","数码配件");
INSERT INTO goodslist VALUES(null,'农产品',"http://127.0.0.1:3000/floor1_8.png","时尚影音");
INSERT INTO goodslist VALUES(null,'农产品',"http://127.0.0.1:3000/floor1_9.png","智能设备");
INSERT INTO goodslist VALUES(null,'农产品',"http://127.0.0.1:3000/floor1_10.png","电子教育");
#四楼
INSERT INTO goodslist VALUES(null,'农用物资',"http://127.0.0.1:3000/floor2_1.png","米面油");
INSERT INTO goodslist VALUES(null,'农用物资',"http://127.0.0.1:3000/floor2_2.png","干活/调味");
INSERT INTO goodslist VALUES(null,'农用物资',"http://127.0.0.1:3000/floor2_3.png","酒类");
INSERT INTO goodslist VALUES(null,'农用物资',"http://127.0.0.1:3000/floor2_4.png","休闲零食");
INSERT INTO goodslist VALUES(null,'农用物资',"http://127.0.0.1:3000/floor2_5.png","饮料/冲调");
INSERT INTO goodslist VALUES(null,'农用物资',"http://127.0.0.1:3000/floor2_6.png","地方特产");
INSERT INTO goodslist VALUES(null,'农用物资',"http://127.0.0.1:3000/floor2_7.png","茗茶");
INSERT INTO goodslist VALUES(null,'农用物资',"http://127.0.0.1:3000/floor2_8.png","生鲜食品");
#五楼
INSERT INTO goodslist VALUES(null,'通讯/办公',"http://127.0.0.1:3000/floor1_1.png","大家电");
INSERT INTO goodslist VALUES(null,'通讯/办公',"http://127.0.0.1:3000/floor1_2.png","生活电器");
INSERT INTO goodslist VALUES(null,'通讯/办公',"http://127.0.0.1:3000/floor1_3.png","厨房电器");
INSERT INTO goodslist VALUES(null,'通讯/办公',"http://127.0.0.1:3000/floor1_4.png","健康护理");
INSERT INTO goodslist VALUES(null,'通讯/办公',"http://127.0.0.1:3000/floor1_5.png","电脑整机");
INSERT INTO goodslist VALUES(null,'通讯/办公',"http://127.0.0.1:3000/floor1_6.png","电脑配件");
INSERT INTO goodslist VALUES(null,'通讯/办公',"http://127.0.0.1:3000/floor1_7.png","数码配件");
INSERT INTO goodslist VALUES(null,'通讯/办公',"http://127.0.0.1:3000/floor1_8.png","时尚影音");
INSERT INTO goodslist VALUES(null,'通讯/办公',"http://127.0.0.1:3000/floor1_9.png","智能设备");
INSERT INTO goodslist VALUES(null,'通讯/办公',"http://127.0.0.1:3000/floor1_10.png","电子教育");
#六楼
INSERT INTO goodslist VALUES(null,'个护/化妆',"http://127.0.0.1:3000/floor2_1.png","米面油");
INSERT INTO goodslist VALUES(null,'个护/化妆',"http://127.0.0.1:3000/floor2_2.png","干活/调味");
INSERT INTO goodslist VALUES(null,'个护/化妆',"http://127.0.0.1:3000/floor2_3.png","酒类");
INSERT INTO goodslist VALUES(null,'个护/化妆',"http://127.0.0.1:3000/floor2_4.png","休闲零食");
INSERT INTO goodslist VALUES(null,'个护/化妆',"http://127.0.0.1:3000/floor2_5.png","饮料/冲调");
INSERT INTO goodslist VALUES(null,'个护/化妆',"http://127.0.0.1:3000/floor2_6.png","地方特产");
INSERT INTO goodslist VALUES(null,'个护/化妆',"http://127.0.0.1:3000/floor2_7.png","茗茶");
INSERT INTO goodslist VALUES(null,'个护/化妆',"http://127.0.0.1:3000/floor2_8.png","生鲜食品");
#七楼
INSERT INTO goodslist VALUES(null,'家居/建材',"http://127.0.0.1:3000/floor1_1.png","大家电");
INSERT INTO goodslist VALUES(null,'家居/建材',"http://127.0.0.1:3000/floor1_2.png","生活电器");
INSERT INTO goodslist VALUES(null,'家居/建材',"http://127.0.0.1:3000/floor1_3.png","厨房电器");
INSERT INTO goodslist VALUES(null,'家居/建材',"http://127.0.0.1:3000/floor1_4.png","健康护理");
INSERT INTO goodslist VALUES(null,'家居/建材',"http://127.0.0.1:3000/floor1_5.png","电脑整机");
INSERT INTO goodslist VALUES(null,'家居/建材',"http://127.0.0.1:3000/floor1_6.png","电脑配件");
INSERT INTO goodslist VALUES(null,'家居/建材',"http://127.0.0.1:3000/floor1_7.png","数码配件");
INSERT INTO goodslist VALUES(null,'家居/建材',"http://127.0.0.1:3000/floor1_8.png","时尚影音");
INSERT INTO goodslist VALUES(null,'家居/建材',"http://127.0.0.1:3000/floor1_9.png","智能设备");
INSERT INTO goodslist VALUES(null,'家居/建材',"http://127.0.0.1:3000/floor1_10.png","电子教育");
#八楼
INSERT INTO goodslist VALUES(null,'服装/饰品',"http://127.0.0.1:3000/floor2_1.png","米面油");
INSERT INTO goodslist VALUES(null,'服装/饰品',"http://127.0.0.1:3000/floor2_2.png","干活/调味");
INSERT INTO goodslist VALUES(null,'服装/饰品',"http://127.0.0.1:3000/floor2_3.png","酒类");
INSERT INTO goodslist VALUES(null,'服装/饰品',"http://127.0.0.1:3000/floor2_4.png","休闲零食");
INSERT INTO goodslist VALUES(null,'服装/饰品',"http://127.0.0.1:3000/floor2_5.png","饮料/冲调");
INSERT INTO goodslist VALUES(null,'服装/饰品',"http://127.0.0.1:3000/floor2_6.png","地方特产");
INSERT INTO goodslist VALUES(null,'服装/饰品',"http://127.0.0.1:3000/floor2_7.png","茗茶");
INSERT INTO goodslist VALUES(null,'服装/饰品',"http://127.0.0.1:3000/floor2_8.png","生鲜食品");
#九楼
INSERT INTO goodslist VALUES(null,'鞋帽/箱包',"http://127.0.0.1:3000/floor1_1.png","大家电");
INSERT INTO goodslist VALUES(null,'鞋帽/箱包',"http://127.0.0.1:3000/floor1_2.png","生活电器");
INSERT INTO goodslist VALUES(null,'鞋帽/箱包',"http://127.0.0.1:3000/floor1_3.png","厨房电器");
INSERT INTO goodslist VALUES(null,'鞋帽/箱包',"http://127.0.0.1:3000/floor1_4.png","健康护理");
INSERT INTO goodslist VALUES(null,'鞋帽/箱包',"http://127.0.0.1:3000/floor1_5.png","电脑整机");
INSERT INTO goodslist VALUES(null,'鞋帽/箱包',"http://127.0.0.1:3000/floor1_6.png","电脑配件");
INSERT INTO goodslist VALUES(null,'鞋帽/箱包',"http://127.0.0.1:3000/floor1_7.png","数码配件");
INSERT INTO goodslist VALUES(null,'鞋帽/箱包',"http://127.0.0.1:3000/floor1_8.png","时尚影音");
INSERT INTO goodslist VALUES(null,'鞋帽/箱包',"http://127.0.0.1:3000/floor1_9.png","智能设备");
INSERT INTO goodslist VALUES(null,'鞋帽/箱包',"http://127.0.0.1:3000/floor1_10.png","电子教育");
#十楼
INSERT INTO goodslist VALUES(null,'母婴/玩具',"http://127.0.0.1:3000/floor2_1.png","米面油");
INSERT INTO goodslist VALUES(null,'母婴/玩具',"http://127.0.0.1:3000/floor2_2.png","干活/调味");
INSERT INTO goodslist VALUES(null,'母婴/玩具',"http://127.0.0.1:3000/floor2_3.png","酒类");
INSERT INTO goodslist VALUES(null,'母婴/玩具',"http://127.0.0.1:3000/floor2_4.png","休闲零食");
INSERT INTO goodslist VALUES(null,'母婴/玩具',"http://127.0.0.1:3000/floor2_5.png","饮料/冲调");
INSERT INTO goodslist VALUES(null,'母婴/玩具',"http://127.0.0.1:3000/floor2_6.png","地方特产");
INSERT INTO goodslist VALUES(null,'母婴/玩具',"http://127.0.0.1:3000/floor2_7.png","茗茶");
INSERT INTO goodslist VALUES(null,'母婴/玩具',"http://127.0.0.1:3000/floor2_8.png","生鲜食品");
#十一楼
INSERT INTO goodslist VALUES(null,'旅游/房产',"http://127.0.0.1:3000/floor1_1.png","大家电");
INSERT INTO goodslist VALUES(null,'旅游/房产',"http://127.0.0.1:3000/floor1_2.png","生活电器");
INSERT INTO goodslist VALUES(null,'旅游/房产',"http://127.0.0.1:3000/floor1_3.png","厨房电器");
INSERT INTO goodslist VALUES(null,'旅游/房产',"http://127.0.0.1:3000/floor1_4.png","健康护理");
INSERT INTO goodslist VALUES(null,'旅游/房产',"http://127.0.0.1:3000/floor1_5.png","电脑整机");
INSERT INTO goodslist VALUES(null,'旅游/房产',"http://127.0.0.1:3000/floor1_6.png","电脑配件");
INSERT INTO goodslist VALUES(null,'旅游/房产',"http://127.0.0.1:3000/floor1_7.png","数码配件");
INSERT INTO goodslist VALUES(null,'旅游/房产',"http://127.0.0.1:3000/floor1_8.png","时尚影音");
INSERT INTO goodslist VALUES(null,'旅游/房产',"http://127.0.0.1:3000/floor1_9.png","智能设备");
INSERT INTO goodslist VALUES(null,'旅游/房产',"http://127.0.0.1:3000/floor1_10.png","电子教育");
#商品详情  gid 楼层名  lid  商品id
CREATE TABLE goodsdetails(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   gid VARCHAR(25),
   lid INT,
   img_url VARCHAR(255),
   title VARCHAR(255),
   price INT,
   sell: INT
);
INSERT INTO goodsdetails VALUES(null,'电器/数码',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'电器/数码',1,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'电器/数码',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'电器/数码',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'电器/数码',1,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'电器/数码',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'电器/数码',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'电器/数码',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'食品饮料',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'食品饮料',1,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'食品饮料',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'食品饮料',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'食品饮料',1,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'食品饮料',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'食品饮料',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'食品饮料',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'农产品',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'农产品',1,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'农产品',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'农产品',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'农产品',1,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'农产品',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'农产品',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'农产品',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'农用物资',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'农用物资',1,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'农用物资',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'农用物资',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'农用物资',1,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'农用物资',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'农用物资',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'农用物资',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'通讯/办公',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',1,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',1,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'个护/化妆',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',1,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',1,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'家居/建材',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'家居/建材',1,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'家居/建材',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'家居/建材',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'家居/建材',1,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'家居/建材',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'家居/建材',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'家居/建材',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'服装/饰品',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',1,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',1,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',1,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',1,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'母婴/玩具',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',1,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',1,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'旅游/房产',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',1,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',1,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',1,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',1,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',1,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);


INSERT INTO goodsdetails VALUES(null,'电器/数码',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'电器/数码',2,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'电器/数码',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'电器/数码',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'电器/数码',2,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'电器/数码',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'电器/数码',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'电器/数码',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'食品饮料',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'食品饮料',2,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'食品饮料',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'食品饮料',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'食品饮料',2,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'食品饮料',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'食品饮料',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'食品饮料',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'农产品',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'农产品',2,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'农产品',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'农产品',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'农产品',2,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'农产品',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'农产品',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'农产品',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'农用物资',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'农用物资',2,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'农用物资',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'农用物资',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'农用物资',2,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'农用物资',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'农用物资',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'农用物资',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'通讯/办公',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',2,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',2,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'个护/化妆',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',2,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',2,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'家居/建材',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'家居/建材',2,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'家居/建材',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'家居/建材',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'家居/建材',2,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'家居/建材',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'家居/建材',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'家居/建材',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'服装/饰品',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',2,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',2,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',2,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',2,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'母婴/玩具',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',2,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',2,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'旅游/房产',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',2,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',2,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',2,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',2,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',2,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'电器/数码',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'电器/数码',3,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'电器/数码',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'电器/数码',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'电器/数码',3,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'电器/数码',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'电器/数码',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'电器/数码',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'食品饮料',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'食品饮料',3,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'食品饮料',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'食品饮料',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'食品饮料',3,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'食品饮料',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'食品饮料',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'食品饮料',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'农产品',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'农产品',3,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'农产品',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'农产品',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'农产品',3,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'农产品',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'农产品',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'农产品',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'农用物资',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'农用物资',3,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'农用物资',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'农用物资',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'农用物资',3,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'农用物资',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'农用物资',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'农用物资',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'通讯/办公',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',3,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',3,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'个护/化妆',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',3,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',3,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'家居/建材',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'家居/建材',3,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'家居/建材',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'家居/建材',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'家居/建材',3,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'家居/建材',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'家居/建材',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'家居/建材',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'服装/饰品',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',3,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',3,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',3,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',3,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'母婴/玩具',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',3,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',3,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'旅游/房产',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',3,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',3,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',3,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',3,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',3,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);


INSERT INTO goodsdetails VALUES(null,'电器/数码',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'电器/数码',4,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'电器/数码',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'电器/数码',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'电器/数码',4,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'电器/数码',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'电器/数码',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'电器/数码',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'食品饮料',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'食品饮料',4,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'食品饮料',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'食品饮料',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'食品饮料',4,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'食品饮料',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'食品饮料',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'食品饮料',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'农产品',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'农产品',4,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'农产品',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'农产品',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'农产品',4,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'农产品',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'农产品',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'农产品',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'农用物资',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'农用物资',4,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'农用物资',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'农用物资',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'农用物资',4,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'农用物资',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'农用物资',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'农用物资',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'通讯/办公',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',4,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',4,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'个护/化妆',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',4,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',4,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'家居/建材',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'家居/建材',4,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'家居/建材',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'家居/建材',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'家居/建材',4,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'家居/建材',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'家居/建材',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'家居/建材',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'服装/饰品',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',4,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',4,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',4,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',4,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'母婴/玩具',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',4,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',4,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'旅游/房产',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',4,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',4,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',4,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',4,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',4,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'电器/数码',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'电器/数码',5,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'电器/数码',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'电器/数码',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'电器/数码',5,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'电器/数码',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'电器/数码',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'电器/数码',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'食品饮料',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'食品饮料',5,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'食品饮料',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'食品饮料',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'食品饮料',5,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'食品饮料',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'食品饮料',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'食品饮料',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'农产品',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'农产品',5,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'农产品',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'农产品',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'农产品',5,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'农产品',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'农产品',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'农产品',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'农用物资',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'农用物资',5,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'农用物资',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'农用物资',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'农用物资',5,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'农用物资',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'农用物资',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'农用物资',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'通讯/办公',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',5,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',5,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'个护/化妆',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',5,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',5,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'家居/建材',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'家居/建材',5,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'家居/建材',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'家居/建材',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'家居/建材',5,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'家居/建材',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'家居/建材',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'家居/建材',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'服装/饰品',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',5,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',5,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',5,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',5,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'母婴/玩具',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',5,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',5,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'旅游/房产',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',5,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',5,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',5,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',5,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',5,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'电器/数码',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'电器/数码',6,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'电器/数码',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'电器/数码',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'电器/数码',6,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'电器/数码',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'电器/数码',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'电器/数码',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'食品饮料',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'食品饮料',6,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'食品饮料',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'食品饮料',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'食品饮料',6,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'食品饮料',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'食品饮料',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'食品饮料',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'农产品',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'农产品',6,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'农产品',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'农产品',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'农产品',6,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'农产品',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'农产品',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'农产品',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'农用物资',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'农用物资',6,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'农用物资',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'农用物资',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'农用物资',6,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'农用物资',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'农用物资',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'农用物资',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'通讯/办公',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',6,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',6,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'通讯/办公',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'个护/化妆',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',6,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',6,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'个护/化妆',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'家居/建材',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'家居/建材',6,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'家居/建材',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'家居/建材',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'家居/建材',6,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'家居/建材',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'家居/建材',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'家居/建材',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'服装/饰品',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',6,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',6,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'服装/饰品',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',6,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',6,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'鞋帽/箱包',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'母婴/玩具',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',6,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',6,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'母婴/玩具',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);

INSERT INTO goodsdetails VALUES(null,'旅游/房产',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",199,163);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',6,"http://127.0.0.1:3000/djd2.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",6152,2222);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1231,16123);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",4521,51);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',6,"http://127.0.0.1:3000/djd5.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",1235,3);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',6,"http://127.0.0.1:3000/djd4.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",112199,51);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',6,"http://127.0.0.1:3000/djd3.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",512,12);
INSERT INTO goodsdetails VALUES(null,'旅游/房产',6,"http://127.0.0.1:3000/djd1.png","海尔/统帅BCD-182LTMPA182升双门 统帅冰箱 闪银色 182升",12314,53);


#创建购物车列表
CREATE TABLE shopcar(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   gid VARCHAR(25),
   lid INT,
   did INT,
   img_url VARCHAR(255),
   title VARCHAR(255),
   price INT,
   uname VARCHAR(255),
   count INT
);




if(result.length==0){//无记录，插入
            sql1=`INSERT INTO shopcar (id,gid,lid,did,title,img_url,price,uname,count) VALUES (null,${$gid},${$lid},${$did},${$title},${$img_url},${$price},${$uname},${$count})`;
        }else{
            console.log(222)
            sql1= ` UPDATE shopcar SET count=count+1 WHERE gid=${$gid} AND lid=${$lid} AND did = ${$did}`
        }
        pool.query(sql1,(err,result)=>{
            if(err) throw err;
            console.log(333)

            if(result.affectedRows > 0){
                res.send({code:1,msg:"添加成功"});
              }else{
                res.send({code:-1,msg:"添加失败"});
              }
        })