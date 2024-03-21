-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-03-18 08:58:16
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `take_pet_away`
--

-- --------------------------------------------------------

--
-- 資料表結構 `faq_shopinfo`
--

CREATE TABLE `faq_shopinfo` (
  `question_id` int(11) NOT NULL,
  `small_question` varchar(60) NOT NULL,
  `faq_answer` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `faq_shopinfo`
--

INSERT INTO `faq_shopinfo` (`question_id`, `small_question`, `faq_answer`, `created_at`) VALUES
(1, '表單和超連結', '<div><span style=\"color: rgb(48, 50, 51); font-family: Lato, &quot;PingFang TC&quot;, &quot;Helvetica Neue&quot;, Helvetica, 微軟正黑體, 新細明體, Arial, sans-serif; font-size: 18px;\">我們在昨天介紹了關於圖片、影片和音樂三個相關的標籤，到昨天為止，只要再加上 CSS 的排版技術我們就可以完成一些基礎的網頁囉，不過為了提高網站的可用性我們還是要加入一些可以讓用戶去操作的功能，像是表單和超連結之類的，而這就是我們今天的主題啦~表單和超連結</span></div>', '2024-03-18 11:20:32'),
(3, '開始購物] 我要如何進行結帳？', '<div><span style=\"font-size:18px;\"></span><span style=\"font-size:18px;\">[開始購物] 我要如何進行結帳？<br>將商品加入購物車<br>\r\n若您還沒將商品加入購物車，請點選商品頁面的【加入購物車】，再點選右上方購物車圖示，即可進入購物車畫面選擇購買商品數量。</span></div>', '2024-03-18 12:06:08'),
(4, '實體商品購物流程說明', '<div><ul style=\"margin: 0px 0px 0px 16px; padding: 0px; list-style: decimal;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" roboto,=\"\" arial,=\"\" \"lucida=\"\" grande\",=\"\" \"pingfang=\"\" tc\",=\"\" 蘋果儷中黑,=\"\" \"apple=\"\" ligothic=\"\" medium\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" medium;\"=\"\"><li style=\"margin: 0px; padding: 0px 4px; font-size: 15px; line-height: 23px;\"><br></li><li style=\"color: rgb(111, 111, 111); margin: 0px; padding: 0px 4px; font-size: 15px; line-height: 23px;\"><font color=\"#0088cc\">填寫訂購資料</font><br>請填寫完整訂購資料並送出，經系統確認訂購資料無誤後訂單即會成立。屆時會收到巴哈姆特站上即時通知的購買訊息，並寄送「訂購確認信」至指定電子信箱；您也可透過巴哈商城點選右上角「我的訂單 &gt; 實體訂單查詢」確認訂購紀錄。<br>※ 部分熱門商品可能因玩家訂購踴躍且數量有限之緣故，造成搶購失敗，屆時系統也會發送「訂購失敗通知信」給您。</li><br><li style=\"color: rgb(111, 111, 111); margin: 0px; padding: 0px 4px; font-size: 15px; line-height: 23px;\"><font color=\"#0088cc\">取貨付款</font><br>待商品送達指定超商或宅配地點時，會有取貨簡訊和 e-mail 通知，取貨並付款即完成交易。</li></ul></div>', '2024-03-18 13:50:34'),
(8, '訂購之後，何時可以收到商品呢？', '<div><div class=\"section-title\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: 15px; line-height: 21px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, &quot;Lucida Grande&quot;, &quot;PingFang TC&quot;, 蘋果儷中黑, &quot;Apple LiGothic Medium&quot;, 微軟正黑體, &quot;Microsoft JhengHei&quot;, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; display: inline-block; width: 40px; color: rgb(111, 111, 111);\">Ans.</div><div class=\"section-text\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, &quot;Lucida Grande&quot;, &quot;PingFang TC&quot;, 蘋果儷中黑, &quot;Apple LiGothic Medium&quot;, 微軟正黑體, &quot;Microsoft JhengHei&quot;, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; display: inline-block; width: calc(100% - 40px); color: rgb(70, 70, 70);\"><div>完成訂購後將會依照商品狀態而有不同的取貨時間，可分成以下兩種類型</div><br><ul style=\"margin: 0px 0px 0px 16px; padding: 0px; list-style: decimal;\"><li style=\"margin: 0px; padding: 0px 4px; font-size: 15px; line-height: 23px; color: rgb(111, 111, 111);\"><font color=\"#0088cc\">商品狀態：熱烈預購中</font><br>指商品未發售之前，就預先訂購。大部份預購商品可於發售日當天或隔天收到；若發售日落於國定例假日，會因物流休假之緣故，延至假期過後送達。除此之外，少部分商品因廠商進貨時程及出貨運送作業的影響，到貨時間將可能晚於發售日。相關資訊請依照各商品頁面中「預定取貨」欄位說明為主。<br>※ 請注意，預購商品仍有可能受到廠商發行政策之影響而取消訂單，若遇此狀況，巴哈商城也會再發信通知預購者。</li><br><li style=\"margin: 0px; padding: 0px 4px; font-size: 15px; line-height: 23px; color: rgb(111, 111, 111);\"><font color=\"#0088cc\">商品狀態：已發售</font><br>大部分商品可於訂購後三~七個工作天內送達。若遇商品缺貨，將會請廠商協助進行調貨，屆時也會發送「缺貨通知信」給您；若確認該商品已無庫存且不會再進貨，即會發送「斷貨通知信」給您，並由系統取消該筆訂單。少部分商品須等候廠商再次到貨後，才會安排出貨，因依商品再到貨時間皆不相同，請依商品頁面的「預定取貨」欄位資訊為準。</li><li></li></ul></div></div>', '2024-03-18 15:41:06');

--
-- 觸發器 `faq_shopinfo`
--
DELIMITER $$
CREATE TRIGGER `before_insert_faq_question_id` BEFORE INSERT ON `faq_shopinfo` FOR EACH ROW BEGIN
    DECLARE next_id INT;
    SELECT IFNULL(MAX(CAST(SUBSTRING(question_id, 3) AS UNSIGNED)), 0) + 1 INTO next_id
    FROM faq_shopinfo;
    SET NEW.question_id = CONCAT('QI', LPAD(next_id, 5, '0'));
END
$$
DELIMITER ;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `faq_shopinfo`
--
ALTER TABLE `faq_shopinfo`
  ADD PRIMARY KEY (`question_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `faq_shopinfo`
--
ALTER TABLE `faq_shopinfo`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
