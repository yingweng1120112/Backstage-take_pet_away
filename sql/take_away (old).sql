-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-03-25 03:23:56
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
-- 資料庫： `take_away`
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

INSERT INTO `blog` (`blog_id`, `pet_id`, `content`, `pic1`, `pic2`, `pic3`, `pic4`, `pic5`, `time`) VALUES
(10001, 10010, '看醫生，好恐怖，都是不認識的人。', '10001-1.jpg','','','','', '2024-03-21 14:08:02'),
(10002, 10010, '今天沒出門', '10002-1.jpg','10002-2.jpg','10002-3.jpg','10002-4.jpg','10002-5.jpg', '2024-03-21 14:08:54'),
(10003, 10010, '今天好無聊', '','','','','',  '2024-03-21 14:09:09'),
(10004, 10010, 'A，B，C，D，E，F，G', '', '','','','', '2024-03-21 14:09:47'),
(10005, 10010, 'Hello，world', '','','','','',  '2024-03-21 14:10:09'),
(10006, 10010, '陰天', '','','','','',  '2024-03-21 14:10:21');

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

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `type` varchar(8) NOT NULL,
  `species` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`product_id`, `name`, `brand_name`, `price`, `pic`, `type`, `species`) VALUES
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
(10001, '10001', '10001', '定期扣款', 1, '信用卡', '緊急需要 ', '地址'),
(10002, '10002', '10002', '定期扣款', 3, '超商繳費', '絕孕計畫', '信箱'),
(10003, '10003', '10003', '單次捐贈', 2, '信用卡', '不指定', '地址'),
(10004, '10004', '10004', '單次捐贈', 1, '超商繳費', '緊急需要', '信箱'),
(10005, '10005', '10005', '定期扣款', 2, '超商繳費', '緊急需要', '地址'),
(10006, '10006', '10006', '單次捐贈', 2, '銀行轉帳', '緊急需要', '信箱'),
(10007, '10007', '10007', '定期扣款', 1, '超商繳費', '絕孕計畫 ', '地址 '),
(10008, '10008', '10008', '單次捐贈', 3, '銀行轉帳', '絕孕計畫', '信箱'),
(10009, '10009', '10009', '定期扣款', 3, '銀行轉帳 ', ' 緊急需要', ' 地址'),
(10010, '10010', '10010', '單次捐贈', 3, '銀行轉帳 ', ' 絕孕計畫', ' 地址');

-- --------------------------------------------------------

--
-- 資料表結構 `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `totail_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `product_id`, `amount`, `unit_price`, `totail_price`) VALUES
(10001, 10001, 2, 980, 2432),
(10002, 10002, 5, 460, 1345),
(10003, 10003, 6, 460, 8310),
(10004, 10004, 40, 460, 1160),
(10005, 10005, 10, 590, 480),
(10006, 10006, 10, 950, 480),
(10007, 10007, 10, 299, 890),
(10008, 10008, 8, 439, 2392),
(10009, 10009, 9, 680, 1215),
(10010, 10010, 10, 250, 3760),
(10011, 10011, 1, 980, 456),
(10012, 10012, 2, 1600, 4336),
(10013, 10013, 2, 720, 4798),
(10014, 10014, 3, 850, 3960),
(10015, 10015, 5, 590, 385);

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
(10002, 10002, 10002, '柳彥良', '0966164609', '2024-02-14 03:23:43', '請務必確保送貨地址準確無誤，上次送錯了地址造成了一些麻煩。', '超商取貨', '貨到付款', '彰化縣和美鎮北庭路92號', '未出貨', '/J9IP1P3'),
(10003, 10003, 10003, '林雅君', '0976349794', '2024-02-15 03:23:43', '希望商品能盡快送達，我急著要用。', '超商取貨', '貨到付款', '宜蘭縣三星鄉忠平路45號8樓', '未出貨', '/J9IP1P4'),
(10004, 10004, 10004, '林立一', '0901947560', '2024-02-16 03:23:43', '麻煩包裝時不要用塑膠袋，我們家已經盡量減少使用塑膠了。', '宅配', '貨到付款', '宜蘭縣冬山鄉武罕七路96號之9', '未出貨', '/J9IP1P5'),
(10005, 10005, 10005, '潘若天', '0996918465', '2024-02-17 03:23:43', '如果可以的話，請用快遞公司送貨，比較方便取貨。', '宅配', '貨到付款', '新竹市北區東大路４段19號之2', '未出貨', '/J9IP1P6'),
(10006, 10006, 10006, '溫怡君', '0974367928', '2024-02-18 03:23:43', '請不要在包裝上留下價格標籤，這是一份禮物。', '宅配', '貨到付款', '臺東縣臺東市新站路14號', '未出貨', '/J9IP1P7'),
(10007, 10007, 10007, '王儒容', '0980036395', '2024-02-19 03:23:43', '請在運送前確認訂單的準確性，以避免發生錯誤運送。', '宅配', '貨到付款', '彰化縣芳苑鄉延平巷19號', '未出貨', '/J9IP1P8'),
(10008, 10008, 10008, '蔡淑貞', '0997096074', '2024-02-20 03:23:43', '請務必確保送貨地址準確無誤', '宅配', '信用卡', '桃園市大園區平南路97號4樓之6', '未出貨', '/J9IP1P9'),
(10009, 10009, 10009, '林美珍', '0901730880', '2024-02-21 03:23:43', '請確保在運送前填寫完整的運送資訊，以免延誤運送時間。', '宅配', '信用卡', '臺中市西屯區大有西街81號5樓', '運送中', '/J9IP110'),
(10010, 10010, 10010, '蔡琬芝', '0997739872', '2024-02-22 03:23:43', '請用快遞公司送貨', '宅配', '信用卡', '彰化縣倉北巷6號12樓', '運送中', '/J9IP111'),
(10011, 10011, 10011, '侯幸英', '0962689725', '2024-02-23 03:23:43', '記得包裝得好一點，不要讓商品壞掉了。', '超商取貨', '貨到付款', '臺中市北區青島路２段71號之15', '已出貨', '/J9IP1P2'),
(10012, 10012, 10012, '王小美', '0934123456', '2024-02-24 03:23:43', '希望能在下午送達，謝謝!', '宅配', '信用卡', '高雄市三民區民族一路238號7樓', '未出貨', '/K5QW2A4'),
(10013, 10013, 10013, '李小強', '0987123456', '2024-03-04 03:23:43', '需要特殊配送，請注意商品安全。', '宅配', '信用卡', '新北市新店區中興路123號', '訂單取消', '/R7WV3Z8'),
(10014, 10014, 10014, '張小華', '0918123456', '2024-02-26 03:23:43', '訂單商品易碎，請小心處理。', '超商取貨', '貨到付款', '臺南市北區成功路123號', '已送達', '/T8YX4B1'),
(10015, 10015, 10015, '陳小明', '0956123456', '2024-02-27 03:23:43', '特別備註：商品顏色以紅色為主。', '宅配', '信用卡', '臺中市南屯區文心路98號', '已出貨', '/U9ZA2C3'),
(10016, 10016, 10016, '林小美', '0978123456', '2024-02-28 03:23:43', '送貨時間請儘量選在下午兩點後。', '超商取貨', '貨到付款', '高雄市前鎮區中華五路678號', '運送中', '/V0BX5D4'),
(10017, 10017, 10017, '吳小菁', '0926123456', '2024-02-29 03:23:43', '訂單內容需保密，請注意。', '宅配', '信用卡', '臺北市信義區松高路456號', '已送達', '/P6CO9E7'),
(10018, 10018, 10018, '蔡小龍', '0989123456', '2024-03-01 03:23:43', '希望能在晚上六點前送達，謝謝。', '宅配', '銀行轉帳', '新竹市東區中央路789號', '未出貨', '/Q3DN8F6'),
(10019, 10019, 10019, '許小花', '0952123456', '2024-03-02 03:23:43', '商品有保鮮需求，請盡速配送。', '快遞', '信用卡', '臺中市北區北屯路345號', '已送達', '/S4EM7G5'),
(10020, 10020, 10020, '劉小勇', '0936123456', '2024-03-03 03:23:43', '訂單緊急，請盡快處理。', '超商取貨', '貨到付款', '高雄市左營區新莊一路123號', '已送達', '/R1WQ2Z9');

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

INSERT INTO `pet_action` (`action_id`, `pet_id`, `sit`, `down`, `hand`, `stay`, `stay`, `toilet`,`bark`,`respond`,`follow`,
 `mobility`, `adaptability`, `lively`, `affectionate`) VALUES
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
(10001, '阿華', '0994362671', 'Pa55w.rd1', 'Dana@gmail.com', '', '桃園市龜山區萬壽路１段14號', ''),
(10002, '老明', '0906527662', 'Pa55w.rd2', 'xiung@gmail.com', '', '屏東縣鹽埔鄉博愛街58號', 'Active'),
(10003, '王曉明', '0973439927', 'Pa55w.rd3', 'yushan@gmail.co', '', '嘉義市西區博愛市場7號12樓之16', 'Active'),
(10004, '楊大火', '0983162958', 'Pa55w.rd4', 'yht@gmail.com', '', '宜蘭縣大同鄉泰雅路６段7號', 'Active'),
(10005, '賴哲維', '0949408996', 'Pa55w.rd5', 'boran@gmail.com', '', '新竹縣竹北市光明六路51號', 'Active'),
(10006, '蘇綺璇', '0965944982', 'Pa55w.rd6', 'larry@gmail.com', '', '新竹縣竹北市豆子埔57號之11', 'Active'),
(10007, '黃怡如', '0903426611', 'Pa55w.rd7', 'ying@gmail.com', '', '彰化縣社頭鄉中興路99號', 'Active'),
(10008, '鄒淑惠', '0975903963', 'Pa55w.rd8', 'weng@gmail.com', '', '高雄市鼓山區建榮路57號', 'Active'),
(10009, '馮士哲', '0947122924', 'Pa55w.rd9', 'hebe@gmail.com', '', '屏東縣潮州鎮三光路28號之4', 'Active'),
(10010, '蔡琬芝', '0900492083', 'Pa55w.rd10', 'Aile@gmail.com', '', '臺南市北區育成路94號8樓', 'Active'),
(10011, '陳小美', '0987654321', 'Pa55w.rd11', 'chenmei@gmail.com', '', '台北市信義區忠孝東路五段513號', 'Active'),
(10012, '林大同', '0934567890', 'Pa55w.rd12', 'lintong@gmail.com', '', '新北市三重區重新路3段103號', 'Active');



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
-- 資料表索引 `productv`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

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
-- ALTER TABLE `bulletin`
--   MODIFY `bulletin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10011;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `commodity`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10022;

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
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10021;

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `psycological_test_result`
--
ALTER TABLE `psycological_test_result`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10011;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `reserve_system`
--
ALTER TABLE `reserve_system`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10041;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10563;

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
  ADD CONSTRAINT `product_order_detail_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
