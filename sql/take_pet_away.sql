CREATE DATABASE take_pet_away;
use take_pet_away;
CREATE TABLE Psycological_Test_Result (
                personality_type varchar(6),
                pic BLOB ,
                type__content VARCHAR(200) NOT NULL,
                PRIMARY KEY (personality_type)
);

CREATE TABLE Psycological_Test (
                question_id INT auto_increment NOT NULL,
                question_content VARCHAR(50) NOT NULL,
                option_a VARCHAR(30) NOT NULL,
                option_b VARCHAR(30) NOT NULL,
                option_c VARCHAR(30) NOT NULL,
                option_d VARCHAR(30) NOT NULL,
                option_value_a INT NOT NULL,
                option_value_b INT NOT NULL,
                option_value_c INT NOT NULL,
                option_value_d INT NOT NULL,
                PRIMARY KEY (question_id)
);


CREATE TABLE Notice_Adoptinfo (
                question_adopt_id INT auto_increment NOT NULL,
                main_question VARCHAR(60) NOT NULL,
                small_question VARCHAR(60) NOT NULL,
                faq_answer VARCHAR(60) NOT NULL,
                PRIMARY KEY (question_adopt_id)
);


CREATE TABLE Faq_Shopinfo (
                question_id INT auto_increment NOT NULL,
                main_question VARCHAR(60) NOT NULL,
                small_question VARCHAR(60) NOT NULL,
                faq_answer VARCHAR(60) NOT NULL,
                PRIMARY KEY (question_id)
);


CREATE TABLE Pet_Info (
                pet_id INT auto_increment NOT NULL,
                personality_type varchar(6),
                name VARCHAR(10) NOT NULL,
                tag VARCHAR(14) NOT NULL,
                age INT NOT NULL,
                type VARCHAR(2) NOT NULL,
                weight INT NOT NULL,
                sex BOOLEAN NOT NULL,
                breeds VARCHAR(10) NOT NULL,
                color  VARCHAR(10) NOT NULL,
                adopted BOOLEAN NOT NULL,
                fixed  BOOLEAN NOT NULL,
                microchip BOOLEAN NOT NULL,
                vaccine BOOLEAN NOT NULL,
                deworm BOOLEAN NOT NULL,
                pet_pic1 BLOB,
                pet_pic2 BLOB,
                pet_pic3 BLOB,
                pet_pic4 BLOB,
                pet_pic5 BLOB,
                pet_story VARCHAR(300) NOT NULL,
                habbit VARCHAR(300) NOT NULL,
                PRIMARY KEY (pet_id)
);


CREATE TABLE blog (
                blog_id INT auto_increment NOT NULL,
                pet_id INT NOT NULL,
                content VARCHAR(100) NOT NULL,
                pic BLOB,
                time DATETIME NOT NULL,
                PRIMARY KEY (blog_id)
);


CREATE TABLE Pet_action (
                action_id INT auto_increment NOT NULL,
                pet_id INT NOT NULL,
                sit INT NOT NULL,
                down INT NOT NULL,
                hand  INT NOT NULL,
                stay INT NOT NULL,
                know_name INT NOT NULL,
                toilet INT NOT NULL,
                mobility INT NOT NULL,
                personality INT NOT NULL,
                adaptability INT NOT NULL,
                bark INT NOT NULL,
                anxiety INT NOT NULL,
                attack INT NOT NULL,
                food_aggression INT NOT NULL,
                break INT NOT NULL,
                social INT NOT NULL,
                other VARCHAR(300),
                PRIMARY KEY (action_id)
);


CREATE TABLE User (
                user_id INT auto_increment NOT NULL,
                name VARCHAR(15) NOT NULL,
                account VARCHAR(10) NOT NULL,
                password VARCHAR(12) NOT NULL,
                email VARCHAR(15) NOT NULL,
                pic BLOB,
                address_detail VARCHAR(80) NOT NULL,
                status VARCHAR(6) NOT NULL,
                PRIMARY KEY (user_id)
);


CREATE TABLE Favorite (
                favorite_id  INT auto_increment NOT NULL,
                user_id INT NOT NULL,
                pet_id INT NOT NULL,
                PRIMARY KEY (favorite_id)
);


CREATE TABLE Reserve_System (
                reservation_id INT auto_increment NOT NULL,
                pet_id INT NOT NULL,
                user_id INT NOT NULL,
                time DATETIME NOT NULL,
                PRIMARY KEY (reservation_id)
);


CREATE TABLE Online_Virtual_Adoption_Form (
                adopt_id INT auto_increment NOT NULL,
                pet_id INT NOT NULL,
                user_id INT NOT NULL,
                donation_method  VARCHAR(8) NOT NULL,
                amount INT NOT NULL,
                payment VARCHAR(7) NOT NULL,
                donation VARCHAR(8) NOT NULL,
                donate_address VARCHAR(8) NOT NULL,
                PRIMARY KEY(adopt_id)
);


CREATE TABLE Mypet (
                mypet_id INT auto_increment NOT NULL,
                user_id INT NOT NULL,
                pet_id INT NOT NULL,
                PRIMARY KEY (mypet_id)
);


CREATE TABLE Order_History (
                order_id INT auto_increment NOT NULL,
                user_id INT NOT NULL,
                order_detail_id INT NOT NULL,
                recipient_name VARCHAR(8) NOT NULL,
                recipient_phone VARCHAR(10) NOT NULL,
                order_date DATETIME NOT NULL,
                order_remark VARCHAR(80),
                delivery_method  VARCHAR(8) NOT NULL,
                payment_method VARCHAR(8) NOT NULL,
                recipient_address_detail VARCHAR(80) NOT NULL,
                status VARCHAR(8) NOT NULL,
                Invoice_no VARCHAR(8) NOT NULL,
                PRIMARY KEY (order_id)
);


CREATE TABLE Commodity (
                commodity_id INT auto_increment NOT NULL,
                name VARCHAR(100) NOT NULL,
                brand_name VARCHAR(30) NOT NULL,
                price INT NOT NULL,
                pic BLOB ,
                type VARCHAR(8) NOT NULL,
                species VARCHAR(2) NOT NULL,
                PRIMARY KEY (commodity_id)
);


CREATE TABLE Order_Detail (
                order_detail_id INT auto_increment NOT NULL,
                commodity_id INT NOT NULL,
                amount INT NOT NULL,
                unit_price INT NOT NULL,
                totail_price INT NOT NULL,
                PRIMARY KEY (order_detail_id)
);


CREATE TABLE Bulletin (
                bulletin_id INT auto_increment NOT NULL,
                type VARCHAR(8) NOT NULL,
                title VARCHAR(60) NOT NULL,
                date DATE NOT NULL,
                PRIMARY KEY (bulletin_id)
);


ALTER TABLE Pet_Info ADD CONSTRAINT psycological_test_result_pet_info_fk
FOREIGN KEY (personality_type)
REFERENCES Psycological_Test_Result (personality_type)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Pet_action ADD CONSTRAINT pet_info_pet_action_fk
FOREIGN KEY (pet_id)
REFERENCES Pet_Info (pet_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE blog ADD CONSTRAINT pet_info_blog_fk
FOREIGN KEY (pet_id)
REFERENCES Pet_Info (pet_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Mypet ADD CONSTRAINT pet_info_mypet_fk
FOREIGN KEY (pet_id)
REFERENCES Pet_Info (pet_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Reserve_System ADD CONSTRAINT pet_info_reserve_system_fk
FOREIGN KEY (pet_id)
REFERENCES Pet_Info (pet_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Favorite ADD CONSTRAINT pet_info_favorite_fk
FOREIGN KEY (pet_id)
REFERENCES Pet_Info (pet_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Online_Virtual_Adoption_Form ADD CONSTRAINT pet_info_online_virtual__adoption_form_fk
FOREIGN KEY(pet_id)
REFERENCES Pet_Info(pet_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Mypet ADD CONSTRAINT user_mypet_fk
FOREIGN KEY (user_id)
REFERENCES User (user_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Order_History ADD CONSTRAINT user_order_history_fk
FOREIGN KEY (user_id)
REFERENCES User (user_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Online_Virtual_Adoption_Form ADD CONSTRAINT user_online_virtual__adoption_form_fk
FOREIGN KEY(user_id)
REFERENCES User(user_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Reserve_System ADD CONSTRAINT user_reserve_system_fk
FOREIGN KEY (user_id)
REFERENCES User (user_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Favorite ADD CONSTRAINT user_favorite_fk
FOREIGN KEY (user_id)
REFERENCES User (user_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;


ALTER TABLE Order_Detail ADD CONSTRAINT commodity_order_detail_fk
FOREIGN KEY (commodity_id)
REFERENCES Commodity (commodity_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;


-- 生成假資料
INSERT INTO Psycological_Test_Result (personality_type, pic, type__content) VALUES 
('敏感型', NULL, '這類型的貓狗面對不同的人事物很容易會出現情緒激動等，或是面對新狀況時顯得膽小、缺乏安全感。對待害羞又敏感的狗狗，就要多花一點耐心與愛。'),
('樂天型', NULL, '樂天型的貓狗精力充沛，他們愛所有人、愛玩耍。不過這種性格的狗狗往往太過熱情，一些大型犬若沒有從小訓練很可能「沒禮貌」地跳上人家的身上表示歡迎。所以適當地教導他們冷靜、禮貌與服從你的命令很重要
'),
('獨立型', NULL, '獨立型的貓狗通常只願意與他認可的一兩個人建立關係，對待其他人就感覺很冷漠。就算主人不在，他們通常也能將自己照顧得很好。
'),
('自信型',NULL, '自信型的貓狗善於擔任領導者的角色。他善於面對新情況，表現勇敢、甚至出現興奮的態度；在肢體語言上也充滿信心。
'),
('適應型', NULL, '這類型的貓狗最好相處了，也最容易訓練。他們通常願意主動去取悅主人，但不會如樂天型的那麼熱情、過於失控；個性友好、冷靜、有愛心，和不同的小動物也能相處得很好，展現成熟的姿態
');


INSERT INTO Psycological_Test (question_id, question_content, option_a, option_b, option_c, option_d, option_value_a, option_value_b, option_value_c, option_value_d) VALUES 
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

INSERT INTO Notice_Adoptinfo (question_adopt_id, main_question, small_question, faq_answer) VALUES 
(10001, '認養事項', '認養前準備', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走火入魔。'),
(10002, '準備用品', '玩具跟零食', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走火入魔。'),
(10003, '貓貓相關', '適合貓的環境', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走火入魔。'),
(10004, '認養事項', '認養前準備', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走火入魔。'),
(10005, '認養程序', '年齡限制', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走火入魔。'),
(10006, '貓貓相關', '適合貓的環境', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走火入魔。'),
(10007, '認養程序', '年齡限制', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走火入魔。'),
(10008, '準備用品', '玩具跟零食', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走火入魔。'),
(10009, '認養程序', '年齡限制', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走火入魔。'),
(10010, '狗狗相關', '大型狗需要的場地', '在這種不可避免的衝突下，我們必須解決這個問題。儘管狗狗看似不顯眼，卻佔據了我的腦海。對於狗狗，我們不能不去想，卻也不能走火入魔。');



INSERT INTO Faq_Shopinfo (question_id, main_question, small_question, faq_answer) VALUES 
(10001, '訂單相關', '實體商品購物流程說明', '當訂單取件完成、送達或是完成訂單服務(虛擬商品或電子票券)後，系統會轉換訂單狀態為【訂單完成】。訂單完成代表此訂單交易已結束，將進行撥款賣家流程。'),
(10002, '訂單相關', '訂購之後，何時可以收到商品呢？', '當訂單取件完成、送達或是完成訂單服務(虛擬商品或電子票券)後，系統會轉換訂單狀態為【訂單完成】。訂單完成代表此訂單交易已結束，將進行撥款賣家流程。'),
(10003, '訂單相關', '實體商品購物流程說明', '當訂單取件完成、送達或是完成訂單服務(虛擬商品或電子票券)後，系統會轉換訂單狀態為【訂單完成】。訂單完成代表此訂單交易已結束，將進行撥款賣家流程。'),
(10004, '配送相關', '實體商品購物流程說明', '欲辦理退貨的商品，須於取貨後七日內申請，並保持商品完整，不能拆封，若已拆封請恕無法替您辦理退貨，且款項僅能退款至訂購人的帳戶。'),
(10005, '配送相關', '取貨方式及付款方式說明', '欲辦理退貨的商品，須於取貨後七日內申請，並保持商品完整，不能拆封，若已拆封請恕無法替您辦理退貨，且款項僅能退款至訂購人的帳戶。'),
(10006, '配送相關', '實體商品購物流程說明', '欲辦理退貨的商品，須於取貨後七日內申請，並保持商品完整，不能拆封，若已拆封請恕無法替您辦理退貨，且款項僅能退款至訂購人的帳戶。'),
(10007, '退換貨相關', '取貨方式及付款方式說明', '欲辦理退貨的商品，須於取貨後七日內申請，並保持商品完整，不能拆封，若已拆封請恕無法替您辦理退貨，且款項僅能退款至訂購人的帳戶。'),
(10008, '會員資訊與其他', '取貨方式及付款方式說明', '欲辦理退貨的商品，須於取貨後七日內申請，並保持商品完整，不能拆封，若已拆封請恕無法替您辦理退貨，且款項僅能退款至訂購人的帳戶。'),
(10009, '付款或帳務問題', '取貨方式及付款方式說明', '欲辦理退貨的商品，須於取貨後七日內申請，並保持商品完整，不能拆封，若已拆封請恕無法替您辦理退貨，且款項僅能退款至訂購人的帳戶。'),
(10010, '付款或帳務問題', '取貨方式及付款方式說明', '欲辦理退貨的商品，須於取貨後七日內申請，並保持商品完整，不能拆封，若已拆封請恕無法替您辦理退貨，且款項僅能退款至訂購人的帳戶。');

INSERT INTO Pet_Info (pet_id, personality_type, name, tag, age, type, weight, sex, breeds, color, adopted, fixed, microchip, vaccine, deworm, pet_pic1, pet_pic2, pet_pic3, pet_pic4, pet_pic5, pet_story, habbit) VALUES 
(10001, 10001, 'Carson', '活潑好動超陽光', 14, '狗', 18, '母', '黃金獵犬', '棕', TRUE, TRUE, FALSE, TRUE, FALSE, NULL, NULL, NULL, NULL, NULL, '加一我是要多的名其。喔以幫良我不喜巧克力，果然是溫作，全是學生望不是我可能，嗚嗚嗚準備有人人的上。是這太冷，的時以年畫好。', '了但都是想國人以自的耳，什不這樣，真的了他一想，也覺法理解我不要說因為，然不是⋯是能我真的找了。
'),
(10002, 10002, 'Erika', '害羞怕生', 9, '狗', 30, '公', '拉不拉多', '棕', TRUE, TRUE, TRUE, FALSE, FALSE, NULL, NULL, NULL, NULL, NULL, '是不要劇寫聖誕節後就公，到一堆人的內容，很可好多自應該是：所以你不你可以遺失物？後能弟弟需要上班覺得好，噁心件是真的旅的日⋯誕禮物河道很開心了這樣，可以不好希望給醫生是感覺⋯了一次的回覆到請的創好像有基本⋯放出來是要候都。', '有很棒打開給代的度的，的時看漫畫事情了傷，沒就只是靜：最近都有沒有我還出版一超開了一，這些相關來的上都那些，的的對有看。'),
(10003, 10003, 'Krystyna', '活潑耿直', 5, '貓', 10, '公', '緬甸貓', '黃', FALSE, TRUE, FALSE, TRUE, TRUE, NULL, NULL, NULL, NULL, NULL, '在床在的數了也好他的手，大真我也覺手上我這樣道啊真的⋯前都人在幹幹無關們怎麼，的活動懂或同意感覺上榜開發，後有很多次雖然是先把⋯努力配合一吃真的是。', '"自己我只很好玩是，是跟：下一不清麼突禮物自己麼有，來以為對如果。
"'),
(10004, 10004, 'Josi', '活潑耿直', 5, '狗', 10, '公', '藍貓', '灰', FALSE, FALSE, FALSE, TRUE, TRUE, NULL, NULL, NULL, NULL, NULL, '在床在的數了也好他的手，大真我也覺手上我這樣道啊真的⋯前都人在幹幹無關們怎麼，的活動懂或同意感覺上榜開發，後有很多次雖然是先把⋯努力配合一吃真的是。', '"自己我只很好玩是，是跟：下一不清麼突禮物自己麼有，來以為對如果。
"'),																	
(10005, 10005, 'Gisela', '酷酷超陽光', 4, '貓', 6, '母', '美國短毛貓', '黑', TRUE, FALSE, FALSE, TRUE, TRUE, NULL, NULL, NULL, NULL, NULL, '的訊息那邊，一個月一直都愛喔應該是，的畫面日本人我真的突然想知道那：像我的感覺，期待想謝謝您是現他入坑擊，超好笑寫著。給他，情的車可愛上不不是都，說什行為⋯的方式個月定將他，問題自己的國人可，天我他真的照片鬼但因為。', '輕大家都對不起太可愛，起來的留總之就，第一次反正結情況我跟了嗎⋯理解灣後這個我天了過：算是態然很手機就知道不意外，有人現在看即使。'),
(10006, 10006, 'Ellswerth', '黏人太活潑' , 1, '貓', 8, '公', '緬甸貓', '棕', FALSE, TRUE, FALSE, FALSE, FALSE, NULL, NULL, NULL, NULL, NULL, '蝴蝶根本就，我就是也太能口袋，點好實也東尼。真的快說沒友不會有，品的上的情況下，謝謝想像都會有到後喔喔喔，原因是我認為。', '兩個都我不是在吵架到最，要你和角色也還是沒時間開放匯款⋯時間他只當時這樣，了所以有問題我本可愛的，時間享陽，成這樣順帶一是我沒親友麼時候。'),
(10007, 10007, 'Carla', '耿直超陽光', 6, '貓', 5, '母', '孟加拉貓', '白', TRUE, TRUE, TRUE, TRUE, FALSE, NULL, NULL, NULL, NULL, NULL, '"那麼好這個人大家他人的⋯太滿好可愛家，的子紅還是可以接花錢也就需要，死掉們都是，只是睡了也有，可果還是的狀會一直會啊啊啊。就在知道就是一很努力都還，孩是沒想到，當年了現支持。
"', '也不敢進去口其實花的東西？拍拍法律有我，的冷了好看喔。我過那以，怎麼可需求米東尼而且這面的覺得，辛苦了這樣，我就是不是的所以。'),
(10008, 10008, 'Petr', '樂天好開心', 5, '狗', 12, '公', '拉不拉多', '棕', FALSE, TRUE, FALSE, FALSE, TRUE, NULL, NULL, NULL, NULL, NULL, '的訊息那邊，一個月一直都愛喔應該是，的畫面日本人我真的突然想知道那：像我的感覺，期待想謝謝您是現他入坑擊，超好笑寫著。給他，情的車可愛上不不是都，說什行為⋯的方式個月定將他，問題自己的國人可，天我他真的照片鬼但因為', '有趣能看更有這附近，就能媽嗚嗚嗚，愛的小想我可愛了了嗎，天早好好看，一週在了張我也要大家到謝各，在這完成分的尋去看看道為什。'),
(10009, 10009, 'Manda', '黏人怕生', 12, '狗', 28, '公', '杜賓', '棕', FALSE, TRUE, FALSE, TRUE, FALSE, NULL, NULL, NULL, NULL, NULL, '他們⋯多的機會，結果我這個看得到的我。溫度我，讓之後是日然覺得⋯一張啊啊真的覺，我之前的是是人，很好嚇到好好之後要，只是想也不會。', '得有社會這是一好可愛半我昨天，做的是不都在是真的。'),
(10010, 10010, 'Codie', '樂天好動', 3, '狗', 15, '公', '柴犬', '白', FALSE, FALSE, TRUE, TRUE, TRUE, NULL, NULL, NULL, NULL, NULL, '長的很不時會大家為了害是說，櫻桃有內醫一點的最重：不只是見了現在還，想到會的結果以不，設不覺得⋯實我有不現在來了店昨天。', '"要喜歡的辛苦了而我超販，工作味道不滿跨年，居搬生輕鬆人不會啦反，超好看的試看哥哥ＷＷＷ⋯久其實我很快就在時候歡出去，級怎麼覺得這。
"');


INSERT INTO blog (blog_id, pet_id, content, pic, time) VALUES 
(10001, 10001, '加一我是要多的名其。喔以幫良我不喜巧克力，果然是溫作，全是學生望不是我可能，嗚嗚嗚準備有人人的上。是這太冷，的時以年畫好。 ', NULL, '2024-03-18 10:00:00'),
(10002, 10002, '是不要劇寫聖誕節後就公，到一堆人的內容，很可好多自應該是：所以你不你可以遺失物？後能弟弟需要上班覺得好，噁心件是真的旅的日⋯誕禮物河道很開心了這樣，可以不好希望給醫生是感覺⋯了一次的回覆到請的創好像有基本⋯放出來是要候都。', NULL, '2024-03-18 11:00:00'),
(10003, 10003, '在床在的數了也好他的手，大真我也覺手上我這樣道啊真的⋯前都人在幹幹無關們怎麼，的活動懂或同意感覺上榜開發，後有很多次雖然是先把⋯努力配合一吃真的是。 ', NULL, '2024-03-18 12:00:00'),
(10004, 10004, '感覺不客人目前恐怖會至少我點的，浪今一瞬間標到底能造型，大家不易方式誰實就這不。前還如果哈哈哈，了但跟其他一直以要怎，下雨，安達有點難，上來以我因為我算你說，的是也是。 ', NULL, '2024-03-18 13:00:00'),
(10005, 10005, '的訊息那邊，一個月一直都愛喔應該是，的畫面日本人我真的突然想知道那：像我的感覺，期待想謝謝您是現他入坑擊，超好笑寫著。給他，情的車可愛上不不是都，說什行為⋯的方式個月定將他，問題自己的國人可，天我他真的照片鬼但因為。 ', NULL, '2024-03-18 14:00:00'),
(10006, 10006, '蝴蝶根本就，我就是也太能口袋，點好實也東尼。真的快說沒友不會有，品的上的情況下，謝謝想像都會有到後喔喔喔，原因是我認為。', NULL, '2024-03-18 15:00:00'),
(10007, 10007, '"那麼好這個人大家他人的⋯太滿好可愛家，的子紅還是可以接花錢也就需要，死掉們都是，只是睡了也有，可果還是的狀會一直會啊啊啊。就在知道就是一很努力都還，孩是沒想到，當年了現支持。 ', NULL, '2024-03-18 16:00:00'),
(10008, 10008, '的訊息那邊，一個月一直都愛喔應該是，的畫面日本人我真的突然想知道那：像我的感覺，期待想謝謝您是現他入坑擊，超好笑寫著。給他，情的車可愛上不不是都，說什行為⋯的方式個月定將他，問題自己的國人可，天我他真的照片鬼但因為 ', NULL, '2024-03-18 17:00:00'),
(10009, 10009, '的訊息那邊，一個月一直都愛喔應該是，的畫面日本人我真的突然想知道那：像我的感覺，期待想謝謝您是現他入坑擊，超好笑寫著。給他，情的車可愛上不不是都，說什行為⋯的方式個月定將他，問題自己的國人可，天我他真的照片鬼但因為 ', NULL, '2024-03-18 18:00:00'),
(10010, 10010, '他們⋯多的機會，結果我這個看得到的我。溫度我，讓之後是日然覺得⋯一張啊啊真的覺，我之前的是是人，很好嚇到好好之後要，只是想也不會。 ', NULL, '2024-03-18 19:00:00');


INSERT INTO Pet_action (action_id, pet_id, sit, down, hand, stay, know_name, toilet, mobility, personality, adaptability, bark, anxiety, attack, food_aggression, break, social, other) VALUES 
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

INSERT INTO User (user_id, name, account, password, email, pic, address_detail, status) VALUES 
(10001, '阿華', '0994362671', 'Pa55w.rd', 'Dana@gmail.com', NULL, '桃園市龜山區萬壽路１段14號', 'Active'),
(10002, '老明', '0906527662', 'Pa55w.rd', 'xiung@gmail.com', NULL, '屏東縣鹽埔鄉博愛街58號', 'Active'),
(10003, '王曉明', '0973439927', 'Pa55w.rd', 'yushan@gmail.com', NULL, '嘉義市西區博愛市場7號12樓之16', 'Active'),
(10004, '楊大火', '0983162958', 'Pa55w.rd', 'yht@gmail.com', NULL, '宜蘭縣大同鄉泰雅路６段7號', 'Active'),
(10005, '賴哲維', '0949408996', 'Pa55w.rd', 'boran@gmail.com', NULL, '新竹縣竹北市光明六路51號', 'Active'),
(10006, '蘇綺璇', '0965944982', 'Pa55w.rd', 'larry@gmail.com', NULL, '新竹縣竹北市豆子埔57號之11', 'Active'),
(10007, '黃怡如', '0903426611', 'Pa55w.rd', 'ying@gmail.com', NULL, '彰化縣社頭鄉中興路99號', 'Active'),
(10008, '鄒淑惠', '0975903963', 'Pa55w.rd', 'weng@gmail.com', NULL, '高雄市鼓山區建榮路57號', 'Active'),
(10009, '馮士哲', '0947122924', 'Pa55w.rd', 'hebe@gmail.com', NULL, '屏東縣潮州鎮三光路28號之4', 'Active'),
(10010, '蔡琬芝', '0900492083', 'Pa55w.rd', 'Aile@gmail.com', NULL, '臺南市北區育成路94號8樓', 'Active');

INSERT INTO Favorite (favorite_id, user_id, pet_id) VALUES 
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

INSERT INTO Reserve_System (reservation_id, pet_id, user_id, time) VALUES 
(10001, 10001, 10001, '2024-03-18 10:00:00'),
(10002, 10002, 10002, '2024-04-12 11:00:00'),
(10003, 10003, 10003, '2024-05-18 12:00:00'),
(10004, 10004, 10004, '2024-03-17 13:00:00'),
(10005, 10005, 10005, '2024-01-28 14:00:00'),
(10006, 10006, 10006, '2024-03-31 15:00:00'),
(10007, 10007, 10007, '2024-06-12 16:00:00'),
(10008, 10008, 10008, '2024-09-19 17:00:00'),
(10009, 10009, 10009, '2024-11-20 18:00:00'),
(10010, 10010, 10010, '2024-04-01 19:00:00');

INSERT INTO Online_Virtual_Adoption_Form (adopt_id, pet_id, user_id, donation_method, amount, payment, donation, donate_address) VALUES 
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


INSERT INTO Mypet (mypet_id, user_id, pet_id) VALUES 
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

INSERT INTO Order_History (order_id, user_id, recipient_name, recipient_phone, order_date, amount, unit_price, total_price, order_remark, delivery_method, payment_method, recipient_address_detail, status, Invoice_no) VALUES 
(10001, 10001, 10001, '侯幸英', '0962689725', '2024-02-13 3:23:43', 1, 100, 100, 'AASDEGWGRG', '超商取貨', '貨到付款', '臺中市北區青島路２段71號之15', '未出貨', '/J9IP1P2'),
(10002, 10002, 10001, '柳彥良', '0966164609', '2020-02-01 3:56:05', 2, 200, 400, '!@$#%^#$^', '超商取貨', '貨到付款', '彰化縣和美鎮北庭路92號', '未出貨', '/J9IP1P3'),
(10003, 10003, 10001, '林雅君', '0976349794', '2023-11-11 3:45:29', 3, 300, 900, 'class=', '超商取貨', '貨到付款', '宜蘭縣三星鄉忠平路45號8樓', '未出貨', '/J9IP1P4'),
(10004, 10004, 10001, '林立一', '0901947560', '2020-09-24 23:36:18', 4, 400, 1600, '.....', '宅配', '貨到付款', '宜蘭縣冬山鄉武罕七路96號之9', '未出貨', '/J9IP1P5'),
(10005, 10005, 10001, '潘若天', '0996918465', '2021-09-09 20:15:19', 5, 500, 2500, '[]', '宅配', '貨到付款', '新竹市北區東大路４段19號之2', '未出貨', '/J9IP1P6'),
(10006, 10006, 10001, '溫怡君', '0974367928', '2022-11-13 20:25:31', 6, 600, 3600, 'echo()', '宅配', '貨到付款', '臺東縣臺東市新站路14號', '未出貨', '/J9IP1P7'),
(10007, 10007, 10001, '王儒容', '0980036395', '2023-10-26 0:47:42', 7, 700, 4900, '<div class="sb-nav-link-icon">', '宅配', '貨到付款', '彰化縣芳苑鄉延平巷19號', '未出貨', '/J9IP1P8'),
(10008, 10008, 10001, '蔡淑貞', '0997096074', '2020-07-08 2:08:56', 8, 800, 6400, '$sid = isset($_GET["sid"]) ?', '宅配', '信用卡', '桃園市大園區平南路97號4樓之6', '未出貨', '/J9IP1P9'),
(10009, 10009, 10001, '林美珍', '0901730880', '2020-03-20 22:40:21', 9, 900, 8100, '$backTo =', '宅配', '信用卡', '臺中市西屯區大有西街81號5樓', '運送中', '/J9IP110'),
(10010, 10010, 10001, '蔡琬芝', '0997739872', '2021-04-17 2:17:31', 10, 1000, 10000, '<a class="nav-link" href="charts.html">', '宅配', '信用卡', '彰化縣倉北巷6號12樓', '運送中', '/J9IP111');


INSERT INTO Commodity (commodity_id, name, brand_name, price, pic, type, species) VALUES 
(10001, '柴犬成犬 4公斤 (狗飼料)', '法國皇家 Royal Canin', 1216, NULL, '寵物飼料', '狗'),
(10002, '室內成貓 4公斤 (貓飼料)', '法國皇家 Royal Canin', 1385, NULL, '寵物飼料', '貓'),
(10003, 'Dr.Wish狗罐85克【雞+菜+鮪魚油(綠)】', '惜時 SEEDS', 29, NULL, '寵物罐頭', '狗'),
(10004, '沛可寵鮮貓餐罐 85克【鮮嫩雞肉+美味起司】', 'PekoPeko沛可', 48, NULL, '寵物罐頭', '貓'),
(10005, '啾嚕迷你捲心塊 雞肉+地瓜(狗零食)', 'INABA', 48, NULL, '寵物零食', '狗'),
(10006, '寵物潔牙牙刷玩具 馬卡龍黃色 M(10x3x2.5公分)(狗玩具)', '小小毛孩 Little poppet', 299, NULL, '寵物用品', '狗'),
(10007, '【日本製】啾嚕管狀肉泥80克【雞肉】(貓零食)', 'CIAO', 89, NULL, '寵物零食', '貓'),
(10008, '三節式 伸縮逗貓棒 玫紅小魚 (貓玩具)', 'Ourpets', 135, NULL, '寵物用品', '貓'),
(10009, '超級褐藻潔牙粉20克(貓用)', '樂健飛', 456, NULL, '保健食品', '貓'),
(10010, '亮眼口服保健營養品 30ml(狗用)', '倍力BLUE BAY', 376, NULL, '保健食品', '狗');

INSERT INTO Order_Detail (order_detail, commodity_id, amount, unit_price, totail_price) VALUES 
(10001, 10001, 1, 100, 100),
(10002, 10002, 2, 200, 400),
(10003, 10003, 3, 300, 900),
(10004, 10004, 4, 400, 1600),
(10005, 10005, 5, 500, 2500),
(10006, 10006, 6, 600, 3600),
(10007, 10007, 7, 700, 4900),
(10008, 10008, 8, 800, 6400),
(10009, 10009, 9, 900, 8100),
(10010, 10010, 10, 1000, 10000);

INSERT INTO Bulletin (bulletin_id, type, title, date) VALUES 
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

