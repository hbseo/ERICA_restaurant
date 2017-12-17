# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.5-10.2.8-MariaDB)
# Database: WebProject
# Generation Time: 2017-12-17 07:28:56 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  KEY `ID` (`ID`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `store` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `address_1` varchar(40) DEFAULT NULL,
  `address_2` varchar(40) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `branch` varchar(10) DEFAULT NULL,
  `sub_branch` varchar(20) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;

INSERT INTO `store` (`ID`, `name`, `address_1`, `address_2`, `tel`, `branch`, `sub_branch`, `lat`, `lng`, `x`, `y`)
VALUES
	(1,'밀숲','경기도 안산시 상록구 한양대학로 76 해비치','경기도 안산시 상록구 사동 1561-5','031-408-8625','한식','칼국수,만두',37.302151,126.83683,0.5,119.676),
	(2,'좋은치킨','경기도 안산시 상록구 사동 1562','','031-437-6200','음식점','치킨,닭강정',37.3017139,126.8370243,0.5,158.833),
	(3,'한양생고기','경기도 안산시 상록구 한양대학로 70','경기도 안산시 상록구 사동 1562-2','031-407-2347','한식','육류,고기요리',37.30147669999999,126.8371859,0.5,211.711),
	(4,'신북경','경기도 안산시 상록구 한양대학로 68 한대빌딩','경기도 안산시 상록구 사동 1562-3 1층','050-4308-2495','중식','중식당',37.3013398,126.8372816,0.5,236.426),
	(5,'소담골오리마을','경기도 안산시 상록구 한양대학로 66','경기도 안산시 상록구 사동 1562-7','031-415-1133','한식','오리요리',37.3011335,126.837375,0.5,289.426),
	(6,'한우궁','경기도 안산시 상록구 한양대학로 60','경기도 안산시 상록구 사동 1569-4 104호','031-408-3455','한식','찌개,전골',37.3007999,126.8376272,0.5,390.793),
	(7,'써브웨이','경기도 안산시 상록구 한양대학로 60','경기도 안산시 상록구 사동 1569-4','031-409-9007','음식점','샌드위치',37.3007999,126.8376272,0.5,420.427),
	(8,'미스터피자','경기도 안산시 상록구 한양대학로 60','경기도 안산시 상록구 사동 1569-4 한양타운 201,202호','031-416-3300','음식점','피자',37.3007999,126.8376272,23.057,420.426),
	(9,'찌개찌개','경기도 안산시 상록구 한양대학로 60','경기도 안산시 상록구 사동 1569-4','031-419-1523','한식','찌개,전골',37.3007999,126.8376272,23.057,400.51),
	(11,'유가네','경기도 안산시 상록구 성안길 82-3','경기도 안산시 상록구 사동 1569-1 B동 2층','031-417-8865','한식','닭갈비',37.3008452,126.8382107,72.04,455.1),
	(12,'월남국수','경기도 안산시 상록구 성안길 82-3','경기도 안산시 상록구 사동 1569-1','031-417-2524','음식점','베트남음식',37.3008452,126.8382107,89.779,456.971),
	(13,'홍당무','경기도 안산시 상록구 한양대학로 48','경기도 안산시 상록구 사동 1569-2','031-503-2297','술집','전통,민속주점',37.3006423,126.838374,91.641,511.821),
	(14,'한양동태마을','경기도 안산시 상록구 성안2길 2-1','경기도 안산시 상록구 사동 1559-1','031-407-5655','한식','해물,생선요리',37.3025405,126.837518,182.153,127.5),
	(15,'기찬고기','경기도 안산시 상록구 성안2길 12','경기도 안산시 상록구 사동 1564-2','031-406-8811','한식','돼지고기구이',37.3019289,126.8382742,245.195,239.534),
	(16,'생고기제작소','경기도 안산시 상록구 성안2길 15','경기도 안산시 상록구 사동 1566-4','031-417-1117','한식','육류,고기요리',37.3020429,126.838683,302.848,224.477),
	(17,'풍천민물장어','경기도 안산시 상록구 성안2길 15 정도빌딩','경기도 안산시 상록구 사동 1566-4','031-406-1117','음식점','한식',37.3020429,126.838683,287.959,239.534),
	(18,'탐나는 바지락 칼국수','경기도 안산시 상록구 성안2길 19 경기빌딩','경기도 안산시 상록구 사동 1566-2','031-438-1007','한식','칼국수,만두',37.3020706,126.8391213,377.807,286.926),
	(19,'취해','경기도 안산시 상록구 성안길 78-1 한대트윈스빌2','경기도 안산시 상록구 사동 1569-6 1층','031-408-2427','일식','일식당',37.3011704,126.8380106,110.383,344.159),
	(20,'굽네치킨','경기도 안산시 상록구 성안길 78-1 한대트윈스빌2','경기도 안산시 상록구 해양동 1569-6','0504-3143-8465','음식점','치킨,닭강정',37.3011704,126.8380106,125.764,359.346),
	(21,'돼지우리','경기도 안산시 상록구 성안길 78-1 한대트윈스빌2','경기도 안산시 상록구 사동 1569-6','031-487-5587','음식점','한식',37.3011704,126.8380106,102.695,382.284),
	(22,'유원치킨','경기도 안산시 상록구 성안길 78-3 라라캠퍼스','경기도 안산시 상록구 사동 1569-5','031-502-9279','술집','맥주,호프',37.3009206,126.8378994,88.07,396.909),
	(23,'참숯연기삼겹살','경기도 안산시 상록구 성안길 78-3 라라캠퍼스','경기도 안산시 상록구 사동 1569-5 라라캠퍼스 104, 105호','031-407-8865','한식','돼지고기구이',37.3009206,126.8378994,73.32,411.638),
	(24,'213버거','경기도 안산시 상록구 성안길 82-3','경기도 안산시 상록구 사동 1569-1','031-418-0213','음식점','햄버거',37.3008452,126.8382107,98.041,429.12),
	(25,'육앤샤','경기도 안산시 상록구 성안길 84-2 한대트윈스빌1','경기도 안산시 상록구 사동 1569','031-409-3535','음식점','한식',37.3011128,126.838298,123.124,404.037),
	(26,'스카이치킨','경기도 안산시 상록구 한양대학로 48','경기도 안산시 상록구 사동 1569-2 107, 108호','031-418-6656','음식점','치킨,닭강정',37.3006423,126.838374,110.95,511.821),
	(27,'한솥도시락','경기도 안산시 상록구 한양대학로 48','경기도 안산시 상록구 해양동 1569-2 한성빌딩 1층 109호','031-501-5556','음식점','도시락,컵밥',37.3006423,126.838374,130.224,511.821),
	(28,'포냐향','경기도 안산시 상록구 성안길 81','경기도 안산시 상록구 사동 1568-12','031-407-5021','음식점','베트남음식',37.3013518,126.8384139,167.86,359.347),
	(29,'난집에돈까스','경기도 안산시 상록구 성안길 81','경기도 안산시 상록구 사동 1568-12','031-408-1145','일식','돈가스',37.3013518,126.8384139,182.339,373.786),
	(30,'키친모리아','경기도 안산시 상록구 성안길 83 고시원','경기도 안산시 상록구 사동 1568-11','010-3002-6614','음식점','퓨전음식',37.3013006,126.8386121,208.796,400.111),
	(31,'언니네화덕핏짜','경기도 안산시 상록구 성안길 87 가은빌딩','경기도 안산시 상록구 사동 1568-9','031-407-4596','음식점','피자',37.3012105,126.8389755,230.807,422.488),
	(32,'메콩강','경기도 안산시 상록구 성안길 87 가은빌딩','경기도 안산시 상록구 사동 1568-9','031-418-6412','음식점','한식',37.3012105,126.8389755,265.506,456.972),
	(33,'토마토도시락','경기도 안산시 상록구 한양대학로 40','경기도 안산시 상록구 사동 1570-4','031-411-7224','음식점','도시락,컵밥',37.3009182,126.8390387,198.057,511.821),
	(34,'봉추찜닭','경기도 안산시 상록구 한양대학로 40','경기도 안산시 상록구 사동 1570-4','031-416-6981','한식','찜닭',37.3009182,126.8390387,247.391,511.821),
	(35,'김밥천국','경기도 안산시 상록구 한양대학로 38-1','경기도 안산시 상록구 사동 1570-5','','분식','김밥천국',37.3009977,126.8392416,275.641,511.821),
	(36,'피자스쿨','경기도 안산시 상록구 한양대학로 38','경기도 안산시 상록구 사동 1570-6','031-409-9122','음식점','피자',37.3010676,126.8393838,307.891,511.821),
	(37,'스낵플랜트','경기도 안산시 상록구 한양대학로 36','경기도 안산시 상록구 사동 1570-7','','분식','종합분식',37.3011258,126.8395318,356.224,511.821),
	(38,'BISTRO TA BOM','경기도 안산시 상록구 한양대학로 51','경기도 안산시 상록구 사동 1149-1','031-501-2275','음식점','양식',37.2999933,126.8382543,30.307,570.5),
	(39,'선양반점','경기도 안산시 상록구 한양대학로 49 b01 선양반점','경기도 안산시 상록구 사동 1149-3','031-406-5894','중식','중식당',37.3001437,126.838437,77.307,570.5),
	(40,'명가떡볶이','경기도 안산시 상록구 한양대학로 47','경기도 안산시 상록구 사동 1149-4','031-501-8782','분식','떡볶이',37.30019619999999,126.8385535,99.277,570.5),
	(41,'맛자랑','경기도 안산시 상록구 한양대학로 41','경기도 안산시 상록구 사동 1149-9','031-409-3993','음식점','한식',37.3004479,126.8391361,208.807,583.833),
	(42,'집밥클럽','경기도 안산시 상록구 학사2길 11-3 1층','경기도 안산시 상록구 사동 1149-10 1층','031-408-7790','음식점','한식',37.3002888,126.8391758,208.807,605.083),
	(43,'MEAL PLAN B','경기도 안산시 상록구 학사2길 11-1','경기도 안산시 상록구 사동 1149-11 1층 밀플랜비','010-4022-7061','음식점','햄버거',37.3001914,126.839254,208.807,627.083),
	(44,'한양식당','경기도 안산시 상록구 학사2길 11','경기도 안산시 상록구 사동 1149-12','','','',37.30007579999999,126.8393223,208.807,669.833),
	(45,'장인매운갈비찜','경기도 안산시 상록구 학사2길 11','경기도 안산시 상록구 해양동 1149-12 지하1층','010-3296-4649','한식','육류,고기요리',37.30007579999999,126.8393223,158.224,669.833),
	(46,'미쳐버린파닭','경기도 안산시 상록구 한양대학로 23-1','경기도 안산시 상록구 해양동 1171-4','031-407-9247','음식점','치킨,닭강정',37.3011645,126.8409095,40.141,631.834),
	(47,'도스마스','경기도 안산시 상록구 학사2길 3-1','경기도 안산시 상록구 사동 1149-22','031-409-6969','양식','멕시코,남미음식',37.2997369,126.8384872,40.141,669.833),
	(48,'옛날학사제육쌈밥','경기도 안산시 상록구 학사2길 11-4','경기도 안산시 상록구 사동 1151-2','','음식','한식',37.3003315,126.8394797,238.367,627.083),
	(49,'동아리식당','경기도 안산시 상록구 학사2길 13','경기도 안산시 상록구 사동 1151-3','','음식','한식',37.3001976,126.8395212,238.367,669.833),
	(50,'행복한짬뽕','경기도 안산시 상록구 학사2길 13-1','경기도 안산시 상록구 사동 1151-4','031-417-0606','중식','중식당',37.300252,126.8396422,267.141,669.833),
	(51,'젤리팩토리','경기도 안산시 상록구 학사2길 16-1','경기도 안산시 상록구 사동 1155-3','','음식','한식',37.3000788,126.8399065,294.747,669.833),
	(52,'알촌','경기도 안산시 상록구 학사길 2','경기도 안산시 상록구 사동 1154','031-415-3001','음식점','퓨전음식',37.3000491,126.8390898,0.5,699.534),
	(53,'유유자적','경기도 안산시 상록구 학사2길 2-1','경기도 안산시 상록구 사동 1154-1','031-409-0430','음식점','한식',37.2995366,126.8385535,22.25,699.534),
	(54,'들녘','경기도 안산시 상록구 학사2길 6-1','경기도 안산시 상록구 사동 1154-4','','음식','한식',37.2996919,126.8389481,66,699.534),
	(55,'THE치킨','경기도 안산시 상록구 학사2길 10','경기도 안산시 상록구 사동 1154-6','031-437-8777','음식점','치킨,닭강정',37.2997973,126.8392172,143.25,699.534),
	(56,'일미닭갈비파전','경기도 안산시 상록구 학사2길 2','경기도 안산시 상록구 사동 1154','031-503-8800','한식','육류,고기요리',37.2994859,126.8384336,0.5,719.333),
	(57,'피자헤븐','경기도 안산시 상록구 학사4길 1 등대빌라','경기도 안산시 상록구 사동 1154-15','031-407-7007','음식점','피자',37.2993308,126.838516,0.5,755.833),
	(58,'썬더치킨','경기도 안산시 상록구 학사4길 2 1층 102호','경기도 안산시 상록구 사동 1157 1층 102호','','음식점','치킨,닭강정',37.2991636,126.8386483,17.25,785.534),
	(59,'브라더스테이크','경기도 안산시 상록구 학사4길 19','경기도 안산시 상록구 사동 1155-11','070-4617-1333','음식점','스테이크,립',37.3000996,126.8403743,377.809,725.833),
	(60,'머꼬가자','경기도 안산시 상록구 학사4길 17-1','경기도 안산시 상록구 해양동 1155-12 1층','031-408-0033','음식점','한식',37.3000425,126.840241,319.25,755.833),
	(61,'돼가네맛있는삼겹살','경기도 안산시 상록구 학사4길 15-1','경기도 안산시 상록구 사동 1155-14','031-416-7701','음식점','한식',37.2999562,126.839993,258.974,755.833),
	(62,'인삼족발보쌈','경기도 안산시 상록구 학사4길 20 1층 인삼족발보쌈','경기도 안산시 상록구 사동 1158-5 1층 인삼족발보쌈','050-4111-4097','한식','족발,보쌈',37.2999152,126.8404978,377.809,811.184),
	(63,'신정골뼈다귀해장국','경기도 안산시 상록구 성안2길 23','경기도 안산시 상록구 사동 1574-9','031-418-0992','한식','해장국',37.3022106,126.8394294,436.629,286.926),
	(64,'월수금','경기도 안산시 상록구 성안1길 31','경기도 안산시 상록구 사동 1573-9','031-502-2272','음식점','한식',37.3018748,126.8396488,436.629,367.674),
	(65,'마시내탕수육','경기도 안산시 상록구 성안1길 33','경기도 안산시 상록구 사동 1573-8','031-415-6611','중식','중식당',37.3019348,126.8397912,472.5,367.674),
	(66,'콩사돈','경기도 안산시 상록구 성안1길 32','경기도 안산시 상록구 사동 1572','','음식점','한식',37.3016661,126.8397694,436.629,425.534),
	(67,'조박사부대찌개','경기도 안산시 상록구 성안길 99','경기도 안산시 상록구 사동 1572-7 1층','031-406-3885','한식','찌개,전골',37.3016508,126.8401373,480.834,460.859),
	(68,'청학칡냉면','경기도 안산시 상록구 한양대학로 32 건물 2층','경기도 안산시 상록구 사동 1571 건물 2층','031-418-2255','한식','냉면',37.3013214,126.8400002,436.629,490.561),
	(69,'예산닭갈비감자탕','경기도 안산시 상록구 한양대학로 30','경기도 안산시 상록구 해양동 1571-1','031-501-8134','한식','닭갈비',37.301375,126.8401314,457.5,511.821),
	(70,'황산','경기도 안산시 상록구 한양대학로 28','경기도 안산시 상록구 사동 1571-2','031-408-7776','중식','중식당',37.3014359,126.8402839,494.606,511.821),
	(71,'동촌추어탕','경기도 안산시 상록구 성안길 113','경기도 안산시 상록구 사동 1580-7','031-408-7970','한식','추어탕',37.3022241,126.8415441,788.167,460.859),
	(72,'리아리또','경기도 안산시 상록구 한양대학로 14 지층','경기도 안산시 상록구 사동 1581-6 지층','031-417-5250','음식점','멕시코,남미음식',37.3020017,126.8416513,788.167,490.561),
	(73,'대학통닭','경기도 안산시 상록구 한양대학로 25','경기도 안산시 상록구 해양동 1171-3 1층','031-501-0950','음식점','치킨,닭강정',37.3011092,126.8407807,601.337,511.821),
	(74,'봉구스밥버거','경기도 안산시 상록구 한양대학로 22','경기도 안산시 상록구 사동 1581-1','031-409-0933','음식점','분식',37.301676,126.8408723,637.833,511.821),
	(75,'피자에땅','경기도 안산시 상록구 한양대학로 20 103호','경기도 안산시 상록구 사동 1581-2 103호','031-408-3658','음식점','피자',37.3017563,126.841064,674.5,511.821),
	(76,'웁스떡볶이','경기도 안산시 상록구 한양대학로 20','경기도 안산시 상록구 해양동 1581-2 1층','031-406-1149','분식','종합분식',37.3017563,126.841064,707.5,511.821),
	(77,'오븐에빠진닭','경기도 안산시 상록구 한양대학로 18','경기도 안산시 상록구 해양동 1581-3','031-418-5892','음식점','치킨,닭강정',37.301871,126.841219,737.5,511.821),
	(78,'또바기닭발 앤 옛날식통닭','경기도 안산시 상록구 학사1길 9','경기도 안산시 상록구 사동 1171-12 1층','0507-0493-0122','한식','닭발',37.3010928,126.8411261,538.917,622.684),
	(79,'장터삼겹살','경기도 안산시 상록구 한양대학로 15','경기도 안산시 상록구 사동 1172','031-419-3392','한식','돼지고기구이',37.3015271,126.841768,724.714,570.5),
	(80,'한양통닭한마리','경기도 안산시 상록구 학사1길 4-1','경기도 안산시 상록구 사동 1169-2','031-419-2552','음식점','한식',37.3006868,126.8407104,497.75,652.385),
	(81,'스타케밥','경기도 안산시 상록구 학사1길 4 지하1층','경기도 안산시 상록구 사동 1169-1 지하1층','031-502-9660','음식점','그리스,터키음식',37.300637,126.8405883,467.75,674.784),
	(82,'와 부대&제육','경기도 안산시 상록구 한양대학2길 35','경기도 안산시 상록구 사동 1167','031-415-5577','한식','찌개,전골',37.3002583,126.8406572,436.629,730.833),
	(83,'송호성쉐프의돈까스','경기도 안산시 상록구 학사5길 2','경기도 안산시 상록구 사동 1165','031-480-4595','일식','돈가스',37.2999585,126.8408694,436.629,807.834),
	(84,'밥알','경기도 안산시 상록구 학사5길 2','경기도 안산시 상록구 사동 1165','031-407-3433','분식','김밥',37.2999585,126.8408694,436.629,829.333),
	(85,'류멘','경기도 안산시 상록구 학사7길 1','경기도 안산시 상록구 사동 1165-12 머쉬룸 A동 102호 류멘','010-8970-1242','일식','일본식라면',37.29984839999999,126.8409387,436.629,850.833);

/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;