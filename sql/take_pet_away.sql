-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-03-23 12:58:32
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
-- 資料表結構 `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `content` varchar(100) NOT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `blog`
--

INSERT INTO `blog` (`blog_id`, `pet_id`, `content`, `pic`, `time`) VALUES
(1, 10001, '今天天氣晴', '33a653d57653c7d4d8cfee6925bd18f380d36b90.jpg', '2024-03-21 14:08:02'),
(6, 10001, '今天沒出門', '', '2024-03-21 14:08:54'),
(7, 10002, '今天好無聊', '', '2024-03-21 14:09:09'),
(8, 10008, 'A，B，C，D，E，F，G', '', '2024-03-21 14:09:47'),
(9, 10004, 'Hello，world', '', '2024-03-21 14:10:09'),
(10, 10004, '陰天', '', '2024-03-21 14:10:21'),
(11, 10005, '今日天氣晴', '', '2024-03-21 14:10:35'),
(12, 10005, '認真讀書的一天', '4538fb499a299b1c350352a9ca6df9954570d6ed.jpg', '2024-03-21 14:11:20'),
(13, 10009, '外面真好玩', 'b11a27601279dd27a1a019e41fee4568ec2cac06.jpg', '2024-03-21 14:12:27'),
(14, 10009, '餓了', '', '2024-03-21 14:13:18'),
(15, 10009, '吃飽了', '', '2024-03-21 14:13:25');

-- --------------------------------------------------------

--
-- 資料表結構 `bulletin`
--

CREATE TABLE `bulletin` (
  `bulletin_id` int(11) NOT NULL,
  `type` varchar(8) NOT NULL,
  `title` varchar(60) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `bulletin`
--

INSERT INTO `bulletin` (`bulletin_id`, `type`, `title`, `date`) VALUES
(10001, '公告事項', '「寵物天堂更新！最新寵物娛樂資訊一次滿足！」', '2024-03-18'),
(10002, '公告事項', '「寵愛無極限！寵物網站最新上架超萌寵物商品」', '2024-03-19'),
(10003, '公告事項', '「狗狗社交新潮流！最受歡迎寵物社群大解析」', '2024-03-20'),
(10004, '公告事項', '「貓咪最愛！專屬寵物美容趨勢大公開」', '2024-03-21'),
(10005, '公告事項', '「限時優惠！寵物食品熱銷搶購中」', '2024-03-22'),
(10006, '活動事項', '「寵物用品大換新！全新上市讓你的寶貝過得更好」', '2024-03-23'),
(10007, '活動事項', '「最新科技！智能寵物玩具全方位體驗」', '2024-03-24'),
(10008, '活動事項', '「領養不棄養！寵物認養專區最新消息」', '2024-03-25'),
(10009, '活動事項', '「貓狗大作戰！最新寵物遊戲熱門排行」', '2024-03-26'),
(10010, '活動事項', '「醫生私房話！寵物健康保健秘訣大揭露」', '2024-03-27');

-- --------------------------------------------------------

--
-- 資料表結構 `commodity`
--

CREATE TABLE `commodity` (
  `commodity_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `type` varchar(8) NOT NULL,
  `species` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `commodity`
--

INSERT INTO `commodity` (`commodity_id`, `name`, `brand_name`, `price`, `pic`, `type`, `species`) VALUES
(10001, '柴犬成犬 4公斤 (狗飼料)-法國皇家 Royal Canin', '法國皇家 Royal Canin', 1216, 'a951460d3dbbf2532139d0d1f16136df3e4649ca.jpg', '寵物飼料', '狗寶貝'),
(10002, '幼貓高鈣營養膏 50克', '竣寶 Gimpet ', 269, '7566ebb1aaea6ca2090f348f282a128f59bf2978.jpg', '保健食品', '貓寶貝'),
(10003, '室內成貓 4公斤 (貓飼料)-法國皇家 Royal Canin', '法國皇家 Royal Canin', 1385, 'ac81d3f0f5579917f36927aad53de34bddca10ca.jpg', '寵物飼料', '貓寶貝'),
(10004, 'Dr.Wish狗罐85克【雞+菜+鮪魚油(綠)】', '惜時 SEEDS', 29, '9d84d551a2116d82e8eb04835c89c5e13ef8683f.jpg', '寵物罐頭', '狗寶貝'),
(10005, '沛可寵鮮貓餐罐 85克【鮮嫩雞肉+美味起司】-PekoPeko沛可', 'PekoPeko沛可', 48, '26060e63f76c3cd7d6a87898b8396b69985fb047.jpg', '寵物罐頭', '貓寶貝'),
(10006, '啾嚕迷你捲心塊 雞肉+地瓜(狗零食)', 'PekoPeko沛可', 48, 'cc36548b77eefc36585dd947d2edf03d8bfa1cb5.jpg', '寵物零食', '狗寶貝'),
(10007, '【日本製】啾嚕管狀肉泥80克【雞肉】(貓零食)', 'PekoPeko沛可', 89, '95a18d8bca9024d96db2be98ddc79b38a2aa971b.jpg', '寵物零食', '貓寶貝'),
(10008, '寵物潔牙牙刷玩具 馬卡龍黃色 M(10x3x2.5公分)(狗玩具)', '小小毛孩 Little poppet', 299, '792872530cbd5c352d3094661d8f9c78551ee0ae.jpg', '寵物用品', '狗寶貝'),
(10009, '三節式 伸縮逗貓棒 玫紅小魚 (貓玩具)', 'Ourpets', 135, 'a25a48792300acac3fe10817954372ba4440055f.jpg', '寵物用品', '貓寶貝'),
(10010, '亮眼口服保健營養品 30ml(狗用)', '倍力BLUE BAY', 376, '2d3ad6f71471fc230373bb425acac6157d3afad2.jpg', '保健食品', '狗寶貝'),
(10011, '超級褐藻潔牙粉20克(貓用)', '樂健飛', 456, 'f4efe4159dec46857781ae9f967039a67f9ab32f.jpg', '保健食品', '貓寶貝'),
(10012, '無穀低敏 澳洲羊肉全犬配方(小顆粒) (6.6公斤) (狗飼料)', '第一饗宴', 2168, '50ec660a90cf666784b5e8f91742f260fe1d957e.jpg', '寵物飼料', '狗寶貝'),
(10013, '全貓配方 無穀雞肉 5公斤 (貓飼料)', '原點 Instinct', 2399, 'ec26574f3a0ad694303cb9d7761bb19f842e984b.jpg', '寵物飼料', '貓寶貝'),
(10014, 'SHNW 離乳犬與母犬專用慕斯STM 195克 (24入) (狗主食餐罐)(整箱罐罐)', '法國皇家 Royal Canin', 1320, 'ca2c23123e3f5665def28cd0d64d5740bde481da.jpg', '寵物罐頭', '狗寶貝'),
(10015, '無穀成貓主食鮮味杯3.5oz【鮪魚】(1入)(貓主食罐)', '原點 Instinct', 77, '118b4bc97ab8846d25aaf2197ca187ee456e1e62.jpg', '寵物罐頭', '貓寶貝'),
(10016, '耐嚼型潔牙棒85克牛肉風味(支1包)(狗零食潔牙骨)', 'GOODIES', 29, '75743f3e4d4f7d44ac6f2a959da602b5455a25a6.jpg', '寵物零食', '狗寶貝'),
(10017, '韓國 By Cat 貓咪凍乾零食 鱈魚 60克 (貓零食)-韓國CatChup喵洽普', '韓國CatChup喵洽普', 269, '34b102bb4610d0249362b57a9916dd4d1521dcf4.jpg', '寵物零食', '貓寶貝'),
(10018, '寵物防蟻碗架組 綠', 'SPUTNIK', 1350, '51ffac39f01fc54c0374983a686620e4ac0ad5ac.jpg', '寵物用品', '狗寶貝'),
(10019, '半個樓 貓屋 54*35*41公分-喵旺家族 Pet and Pets', '喵旺家族 Pet and Pets', 799, '213781b6dba4aa77e3d9ce2a2973e1958b802f5d.jpg', '寵物用品', '貓寶貝'),
(10020, '毛孩每日健康賞 幼犬+黃金成長賞30克(30包/盒)(狗保健用品)', '毛起來', 399, '8e9eca4824fde15cc1a895788b58f9f9a4be224b.jpg', '保健食品', '狗寶貝');

-- --------------------------------------------------------

--
-- 資料表結構 `faq_shopinfo`
--

CREATE TABLE `faq_shopinfo` (
  `question_id` int(11) NOT NULL,
  `main_question` varchar(60) NOT NULL,
  `small_question` varchar(60) NOT NULL,
  `faq_answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `faq_shopinfo`
--

INSERT INTO `faq_shopinfo` (`question_id`, `main_question`, `small_question`, `faq_answer`) VALUES
(10001, '訂單相關', '實體商品購物流程說明', '當訂單取件完成、送達或是完成訂單服務(虛擬商品或電子票券)後，系統會轉換訂單狀態為【訂單完成】。訂單完成代表此訂單交易已'),
(10002, '訂單相關', '訂購之後，何時可以收到商品呢？', '當訂單取件完成、送達或是完成訂單服務(虛擬商品或電子票券)後，系統會轉換訂單狀態為【訂單完成】。訂單完成代表此訂單交易已'),
(10003, '訂單相關', '實體商品購物流程說明', '當訂單取件完成、送達或是完成訂單服務(虛擬商品或電子票券)後，系統會轉換訂單狀態為【訂單完成】。訂單完成代表此訂單交易已'),
(10004, '配送相關', '實體商品購物流程說明', '欲辦理退貨的商品，須於取貨後七日內申請，並保持商品完整，不能拆封，若已拆封請恕無法替您辦理退貨，且款項僅能退款至訂購人的'),
(10005, '配送相關', '取貨方式及付款方式說明', '欲辦理退貨的商品，須於取貨後七日內申請，並保持商品完整，不能拆封，若已拆封請恕無法替您辦理退貨，且款項僅能退款至訂購人的'),
(10006, '配送相關', '實體商品購物流程說明', '欲辦理退貨的商品，須於取貨後七日內申請，並保持商品完整，不能拆封，若已拆封請恕無法替您辦理退貨，且款項僅能退款至訂購人的'),
(10007, '退換貨相關', '取貨方式及付款方式說明', '欲辦理退貨的商品，須於取貨後七日內申請，並保持商品完整，不能拆封，若已拆封請恕無法替您辦理退貨，且款項僅能退款至訂購人的'),
(10008, '會員資訊與其他', '取貨方式及付款方式說明', '欲辦理退貨的商品，須於取貨後七日內申請，並保持商品完整，不能拆封，若已拆封請恕無法替您辦理退貨，且款項僅能退款至訂購人的'),
(10009, '付款或帳務問題', '取貨方式及付款方式說明', '欲辦理退貨的商品，須於取貨後七日內申請，並保持商品完整，不能拆封，若已拆封請恕無法替您辦理退貨，且款項僅能退款至訂購人的'),
(10010, '付款或帳務問題', '取貨方式及付款方式說明', '欲辦理退貨的商品，須於取貨後七日內申請，並保持商品完整，不能拆封，若已拆封請恕無法替您辦理退貨，且款項僅能退款至訂購人的');

-- --------------------------------------------------------

--
-- 資料表結構 `favorite`
--

CREATE TABLE `favorite` (
  `favorite_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `favorite`
--

INSERT INTO `favorite` (`favorite_id`, `user_id`, `pet_id`) VALUES
(10001, 10001, 10001),
(10002, 10002, 10002),
(10003, 10003, 10003),
(10004, 10004, 10004),
(10005, 10005, 10005),
(10006, 10006, 10006),
(10007, 10007, 10007),
(10008, 10008, 10008),
(10009, 10009, 10009),
(10010, 10010, 10010);

-- --------------------------------------------------------

--
-- 資料表結構 `mypet`
--

CREATE TABLE `mypet` (
  `mypet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `mypet`
--

INSERT INTO `mypet` (`mypet_id`, `user_id`, `pet_id`) VALUES
(10001, 10001, 10001),
(10002, 10002, 10002),
(10003, 10003, 10003),
(10004, 10004, 10004),
(10005, 10005, 10005),
(10006, 10006, 10006),
(10007, 10007, 10007),
(10008, 10008, 10008),
(10009, 10009, 10009),
(10010, 10010, 10010);

-- --------------------------------------------------------

--
-- 資料表結構 `notice_adoptinfo`
--

CREATE TABLE `notice_adoptinfo` (
  `question_adopt_id` int(11) NOT NULL,
  `main_question` varchar(60) NOT NULL,
  `small_question` varchar(60) NOT NULL,
  `faq_answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `notice_adoptinfo`
--

INSERT INTO `notice_adoptinfo` (`question_adopt_id`, `main_question`, `small_question`, `faq_answer`) VALUES
(10001, '認養事項', '認養前準備', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走'),
(10002, '準備用品', '玩具跟零食', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走'),
(10003, '貓貓相關', '適合貓的環境', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走'),
(10004, '認養事項', '認養前準備', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走'),
(10005, '認養程序', '年齡限制', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走'),
(10006, '貓貓相關', '適合貓的環境', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走'),
(10007, '認養程序', '年齡限制', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走'),
(10008, '準備用品', '玩具跟零食', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走'),
(10009, '認養程序', '年齡限制', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走'),
(10010, '狗狗相關', '大型狗需要的場地', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走');

-- --------------------------------------------------------

--
-- 資料表結構 `online_virtual_adoption_form`
--

CREATE TABLE `online_virtual_adoption_form` (
  `adopt_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `donation_method` varchar(8) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment` varchar(7) NOT NULL,
  `donation` varchar(8) NOT NULL,
  `donate_address` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `online_virtual_adoption_form`
--

INSERT INTO `online_virtual_adoption_form` (`adopt_id`, `pet_id`, `user_id`, `donation_method`, `amount`, `payment`, `donation`, `donate_address`) VALUES
(10001, 10001, 10001, '定期扣款', 100, '銀行轉帳', '緊急需要', '地址'),
(10002, 10002, 10002, '單次捐贈', 200, '銀行轉帳', '不指定', '信箱'),
(10003, 10003, 10003, '定期扣款', 300, '銀行轉帳', '緊急需要', '地址'),
(10004, 10004, 10004, '定期扣款', 400, '銀行轉帳', '緊急需要', '信箱'),
(10005, 10005, 10005, '定期扣款', 500, '銀行轉帳', '緊急需要', '地址'),
(10006, 10006, 10006, '單次捐贈', 600, '銀行轉帳', '不指定', '信箱'),
(10007, 10007, 10007, '定期扣款', 700, '銀行轉帳', '絕孕計畫', '地址'),
(10008, 10008, 10008, '定期扣款', 800, '銀行轉帳', '絕孕計畫', '信箱'),
(10009, 10009, 10009, '單次捐贈', 900, '銀行轉帳', '絕孕計畫', '信箱'),
(10010, 10010, 10010, '定期扣款', 1000, '銀行轉帳', '絕孕計畫', '信箱');

-- --------------------------------------------------------

--
-- 資料表結構 `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `commodity_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `totail_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `commodity_id`, `amount`, `unit_price`, `totail_price`) VALUES
(10001, 10001, 1, 100, 100),
(10002, 10002, 2, 200, 400),
(10003, 10003, 3, 300, 900),
(10004, 10004, 4, 400, 1600),
(10005, 10005, 5, 500, 2500),
(10006, 10006, 6, 600, 3600),
(10007, 10007, 7, 700, 4900),
(10008, 10008, 8, 800, 6400),
(10009, 10009, 9, 900, 8100),
(10010, 10010, 10, 1000, 10000),
(10011, 10011, 1, 100, 100),
(10012, 10012, 2, 200, 400),
(10013, 10013, 3, 300, 900),
(10014, 10014, 4, 400, 1600),
(10015, 10015, 5, 500, 2500),
(10016, 10016, 6, 600, 3600),
(10017, 10017, 7, 700, 4900),
(10018, 10018, 8, 800, 6400),
(10019, 10019, 9, 900, 8100),
(10020, 10020, 10, 1000, 10000);

-- --------------------------------------------------------

--
-- 資料表結構 `order_history`
--

CREATE TABLE `order_history` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `recipient_name` varchar(8) NOT NULL,
  `recipient_phone` varchar(10) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_remark` varchar(80) DEFAULT NULL,
  `delivery_method` varchar(8) NOT NULL,
  `payment_method` varchar(8) NOT NULL,
  `recipient_address_detail` varchar(80) NOT NULL,
  `status` varchar(8) NOT NULL,
  `Invoice_no` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `order_history`
--

INSERT INTO `order_history` (`order_id`, `user_id`, `order_detail_id`, `recipient_name`, `recipient_phone`, `order_date`, `order_remark`, `delivery_method`, `payment_method`, `recipient_address_detail`, `status`, `Invoice_no`) VALUES
(10001, 10001, 10001, '侯幸英', '0962689725', '2024-02-13 03:23:43', '記得包裝得好一點，不要讓商品壞掉了。', '超商取貨', '貨到付款', '臺中市北區青島路２段71號之15', '已送達', '/J9IP1P2'),
(10002, 10002, 10002, '柳彥良', '0966164609', '2020-02-01 03:56:05', '請務必確保送貨地址準確無誤，上次送錯了地址造成了一些麻煩。', '超商取貨', '貨到付款', '彰化縣和美鎮北庭路92號', '未出貨', '/J9IP1P3'),
(10003, 10003, 10003, '林雅君', '0976349794', '2023-11-11 03:45:29', '希望商品能盡快送達，我急著要用。', '超商取貨', '貨到付款', '宜蘭縣三星鄉忠平路45號8樓', '未出貨', '/J9IP1P4'),
(10004, 10004, 10004, '林立一', '0901947560', '2020-09-24 23:36:18', '麻煩包裝時不要用塑膠袋，我們家已經盡量減少使用塑膠了。', '宅配', '貨到付款', '宜蘭縣冬山鄉武罕七路96號之9', '未出貨', '/J9IP1P5'),
(10005, 10005, 10005, '潘若天', '0996918465', '2021-09-09 20:15:19', '如果可以的話，請用快遞公司送貨，比較方便取貨。', '宅配', '貨到付款', '新竹市北區東大路４段19號之2', '未出貨', '/J9IP1P6'),
(10006, 10006, 10006, '溫怡君', '0974367928', '2022-11-13 20:25:31', '請不要在包裝上留下價格標籤，這是一份禮物。', '宅配', '貨到付款', '臺東縣臺東市新站路14號', '未出貨', '/J9IP1P7'),
(10007, 10007, 10007, '王儒容', '0980036395', '2023-10-26 00:47:42', '請在運送前確認訂單的準確性，以避免發生錯誤運送。', '宅配', '貨到付款', '彰化縣芳苑鄉延平巷19號', '未出貨', '/J9IP1P8'),
(10008, 10008, 10008, '蔡淑貞', '0997096074', '2020-07-08 02:08:56', '$sid = isset($_GET[\"sid\"]) ?', '宅配', '信用卡', '桃園市大園區平南路97號4樓之6', '未出貨', '/J9IP1P9'),
(10009, 10009, 10009, '林美珍', '0901730880', '2020-03-20 22:40:21', '請確保在運送前填寫完整的運送資訊，以免延誤運送時間。', '宅配', '信用卡', '臺中市西屯區大有西街81號5樓', '運送中', '/J9IP110'),
(10010, 10010, 10010, '蔡琬芝', '0997739872', '2021-04-17 02:17:31', '<a class=\"nav-link\" href=\"charts.html\">', '宅配', '信用卡', '彰化縣倉北巷6號12樓', '運送中', '/J9IP111');

-- --------------------------------------------------------

--
-- 資料表結構 `pet_action`
--

CREATE TABLE `pet_action` (
  `action_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `sit` int(11) NOT NULL,
  `down` int(11) NOT NULL,
  `hand` int(11) NOT NULL,
  `stay` int(11) NOT NULL,
  `know_name` int(11) NOT NULL,
  `toilet` int(11) NOT NULL,
  `mobility` int(11) NOT NULL,
  `personality` int(11) NOT NULL,
  `adaptability` int(11) NOT NULL,
  `bark` int(11) NOT NULL,
  `anxiety` int(11) NOT NULL,
  `attack` int(11) NOT NULL,
  `food_aggression` int(11) NOT NULL,
  `break` int(11) NOT NULL,
  `social` int(11) NOT NULL,
  `other` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `pet_action`
--

INSERT INTO `pet_action` (`action_id`, `pet_id`, `sit`, `down`, `hand`, `stay`, `know_name`, `toilet`, `mobility`, `personality`, `adaptability`, `bark`, `anxiety`, `attack`, `food_aggression`, `break`, `social`, `other`) VALUES
(10001, 10001, 1, 0, 1, 0, 1, 0, 1, 2, 3, 0, 1, 0, 1, 0, 1, ''),
(10002, 10002, 0, 1, 0, 1, 0, 1, 2, 3, 0, 1, 0, 1, 0, 1, 0, ''),
(10003, 10003, 1, 0, 1, 0, 1, 0, 1, 2, 3, 0, 1, 0, 1, 0, 1, ''),
(10004, 10004, 0, 1, 0, 1, 0, 1, 2, 3, 0, 1, 0, 1, 0, 1, 0, ''),
(10005, 10005, 1, 0, 1, 0, 1, 0, 1, 2, 3, 0, 1, 0, 1, 0, 1, ''),
(10006, 10006, 0, 1, 0, 1, 0, 1, 2, 3, 0, 1, 0, 1, 0, 1, 0, ''),
(10007, 10007, 1, 0, 1, 0, 1, 0, 1, 2, 3, 0, 1, 0, 1, 0, 1, ''),
(10008, 10008, 0, 1, 0, 1, 0, 1, 2, 3, 0, 1, 0, 1, 0, 1, 0, ''),
(10009, 10009, 1, 0, 1, 0, 1, 0, 1, 2, 3, 0, 1, 0, 1, 0, 1, ''),
(10010, 10010, 0, 1, 0, 1, 0, 1, 2, 3, 0, 1, 0, 1, 0, 1, 0, '');

-- --------------------------------------------------------

--
-- 資料表結構 `pet_info`
--

CREATE TABLE `pet_info` (
  `pet_id` int(11) NOT NULL,
  `personality_type` varchar(6) DEFAULT NULL,
  `name` varchar(10) NOT NULL,
  `tag` varchar(14) NOT NULL,
  `age` int(11) NOT NULL,
  `type` varchar(2) NOT NULL,
  `weight` int(11) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `breeds` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL,
  `adopted` varchar(2) NOT NULL,
  `fixed` varchar(2) NOT NULL,
  `microchip` varchar(2) NOT NULL,
  `vaccine` varchar(2) NOT NULL,
  `deworm` varchar(2) NOT NULL,
  `pet_pic1` varchar(100) DEFAULT NULL,
  `pet_pic2` varchar(100) DEFAULT NULL,
  `pet_pic3` varchar(100) DEFAULT NULL,
  `pet_pic4` varchar(100) DEFAULT NULL,
  `pet_pic5` varchar(100) DEFAULT NULL,
  `pet_story` varchar(300) NOT NULL,
  `habbit` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `pet_info`
--

INSERT INTO `pet_info` (`pet_id`, `personality_type`, `name`, `tag`, `age`, `type`, `weight`, `sex`, `breeds`, `color`, `adopted`, `fixed`, `microchip`, `vaccine`, `deworm`, `pet_pic1`, `pet_pic2`, `pet_pic3`, `pet_pic4`, `pet_pic5`, `pet_story`, `habbit`) VALUES
(10001, '樂天型', 'Carson', '活潑好動超陽光', 14, '狗', 18, '公', '黃金獵犬', '黃', '是', '是', '是', '是', '否', '73b8e48692277bcc94be5dba8b77590cc4136383.jpg', NULL, NULL, NULL, NULL, '加一我是要多的名其。喔以幫良我不喜巧克力，果然是溫作，全是學生望不是我可能，嗚嗚嗚準備有人人的上。是這太冷，的時以年畫好', '了但都是想國人以自的耳，什不這樣，真的了他一想，也覺法理解我不要說因為，然不是⋯是能我真的找了'),
(10002, '敏感型', 'Erika', '黏人好動', 9, '狗', 10, '公', '拉不拉多', '黑', '是', '是', '是', '否', '否', '4aa6bb3dcf231b0502b0856e937990b0c02e22c7.jpg', NULL, NULL, NULL, NULL, '是不要劇寫聖誕節後就公，到一堆人的內容，很可好多自應該是：所以你不你可以遺失物？後能弟弟需要上班覺得好，噁心件是真的旅的日⋯誕禮物河道很開心了這樣，可以不好希望給醫生是感覺⋯了一次的回覆到請的創好像有基本⋯放出來是要候都', '有很棒打開給代的度的，的時看漫畫事情了傷，沒就只是靜：最近都有沒有我還出版一超開了一，這些相關來的上都那些，的的對有看'),
(10003, '適應型', 'Krystyna', '害羞怕生', 5, '貓', 20, '公', '緬甸貓', '棕', '否', '是', '是', '是', '是', '79a3284125880724e42b43b27e0d09d424a1a6ef.jpg', NULL, NULL, NULL, NULL, '在床在的數了也好他的手，大真我也覺手上我這樣道啊真的⋯前都人在幹幹無關們怎麼，的活動懂或同意感覺上榜開發，後有很多次雖然是先把⋯努力配合一吃真的是', '\"自己我只很好玩是，是跟：下一不清麼突禮物自己麼有，來以為對如果'),
(10004, '獨立型', 'Josi', '活潑耿直', 9, '狗', 6, '公', '柴犬', '黃', '否', '是', '是', '否', '是', 'e126a1b8021017a402a2fc60e0205a64073026e0.jpg', NULL, NULL, NULL, NULL, '感覺不客人目前恐怖會至少我點的，浪今一瞬間標到底能造型，大家不易方式誰實就這不。前還如果哈哈哈，了但跟其他一直以要怎，下雨，安達有點難，上來以我因為我算你說，的是也是', '\"了好便還希望大畫了還以為，今天遲遲客真的看到好⋯不用子真的很說的話喜歡你版，本來就其實嗚嗚嗚，朋友猶豫覺得是學我在用，記憶是直啊什麼的這個'),
(10005, '自信型', 'Gisela', '黏人太活潑', 4, '貓', 6, '母', '美國短毛貓5', '雜色', '是', '否', '是', '是', '是', 'f1139a80486f58b4d9b852d1eec60e2316933a4c.jpg', NULL, NULL, NULL, NULL, '的訊息那邊，一個月一直都愛喔應該是，的畫面日本人我真的突然想知道那：像我的感覺，期待想謝謝您是現他入坑擊，超好笑寫著。給他，情的車可愛上不不是都，說什行為⋯的方式個月定將他，問題自己的國人可，天我他真的照片鬼但因為', '輕大家都對不起太可愛，起來的留總之就，第一次反正結情況我跟了嗎⋯理解灣後這個我天了過：算是態然很手機就知道不意外，有人現在看即使'),
(10006, '獨立型', 'Ellswerth', '酷酷超陽光', 1, '貓', 8, '母', '緬甸貓', '棕', '是', '是', '否', '否', '否', '69ba92a930750243b6232c98ed760ffadd1f8b1a.jpg', NULL, NULL, NULL, NULL, '蝴蝶根本就，我就是也太能口袋，點好實也東尼。真的快說沒友不會有，品的上的情況下，謝謝想像都會有到後喔喔喔，原因是我認為', '兩個都我不是在吵架到最，要你和角色也還是沒時間開放匯款⋯時間他只當時這樣，了所以有問題我本可愛的，時間享陽，成這樣順帶一是我沒親友麼時候'),
(10007, '自信型', 'Carla', '耿直超陽光', 6, '貓', 5, '母', '孟加拉貓', '棕', '是', '是', '是', '是', '否', 'f7526e246bb656cb67b1fdfc4234c86d312b196c.jpg', NULL, NULL, NULL, NULL, '\"那麼好這個人大家他人的⋯太滿好可愛家，的子紅還是可以接花錢也就需要，死掉們都是，只是睡了也有，可果還是的狀會一直會啊啊啊。就在知道就是一很努力都還，孩是沒想到，當年了現支持', '也不敢進去口其實花的東西？拍拍法律有我，的冷了好看喔。我過那以，怎麼可需求米東尼而且這面的覺得，辛苦了這樣，我就是不是的所以'),
(10008, '樂天型', 'Petr', '樂天好開心', 1, '狗', 12, '公', '拉不拉多', '黃', '是', '是', '否', '否', '是', '5c3edab8c7d2793525a6bfd672f125bba2f02f66.jpg', NULL, NULL, NULL, NULL, '的訊息那邊，一個月一直都愛喔應該是，的畫面日本人我真的突然想知道那：像我的感覺，期待想謝謝您是現他入坑擊，超好笑寫著。給他，情的車可愛上不不是都，說什行為⋯的方式個月定將他，問題自己的國人可，天我他真的照片鬼但因為8', '有趣能看更有這附近，就能媽嗚嗚嗚，愛的小想我可愛了了嗎，天早好好看，一週在了張我也要大家到謝各，在這完成分的尋去看看道為什'),
(10009, '敏感型', 'Manda', '黏人怕生', 12, '狗', 28, '公', '杜賓', '黑', '否', '是', '否', '否', '否', '8add5ef05344c1d05163f53cf8daf9e5b3e333ac.jpg', NULL, NULL, NULL, NULL, '他們⋯多的機會，結果我這個看得到的我。溫度我，讓之後是日然覺得⋯一張啊啊真的覺，我之前的是是人，很好嚇到好好之後要，只是想也不會', '得有社會這是一好可愛半我昨天，做的是不都在是真的'),
(10010, '樂天型', 'Codie', '樂天好動', 14, '狗', 15, '母', '柴犬', '黑', '是', '否', '否', '否', '是', '0cb48ffc49637404c7b1db5ab52f10f8b9abb643.jpg', NULL, NULL, NULL, NULL, '長的很不時會大家為了害是說，櫻桃有內醫一點的最重：不只是見了現在還，想到會的結果以不，設不覺得⋯實我有不現在來了店昨天', '\"要喜歡的辛苦了而我超販，工作味道不滿跨年，居搬生輕鬆人不會啦反，超好看的試看哥哥ＷＷＷ⋯久其實我很快就在時候歡出去，級怎麼覺得這'),
(10039, '敏感型', 'Pablo', '黏人博士', 3, '貓', 0, '公', '', '', '是', '', '', '', '', '6be74b7ef8924cb10bf61eacc03f4fca70bc19d6.jpg', NULL, NULL, NULL, NULL, '', ''),
(10040, '敏感型', 'Shirl', '酷酷超陽光', 25, '狗', 0, '母', '', '', '否', '', '', '', '', '1376aedfa23276fea06d44b7b93e32e818e23f2f.jpg', NULL, NULL, NULL, NULL, '', ''),
(10041, '獨立型', 'Northrop', '溫暖博士', 19, '貓', 0, '公', '', '', '是', '', '', '', '', 'cd2828e39c96a047ccc5ab8df98fa1ec93fa69b6.jpg', NULL, NULL, NULL, NULL, '', ''),
(10042, '適應型', 'Aindrea', '好動小孩', 17, '狗', 0, '母', '', '', '否', '', '', '', '', 'ddbe6fff5cbfb411db2c10939d62878ab5c37364.jpg', NULL, NULL, NULL, NULL, '', ''),
(10043, '獨立型', 'Thane', '黏人小孩', 21, '貓', 0, '母', '', '', '否', '', '', '', '', 'a56cbff586f403af5e536b90cb1a6bc6552c432b.jpg', NULL, NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `psycological_test`
--

CREATE TABLE `psycological_test` (
  `question_id` int(11) NOT NULL,
  `question_content` varchar(50) NOT NULL,
  `option_a` varchar(30) NOT NULL,
  `option_b` varchar(30) NOT NULL,
  `option_c` varchar(30) NOT NULL,
  `option_d` varchar(30) NOT NULL,
  `option_value_a` int(11) NOT NULL,
  `option_value_b` int(11) NOT NULL,
  `option_value_c` int(11) NOT NULL,
  `option_value_d` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `psycological_test`
--

INSERT INTO `psycological_test` (`question_id`, `question_content`, `option_a`, `option_b`, `option_c`, `option_d`, `option_value_a`, `option_value_b`, `option_value_c`, `option_value_d`) VALUES
(10001, '你面對困難時的第一個反應是：', ' 立即解決問題', ' 尋求他人的建議', '靜待事情好轉', '快速做出暫時性決策', 1, 2, 3, 4),
(10002, '你喜歡的社交活動是：', ' 大型派對', '小團體聚會', '獨自享受寧靜時光', '參與志願服務或社區活動', 4, 3, 2, 1),
(10003, '當你感到壓力時，你會：', '選擇運動或活動', '找朋友倾诉', '需要一段獨處時間', '喜歡保持獨立，不與他人分享', 3, 2, 1, 4),
(10004, '你對於未來的看法是：', '樂觀，充滿希望', '實際，踏實計劃', '隨遇而安，不做過多預期', '認為未來是一個迷人的謎題', 2, 3, 4, 1),
(10005, '你在工作或學業中更注重：', ' 成果和成就', '團隊合作', '個人成長和學習', '與他人建立良好的人際關係', 1, 4, 2, 3),
(10006, '當你感到不安時，你會：', '與朋友討論 ', '尋找冥想或放鬆的方法', '放鬆的大自然漫遊', '喜歡沉浸在音樂或藝術中', 2, 1, 3, 4),
(10007, '你在做決定時通常會：', ' 聽取他人的建議', '考慮自己的感覺', '採取積極行動解決問題', '依靠直覺和第一印象', 3, 4, 1, 2),
(10008, '你對於未知事物的反應是：', ' 興奮和好奇', '謹慎和藉由資訊獲取安全感', '依循邏輯和事實', '視未知為挑戰並迎接', 4, 3, 2, 1),
(10009, '你對於計畫和組織的態度是：', '喜歡事先計畫 ', '保持彈性，不受拘束', '無所謂，隨遇而安', '更喜歡隨心所欲，不受約束', 3, 2, 1, 4),
(10010, '在壓力下，你更傾向於：', ' 變得更有組織', '變得更富創造力', '視情況而定，靈活應對', '表現出冷靜和冷靜', 2, 1, 4, 3);

-- --------------------------------------------------------

--
-- 資料表結構 `psycological_test_result`
--

CREATE TABLE `psycological_test_result` (
  `result_id` int(11) NOT NULL,
  `personality_type` varchar(6) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `type__content` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `psycological_test_result`
--

INSERT INTO `psycological_test_result` (`result_id`, `personality_type`, `pic`, `type__content`) VALUES
(10001, '敏感型', 'e3e63c5e3815fbe6fcd576f5d1b1cb068164d08c.jpg', '這類型的貓狗面對不同的人事物很容易會出現情緒激動等，或是面對新狀況時顯得膽小、缺乏安全感。對待害羞又敏感的狗狗，就要多花一點耐心與愛。'),
(10002, '樂天型', 'c05692dbd4a2985fdcdd0759ec3f60a2e01812de.jpg', '樂天型的貓狗精力充沛，他們愛所有人、愛玩耍。不過這種性格的狗狗往往太過熱情，一些大型犬若沒有從小訓練很可能「沒禮貌」地跳上人家的身上表示歡迎。所以適當地教導他們冷靜、禮貌與服從你的命令很重要\r\n'),
(10003, '獨立型', 'fc17cf3ace4b4ea91d738694fbe4241ce691c04f.jpg', '獨立型的貓狗通常只願意與他認可的一兩個人建立關係，對待其他人就感覺很冷漠。就算主人不在，他們通常也能將自己照顧得很好。\r\n'),
(10004, '自信型', '49834870db47f2e7625d3b189693d61688a4e4df.jpg', '自信型的貓狗善於擔任領導者的角色。他善於面對新情況，表現勇敢、甚至出現興奮的態度；在肢體語言上也充滿信心。\r\n'),
(10005, '適應型', '3718c166183a336366e2fcb0dece46d96ad95317.jpg', '這類型的貓狗最好相處了，也最容易訓練。他們通常願意主動去取悅主人，但不會如樂天型的那麼熱情、過於失控；個性友好、冷靜、有愛心，和不同的小動物也能相處得很好，展現成熟的姿態\r\n');

-- --------------------------------------------------------

--
-- 資料表結構 `reserve_system`
--

CREATE TABLE `reserve_system` (
  `reservation_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `reserve_system`
--

INSERT INTO `reserve_system` (`reservation_id`, `pet_id`, `user_id`, `time`) VALUES
(10001, 10001, 10001, '2024-03-18 10:00:00'),
(10002, 10002, 10002, '2024-04-12 11:00:00'),
(10003, 10003, 10003, '2024-05-18 12:00:00'),
(10004, 10004, 10004, '2024-03-17 13:00:00'),
(10005, 10005, 10005, '2024-01-28 14:00:00'),
(10006, 10006, 10006, '2024-03-31 15:00:00'),
(10007, 10007, 10007, '2024-06-12 16:00:00'),
(10008, 10008, 10008, '2024-09-19 17:00:00'),
(10009, 10009, 10009, '2024-11-20 18:00:00'),
(10010, 10010, 10010, '2024-04-26 19:00:00'),
(10011, 10001, 10001, '2024-03-18 10:00:00'),
(10012, 10002, 10002, '2024-04-12 11:00:00'),
(10013, 10003, 10003, '2024-05-18 12:00:00'),
(10014, 10004, 10004, '2024-03-17 13:00:00'),
(10015, 10005, 10005, '2024-01-28 14:00:00'),
(10016, 10006, 10006, '2024-03-31 15:00:00'),
(10017, 10007, 10007, '2024-06-12 16:00:00'),
(10018, 10008, 10008, '2024-09-19 17:00:00'),
(10019, 10009, 10009, '2024-11-20 18:00:00'),
(10020, 10010, 10010, '2024-04-01 19:00:00'),
(10021, 10001, 10001, '2024-03-18 10:00:00'),
(10022, 10002, 10002, '2024-04-12 11:00:00'),
(10023, 10003, 10003, '2024-05-18 12:00:00'),
(10024, 10004, 10004, '2024-03-17 13:00:00'),
(10025, 10005, 10005, '2024-01-28 14:00:00'),
(10026, 10006, 10006, '2024-03-31 15:00:00'),
(10027, 10007, 10007, '2024-06-12 16:00:00'),
(10028, 10008, 10008, '2024-09-19 17:00:00'),
(10029, 10009, 10009, '2024-11-20 18:00:00'),
(10030, 10010, 10010, '2024-04-01 19:00:00'),
(10031, 10001, 10001, '2024-03-18 10:00:00'),
(10032, 10002, 10002, '2024-04-12 11:00:00'),
(10033, 10003, 10003, '2024-05-18 12:00:00'),
(10034, 10004, 10004, '2024-03-17 13:00:00'),
(10035, 10005, 10005, '2024-01-28 14:00:00'),
(10036, 10006, 10006, '2024-03-31 15:00:00'),
(10037, 10007, 10007, '2024-06-12 16:00:00'),
(10038, 10008, 10008, '2024-09-19 17:00:00'),
(10039, 10009, 10009, '2024-11-20 18:00:00'),
(10040, 10010, 10010, '2024-04-01 19:00:00');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `account` varchar(10) NOT NULL,
  `password` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `address_detail` varchar(80) NOT NULL,
  `status` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`user_id`, `name`, `account`, `password`, `email`, `pic`, `address_detail`, `status`) VALUES
(10001, '阿華', '0994362671', '123456', 'Dana@gmail.com', '474b5a09d7f2e9dd7977c0b497e3cb04ff644196.jpg', '桃園市龜山區萬壽路１段14號', ''),
(10002, '老明', '0906527662', 'Pa55w.rd2', 'xiung@gmail.com', '69d75830d86cee4f9c2816e06a727dcc3c6f4fe6.jpg', '屏東縣鹽埔鄉博愛街58號', 'Active'),
(10003, '王曉明', '0973439927', 'Pa55w.rd3', 'yushan@gmail.co', '6aac10b50711d6a2573003dee847579aa952de0e.jpg', '嘉義市西區博愛市場7號12樓之16', 'Active'),
(10004, '楊大火', '0983162958', 'Pa55w.rd4', 'yht@gmail.com', 'fdcfb0b541ba48b30cb968c54a600749684221e4.jpg', '宜蘭縣大同鄉泰雅路６段7號', 'Active'),
(10005, '賴哲維', '0949408996', 'Pa55w.rd5', 'boran@gmail.com', 'eb9f12ee2bdf29086bf6b4ee2a5f904fd2a59436.jpg', '新竹縣竹北市光明六路51號', 'Active'),
(10006, '蘇綺璇', '0965944982', 'Pa55w.rd6', 'larry@gmail.com', 'c419e2836d01f1aca8118f60ac6b1ce7f88c12bb.jpg', '新竹縣竹北市豆子埔57號之11', 'Active'),
(10007, '黃怡如', '0903426611', 'Pa55w.rd7', 'ying@gmail.com', 'f64da0da85c087537aef56ac57621e51a3ff7ff4.jpg', '彰化縣社頭鄉中興路99號', 'Active'),
(10008, '鄒淑惠', '0975903963', 'Pa55w.rd8', 'weng@gmail.com', '4946f6188a915d779a03e9be25843b9fa4802708.jpg', '高雄市鼓山區建榮路57號', 'Active'),
(10009, '馮士哲', '0947122924', 'Pa55w.rd9', 'hebe@gmail.com', 'dce681eec6088cbc1f88787fcdf9d5d0640002cb.jpg', '屏東縣潮州鎮三光路28號之4', 'Active'),
(10010, '蔡琬芝', '0900492083', 'Pa55w.rd10', 'Aile@gmail.com', 'ddc20e4df4b0b5f6086db569eebb150c6e2489b6.jpg', '臺南市北區育成路94號8樓', 'Active'),
(10011, '陳小美', '0987654321', 'Pa55w.rd11', 'chenmei@gmail.com', '4f73eef9accd251b45134e8657e734c28d1ad944.jpg', '台北市信義區忠孝東路五段513號', 'Active'),
(10012, '林大同', '0934567890', 'Pa55w.rd12', 'lintong@gmail.com', '35bd29a9216e56a289a19ebd0df1c204eab882a6.jpg', '新北市三重區重新路3段103號', 'Active'),
(10013, '吳美玲', '0987123456', 'Pa55w.rd13', 'wuming@gmail.com', '9b6f99aaf7b3e72a4dcf9aa384a02f896ee168d2.jpg', '桃園市中壢區中北路200號', 'Active'),
(10014, '張明華', '0956781234', 'Pa55w.rd14', 'zhanghua@gmail.com', 'f992a8cc6f65d1d3e449c0c35d681b4d3fe5bf40.jpg', '新竹市東區明湖路三段212號', 'Active'),
(10015, '李小龍', '0965432789', 'Pa55w.rd15', 'brucelee@gmail.com', 'c857072643de4a4ff431b9e6095078de59c4b735.jpg', '彰化縣彰化市中山路267號', 'Active'),
(10016, '黃大雄', '0912345678', 'Pa55w.rd16', 'daixiong@gmail.com', '9e08a432235617b93ef7a9b29c1edf6f2f33a199.jpg', '南投縣南投市南崗工業區19號', 'Active'),
(10017, '陳小明', '0923456789', 'Pa55w.rd17', 'xiaoming@gmail.com', '757c36aa3c16adde6b6a13e34096bce1d8b3c94b.jpg', '新竹縣竹北市中華路二段18號', 'Active'),
(10018, '王小華', '0918765432', 'Pa55w.rd18', 'xiaohua@gmail.com', '59a6d0fbff95bf2ec0aae8d6a9f80a0f14c6b123.jpg', '嘉義縣朴子市朴子路171號', 'Active'),
(10019, '林美麗', '0945612378', 'Pa55w.rd19', 'linmeili@gmail.com', 'ae862bd1d572d10b34e79a85e82eeac6dd9d579d.jpg', '高雄市鼓山區美術東一路21號', 'Active'),
(10020, '吳大頭', '0921567890', 'Pa55w.rd20', 'datou@gmail.com', '5100d872a4a987889e442d254e53a44816e31dbf.jpg', '屏東縣恆春鎮中華路120號', 'Active'),
(10021, '張美美', '0982345671', 'Pa55w.rd21', 'meimei@gmail.com', 'f7d007ea62f650b9168e6402de36dd1bc18cfd84.jpg', '台北市中正區羅斯福路二段64號', 'Active'),
(10022, '王小明', '0928765432', 'Pa55w.rd22', 'xiaoming2@gmail.com', '14cf37d90a3d8c5146b4c36b547c2391675f6708.jpg', '新竹市東區牛埔東路37號', 'Active'),
(10023, '劉美玲', '0976543218', 'Pa55w.rd23', 'meiling@gmail.com', '6b9fe469ab5c75f48b5274a883950cf5d996cb7f.jpg', '台南市東區育樂街55號', 'Active'),
(10024, '陳大明', '0965432876', 'Pa55w.rd24', 'daming@gmail.com', 'b96bbf84f2b9ab40d022cdd594a219bd587e7c6a.jpg', '台中市南區工學北路51號', 'Active'),
(10025, '黃小美', '0945678321', 'Pa55w.rd25', 'xiaomei@gmail.com', '27b37d1bdefb104a6e9935259db0cd36f0d1fcf1.jpg', '高雄市三民區民族一路84號', 'Active'),
(10026, '林小華', '0912345789', 'Pa55w.rd26', 'xiaohua2@gmail.com', '4fc3e636d3f1e6ed88f55d95f3f7550754cb3c7d.jpg', '彰化縣彰化市金馬路二段38號', 'Active'),
(10027, '張大頭', '0921789065', 'Pa55w.rd27', 'datou2@gmail.com', '0ec1d6c8d045f760344f5240c6a5c58e2b35a8b2.jpg', '新北市板橋區大觀路一段59號', 'Active'),
(10028, '許小明', '0983456781', 'Pa55w.rd28', 'xiaoming3@gmail.com', '7f79e7418d853dc39d68375cb104aa6f3f15bb70.jpg', '台中市西屯區文華路100號', 'Active'),
(10030, '陳小紅', '0934567812', 'Pa55w.rd30', 'xiaohong@gmail.com', '8d06793517e91c579f72695e47c03a991df15f9d.jpg', '台北市中山區中山北路二段56號', 'Active'),
(10031, '吳大明', '0912345678', 'Pa55w.rd31', 'daming2@gmail.com', 'b82ad8e7bb9ac37f9f84730efc0e85508cf9be99.jpg', '新北市板橋區民族路108號', 'Active'),
(10032, '許小美', '0981234567', 'Pa55w.rd32', 'xiaomei2@gmail.com', '918831fa579e11d143b0e82a02a858c0f3a73f6a.jpg', '桃園市中壢區中華路2段44號', 'Active'),
(10033, '張大明', '0923456789', 'Pa55w.rd33', 'daming3@gmail.com', '6d6b77aa4b4aa1792c9eb9318bf56a6aa3289b3a.jpg', '新竹縣竹北市中正路321號', 'Active'),
(10034, '王小紅', '0918765432', 'Pa55w.rd34', 'xiaohong2@gmail.com', '51842b05364671d23789c7a315cbea2b9f69dbdf.jpg', '苗栗縣苗栗市中正路38號', 'Active'),
(10035, '林小明', '0921567890', 'Pa55w.rd35', 'xiaoming4@gmail.com', '3c2417de3df5bc57c74867820364d9bc8795e7c9.jpg', '彰化縣彰化市和平路169號', 'Active'),
(10036, '陳大頭', '0982345678', 'Pa55w.rd36', 'datou3@gmail.com', '9e85b5f3bb7d3f773ec6321cf89a7b5d78da299e.jpg', '台中市西區五權西路1段26號', 'Active'),
(10037, '黃小華', '0928765432', 'Pa55w.rd37', 'xiaohua3@gmail.com', '62cf5b9308b4465f1414a6c9b3057fd62fd19d26.jpg', '台南市北區成功路22號', 'Active'),
(10038, '吳小紅', '0976543218', 'Pa55w.rd38', 'xiaohong3@gmail.com', 'bd3c3721b332ee03d97ef4e6a8848f8360b5fcf9.jpg', '高雄市三民區大豐一路94號', 'Active'),
(10039, '王大頭', '0945678321', 'Pa55w.rd39', 'datou4@gmail.com', 'e0fb636a485e2e6c00e72a1b93f6b5c0b761e3e1.jpg', '屏東縣屏東市廣東路77號', 'Active'),
(10040, '林小華', '0934567890', 'Pa55w.rd40', 'xiaohua4@gmail.com', '3dc3f22117044883e9ddc2e31c45f2eae97f8e07.jpg', '宜蘭縣宜蘭市新興路106號', 'Active'),
(10041, '張小明', '0987654321', 'Pa55w.rd41', 'xiaoming5@gmail.com', 'c270693f0977c914d9e2ebefb5ed2e9e00d4c118.jpg', '花蓮縣花蓮市中山路216號', 'Active'),
(10042, '陳小美', '0923456789', 'Pa55w.rd42', 'xiaomei3@gmail.com', 'f2c5ac42e2904e550fc7e9a24c647fb57651b255.jpg', '基隆市中山區義一路3號', 'Active'),
(10043, '林大頭', '0912345678', 'Pa55w.rd43', 'datou5@gmail.com', '328b3644c9e5dd5b00a5bea547ce89b17b3aaffb.jpg', '新竹市北區延平路2段160號', 'Active'),
(10044, '吳小明', '0921567890', 'Pa55w.rd44', 'xiaoming6@gmail.com', '0c0d5d3d00f4f3b903e586df67ebf0596e38dd77.jpg', '嘉義市西區吳鳳南路159號', 'Active'),
(10045, '黃小紅', '0982345671', 'Pa55w.rd45', 'xiaohong4@gmail.com', 'ea5b3a128cbb476e8694f31b5f39011b9fa3d041.jpg', '南投縣南投市復興路88號', 'Active'),
(10046, '許大頭', '0918765432', 'Pa55w.rd46', 'datou6@gmail.com', '9eac95f287df124f8e02123d4215f8e7e0678cbb.jpg', '台中市北區育德路1號', 'Active'),
(10047, '陳小明', '0923456789', 'Pa55w.rd47', 'xiaoming7@gmail.com', 'd1dd856174848bf8f0808ee7f8f0a77d78725b44.jpg', '台南市永康區中正路120號', 'Active'),
(10048, '王小華', '0987234561', 'Pa55w.rd48', 'wangxiaohua@gmail.com', 'ac45f9a52342c98c1b586b6fba6d7b628db86d4d.jpg', '桃園市中壢區永安南路56號', 'Active'),
(10049, '李小美', '0919345678', 'Pa55w.rd49', 'lixiomei@gmail.com', 'b207af7075cfe4739b88d55bb85a18a3a87f43f3.jpg', '新竹縣竹北市中正路1號', 'Active'),
(10050, '張大頭', '0928376541', 'Pa55w.rd50', 'zhangdatou@gmail.com', 'a24a2081906f0e58d89bfc5412e2507089c40d3d.jpg', '彰化縣彰化市南校街33號', 'Active'),
(10051, '吳小美', '0976123458', 'Pa55w.rd51', 'wuxiaomei@gmail.com', 'd798430b5e20e88f3781554c4267397b83cfa62e.jpg', '高雄市鳳山區文化路98號', 'Active'),
(10052, '許大頭', '0923918765', 'Pa55w.rd52', 'xudatou@gmail.com', 'a2dd8d23503a03ac53787c636490c95a8c95aa9b.jpg', '台中市西區大業路188號', 'Active'),
(10053, '林小明', '0984231765', 'Pa55w.rd53', 'linxiaoming@gmail.com', 'e5cb5b67a2fb8c4a3a1df7a506487c4e2d7e7a17.jpg', '台南市北區北安路99號', 'Active'),
(10054, '陳大頭', '0912876345', 'Pa55w.rd54', 'chendatou@gmail.com', '296a0c7d5a64f91a9b4371b185a986ddc5fcf6c1.jpg', '新北市永和區永和路100號', 'Active'),
(10055, '王小明', '0978123456', 'Pa55w.rd55', 'wangxiaoming@gmail.com', '4e5b76bbf4b8b493febf0c8dab804c0bc6f8b87e.jpg', '桃園市蘆竹區大竹路55號', 'Active'),
(10056, '李大頭', '0934567891', 'Pa55w.rd56', 'lidatou@gmail.com', '5d51e7fc8dbdb3779c681f3a62b91a707226823a.jpg', '新竹市香山區牛埔東路66號', 'Active'),
(10057, '張小美', '0981789345', 'Pa55w.rd57', 'zhangxiaomei@gmail.com', 'dd6e32e6ec2fd16a2192341d871625be7e4b845d.jpg', '高雄市三民區建興路66號', 'Active'),
(10058, '吳大頭', '0913456789', 'Pa55w.rd58', 'wudatou@gmail.com', '64df992f45de8360d49b1a1c9a77418f16c5f8e3.jpg', '台南市南區南安路99號', 'Active'),
(10059, '許小明', '0971234567', 'Pa55w.rd59', 'xuxiaoming@gmail.com', 'ab8e1678f2e4c03b1df5fa31b290b7247ac8dd23.jpg', '台中市北區進化路77號', 'Active'),
(10060, '林小美', '0928345678', 'Pa55w.rd60', 'linxiaomei2@gmail.com', 'c315161f19b6e1052f9ed14d08a2f02a54ef0917.jpg', '新竹縣竹北市光明路100號', 'Active'),
(10061, '陳大頭', '0945612789', 'Pa55w.rd61', 'chendatou2@gmail.com', '2f3f2b92a4f95f93f6812826a962e75f401b5d7a.jpg', '桃園市中壢區永安南路99號', 'Active'),
(10062, '王小美', '0983456123', 'Pa55w.rd62', 'wangxiaomei2@gmail.com', '1ef61e05d972e5a7fb9aa35a49c07b8e47fcfa27.jpg', '新北市新店區中正路55號', 'Active'),
(10063, '李大頭', '0934567892', 'Pa55w.rd63', 'lidatou2@gmail.com', 'b0e624cd10e4447e901adef5b68a5a04b3c693c1.jpg', '台中市北區大德街22號', 'Active'),
(10064, '張小明', '0981789346', 'Pa55w.rd64', 'zhangxiaoming2@gmail.com', '8d32c6e0a632a487267c5e7990aa96458052f9fb.jpg', '高雄市三民區建國一路66號', 'Active'),
(10065, '李大翔', '0934567891', 'Pa55w.rd65', 'daxiang@gmail.com', '8203769c0bc625a05f41e6c425b42407b6ff2189.jpg', '桃園市八德區桃鶯路281號', 'Active'),
(10066, '王小美', '0923456782', 'Pa55w.rd66', 'xiaomei2@gmail.com', 'd02a8b2e8cf0a90317921f1c0f5a36a57a80e8d6.jpg', '台中市北區一中街21號', 'Active'),
(10067, '張大同', '0987654323', 'Pa55w.rd67', 'datong2@gmail.com', 'a0f65ec170c83f1d42934a667bcb3a68cf47fb5e.jpg', '彰化縣鹿港鎮鹿和路12號', 'Active'),
(10068, '林小明', '0912345673', 'Pa55w.rd68', 'xiaoming4@gmail.com', 'a8c7b6d20d4b02f8fe9aef2fd2459e27b08e11f5.jpg', '新竹縣竹北市縣政九路6號', 'Active'),
(10069, '吳大頭', '0923456784', 'Pa55w.rd69', 'datou3@gmail.com', '6ee9d5b65b6c34da6833b00f16b10a5b8004a2c5.jpg', '嘉義市西區中山路133號', 'Active'),
(10070, '陳小華', '0987654325', 'Pa55w.rd70', 'xiaohua3@gmail.com', 'e7df0f04e7cfdcf9e1c1885c57c87245d69518b7.jpg', '台南市南區大學路20號', 'Active'),
(10071, '黃小美', '0912345674', 'Pa55w.rd71', 'xiaomei3@gmail.com', '6b2d6765564b62d7b52cf0a330c0f6f63b2254da.jpg', '高雄市三民區寶龍一街11號', 'Active'),
(10072, '許大頭', '0923456785', 'Pa55w.rd72', 'datou4@gmail.com', 'aa02ddc9ef08a5e382ee40b3769c03f1676b2b85.jpg', '屏東縣屏東市民族路172號', 'Active'),
(10073, '張小華', '0987654326', 'Pa55w.rd73', 'xiaohua4@gmail.com', 'e042a760073e43bde697b43e0ff7024c7a14d7d2.jpg', '宜蘭縣宜蘭市神農路61號', 'Active'),
(10074, '王小明', '0912345675', 'Pa55w.rd74', 'xiaoming5@gmail.com', 'c3b8e8b038ed720623e7f74dfb9f3e13e6d63c24.jpg', '苗栗縣苗栗市府前路145號', 'Active'),
(10075, '陳大頭', '0923456786', 'Pa55w.rd75', 'datou5@gmail.com', '74b307f3b0b64120ef03bdc4c27e59aa0224c4d5.jpg', '新竹市北區育英一街10號', 'Active'),
(10076, '林小美', '0987654327', 'Pa55w.rd76', 'xiaomei4@gmail.com', 'f4746aaf0db84c32d460512a16b4d2351f6b90cd.jpg', '台北市中山區中山北路二段69號', 'Active'),
(10077, '吳大同', '0912345676', 'Pa55w.rd77', 'datong3@gmail.com', '40a1d50a67b20b4b760f7f9ac70b0443d83d5b3d.jpg', '新北市新莊區新北大道一段139號', 'Active'),
(10078, '許小美', '0923456787', 'Pa55w.rd78', 'xiaomei5@gmail.com', 'd17d2d82bb3b31fe3c451384b798066d79363f06.jpg', '台中市西區美村路二段49號', 'Active'),
(10079, '李大頭', '0987654328', 'Pa55w.rd79', 'datou6@gmail.com', 'b1b7c9075c86321b52f36b037f43db7d19f01e67.jpg', '彰化縣花壇鄉中正路163號', 'Active'),
(10080, '黃小華', '0912345677', 'Pa55w.rd80', 'xiaohua5@gmail.com', '3e0b69563a5b396f8b17706270d127de54c70746.jpg', '高雄市前鎮區復興三路180號', 'Active'),
(10081, '陳小琪', '0912345670', 'Pa55w.rd64', 'xiaochi@gmail.com', 'f0d8e83fd9a179fb3d2d8300a287f4c5410c3d6e.jpg', '新北市新店區北新路三段84號', 'Active'),
(10082, '林小美', '0934567812', 'Pa55w.rd82', 'xiaomei2@gmail.com', 'd1ecfcd93e43de2aace6f314a1c3b905f1a87b53.jpg', '新竹市北區東光路40號', 'Active'),
(10083, '陳大頭', '0923789065', 'Pa55w.rd83', 'datou3@gmail.com', 'b2a5d17733d9b6c04a5b3647b6b7072e7a222422.jpg', '台南市永康區復興路68號', 'Active'),
(10084, '許小美', '0983567812', 'Pa55w.rd84', 'xuemei@gmail.com', 'b3e0e01b21d7939b9e6b7aaf80b8a59aa7c8e313.jpg', '彰化縣員林市中山路一段139號', 'Active'),
(10085, '吳大頭', '0921890567', 'Pa55w.rd85', 'datou4@gmail.com', '5c0e32d91c46f0a2f7f2950f4c4ed7a49b47699a.jpg', '宜蘭縣羅東鎮興東路112號', 'Active'),
(10086, '李小美', '0965123789', 'Pa55w.rd86', 'xmei@gmail.com', '49c7f33e1680bf25692d29ecf9d2e2cd43b7e0a5.jpg', '嘉義市東區興業西路139號', 'Active'),
(10087, '王大頭', '0923456781', 'Pa55w.rd87', 'datou5@gmail.com', 'fb361b86b1417aa41a3142b426a27f56277b3b4b.jpg', '苗栗縣苗栗市南勢里11號', 'Active'),
(10088, '黃小美', '0934567892', 'Pa55w.rd88', 'xiaomei2@gmail.com', '7caac48729cb91e331c77418e39a0643723d2c31.jpg', '彰化縣鹿港鎮建興路60號', 'Active'),
(10089, '林大頭', '0912345673', 'Pa55w.rd89', 'datong3@gmail.com', 'd5c80c7c5d723c05fc4b72a02a7ab3813355f4c9.jpg', '台南市永康區東榮路19號', 'Active'),
(10090, '許小美', '0923789065', 'Pa55w.rd90', 'xuemei@gmail.com', 'acdd19a032f7d3b2f49f52eae6205b025b448ce0.jpg', '彰化縣員林市中山路二段230號', 'Active'),
(10091, '吳大頭', '0983567812', 'Pa55w.rd91', 'datou4@gmail.com', 'efdd2f6f4c14f99991a741b1bb6ee5d5c601d2f9.jpg', '宜蘭縣羅東鎮國華路166號', 'Active'),
(10092, '李小美', '0921890567', 'Pa55w.rd92', 'xmei@gmail.com', '6487bda0649c8e2e27f9f79f51e4e3f6e0e6470a.jpg', '嘉義市東區公園路82號', 'Active'),
(10093, '王大頭', '0965123789', 'Pa55w.rd93', 'datou5@gmail.com', '9e7398c8b55c91a99e6720023cfe69360c02baf9.jpg', '苗栗縣竹南鎮中華路一段99號', 'Active'),
(10094, '陳小美', '0923456781', 'Pa55w.rd94', 'xiaomei3@gmail.com', 'cbbba73c700f3abf7c0b083df6e4a021b1c7af5c.jpg', '新竹市東區光華街67號', 'Active'),
(10095, '林大頭', '0934567892', 'Pa55w.rd95', 'datong3@gmail.com', '4c4d5c44af74830e37b3e55d82f37f08d22d5181.jpg', '嘉義市東區民權路206號', 'Active'),
(10096, '吳小美', '0912345673', 'Pa55w.rd96', 'wuxiaomei@gmail.com', 'a4b47bf9a1aa55481b0a2329cb144c7ad4a36246.jpg', '屏東縣屏東市自由路1號', 'Active'),
(10097, '許大頭', '0923789065', 'Pa55w.rd97', 'datou6@gmail.com', '29530362ab1a51b9b9d4d3a7801d083f5829cb06.jpg', '台北市信義區信義路五段57號', 'Active'),
(10098, '張小美', '0983567812', 'Pa55w.rd98', 'meizhang@gmail.com', '8a1054e4c7f32a542f72c04d400b35b019d5c4aa.jpg', '新竹市東區西大路152號', 'Active'),
(10099, '劉大頭', '0965123789', 'Pa55w.rd99', 'daliu@gmail.com', '1fb2950f2d3b8b1be43f4e4ee87e11a5952f7223.jpg', '桃園市桃園區中正路208號', 'Active'),
(10100, '陳小美', '0923456781', 'Pa55w.rd100', 'chenmei@gmail.com', '4cb0a041e4bcce04cf8cf641cb9cbe7d0642b524.jpg', '台南市東區裕農路107號', 'Active'),
(10101, '黃大頭', '0934567892', 'Pa55w.rd101', 'da101@gmail.com', 'dd74b7aa25b518f416c418221c29d7dce9b1147b.jpg', '高雄市鳳山區文化路108號', 'Active'),
(10102, '吳小美', '0912345673', 'Pa55w.rd102', 'mei102@gmail.com', '13d5cfd33231a8f7f63e0f234c150ecbf8971221.jpg', '屏東縣屏東市自由路1號', 'Active'),
(10103, '許大頭', '0923789065', 'Pa55w.rd103', 'xudt103@gmail.com', 'e6d78ccdc7f736c871b8ffdfb4f5914b6f8b5d84.jpg', '新北市永和區成功路168號', 'Active'),
(10104, '張小美', '0983567812', 'Pa55w.rd104', 'mei104@gmail.com', 'b8d4264a5a7e29c5b63f1c7d5a2f57b1e2989c41.jpg', '桃園市桃園區三民路一段68號', 'Active'),
(10105, '王大頭', '0965123789', 'Pa55w.rd105', 'wang105@gmail.com', '8fda0c2588041c9e71e35a7df3ab2d50f7d69f4b.jpg', '台中市西區民權路206號', 'Active'),
(10106, '陳小美', '0923456781', 'Pa55w.rd106', 'chen106@gmail.com', 'a2e29be9367810c3ee11d0a7895ee1a3a0ef9b2a.jpg', '新北市板橋區文化路168號', 'Active'),
(10107, '黃大頭', '0934567892', 'Pa55w.rd107', 'da107@gmail.com', '05a62ddc1be4d9b9d9a328d5b43e12dc3bb82b07.jpg', '台南市中西區西門路二段168號', 'Active'),
(10108, '吳小美', '0912345673', 'Pa55w.rd108', 'mei108@gmail.com', 'a9b7498f3b1d1d5a2cf1568a50b98a992c1e7b46.jpg', '高雄市左營區大中一路11號', 'Active'),
(10109, '許大頭', '0923789065', 'Pa55w.rd109', 'xu109@gmail.com', 'b6880b086dbdc8e54e7f7b82e1d432c36fbec72c.jpg', '台北市信義區忠孝東路五段68號', 'Active'),
(10110, '張小美', '0983567812', 'Pa55w.rd110', 'mei110@gmail.com', '7b16a09152c3f64e6072e4c4c9b1a6e61a81f276.jpg', '新竹市東區西大路152號', 'Active'),
(10111, '王大頭', '0965123789', 'Pa55w.rd111', 'wang111@gmail.com', '84322b5c011171d107d5457334d6e168e6ab3d6f.jpg', '桃園市桃園區成功路168號', 'Active'),
(10112, '陳小美', '0923456781', 'Pa55w.rd112', 'chen112@gmail.com', 'e3614e5e65f7cb6a5a0cfb9c7ffdfbfcfda5b2b1.jpg', '新北市新莊區中港路166號', 'Active'),
(10113, '黃大頭', '0934567892', 'Pa55w.rd113', 'da113@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台南市中西區民權路206號', 'Active'),
(10114, '吳小美', '0912345673', 'Pa55w.rd114', 'mei114@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '高雄市左營區明誠路168號', 'Active'),
(10115, '許大頭', '0923789065', 'Pa55w.rd115', 'xu115@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台北市信義區忠孝東路五段68號', 'Active'),
(10116, '張小美', '0983567812', 'Pa55w.rd116', 'mei116@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新竹市東區西大路152號', 'Active'),
(10117, '王大頭', '0965123789', 'Pa55w.rd117', 'wang117@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '桃園市桃園區成功路168號', 'Active'),
(10118, '陳小美', '0923456781', 'Pa55w.rd118', 'chen118@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新北市新莊區中港路166號', 'Active'),
(10119, '黃大頭', '0934567892', 'Pa55w.rd119', 'da119@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台南市中西區民權路206號', 'Active'),
(10120, '吳小美', '0912345673', 'Pa55w.rd120', 'mei120@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '高雄市左營區明誠路168號', 'Active'),
(10121, '許大頭', '0923789065', 'Pa55w.rd121', 'xu121@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台北市信義區忠孝東路五段68號', 'Active'),
(10122, '張小美', '0983567812', 'Pa55w.rd122', 'mei122@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新竹市東區西大路152號', 'Active'),
(10123, '王大頭', '0965123789', 'Pa55w.rd123', 'wang123@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '桃園市桃園區成功路168號', 'Active'),
(10124, '陳小美', '0923456781', 'Pa55w.rd124', 'chen124@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新北市新莊區中港路166號', 'Active'),
(10125, '黃大頭', '0934567892', 'Pa55w.rd125', 'da125@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台南市中西區民權路206號', 'Active'),
(10126, '吳小美', '0912345673', 'Pa55w.rd126', 'mei126@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '高雄市左營區明誠路168號', 'Active'),
(10127, '許大頭', '0923789065', 'Pa55w.rd127', 'xu127@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台北市信義區忠孝東路五段68號', 'Active'),
(10128, '張小美', '0983567812', 'Pa55w.rd128', 'mei128@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新竹市東區西大路152號', 'Active'),
(10129, '王大頭', '0965123789', 'Pa55w.rd129', 'wang129@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '桃園市桃園區成功路168號', 'Active'),
(10130, '陳小美', '0923456781', 'Pa55w.rd130', 'chen130@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新北市新莊區中港路166號', 'Active'),
(10131, '黃大頭', '0934567892', 'Pa55w.rd131', 'da131@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台南市中西區民權路206號', 'Active'),
(10132, '吳小美', '0912345673', 'Pa55w.rd132', 'mei132@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '高雄市左營區明誠路168號', 'Active'),
(10133, '王阿強', '0987654321', 'Pa55w.rd133', 'aqwang@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台北市信義區忠孝東路四段300號', 'Active'),
(10134, '林小雪', '0956781234', 'Pa55w.rd134', 'snow1234@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新北市板橋區民族路12號', 'Active'),
(10135, '陳小明', '0923456789', 'Pa55w.rd135', 'chenming@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台中市西屯區市政路101號', 'Active'),
(10136, '張大山', '0976543210', 'Pa55w.rd136', 'dshan@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '彰化縣員林市中山路88號', 'Active'),
(10137, '王小美', '0901234567', 'Pa55w.rd137', 'xiaomei@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新北市板橋區文化路168號', 'Active'),
(10138, '林大同', '0987654321', 'Pa55w.rd138', 'datong@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '高雄市苓雅區和平一路200號', 'Active'),
(10139, '黃小花', '0912345678', 'Pa55w.rd139', 'xiaohua@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台中市南區復興路50號', 'Active'),
(10140, '陳大雄', '0932109876', 'Pa55w.rd140', 'daxiong@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新竹市東區民生路100號', 'Active'),
(10141, '張小龍', '0956789012', 'Pa55w.rd141', 'xiaolong@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '基隆市安樂區中山路20號', 'Active'),
(10142, '王大鵬', '0923456789', 'Pa55w.rd142', 'dapeng@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '桃園市桃園區中正路123號', 'Active'),
(10143, '林小燕', '0976543210', 'Pa55w.rd143', 'xiaoyan@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台南市中西區民族路99號', 'Active'),
(10144, '黃大頭', '0901234567', 'Pa55w.rd144', 'datou@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '宜蘭縣宜蘭市民權路56號', 'Active'),
(10145, '吳小虎', '0987654321', 'Pa55w.rd145', 'xiaohu@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '花蓮縣花蓮市中山路78號', 'Active'),
(10146, '陳大牛', '0912345678', 'Pa55w.rd146', 'danai@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '彰化縣彰化市光復路88號', 'Active'),
(10147, '王小鳳', '0932109876', 'Pa55w.rd147', 'xiaofeng@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新竹縣竹北市中正路1號', 'Active'),
(10148, '張大海', '0956789012', 'Pa55w.rd148', 'dahai@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '苗栗縣苗栗市中正路35號', 'Active'),
(10149, '吳小莉', '0923456789', 'Pa55w.rd149', 'xiaoli@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台中市北區中清路2號', 'Active'),
(10150, '李大雨', '0976543210', 'Pa55w.rd150', 'dayu@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '彰化縣員林市中山路99號', 'Active'),
(10151, '許小珍', '0901234567', 'Pa55w.rd151', 'xiaozhen@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '高雄市左營區文自路158號', 'Active'),
(10152, '邱大雄', '0987654321', 'Pa55w.rd152', 'daxiong2@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台南市安南區海佃路62號', 'Active'),
(10153, '劉小美', '0912345678', 'Pa55w.rd153', 'xiaomei2@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '屏東縣屏東市民生路83號', 'Active'),
(10154, '蔡大頭', '0932109876', 'Pa55w.rd154', 'datou2@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '桃園市八德區永安路46號', 'Active'),
(10155, '張小莉', '0956789012', 'Pa55w.rd155', 'xiaoli2@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新北市新莊區中正路77號', 'Active'),
(10156, '吳大牛', '0923456789', 'Pa55w.rd156', 'danai2@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '宜蘭縣宜蘭市民族路23號', 'Active'),
(10157, '李小虎', '0976543210', 'Pa55w.rd157', 'xiaohu2@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新竹縣竹北市中正路33號', 'Active'),
(10158, '許大鳳', '0901234567', 'Pa55w.rd158', 'dafeng@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '嘉義市東區和平路44號', 'Active'),
(10159, '陳小珍', '0987654321', 'Pa55w.rd159', 'xiaozhen2@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '屏東縣潮州鎮中山路55號', 'Active'),
(10160, '劉大頭', '0912345678', 'Pa55w.rd160', 'datou3@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '苗栗縣竹南鎮民族路66號', 'Active'),
(10161, '蔡小莉', '0932109876', 'Pa55w.rd161', 'xiaoli3@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '桃園市觀音區文化路88號', 'Active'),
(10162, '鄭大牛', '0956789012', 'Pa55w.rd162', 'danai3@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新北市三重區仁愛路22號', 'Active'),
(10163, '林小虎', '0923456789', 'Pa55w.rd163', 'xiaohu3@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '彰化縣彰化市成功路99號', 'Active'),
(10164, '黃大雄', '0976543210', 'Pa55w.rd164', 'daxiong3@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台北市信義區忠孝東路99號', 'Active'),
(10165, '李小珍', '0901234567', 'Pa55w.rd165', 'xiaozhen3@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '高雄市鳳山區文化路11號', 'Active'),
(10166, '王大海', '0987654321', 'Pa55w.rd166', 'dahai2@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台中市北區忠明路88號', 'Active'),
(10167, '吳小莉', '0912345678', 'Pa55w.rd167', 'xiaoli4@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新竹市北區中山路33號', 'Active'),
(10168, '張大雄', '0932109876', 'Pa55w.rd168', 'daxiong4@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '嘉義市西區民生路55號', 'Active'),
(10169, '陳小花', '0956789012', 'Pa55w.rd169', 'xiaohua2@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '屏東縣屏東市和平路22號', 'Active'),
(10170, '劉大頭', '0923456789', 'Pa55w.rd170', 'datou4@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台南市南區文化路44號', 'Active'),
(10171, '蔡小莉', '0976543210', 'Pa55w.rd171', 'xiaoli5@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新北市永和區民權路77號', 'Active'),
(10172, '鄭大牛', '0901234567', 'Pa55w.rd172', 'danai4@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台北市大同區重慶北路66號', 'Active'),
(10173, '林小虎', '0987654321', 'Pa55w.rd173', 'xiaohu4@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '桃園市中壢區民族路11號', 'Active'),
(10174, '黃大雄', '0912345678', 'Pa55w.rd174', 'daxiong5@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新竹縣竹北市自強路33號', 'Active'),
(10175, '李小珍', '0932109876', 'Pa55w.rd175', 'xiaozhen4@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '彰化縣彰化市光復路77號', 'Active'),
(10176, '王大海', '0956789012', 'Pa55w.rd176', 'dahai3@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台南市北區中山路22號', 'Active'),
(10177, '吳小莉', '0923456789', 'Pa55w.rd177', 'xiaoli6@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '嘉義縣民雄鄉文化路99號', 'Active'),
(10178, '張大雄', '0976543210', 'Pa55w.rd178', 'daxiong6@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '花蓮縣花蓮市中正路55號', 'Active'),
(10179, '陳小花', '0901234567', 'Pa55w.rd179', 'xiaohua3@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台中市西屯區民權路66號', 'Active'),
(10180, '劉大頭', '0987654321', 'Pa55w.rd180', 'datou5@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新竹市東區中山路88號', 'Active'),
(10181, '蔡小莉', '0912345678', 'Pa55w.rd181', 'xiaoli7@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台南市東區復興路66號', 'Active'),
(10182, '鄭大牛', '0932109876', 'Pa55w.rd182', 'danai5@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '高雄市前鎮區中山路88號', 'Active'),
(10183, '林小虎', '0956789012', 'Pa55w.rd183', 'xiaohu5@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '嘉義市西區民權路77號', 'Active'),
(10184, '黃大雄', '0923456789', 'Pa55w.rd184', 'daxiong7@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新北市中和區中山路33號', 'Active'),
(10185, '李小珍', '0976543210', 'Pa55w.rd185', 'xiaozhen5@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台北市中山區中山路11號', 'Active'),
(10186, '王大海', '0901234567', 'Pa55w.rd186', 'dahai4@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新竹縣竹東鎮民族路22號', 'Active'),
(10187, '吳小莉', '0987654321', 'Pa55w.rd187', 'xiaoli8@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '苗栗縣苗栗市中正路77號', 'Active'),
(10188, '張大雄', '0912345678', 'Pa55w.rd188', 'daxiong8@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '屏東縣恆春鎮中山路44號', 'Active'),
(10189, '陳小花', '0932109876', 'Pa55w.rd189', 'xiaohua4@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '花蓮縣壽豐鄉民族路55號', 'Active'),
(10190, '劉大頭', '0956789012', 'Pa55w.rd190', 'datou6@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台東縣台東市中山路66號', 'Active'),
(10191, '蔡小莉', '0923456789', 'Pa55w.rd191', 'xiaoli9@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣南投市中正路99號', 'Active'),
(10192, '鄭大牛', '0976543210', 'Pa55w.rd192', 'danai6@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '金門縣金城鎮民生路33號', 'Active'),
(10193, '林小虎', '0901234567', 'Pa55w.rd193', 'xiaohu6@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '連江縣南竿鄉中山路22號', 'Active'),
(10194, '黃大雄', '0987654321', 'Pa55w.rd194', 'daxiong9@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '澎湖縣馬公市文化路77號', 'Active'),
(10195, '李小珍', '0912345678', 'Pa55w.rd195', 'xiaozhen6@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '基隆市中正區中正路88號', 'Active'),
(10196, '王大海', '0932109876', 'Pa55w.rd196', 'dahai5@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新北市五彰化市南校街29號', 'Active'),
(10197, '吳小莉', '0956789012', 'Pa55w.rd197', 'xiaoli10@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '嘉義縣水上鄉中山路99號', 'Active'),
(10198, '張大雄', '0923456789', 'Pa55w.rd198', 'daxiong10@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '彰化縣彰化市自強路44號', 'Active'),
(10199, '陳小花', '0976543210', 'Pa55w.rd199', 'xiaohua5@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新竹縣竹北市復興路55號', 'Active'),
(10200, '劉大頭', '0901234567', 'Pa55w.rd200', 'datou7@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '苗栗縣苑裡鎮民生路66號', 'Active'),
(10201, '蔡小莉', '0987654321', 'Pa55w.rd201', 'xiaoli11@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '屏東縣屏東市中山路77號', 'Active'),
(10202, '鄭大牛', '0912345678', 'Pa55w.rd202', 'danai7@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '花蓮縣吉安鄉中正路88號', 'Active'),
(10203, '林小虎', '0932109876', 'Pa55w.rd203', 'xiaohu7@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台東縣成功鎮民族路11號', 'Active'),
(10204, '黃大雄', '0956789012', 'Pa55w.rd204', 'daxiong11@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '澎湖縣湖西鄉中山路22號', 'Active'),
(10205, '李小珍', '0923456789', 'Pa55w.rd205', 'xiaozhen7@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '金門縣金湖鎮文化路33號', 'Active'),
(10206, '王大海', '0976543210', 'Pa55w.rd206', 'dahai6@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '連江縣北竿鄉中正路44號', 'Active'),
(10207, '吳小莉', '0901234567', 'Pa55w.rd207', 'xiaoli12@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路55號', 'Active'),
(10208, '張大雄', '0987654321', 'Pa55w.rd208', 'daxiong12@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '屏東縣車城鄉中正路66號', 'Active'),
(10209, '陳小花', '0912345678', 'Pa55w.rd209', 'xiaohua6@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '臺南市中西區民族路77號', 'Active'),
(10210, '劉大頭', '0932109876', 'Pa55w.rd210', 'datou8@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台東縣關山鎮中山路88號', 'Active'),
(10211, '蔡小莉', '0956789012', 'Pa55w.rd211', 'xiaoli13@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '花蓮縣玉里鎮民權路99號', 'Active'),
(10212, '鄭大牛', '0923456789', 'Pa55w.rd212', 'danai8@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '宜蘭縣宜蘭市民族路11號', 'Active'),
(10213, '林小虎', '0976543210', 'Pa55w.rd213', 'xiaohu8@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '金門縣金寧鄉中正路22號', 'Active'),
(10214, '黃大雄', '0901234567', 'Pa55w.rd214', 'daxiong13@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '彰化縣田中鎮中山路33號', 'Active'),
(10215, '李小珍', '0987654321', 'Pa55w.rd215', 'xiaozhen8@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮文化路44號', 'Active'),
(10216, '王大海', '0912345678', 'Pa55w.rd216', 'dahai7@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '桃園市大園區中正路55號', 'Active'),
(10217, '吳小莉', '0932109876', 'Pa55w.rd217', 'xiaoli14@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新竹縣竹東鎮民族路66號', 'Active'),
(10218, '張大雄', '0956789012', 'Pa55w.rd218', 'daxiong14@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '屏東縣潮州鎮中山路77號', 'Active'),
(10219, '陳小花', '0976543210', 'Pa55w.rd219', 'xiaohua7@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '宜蘭縣羅東鎮民權路88號', 'Active'),
(10220, '劉大頭', '0901234567', 'Pa55w.rd220', 'datou9@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新北市三峽區中正路99號', 'Active'),
(10221, '蔡小莉', '0987654321', 'Pa55w.rd221', 'xiaoli15@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '苗栗縣通霄鎮中山路11號', 'Active'),
(10222, '鄭大牛', '0912345678', 'Pa55w.rd222', 'danai9@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台中市豐原區民權路22號', 'Active'),
(10223, '林小虎', '0932109876', 'Pa55w.rd223', 'xiaohu9@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '彰化縣鹿港鎮民族路33號', 'Active'),
(10224, '黃大雄', '0956789012', 'Pa55w.rd224', 'daxiong15@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路44號', 'Active'),
(10225, '李小珍', '0976543210', 'Pa55w.rd225', 'xiaozhen9@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '嘉義市東區民族路55號', 'Active'),
(10226, '王大海', '0901234567', 'Pa55w.rd226', 'dahai8@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新北市三芝區中山路66號', 'Active'),
(10227, '吳小莉', '0932109876', 'Pa55w.rd227', 'xiaoli16@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '宜蘭縣冬山鄉民權路77號', 'Active'),
(10228, '張大雄', '0956789012', 'Pa55w.rd228', 'daxiong16@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '花蓮縣鳳林鎮中正路88號', 'Active'),
(10229, '陳小花', '0976543210', 'Pa55w.rd229', 'xiaohua8@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台東縣鹿野鄉中山路99號', 'Active'),
(10230, '劉大頭', '0901234567', 'Pa55w.rd230', 'datou10@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '花蓮縣瑞穗鄉民族路11號', 'Active'),
(10231, '蔡小莉', '0932109876', 'Pa55w.rd231', 'xiaoli17@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '屏東縣內埔鄉中正路22號', 'Active'),
(10232, '鄭大牛', '0956789012', 'Pa55w.rd232', 'danai10@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台南市仁德區民權路33號', 'Active'),
(10233, '林小虎', '0976543210', 'Pa55w.rd233', 'xiaohu10@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '彰化縣福興鄉民族路44號', 'Active'),
(10234, '黃大雄', '0901234567', 'Pa55w.rd234', 'daxiong17@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中正路55號', 'Active'),
(10235, '李小珍', '0932109876', 'Pa55w.rd235', 'xiaozhen10@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '嘉義縣太保市中山路66號', 'Active'),
(10236, '王大海', '0956789012', 'Pa55w.rd236', 'dahai9@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '屏東縣東港鎮民權路77號', 'Active'),
(10237, '吳小莉', '0976543210', 'Pa55w.rd237', 'xiaoli18@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '花蓮縣豐濱鄉中正路88號', 'Active'),
(10238, '張大雄', '0901234567', 'Pa55w.rd238', 'daxiong18@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台東縣長濱鄉民族路99號', 'Active'),
(10239, '陳小花', '0932109876', 'Pa55w.rd239', 'xiaohua9@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '連江縣莒光鄉中山路11號', 'Active'),
(10240, '劉大頭', '0956789012', 'Pa55w.rd240', 'datou11@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '澎湖縣白沙鄉中正路22號', 'Active'),
(10241, '蔡小莉', '0976543210', 'Pa55w.rd241', 'xiaoli19@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '基隆市七堵區民權路33號', 'Active'),
(10242, '鄭大牛', '0901234567', 'Pa55w.rd242', 'danai11@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新北市深坑區文化路44號', 'Active'),
(10243, '林小虎', '0932109876', 'Pa55w.rd243', 'xiaohu11@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '桃園市蘆竹區中山路55號', 'Active'),
(10244, '黃大雄', '0956789012', 'Pa55w.rd244', 'daxiong19@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新竹市北區民族路66號', 'Active'),
(10245, '李小珍', '0976543210', 'Pa55w.rd245', 'xiaozhen11@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新竹縣湖口鄉中正路77號', 'Active'),
(10246, '王大海', '0901234567', 'Pa55w.rd246', 'dahai10@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '苗栗縣後龍鎮中山路88號', 'Active'),
(10247, '吳小莉', '0932109876', 'Pa55w.rd247', 'xiaoli20@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台中市北屯區民權路99號', 'Active'),
(10248, '張大雄', '0956789012', 'Pa55w.rd248', 'daxiong20@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '彰化縣和美鎮文化路11號', 'Active'),
(10249, '陳小花', '0976543210', 'Pa55w.rd249', 'xiaohua10@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路22號', 'Active'),
(10250, '劉大頭', '0901234567', 'Pa55w.rd250', 'datou12@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '雲林縣斗六市民族路33號', 'Active'),
(10251, '蔡小莉', '0932109876', 'Pa55w.rd251', 'xiaoli21@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '嘉義市東區民權路44號', 'Active'),
(10252, '鄭大牛', '0956789012', 'Pa55w.rd252', 'danai12@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台南市安平區文化路55號', 'Active'),
(10253, '林小虎', '0976543210', 'Pa55w.rd253', 'xiaohu12@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '高雄市左營區中山路66號', 'Active'),
(10254, '黃大雄', '0901234567', 'Pa55w.rd254', 'daxiong21@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '新竹縣竹西鎮中正路77號', 'Active'),
(10255, '李小珍', '0932109876', 'Pa55w.rd255', 'xiaozhen12@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '台中市北區民族路88號', 'Active'),
(10256, '王大海', '0956789012', 'Pa55w.rd256', 'dahai11@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '彰化縣彰化市民權路99號', 'Active'),
(10257, '吳小莉', '0976543210', 'Pa55w.rd257', 'xiaoli22@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路11號', 'Active'),
(10258, '張大雄', '0901234567', 'Pa55w.rd258', 'daxiong22@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣集集鎮中正路22號', 'Active'),
(10259, '陳小花', '0932109876', 'Pa55w.rd259', 'xiaohua11@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉文化路33號', 'Active'),
(10260, '劉大頭', '0956789012', 'Pa55w.rd260', 'datou13@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民族路44號', 'Active'),
(10261, '蔡小莉', '0976543210', 'Pa55w.rd261', 'xiaoli23@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉中山路55號', 'Active'),
(10262, '鄭大牛', '0901234567', 'Pa55w.rd262', 'danai13@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉中正路66號', 'Active'),
(10263, '林小虎', '0932109876', 'Pa55w.rd263', 'xiaohu13@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣名間鄉民權路77號', 'Active'),
(10264, '黃大雄', '0956789012', 'Pa55w.rd264', 'daxiong23@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣鹿谷鄉中山路88號', 'Active'),
(10265, '李小珍', '0976543210', 'Pa55w.rd265', 'xiaozhen13@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣中寮鄉文化路99號', 'Active'),
(10266, '王大海', '0901234567', 'Pa55w.rd266', 'dahai12@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣魚池鄉中正路11號', 'Active'),
(10267, '吳小莉', '0932109876', 'Pa55w.rd267', 'xiaoli24@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣鹿草鄉民族路22號', 'Active'),
(10268, '張大雄', '0956789012', 'Pa55w.rd268', 'daxiong24@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中山路33號', 'Active'),
(10269, '陳小花', '0976543210', 'Pa55w.rd269', 'xiaohua12@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路44號', 'Active'),
(10270, '劉大頭', '0901234567', 'Pa55w.rd270', 'datou14@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路55號', 'Active'),
(10271, '蔡小莉', '0932109876', 'Pa55w.rd271', 'xiaoli25@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路66號', 'Active'),
(10272, '鄭大牛', '0956789012', 'Pa55w.rd272', 'danai14@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路77號', 'Active'),
(10273, '林小虎', '0976543210', 'Pa55w.rd273', 'xiaohu14@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路88號', 'Active'),
(10274, '黃大雄', '0901234567', 'Pa55w.rd274', 'daxiong25@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路99號', 'Active'),
(10275, '李小珍', '0932109876', 'Pa55w.rd275', 'xiaozhen14@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路11號', 'Active'),
(10276, '王大海', '0956789012', 'Pa55w.rd276', 'dahai13@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路22號', 'Active'),
(10277, '吳小莉', '0976543210', 'Pa55w.rd277', 'xiaoli26@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路33號', 'Active'),
(10278, '張大雄', '0901234567', 'Pa55w.rd278', 'daxiong26@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路44號', 'Active'),
(10279, '陳小花', '0932109876', 'Pa55w.rd279', 'xiaohua13@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路55號', 'Active'),
(10280, '劉大頭', '0956789012', 'Pa55w.rd280', 'datou15@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路66號', 'Active'),
(10281, '蔡小莉', '0976543210', 'Pa55w.rd281', 'xiaoli27@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路77號', 'Active'),
(10282, '鄭大牛', '0901234567', 'Pa55w.rd282', 'danai15@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路88號', 'Active'),
(10283, '林小虎', '0932109876', 'Pa55w.rd283', 'xiaohu15@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路99號', 'Active'),
(10284, '黃大雄', '0956789012', 'Pa55w.rd284', 'daxiong27@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路11號', 'Active'),
(10285, '李小珍', '0976543210', 'Pa55w.rd285', 'xiaozhen15@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路22號', 'Active'),
(10286, '王大海', '0901234567', 'Pa55w.rd286', 'dahai14@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路33號', 'Active'),
(10287, '吳小莉', '0932109876', 'Pa55w.rd287', 'xiaoli28@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路44號', 'Active'),
(10288, '張大雄', '0956789012', 'Pa55w.rd288', 'daxiong28@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路55號', 'Active'),
(10289, '陳小花', '0976543210', 'Pa55w.rd289', 'xiaohua14@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路66號', 'Active'),
(10290, '劉大頭', '0901234567', 'Pa55w.rd290', 'datou16@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路77號', 'Active'),
(10291, '蔡小莉', '0932109876', 'Pa55w.rd291', 'xiaoli29@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路88號', 'Active'),
(10292, '鄭大牛', '0956789012', 'Pa55w.rd292', 'danai16@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路99號', 'Active'),
(10293, '林小虎', '0976543210', 'Pa55w.rd293', 'xiaohu16@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路11號', 'Active'),
(10294, '黃大雄', '0901234567', 'Pa55w.rd294', 'daxiong29@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路22號', 'Active'),
(10295, '李小珍', '0932109876', 'Pa55w.rd295', 'xiaozhen16@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路33號', 'Active'),
(10296, '王大海', '0956789012', 'Pa55w.rd296', 'dahai15@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路44號', 'Active'),
(10297, '吳小莉', '0976543210', 'Pa55w.rd297', 'xiaoli30@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路55號', 'Active'),
(10298, '張大雄', '0901234567', 'Pa55w.rd298', 'daxiong30@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路66號', 'Active'),
(10299, '陳小花', '0932109876', 'Pa55w.rd299', 'xiaohua15@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路77號', 'Active'),
(10300, '劉大頭', '0956789012', 'Pa55w.rd300', 'datou17@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路88號', 'Active'),
(10301, '蔡小莉', '0976543210', 'Pa55w.rd301', 'xiaoli31@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路99號', 'Active'),
(10302, '鄭大牛', '0901234567', 'Pa55w.rd302', 'danai17@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路11號', 'Active'),
(10303, '林小虎', '0932109876', 'Pa55w.rd303', 'xiaohu17@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路22號', 'Active'),
(10304, '黃大雄', '0956789012', 'Pa55w.rd304', 'daxiong31@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路33號', 'Active'),
(10305, '李小珍', '0976543210', 'Pa55w.rd305', 'xiaozhen17@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路44號', 'Active'),
(10306, '王大海', '0901234567', 'Pa55w.rd306', 'dahai16@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路55號', 'Active'),
(10307, '吳小莉', '0932109876', 'Pa55w.rd307', 'xiaoli32@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路66號', 'Active'),
(10308, '張大雄', '0956789012', 'Pa55w.rd308', 'daxiong32@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路77號', 'Active'),
(10309, '陳小花', '0976543210', 'Pa55w.rd309', 'xiaohua16@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路88號', 'Active'),
(10310, '劉大頭', '0901234567', 'Pa55w.rd310', 'datou18@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路99號', 'Active'),
(10311, '蔡小莉', '0932109876', 'Pa55w.rd311', 'xiaoli33@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路11號', 'Active'),
(10312, '鄭大牛', '0956789012', 'Pa55w.rd312', 'danai18@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路22號', 'Active'),
(10313, '林小虎', '0976543210', 'Pa55w.rd313', 'xiaohu18@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路33號', 'Active'),
(10314, '黃大雄', '0901234567', 'Pa55w.rd314', 'daxiong33@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路44號', 'Active'),
(10315, '李小珍', '0932109876', 'Pa55w.rd315', 'xiaozhen18@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路55號', 'Active'),
(10316, '王大海', '0956789012', 'Pa55w.rd316', 'dahai17@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路66號', 'Active'),
(10317, '吳小莉', '0976543210', 'Pa55w.rd317', 'xiaoli34@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路77號', 'Active'),
(10318, '張大雄', '0901234567', 'Pa55w.rd318', 'daxiong34@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路88號', 'Active'),
(10319, '陳小花', '0932109876', 'Pa55w.rd319', 'xiaohua17@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路99號', 'Active'),
(10320, '劉大頭', '0956789012', 'Pa55w.rd320', 'datou19@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路11號', 'Active'),
(10321, '蔡小莉', '0976543210', 'Pa55w.rd321', 'xiaoli35@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路22號', 'Active'),
(10322, '鄭大牛', '0901234567', 'Pa55w.rd322', 'danai19@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路33號', 'Active'),
(10323, '林小虎', '0932109876', 'Pa55w.rd323', 'xiaohu19@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路44號', 'Active'),
(10324, '黃大雄', '0956789012', 'Pa55w.rd324', 'daxiong35@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路55號', 'Active'),
(10325, '李小珍', '0976543210', 'Pa55w.rd325', 'xiaozhen19@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路66號', 'Active'),
(10326, '王大海', '0901234567', 'Pa55w.rd326', 'dahai18@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路77號', 'Active'),
(10327, '吳小莉', '0932109876', 'Pa55w.rd327', 'xiaoli36@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路88號', 'Active'),
(10328, '張大雄', '0956789012', 'Pa55w.rd328', 'daxiong36@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路99號', 'Active'),
(10329, '陳小花', '0976543210', 'Pa55w.rd329', 'xiaohua18@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路11號', 'Active'),
(10330, '劉大頭', '0901234567', 'Pa55w.rd330', 'datou20@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路22號', 'Active'),
(10331, '蔡小莉', '0932109876', 'Pa55w.rd331', 'xiaoli37@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路33號', 'Active'),
(10332, '鄭大牛', '0956789012', 'Pa55w.rd332', 'danai20@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路44號', 'Active'),
(10333, '林小虎', '0976543210', 'Pa55w.rd333', 'xiaohu20@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路55號', 'Active'),
(10334, '黃大雄', '0901234567', 'Pa55w.rd334', 'daxiong37@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路66號', 'Active'),
(10335, '李小珍', '0932109876', 'Pa55w.rd335', 'xiaozhen20@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路77號', 'Active'),
(10336, '王大海', '0956789012', 'Pa55w.rd336', 'dahai19@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路88號', 'Active'),
(10337, '吳小莉', '0976543210', 'Pa55w.rd337', 'xiaoli38@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路99號', 'Active'),
(10338, '張大雄', '0901234567', 'Pa55w.rd338', 'daxiong38@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路11號', 'Active'),
(10339, '陳小花', '0932109876', 'Pa55w.rd339', 'xiaohua19@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路22號', 'Active'),
(10340, '劉大頭', '0956789012', 'Pa55w.rd340', 'datou21@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路33號', 'Active'),
(10341, '蔡小莉', '0976543210', 'Pa55w.rd341', 'xiaoli39@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路44號', 'Active'),
(10342, '鄭大牛', '0901234567', 'Pa55w.rd342', 'danai21@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路55號', 'Active'),
(10343, '林小虎', '0932109876', 'Pa55w.rd343', 'xiaohu21@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路66號', 'Active'),
(10344, '黃大雄', '0956789012', 'Pa55w.rd344', 'daxiong39@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路77號', 'Active'),
(10345, '李小珍', '0976543210', 'Pa55w.rd345', 'xiaozhen21@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路88號', 'Active'),
(10346, '王大海', '0901234567', 'Pa55w.rd346', 'dahai20@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路99號', 'Active'),
(10347, '吳小莉', '0932109876', 'Pa55w.rd347', 'xiaoli40@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路11號', 'Active'),
(10348, '張大雄', '0956789012', 'Pa55w.rd348', 'daxiong40@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路22號', 'Active'),
(10349, '陳小花', '0976543210', 'Pa55w.rd349', 'xiaohua20@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路33號', 'Active'),
(10350, '劉大頭', '0901234567', 'Pa55w.rd350', 'datou22@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路44號', 'Active'),
(10351, '蔡小莉', '0932109876', 'Pa55w.rd351', 'xiaoli41@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路55號', 'Active'),
(10352, '鄭大牛', '0956789012', 'Pa55w.rd352', 'danai22@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路66號', 'Active'),
(10353, '林小虎', '0976543210', 'Pa55w.rd353', 'xiaohu22@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路77號', 'Active'),
(10354, '黃大雄', '0901234567', 'Pa55w.rd354', 'daxiong41@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路88號', 'Active'),
(10355, '李小珍', '0932109876', 'Pa55w.rd355', 'xiaozhen22@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路99號', 'Active'),
(10356, '王大海', '0956789012', 'Pa55w.rd356', 'dahai21@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路11號', 'Active'),
(10357, '吳小莉', '0976543210', 'Pa55w.rd357', 'xiaoli42@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路22號', 'Active'),
(10358, '張大雄', '0901234567', 'Pa55w.rd358', 'daxiong42@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路33號', 'Active'),
(10359, '陳小花', '0932109876', 'Pa55w.rd359', 'xiaohua21@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路44號', 'Active'),
(10360, '劉大頭', '0956789012', 'Pa55w.rd360', 'datou23@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路55號', 'Active'),
(10361, '蔡小莉', '0976543210', 'Pa55w.rd361', 'xiaoli43@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路66號', 'Active'),
(10362, '鄭大牛', '0901234567', 'Pa55w.rd362', 'danai23@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路77號', 'Active'),
(10363, '林小虎', '0932109876', 'Pa55w.rd363', 'xiaohu23@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路88號', 'Active'),
(10364, '黃大雄', '0956789012', 'Pa55w.rd364', 'daxiong43@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路99號', 'Active'),
(10365, '李小珍', '0976543210', 'Pa55w.rd365', 'xiaozhen23@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路11號', 'Active'),
(10366, '王大海', '0901234567', 'Pa55w.rd366', 'dahai22@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路22號', 'Active'),
(10367, '吳小莉', '0932109876', 'Pa55w.rd367', 'xiaoli44@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路33號', 'Active'),
(10368, '張大雄', '0956789012', 'Pa55w.rd368', 'daxiong44@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路44號', 'Active'),
(10369, '陳小花', '0976543210', 'Pa55w.rd369', 'xiaohua22@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路55號', 'Active'),
(10370, '劉大頭', '0901234567', 'Pa55w.rd370', 'datou24@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路66號', 'Active'),
(10371, '蔡小莉', '0932109876', 'Pa55w.rd371', 'xiaoli45@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路77號', 'Active'),
(10372, '鄭大牛', '0956789012', 'Pa55w.rd372', 'danai24@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路88號', 'Active'),
(10373, '林小虎', '0976543210', 'Pa55w.rd373', 'xiaohu24@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路99號', 'Active'),
(10374, '黃大雄', '0901234567', 'Pa55w.rd374', 'daxiong45@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路11號', 'Active'),
(10375, '李小珍', '0932109876', 'Pa55w.rd375', 'xiaozhen24@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路22號', 'Active'),
(10376, '王大海', '0956789012', 'Pa55w.rd376', 'dahai23@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路33號', 'Active');
INSERT INTO `user` (`user_id`, `name`, `account`, `password`, `email`, `pic`, `address_detail`, `status`) VALUES
(10377, '吳小莉', '0976543210', 'Pa55w.rd377', 'xiaoli46@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路44號', 'Active'),
(10378, '張大雄', '0901234567', 'Pa55w.rd378', 'daxiong46@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路55號', 'Active'),
(10379, '陳小花', '0932109876', 'Pa55w.rd379', 'xiaohua23@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路66號', 'Active'),
(10380, '劉大頭', '0956789012', 'Pa55w.rd380', 'datou25@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路77號', 'Active'),
(10381, '蔡小莉', '0976543210', 'Pa55w.rd381', 'xiaoli47@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路88號', 'Active'),
(10382, '鄭大牛', '0901234567', 'Pa55w.rd382', 'danai25@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路99號', 'Active'),
(10383, '林小虎', '0932109876', 'Pa55w.rd383', 'xiaohu25@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路11號', 'Active'),
(10384, '黃大雄', '0956789012', 'Pa55w.rd384', 'daxiong47@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路22號', 'Active'),
(10385, '李小珍', '0976543210', 'Pa55w.rd385', 'xiaozhen25@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路33號', 'Active'),
(10386, '王大海', '0901234567', 'Pa55w.rd386', 'dahai24@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路44號', 'Active'),
(10387, '吳小莉', '0932109876', 'Pa55w.rd387', 'xiaoli48@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路55號', 'Active'),
(10388, '張大雄', '0956789012', 'Pa55w.rd388', 'daxiong48@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路66號', 'Active'),
(10389, '陳小花', '0976543210', 'Pa55w.rd389', 'xiaohua24@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路77號', 'Active'),
(10390, '劉大頭', '0901234567', 'Pa55w.rd390', 'datou26@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路88號', 'Active'),
(10391, '蔡小莉', '0932109876', 'Pa55w.rd391', 'xiaoli49@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路99號', 'Active'),
(10392, '鄭大牛', '0956789012', 'Pa55w.rd392', 'danai26@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路11號', 'Active'),
(10393, '林小虎', '0976543210', 'Pa55w.rd393', 'xiaohu26@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路22號', 'Active'),
(10394, '黃大雄', '0901234567', 'Pa55w.rd394', 'daxiong49@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路33號', 'Active'),
(10395, '李小珍', '0932109876', 'Pa55w.rd395', 'xiaozhen26@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路44號', 'Active'),
(10396, '王大海', '0956789012', 'Pa55w.rd396', 'dahai25@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路55號', 'Active'),
(10397, '吳小莉', '0976543210', 'Pa55w.rd397', 'xiaoli50@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路66號', 'Active'),
(10398, '張大雄', '0901234567', 'Pa55w.rd398', 'daxiong50@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路77號', 'Active'),
(10399, '陳小花', '0932109876', 'Pa55w.rd399', 'xiaohua25@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路88號', 'Active'),
(10400, '劉大頭', '0956789012', 'Pa55w.rd400', 'datou27@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路99號', 'Active'),
(10401, '蔡小莉', '0976543210', 'Pa55w.rd401', 'xiaoli51@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路11號', 'Active'),
(10402, '鄭大牛', '0901234567', 'Pa55w.rd402', 'danai27@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路22號', 'Active'),
(10403, '林小虎', '0932109876', 'Pa55w.rd403', 'xiaohu27@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路33號', 'Active'),
(10404, '黃大雄', '0956789012', 'Pa55w.rd404', 'daxiong51@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路44號', 'Active'),
(10405, '李小珍', '0976543210', 'Pa55w.rd405', 'xiaozhen27@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路55號', 'Active'),
(10406, '王大海', '0901234567', 'Pa55w.rd406', 'dahai26@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路66號', 'Active'),
(10407, '吳小莉', '0932109876', 'Pa55w.rd407', 'xiaoli52@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路77號', 'Active'),
(10408, '張大雄', '0956789012', 'Pa55w.rd408', 'daxiong52@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路88號', 'Active'),
(10409, '陳小花', '0976543210', 'Pa55w.rd409', 'xiaohua26@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路99號', 'Active'),
(10410, '劉大頭', '0901234567', 'Pa55w.rd410', 'datou28@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路11號', 'Active'),
(10411, '蔡小莉', '0932109876', 'Pa55w.rd411', 'xiaoli53@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路22號', 'Active'),
(10412, '鄭大牛', '0956789012', 'Pa55w.rd412', 'danai28@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路33號', 'Active'),
(10413, '林小虎', '0976543210', 'Pa55w.rd413', 'xiaohu28@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路44號', 'Active'),
(10414, '黃大雄', '0901234567', 'Pa55w.rd414', 'daxiong53@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路55號', 'Active'),
(10415, '李小珍', '0932109876', 'Pa55w.rd415', 'xiaozhen28@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路66號', 'Active'),
(10416, '王大海', '0956789012', 'Pa55w.rd416', 'dahai27@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路77號', 'Active'),
(10417, '吳小莉', '0976543210', 'Pa55w.rd417', 'xiaoli54@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路88號', 'Active'),
(10418, '張大雄', '0901234567', 'Pa55w.rd418', 'daxiong54@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路99號', 'Active'),
(10419, '陳小花', '0932109876', 'Pa55w.rd419', 'xiaohua27@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路11號', 'Active'),
(10420, '劉大頭', '0956789012', 'Pa55w.rd420', 'datou29@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路22號', 'Active'),
(10421, '蔡小莉', '0976543210', 'Pa55w.rd421', 'xiaoli55@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路33號', 'Active'),
(10422, '鄭大牛', '0901234567', 'Pa55w.rd422', 'danai29@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路44號', 'Active'),
(10423, '林小虎', '0932109876', 'Pa55w.rd423', 'xiaohu29@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路55號', 'Active'),
(10424, '黃大雄', '0956789012', 'Pa55w.rd424', 'daxiong55@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路66號', 'Active'),
(10425, '李小珍', '0976543210', 'Pa55w.rd425', 'xiaozhen29@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路77號', 'Active'),
(10426, '王大海', '0901234567', 'Pa55w.rd426', 'dahai28@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路88號', 'Active'),
(10427, '吳小莉', '0932109876', 'Pa55w.rd427', 'xiaoli56@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路99號', 'Active'),
(10428, '張大雄', '0956789012', 'Pa55w.rd428', 'daxiong56@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路11號', 'Active'),
(10429, '陳小花', '0976543210', 'Pa55w.rd429', 'xiaohua28@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路22號', 'Active'),
(10430, '劉大頭', '0901234567', 'Pa55w.rd430', 'datou30@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路33號', 'Active'),
(10431, '蔡小莉', '0932109876', 'Pa55w.rd431', 'xiaoli57@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路44號', 'Active'),
(10432, '鄭大牛', '0956789012', 'Pa55w.rd432', 'danai30@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路55號', 'Active'),
(10433, '林小虎', '0976543210', 'Pa55w.rd433', 'xiaohu30@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路66號', 'Active'),
(10434, '黃大雄', '0901234567', 'Pa55w.rd434', 'daxiong57@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路77號', 'Active'),
(10435, '李小珍', '0932109876', 'Pa55w.rd435', 'xiaozhen30@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路88號', 'Active'),
(10436, '王大海', '0956789012', 'Pa55w.rd436', 'dahai29@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路99號', 'Active'),
(10437, '吳小莉', '0976543210', 'Pa55w.rd437', 'xiaoli58@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路11號', 'Active'),
(10438, '張大雄', '0901234567', 'Pa55w.rd438', 'daxiong58@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路22號', 'Active'),
(10439, '陳小花', '0932109876', 'Pa55w.rd439', 'xiaohua29@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路33號', 'Active'),
(10440, '劉大頭', '0956789012', 'Pa55w.rd440', 'datou31@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路44號', 'Active'),
(10441, '蔡小莉', '0976543210', 'Pa55w.rd441', 'xiaoli59@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路55號', 'Active'),
(10442, '鄭大牛', '0901234567', 'Pa55w.rd442', 'danai31@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路66號', 'Active'),
(10443, '林小虎', '0932109876', 'Pa55w.rd443', 'xiaohu31@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路77號', 'Active'),
(10444, '黃大雄', '0956789012', 'Pa55w.rd444', 'daxiong59@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路88號', 'Active'),
(10445, '李小珍', '0976543210', 'Pa55w.rd445', 'xiaozhen31@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路99號', 'Active'),
(10446, '王大海', '0901234567', 'Pa55w.rd446', 'dahai30@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路11號', 'Active'),
(10447, '吳小莉', '0932109876', 'Pa55w.rd447', 'xiaoli60@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路22號', 'Active'),
(10448, '張大雄', '0956789012', 'Pa55w.rd448', 'daxiong60@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路33號', 'Active'),
(10449, '陳小花', '0976543210', 'Pa55w.rd449', 'xiaohua30@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路44號', 'Active'),
(10450, '劉大頭', '0901234567', 'Pa55w.rd450', 'datou32@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路55號', 'Active'),
(10451, '蔡小莉', '0932109876', 'Pa55w.rd451', 'xiaoli61@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路66號', 'Active'),
(10452, '鄭大牛', '0956789012', 'Pa55w.rd452', 'danai32@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路77號', 'Active'),
(10453, '林小虎', '0976543210', 'Pa55w.rd453', 'xiaohu32@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路88號', 'Active'),
(10454, '黃大雄', '0901234567', 'Pa55w.rd454', 'daxiong61@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路99號', 'Active'),
(10455, '李小珍', '0932109876', 'Pa55w.rd455', 'xiaozhen32@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路11號', 'Active'),
(10456, '王大海', '0956789012', 'Pa55w.rd456', 'dahai31@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路22號', 'Active'),
(10457, '吳小莉', '0976543210', 'Pa55w.rd457', 'xiaoli62@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路33號', 'Active'),
(10458, '張大雄', '0901234567', 'Pa55w.rd458', 'daxiong62@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路44號', 'Active'),
(10459, '陳小花', '0932109876', 'Pa55w.rd459', 'xiaohua31@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路55號', 'Active'),
(10460, '劉大頭', '0956789012', 'Pa55w.rd460', 'datou33@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路66號', 'Active'),
(10461, '蔡小莉', '0976543210', 'Pa55w.rd461', 'xiaoli63@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路77號', 'Active'),
(10462, '鄭大牛', '0901234567', 'Pa55w.rd462', 'danai33@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路88號', 'Active'),
(10463, '林小虎', '0932109876', 'Pa55w.rd463', 'xiaohu33@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路99號', 'Active'),
(10464, '黃大雄', '0956789012', 'Pa55w.rd464', 'daxiong63@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路11號', 'Active'),
(10465, '李小珍', '0976543210', 'Pa55w.rd465', 'xiaozhen33@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路22號', 'Active'),
(10466, '王大海', '0901234567', 'Pa55w.rd466', 'dahai32@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路33號', 'Active'),
(10467, '吳小莉', '0932109876', 'Pa55w.rd467', 'xiaoli64@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路44號', 'Active'),
(10468, '張大雄', '0956789012', 'Pa55w.rd468', 'daxiong64@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路55號', 'Active'),
(10469, '陳小花', '0976543210', 'Pa55w.rd469', 'xiaohua32@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路66號', 'Active'),
(10470, '劉大頭', '0901234567', 'Pa55w.rd470', 'datou34@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路77號', 'Active'),
(10471, '蔡小莉', '0932109876', 'Pa55w.rd471', 'xiaoli65@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路88號', 'Active'),
(10472, '鄭大牛', '0956789012', 'Pa55w.rd472', 'danai34@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路99號', 'Active'),
(10473, '林小虎', '0976543210', 'Pa55w.rd473', 'xiaohu34@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路11號', 'Active'),
(10474, '黃大雄', '0901234567', 'Pa55w.rd474', 'daxiong65@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路22號', 'Active'),
(10475, '李小珍', '0932109876', 'Pa55w.rd475', 'xiaozhen34@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路33號', 'Active'),
(10476, '王大海', '0956789012', 'Pa55w.rd476', 'dahai33@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路44號', 'Active'),
(10477, '吳小莉', '0976543210', 'Pa55w.rd477', 'xiaoli66@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路55號', 'Active'),
(10478, '張大雄', '0901234567', 'Pa55w.rd478', 'daxiong66@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路66號', 'Active'),
(10479, '陳小花', '0932109876', 'Pa55w.rd479', 'xiaohua33@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路77號', 'Active'),
(10480, '劉大頭', '0956789012', 'Pa55w.rd480', 'datou35@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路88號', 'Active'),
(10481, '蔡小莉', '0976543210', 'Pa55w.rd481', 'xiaoli67@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路99號', 'Active'),
(10482, '鄭大牛', '0901234567', 'Pa55w.rd482', 'danai35@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路11號', 'Active'),
(10483, '林小虎', '0932109876', 'Pa55w.rd483', 'xiaohu35@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路22號', 'Active'),
(10484, '黃大雄', '0956789012', 'Pa55w.rd484', 'daxiong67@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路33號', 'Active'),
(10485, '李小珍', '0976543210', 'Pa55w.rd485', 'xiaozhen35@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路44號', 'Active'),
(10486, '王大海', '0901234567', 'Pa55w.rd486', 'dahai34@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路55號', 'Active'),
(10487, '吳小莉', '0932109876', 'Pa55w.rd487', 'xiaoli68@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路66號', 'Active'),
(10488, '張大雄', '0956789012', 'Pa55w.rd488', 'daxiong68@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路77號', 'Active'),
(10489, '陳小花', '0976543210', 'Pa55w.rd489', 'xiaohua34@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路88號', 'Active'),
(10490, '劉大頭', '0901234567', 'Pa55w.rd490', 'datou36@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路99號', 'Active'),
(10491, '蔡小莉', '0932109876', 'Pa55w.rd491', 'xiaoli69@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路11號', 'Active'),
(10492, '鄭大牛', '0956789012', 'Pa55w.rd492', 'danai36@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路22號', 'Active'),
(10493, '林小虎', '0976543210', 'Pa55w.rd493', 'xiaohu36@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路33號', 'Active'),
(10494, '黃大雄', '0901234567', 'Pa55w.rd494', 'daxiong69@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路44號', 'Active'),
(10495, '李小珍', '0932109876', 'Pa55w.rd495', 'xiaozhen36@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路55號', 'Active'),
(10496, '王大海', '0956789012', 'Pa55w.rd496', 'dahai35@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路66號', 'Active'),
(10497, '吳小莉', '0976543210', 'Pa55w.rd497', 'xiaoli70@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路77號', 'Active'),
(10498, '張大雄', '0901234567', 'Pa55w.rd498', 'daxiong70@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路88號', 'Active'),
(10499, '陳小花', '0932109876', 'Pa55w.rd499', 'xiaohua35@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路99號', 'Active'),
(10500, '劉大頭', '0956789012', 'Pa55w.rd500', 'datou37@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路11號', 'Active'),
(10501, '蔡小莉', '0976543210', 'Pa55w.rd501', 'xiaoli71@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路12號', 'Active'),
(10502, '鄭大牛', '0901234567', 'Pa55w.rd502', 'danai37@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路23號', 'Active'),
(10503, '林小虎', '0932109876', 'Pa55w.rd503', 'xiaohu37@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路34號', 'Active'),
(10504, '黃大雄', '0956789012', 'Pa55w.rd504', 'daxiong71@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路45號', 'Active'),
(10505, '李小珍', '0976543210', 'Pa55w.rd505', 'xiaozhen37@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路56號', 'Active'),
(10506, '王大海', '0901234567', 'Pa55w.rd506', 'dahai36@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路67號', 'Active'),
(10507, '吳小莉', '0932109876', 'Pa55w.rd507', 'xiaoli72@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路78號', 'Active'),
(10508, '張大雄', '0956789012', 'Pa55w.rd508', 'daxiong72@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路89號', 'Active'),
(10509, '陳小花', '0976543210', 'Pa55w.rd509', 'xiaohua36@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路10號', 'Active'),
(10510, '劉大頭', '0901234567', 'Pa55w.rd510', 'datou38@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路21號', 'Active'),
(10511, '蔡小莉', '0976543210', 'Pa55w.rd511', 'xiaoli73@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路32號', 'Active'),
(10512, '鄭大牛', '0901234567', 'Pa55w.rd512', 'danai38@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路43號', 'Active'),
(10513, '林小虎', '0932109876', 'Pa55w.rd513', 'xiaohu38@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路54號', 'Active'),
(10514, '黃大雄', '0956789012', 'Pa55w.rd514', 'daxiong73@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路65號', 'Active'),
(10515, '李小珍', '0976543210', 'Pa55w.rd515', 'xiaozhen38@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路76號', 'Active'),
(10516, '王大海', '0901234567', 'Pa55w.rd516', 'dahai37@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路87號', 'Active'),
(10517, '吳小莉', '0932109876', 'Pa55w.rd517', 'xiaoli74@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路98號', 'Active'),
(10518, '張大雄', '0956789012', 'Pa55w.rd518', 'daxiong74@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路19號', 'Active'),
(10519, '陳小花', '0976543210', 'Pa55w.rd519', 'xiaohua37@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路29號', 'Active'),
(10521, '蔡小莉', '0976543210', 'Pa55w.rd521', 'xiaoli75@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路39號', 'Active'),
(10522, '鄭大牛', '0901234567', 'Pa55w.rd522', 'danai39@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路49號', 'Active'),
(10523, '林小虎', '0932109876', 'Pa55w.rd523', 'xiaohu39@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路59號', 'Active'),
(10524, '黃大雄', '0956789012', 'Pa55w.rd524', 'daxiong75@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路69號', 'Active'),
(10525, '李小珍', '0976543210', 'Pa55w.rd525', 'xiaozhen39@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路79號', 'Active'),
(10526, '王大海', '0901234567', 'Pa55w.rd526', 'dahai38@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路89號', 'Active'),
(10527, '吳小莉', '0932109876', 'Pa55w.rd527', 'xiaoli76@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路99號', 'Active'),
(10528, '張大雄', '0956789012', 'Pa55w.rd528', 'daxiong76@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路21號', 'Active'),
(10529, '陳小花', '0976543210', 'Pa55w.rd529', 'xiaohua38@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路32號', 'Active'),
(10530, '劉大頭', '0901234567', 'Pa55w.rd530', 'datou40@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路43號', 'Active'),
(10531, '蔡小莉', '0976543210', 'Pa55w.rd531', 'xiaoli77@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路54號', 'Active'),
(10532, '鄭大牛', '0901234567', 'Pa55w.rd532', 'danai40@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路65號', 'Active'),
(10533, '林小虎', '0932109876', 'Pa55w.rd533', 'xiaohu40@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路76號', 'Active'),
(10534, '黃大雄', '0956789012', 'Pa55w.rd534', 'daxiong77@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路87號', 'Active'),
(10535, '李小珍', '0976543210', 'Pa55w.rd535', 'xiaozhen40@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路98號', 'Active'),
(10536, '王大海', '0901234567', 'Pa55w.rd536', 'dahai39@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路13號', 'Active'),
(10537, '吳小莉', '0932109876', 'Pa55w.rd537', 'xiaoli78@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路24號', 'Active'),
(10538, '張大雄', '0956789012', 'Pa55w.rd538', 'daxiong78@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路35號', 'Active'),
(10539, '陳小花', '0976543210', 'Pa55w.rd539', 'xiaohua39@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路46號', 'Active'),
(10541, '蔡小莉', '0976543210', 'Pa55w.rd541', 'xiaoli79@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路57號', 'Active'),
(10542, '鄭大牛', '0901234567', 'Pa55w.rd542', 'danai41@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮民權路68號', 'Active'),
(10543, '林小虎', '0932109876', 'Pa55w.rd543', 'xiaohu41@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣水里鄉中山路79號', 'Active'),
(10544, '黃大雄', '0956789012', 'Pa55w.rd544', 'daxiong79@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣國姓鄉文化路90號', 'Active'),
(10545, '李小珍', '0976543210', 'Pa55w.rd545', 'xiaozhen41@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮中正路10號', 'Active'),
(10546, '王大海', '0901234567', 'Pa55w.rd546', 'dahai40@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮民權路21號', 'Active'),
(10547, '吳小莉', '0932109876', 'Pa55w.rd547', 'xiaoli80@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣竹山鎮中山路32號', 'Active'),
(10548, '張大雄', '0956789012', 'Pa55w.rd548', 'daxiong80@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣信義鄉中正路43號', 'Active'),
(10549, '陳小花', '0976543210', 'Pa55w.rd549', 'xiaohua40@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣仁愛鄉文化路54號', 'Active'),
(10550, '劉大頭', '0901234567', 'Pa55w.rd550', 'datou42@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣埔里鎮民族路65號', 'Active'),
(10551, '蔡小莉', '0976543210', 'Pa55w.rd551', 'xiaoli81@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e.jpg', '南投縣草屯鎮中正路76號', 'Active'),
(10552, '鄭大牛', '0901234567', 'Pa55w.rd552', 'danai42@gmail.com', 'e0eb6328a1472aab9a69d1aa24a5baef9f842325.jpg', '南投縣竹山鎮民權路87號', 'Active'),
(10553, '林小虎', '0932109876', 'Pa55w.rd553', 'xiaohu42@gmail.com', '83eb59e2df683f3bf154cc029094058ab3eaece3.jpg', '南投縣水里鄉中山路98號', 'Active'),
(10554, '黃大雄', '0956789012', 'Pa55w.rd554', 'daxiong81@gmail.com', 'c0eb4e685cb6562d358a38f7f2ad5e34efa0f074.jpg', '南投縣國姓鄉文化路11號', 'Active'),
(10555, '李小珍', '0976543210', 'Pa55w.rd555', 'xiaozhen42@gmail.com', '6e0dfee7c7c4013da92c811c17bc4d810bdbdf9c.jpg', '南投縣埔里鎮中正路22號', 'Active'),
(10556, '王大海', '0901234567', 'Pa55w.rd556', 'dahai41@gmail.com', '2377e31c501cea8ac3bf0767465b6d3c80158bfb.jpg', '南投縣草屯鎮民權路33號', 'Active'),
(10557, '吳小莉', '0932109876', 'Pa55w.rd557', 'xiaoli82@gmail.com', '55178895036a2f0f6bf2f4efb3977f3bfa37cc87.jpg', '南投縣竹山鎮中山路44號', 'Active'),
(10558, '張大雄', '0956789012', 'Pa55w.rd558', 'daxiong82@gmail.com', '32c2c656b7a17fe0d29fed05369f52ca9948d3a9.jpg', '南投縣信義鄉中正路55號', 'Active'),
(10559, '陳小花', '0976543210', 'Pa55w.rd559', 'xiaohua41@gmail.com', '74359ae4e47bee54a9f6d93f5dfac6f19c93a1b7.jpg', '南投縣仁愛鄉文化路66號', 'Active'),
(10560, 'rain', '0986473121', '', 'rain@gmail.com', '9d5679c3eb65158f993ed0bb9b34b59ccefc9438.jpg', '台南市文賢路123號55樓', '');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`) USING BTREE,
  ADD KEY `pet_info_blog_fk` (`pet_id`);

--
-- 資料表索引 `bulletin`
--
ALTER TABLE `bulletin`
  ADD PRIMARY KEY (`bulletin_id`);

--
-- 資料表索引 `commodity`
--
ALTER TABLE `commodity`
  ADD PRIMARY KEY (`commodity_id`);

--
-- 資料表索引 `faq_shopinfo`
--
ALTER TABLE `faq_shopinfo`
  ADD PRIMARY KEY (`question_id`);

--
-- 資料表索引 `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `pet_info_favorite_fk` (`pet_id`),
  ADD KEY `user_favorite_fk` (`user_id`);

--
-- 資料表索引 `mypet`
--
ALTER TABLE `mypet`
  ADD PRIMARY KEY (`mypet_id`),
  ADD KEY `pet_info_mypet_fk` (`pet_id`),
  ADD KEY `user_mypet_fk` (`user_id`);

--
-- 資料表索引 `notice_adoptinfo`
--
ALTER TABLE `notice_adoptinfo`
  ADD PRIMARY KEY (`question_adopt_id`);

--
-- 資料表索引 `online_virtual_adoption_form`
--
ALTER TABLE `online_virtual_adoption_form`
  ADD PRIMARY KEY (`adopt_id`),
  ADD KEY `pet_info_online_virtual__adoption_form_fk` (`pet_id`),
  ADD KEY `user_online_virtual__adoption_form_fk` (`user_id`);

--
-- 資料表索引 `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `commodity_order_detail_fk` (`commodity_id`);

--
-- 資料表索引 `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_order_history_fk` (`user_id`),
  ADD KEY `order_detail_id_fk` (`order_detail_id`);

--
-- 資料表索引 `pet_action`
--
ALTER TABLE `pet_action`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `pet_info_pet_action_fk` (`pet_id`);

--
-- 資料表索引 `pet_info`
--
ALTER TABLE `pet_info`
  ADD PRIMARY KEY (`pet_id`);

--
-- 資料表索引 `psycological_test`
--
ALTER TABLE `psycological_test`
  ADD PRIMARY KEY (`question_id`);

--
-- 資料表索引 `psycological_test_result`
--
ALTER TABLE `psycological_test_result`
  ADD PRIMARY KEY (`result_id`);

--
-- 資料表索引 `reserve_system`
--
ALTER TABLE `reserve_system`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `pet_info_reserve_system_fk` (`pet_id`),
  ADD KEY `user_reserve_system_fk` (`user_id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `bulletin`
--
ALTER TABLE `bulletin`
  MODIFY `bulletin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10011;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `commodity`
--
ALTER TABLE `commodity`
  MODIFY `commodity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10022;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `faq_shopinfo`
--
ALTER TABLE `faq_shopinfo`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10011;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `favorite`
--
ALTER TABLE `favorite`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10011;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mypet`
--
ALTER TABLE `mypet`
  MODIFY `mypet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10011;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `notice_adoptinfo`
--
ALTER TABLE `notice_adoptinfo`
  MODIFY `question_adopt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10011;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `online_virtual_adoption_form`
--
ALTER TABLE `online_virtual_adoption_form`
  MODIFY `adopt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10011;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10021;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_history`
--
ALTER TABLE `order_history`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10011;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pet_action`
--
ALTER TABLE `pet_action`
  MODIFY `action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10011;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pet_info`
--
ALTER TABLE `pet_info`
  MODIFY `pet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10044;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `psycological_test`
--
ALTER TABLE `psycological_test`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10011;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `reserve_system`
--
ALTER TABLE `reserve_system`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10041;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10561;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `pet_info_blog_fk` FOREIGN KEY (`pet_id`) REFERENCES `pet_info` (`pet_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 資料表的限制式 `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `pet_info_favorite_fk` FOREIGN KEY (`pet_id`) REFERENCES `pet_info` (`pet_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_favorite_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 資料表的限制式 `mypet`
--
ALTER TABLE `mypet`
  ADD CONSTRAINT `pet_info_mypet_fk` FOREIGN KEY (`pet_id`) REFERENCES `pet_info` (`pet_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_mypet_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 資料表的限制式 `online_virtual_adoption_form`
--
ALTER TABLE `online_virtual_adoption_form`
  ADD CONSTRAINT `pet_info_online_virtual__adoption_form_fk` FOREIGN KEY (`pet_id`) REFERENCES `pet_info` (`pet_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_online_virtual__adoption_form_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 資料表的限制式 `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `commodity_order_detail_fk` FOREIGN KEY (`commodity_id`) REFERENCES `commodity` (`commodity_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 資料表的限制式 `order_history`
--
ALTER TABLE `order_history`
  ADD CONSTRAINT `user_order_history_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 資料表的限制式 `pet_action`
--
ALTER TABLE `pet_action`
  ADD CONSTRAINT `pet_info_pet_action_fk` FOREIGN KEY (`pet_id`) REFERENCES `pet_info` (`pet_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 資料表的限制式 `reserve_system`
--
ALTER TABLE `reserve_system`
  ADD CONSTRAINT `pet_info_reserve_system_fk` FOREIGN KEY (`pet_id`) REFERENCES `pet_info` (`pet_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_reserve_system_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
