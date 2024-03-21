-- CREATE DATABASE take_pet_away;
-- use take_pet_away;
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
                faq_answer TEXT NOT NULL,
                PRIMARY KEY (question_adopt_id)
);


CREATE TABLE Faq_Shopinfo (
                question_id INT auto_increment NOT NULL,
                main_question VARCHAR(60) NOT NULL,
                small_question VARCHAR(60) NOT NULL,
                faq_answer TEXT NOT NULL,
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

