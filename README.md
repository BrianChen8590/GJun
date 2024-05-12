#事前準備：
1. Eclipse( Web )
2. Tomcat 9.0
3. Java 11 以上
4. MySql

<hr>

#如何練習專案:<br>
1. 先自行依照架構繪製概略圖<br>
2. 開始新增資料庫表單<br>
3. 建立 Java Web 專案<br>
4. 建立 JDBC 連線<br>
5. 建立資料 Dao 及 Impl 並且測試資料庫表單是否有無新增資料<br>
6. 建立首頁及 Css 特效<br>
7. 建立 Servler<br>
8. 建立 Filter<br>
9. 網頁串接 Servlet 服務並且成功回傳數值或轉址<br>
10. 串接所有會員及訂單頁面功能<br>

<hr>

#如何匯入專案：<a target="_blank" href="https://brianchen85.blogspot.com/2024/04/website-dynamic-web-project-eclipse.html" >如何匯入 Dynamic Web Project 至 Eclipse</a><br>

<hr>

How to import project at Eclipse?<br>
1. Click download icon then save your java workspace folder<br>
2. Open Eclipse and select above workspace path<br>
3. See blogger import project step by step (<a target="_blank" href="https://brianchen85.blogspot.com/2024/04/website-dynamic-web-project-eclipse.html" >How to import Dynamic Web Project at Eclipse</a>)<br><br>
<hr>

#會員及訂單練習<br>
練習連結: http://localhost:8080/GJun/<br>
PS: <br>
GJun 是你的專案名稱，如果在 WorkSpace 有相同的名稱，網址將會被修改，請注意<br>
GJun is your project name, if have the same project in your workspace after url will be modify ap2.<br>

<br>
PS: 避免 Eclipse 存在 Gjun 專案，導致上方連結失效<br>

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

<hr>
Listener 練習<br><br>
PS: If you want to learn how to use listener, you can see java/com/listener/*.java and webapp/listener/*.jsp.<br>
Url: http://localhost:8080/GJun/listener/test1.jsp<br>
<hr>

#留言板練習<br><br>
```sql
CREATE TABLE `chat` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `subject` VARCHAR(45) NULL,
  `content` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
```
<hr>
#常遇問題：<br>
1. 沒辦法載入 CSS 檔案：<br>
關閉 Filter Content Type 的使用<br>
