事前準備：
1. Eclipse( Web )
2. Tomcat 9.0
3. Java 11 以上

如何匯入專案：<a target="_blank" href="https://brianchen85.blogspot.com/2024/04/website-dynamic-web-project-eclipse.html" >如何匯入 Dynamic Web Project 至 Eclipse</a>

練習連結: http://localhost:8080/GJun/
<br>
PS: 避免 Eclipse 存在 Gjun 專案，導致上方連結失效

Database: MySql
資料庫帳號密碼請記得更新

```sql
-- 新增 member Table
CREATE TABLE `member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `memberno` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

-- 新增 member Table
CREATE TABLE `porder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `porderno` varchar(45) DEFAULT NULL,
  `a` int DEFAULT NULL,
  `b` int DEFAULT NULL,
  `c` int DEFAULT NULL,
  `memberno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


-- 新增 Member Query Sum
CREATE  OR REPLACE VIEW `memberQuerySum` AS select * , A*150+B*120+C*100 as sum from gjun.porder;

```

常遇問題：
1. 沒辦法載入 CSS 檔案：
關閉 Filter Content Type 的使用
2. 
3. 
4. ？
