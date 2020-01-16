/* 고객 테이블 */
CREATE TABLE MEMBER(
  NUM NUMBER(11) DEFAULT '1' NOT NULL,
  USERID VARCHAR2(15) NOT NULL,
  NAME VARCHAR2(15) NOT NULL,
  PASSWD VARCHAR(8) NOT NULL,
  AGE NUMBER(3) DEFAULT '1' NOT NULL,
  MILEAGE NUMBER(8) DEFAULT '0' NOT NULL,
  JOB VARCHAR(30),
  ADDR VARCHAR2(100) NOT NULL,
  REG_DATE DATE NOT NULL,
  PRIMARY KEY(NUM)
);


insert into member (num,userid,name,passwd,age,mileage,job,addr,reg_date) 
            values ('1','id1','홍길동','1234',25,0,'학생','부산시 동래구','2003-08-08');
insert into member (num,userid,name,passwd,age,job,addr,reg_date) 
            values ('2','id2','김길동','2345',30,'직장인','서울시 강남구','2003-09-05');
insert into member (num,userid,name,passwd,age,mileage,job,addr,reg_date) 
            values ('3','id3','공성현','3456',33,10000,'직장인','부산시','2003-09-09');
insert into member (num,userid,name,passwd,age,mileage,job,addr,reg_date) 
            values ('4','id4','김영희','4321',18,3000,'학생','경상남도 마산시','2002-01-01');
insert into member (num,userid,name,passwd,age,mileage,job,addr,reg_date) 
            values ('5','id5','박말자','5555',45,5000,'주부','경기도 남양주시','2003-05-05');
insert into member (num,userid,name,passwd,age,mileage,job,addr,reg_date) 
            values ('6','id6','김철수','1234',55,0,'교수','제주도 북제주','2003-08-08');
insert into member (num,userid,name,passwd,age,mileage,job,addr,reg_date) 
            values ('7','id7','홍길동','1234',41,6000,'학생','경주시','2002-12-25');
insert into member (num,userid,name,passwd,age,job,addr,reg_date) 
            values ('8','id8','김상현','1234',31,'무직','부산시 동래구','2003-04-18');
insert into member (num,userid,name,passwd,age,mileage,job,addr,reg_date) 
            values ('9','id9','이지연','1234',25,0,'학생','강원도 철원','2003-02-06');
insert into member (num,userid,name,passwd,age,mileage,job,addr,reg_date) 
            values ('10','id10','홍길동','6712',62,10000,'주부','서울시 강북','2003-09-15');


/* 카테고리 저장테이블 */
CREATE TABLE CATEGORY(
  CNUM NUMBER(5) DEFAULT '1' NOT NULL,
  CATEGORY_CODE VARCHAR2(8) NOT NULL,
  CATEGORY_NAME VARCHAR2(30) NOT NULL,
  DELETE_CHK CHAR(1) DEFAULT 'N' NOT NULL,
  PRIMARY KEY(CNUM)
);



/* 카테고리 SEQUENCE */
CREATE SEQUENCE CATEGORY_SEQ
START WITH 13
INCREMENT BY 


/* 카테고리 저장 */
INSERT INTO CATEGORY VALUES('1','00010000','전자제품','N');
INSERT INTO CATEGORY VALUES('2','00010001','TV','N');
INSERT INTO CATEGORY VALUES('3','00010002','컴퓨터','N');
INSERT INTO CATEGORY VALUES('4','00010003','MP3','N');
INSERT INTO CATEGORY VALUES('5','00010004','에어컨','N');
INSERT INTO CATEGORY VALUES('6','00020000','의류','N');
INSERT INTO CATEGORY VALUES('7','00020001','남방','N');
INSERT INTO CATEGORY VALUES('8','00020002','속옷','N');
INSERT INTO CATEGORY VALUES('9','00020003','바지','N');
INSERT INTO CATEGORY VALUES('10','00030000','도서','N');
INSERT INTO CATEGORY VALUES('11','00030001','컴퓨터도서','N');
INSERT INTO CATEGORY VALUES('12','00030002','소설','N');


/ * 공급업체 정보 테이블 */
CREATE TABLE SUPPLY_COMP(
  NUM NUMBER(11) DEFAULT '1' NOT NULL,
  EP_CODE VARCHAR2(5) NOT NULL,
  EP_NAME VARCHAR2(30) NOT NULL,
  EP_ADDR VARCHAR2(100), 
  EP_PHONE VARCHAR2(15),
  EP_CHARGE VARCHAR2(10),
  REG_DATE DATE NOT NULL,
  PRIMARY KEY(NUM)
);

/* 공급업체 정보 저장 */
INSERT INTO SUPPLY_COMP (NUM,EP_CODE,EP_NAME,EP_ADDR,
                                   EP_PHONE,EP_CHARGE,REG_DATE)
   VALUES('1','00001','공급업체A','부산시 동구','111-2345-3333','공성현',SYSDATE);

INSERT INTO SUPPLY_COMP( NUM,EP_CODE,EP_NAME,EP_ADDR,
                                   EP_PHONE,EP_CHARGE,REG_DATE) 
   VALUES('2','00002','공급업체B','서울시 종로구','333-3322-399','공성현',SYSDATE);

INSERT INTO SUPPLY_COMP( NUM,EP_CODE,EP_NAME,EP_ADDR,
                                   EP_PHONE,EP_CHARGE,REG_DATE)
   VALUES('3','00003','공급업체C','서울시 강남구','444-233-3385','공성현',SYSDATE);

INSERT INTO SUPPLY_COMP( NUM,EP_CODE,EP_NAME,EP_ADDR,
                                   EP_PHONE,EP_CHARGE,REG_DATE)
   VALUES('4','00004','공급업체D','인천시 동구','15-1222-3313','공성현',SYSDATE);

INSERT INTO SUPPLY_COMP( NUM,EP_CODE,EP_NAME,EP_ADDR,
                                   EP_PHONE,EP_CHARGE,REG_DATE)
   VALUES('5','00005','공급업체F','광주시 남구','134-2312-3444','공성현',SYSDATE);



/* 상품 상세 정보 테이블 */
CREATE TABLE PRODUCTS(
 PNUM NUMBER(11) DEFAULT '1' NOT NULL,
 CATEGORY_FK VARCHAR(8) NOT NULL,
 PRODUCTS_NAME VARCHAR(50) NOT NULL,
 EP_CODE_FK VARCHAR(5) NOT NULL,
 INPUT_PRICE NUMBER(10) DEFAULT '0' NOT NULL,
 OUTPUT_PRICE NUMBER(10) DEFAULT '0' NOT NULL,
 TRANS_COST NUMBER(5) DEFAULT '0' NOT NULL,
 MILEAGE NUMBER(6) DEFAULT '0' NOT NULL,
 COMPANY VARCHAR(30),
 STATUS CHAR(1) DEFAULT '1' NOT NULL,
 PRIMARY KEY(PNUM)
);

/* 상품 테이블 SEQUENCE */
CREATE SEQUENCE PRODUCTS_SEQ
START WITH 11
INCREMENT BY ;

/* 상품 내용 저장 */
INSERT INTO PRODUCTS
    (PNUM,CATEGORY_FK,PRODUCTS_NAME,EP_CODE_FK,INPUT_PRICE,
     OUTPUT_PRICE,TRANS_COST,MILEAGE,COMPANY,STATUS)
   VALUES
    ('1','00010001','S 벽걸이 TV','00001','5000000','8000000','0','100000','삼성','1');

INSERT INTO PRODUCTS
    (PNUM,CATEGORY_FK,PRODUCTS_NAME,EP_CODE_FK,INPUT_PRICE,
    OUTPUT_PRICE,COMPANY,STATUS)
  VALUES
    ('2','00010001','D TV','00002','300000','400000','대우','1');

INSERT INTO PRODUCTS
   (PNUM,CATEGORY_FK,PRODUCTS_NAME,EP_CODE_FK,INPUT_PRICE,
   OUTPUT_PRICE,TRANS_COST,MILEAGE,COMPANY,STATUS)
  VALUES
   ('3','00010004','S 에어컨','00001','1000000','1100000','5000','10000','삼성','2');

INSERT INTO PRODUCTS
   (PNUM,CATEGORY_FK,PRODUCTS_NAME,EP_CODE_FK,INPUT_PRICE,
    OUTPUT_PRICE,TRANS_COST,MILEAGE,COMPANY,STATUS)
  VALUES
   ('4','00010000','C 밥솥','00003','200000','200000','5000','0','현대','1');

INSERT INTO PRODUCTS
   (PNUM,CATEGORY_FK,PRODUCTS_NAME,EP_CODE_FK,INPUT_PRICE,
    OUTPUT_PRICE,TRANS_COST,MILEAGE,COMPANY,STATUS)
  VALUES
   ('5','00010004','L 에어컨','00003','1200000','1300000','0','0','LG','1');

INSERT INTO PRODUCTS
    (PNUM,CATEGORY_FK,PRODUCTS_NAME,EP_CODE_FK,INPUT_PRICE,
     OUTPUT_PRICE,TRANS_COST,MILEAGE,COMPANY,STATUS)
  VALUES
    ('6','00020001','남성남방','00002','100000','150000','0','0','','1');

INSERT INTO PRODUCTS
   (PNUM,CATEGORY_FK,PRODUCTS_NAME,EP_CODE_FK,INPUT_PRICE,
    OUTPUT_PRICE,TRANS_COST,MILEAGE,STATUS)
  VALUES
   ('7','00020001','여성남방','00002','120000','200000','0','0','3');

INSERT INTO PRODUCTS
   (PNUM,CATEGORY_FK,PRODUCTS_NAME,EP_CODE_FK,INPUT_PRICE,
   OUTPUT_PRICE,TRANS_COST,MILEAGE,COMPANY,STATUS)
  VALUES
   ('8','00020002','사각팬티','00002','10000','20000','0','0','보디가드','1');

INSERT INTO PRODUCTS
   (PNUM,CATEGORY_FK,PRODUCTS_NAME,EP_CODE_FK,INPUT_PRICE,
    OUTPUT_PRICE,TRANS_COST,MILEAGE,STATUS)
  VALUES
   ('9','00020003','멜빵바지','00002','5000','8000','0','0','1');

INSERT INTO PRODUCTS
    (PNUM,CATEGORY_FK,PRODUCTS_NAME,EP_CODE_FK,INPUT_PRICE,
     OUTPUT_PRICE,TRANS_COST,MILEAGE,COMPANY,STATUS)
  VALUES
   ('10','00030001','무따기시리즈','00001','25000','30000','2000','0','길벗','1');


/* 주문 정보 테이블 */
CREATE TABLE MALL_ORDER (
   ORDER_NUM NUMBER(11) DEFAULT '1' NOT NULL,
   ID_FK VARCHAR2(15) NOT NULL,
   PRODUCTS_CODE_FK VARCHAR(10) NOT NULL,
   EP_CODE_FK VARCHAR2(5) NOT NULL,
   INPUT_PRICE NUMBER(10) DEFAULT '0' NOT NULL,
   OUTPUT_PRICE NUMBER(10) DEFAULT '0' NOT NULL,
   MILEAGE NUMBER(6) DEFAULT '0' NOT NULL,
   TRANS_COST NUMBER(5) DEFAULT '0' NOT NULL,
   REAL_AMOUNT NUMBER(10) DEFAULT '0' NOT NULL,
   MILEAGE_USE NUMBER(7) DEFAULT '0' NOT NULL,
   PAYMENT_TYPE VARCHAR2(5) NOT NULL,
   PAYMENT_STATUS CHAR(1) NOT NULL,
   BUYER_NAME VARCHAR2(15),
   BUYER_PHONE VARCHAR2(15),
   RECIPIENT_NAME VARCHAR2(15),
   RECIPIENT_PHONE VARCHAR2(15),
   RECIPIENT_ADDRESS VARCHAR2(100),
   PRIMARY KEY(ORDER_NUM)
);

/* 주문 테이블 SEQUENCE */
CREATE SEQUENCE MALL_ORDER_SEQ
START WITH 1
INCREMENT BY 1 ;

/* 주문 내용 저장 */
INSERT INTO MALL_ORDER VALUES(MALL_ORDER_SEQ.NEXTVAL,
                       'id3','3','00001',30000,40000,4000,2000,6000,0,'CARD','2',
                       '공성현','111-222-3333','공성현','111-222-3333','부산시');

INSERT INTO MALL_ORDER VALUES(MALL_ORDER_SEQ.NEXTVAL,
                       'id3','5','00002',50000,80000,8000,0,60000,20000,'PHONE','2',
                       '공성현','111-222-3333','공성현','111-222-3333','부산시');

INSERT INTO MALL_ORDER VALUES(MALL_ORDER_SEQ.NEXTVAL,
                       'id4','3','00001',30000,40000,4000,2000,60000,0,'CARD','3',
                       '최영희','112-222-4444','홍길동','333-222-3333','서울시');

INSERT INTO MALL_ORDER VALUES(MALL_ORDER_SEQ.NEXTVAL,
                        'id5','7','00004',4000,7000,0,2000,9000,0,'CARD','2',
                        '박말자','144-555-6666','박말자','144-555-6666','경기도');

INSERT INTO MALL_ORDER VALUES(MALL_ORDER_SEQ.NEXTVAL,
                         'id3','3','00001',30000,40000,4000,2000,60000,0,'BANK','4',
                        '공성현','111-222-3333','공성현','111-222-3333','부산시');

INSERT INTO MALL_ORDER VALUES(MALL_ORDER_SEQ.NEXTVAL,
                        'id10','1','00002',15000,30000,2000,2000,30000,2000,'CARD',
                        '2','홍길동','999-999-9999','홍길동','999-999-9999','서울시');

INSERT INTO MALL_ORDER VALUES(MALL_ORDER_SEQ.NEXTVAL,
                        'id10','8','00003',150000,200000,10000,0,200000,0,'BANK','3',
                        '홍길동','999-999-9999','홍길동','999-999-9999','서울시');

INSERT INTO MALL_ORDER VALUES(MALL_ORDER_SEQ.NEXTVAL,
                        'id4','5','00002',50000,80000,8000,0,80000,0,'BANK','2',
                        '최영희','112-222-4444','홍길동','333-222-3333','서울시');

INSERT INTO MALL_ORDER VALUES(MALL_ORDER_SEQ.NEXTVAL,
                        'id1','3','00001',30000,40000,4000,2000,60000,0,'PHONE','2',
                        '홍길동','555-555-5555','공성현','111-222-3333','강원도 철원');

INSERT INTO MALL_ORDER VALUES(MALL_ORDER_SEQ.NEXTVAL,
                         'id3','7','00004',4000,7000,0,2000,8000,1000,'PHONE','2',
                         '공성현','111-222-3333','공성현','111-222-3333','부산시');


/* 상품 장바구니 테이블 */
CREATE TABLE MALL_CART(
  CART_NUM NUMBER(11) DEFAULT '1' NOT NULL,
  SESSION_ID VARCHAR(15) NOT NULL,
  PRODUCTS_CODE_FK VARCHAR(10) NOT NULL,
  VOLUME NUMBER(6) DEFAULT '1' NOT NULL,
  CART_CREATED DATE,
  PRIMARY KEY(CART_NUM)
);

/* 장바구니 테이블 SEQUENCE */
CREATE SEQUENCE MALL_CART_SEQ
START WITH 1
INCREMENT BY 1 ;

INSERT INTO MALL_CART(CART_NUM,SESSION_ID,PRODUCTS_CODE_FK,VOLUME,CART_CREATED) VALUES(MALL_CART_SEQ.NEXTVAL,'ABCDEF','3',1,'2017-05-07');
INSERT INTO MALL_CART(CART_NUM,SESSION_ID,PRODUCTS_CODE_FK,VOLUME,CART_CREATED) VALUES(MALL_CART_SEQ.NEXTVAL,'ABCDEF','3',1,'2017-05-07');
INSERT INTO MALL_CART(CART_NUM,SESSION_ID,PRODUCTS_CODE_FK,VOLUME,CART_CREATED) VALUES(MALL_CART_SEQ.NEXTVAL,'FEDCBA','2',3,SYSDATE);
INSERT INTO MALL_CART(CART_NUM,SESSION_ID,PRODUCTS_CODE_FK,VOLUME,CART_CREATED) VALUES(MALL_CART_SEQ.NEXTVAL,'ABCDEF','5',2,SYSDATE);
INSERT INTO MALL_CART(CART_NUM,SESSION_ID,PRODUCTS_CODE_FK,VOLUME,CART_CREATED) VALUES(MALL_CART_SEQ.NEXTVAL,'DDDAAA','3',1,'2017-05-07');


/* 마일리지 정보 테이블 */
CREATE TABLE MILEAGE(
  MNUM NUMBER(11) DEFAULT '1' NOT NULL,
  ID_FK VARCHAR2(15) NOT NULL,
  MILEAGE_CHK CHAR(1) DEFAULT '1',
  MILEAGE_AMT NUMBER(7) DEFAULT '0' NOT NULL,
  PRODUCTS_CODE_FK VARCHAR(10) ,
  MILEAGE_DESC VARCHAR2(50),
  MILEAGE_CREATED DATE ,
  PRIMARY KEY(MNUM)
);

/* 마일리지 테이블 SEQUENCE */
CREATE SEQUENCE MILEAGE_SEQ
START WITH 1
INCREMENT BY 1 ;


/* 마일리지 정보 저장 */
INSERT INTO MILEAGE (MNUM,ID_FK,MILEAGE_CHK, MILEAGE_AMT, 
                   PRODUCTS_CODE_FK,MILEAGE_DESC,MILEAGE_CREATED)
   VALUES(MILEAGE_SEQ.NEXTVAL,'id3','1',2000,'2','상품구매','2003-09-01');

INSERT INTO MILEAGE (MNUM,ID_FK,MILEAGE_CHK,MILEAGE_AMT,
                     PRODUCTS_CODE_FK,MILEAGE_DESC,MILEAGE_CREATED)
   VALUES(MILEAGE_SEQ.NEXTVAL,'id3','2',-1000,'5','상품구매시사용','2003-09-03');

INSERT INTO MILEAGE (MNUM,ID_FK,MILEAGE_CHK,MILEAGE_AMT,
                      PRODUCTS_CODE_FK,MILEAGE_DESC,MILEAGE_CREATED)
    VALUES(MILEAGE_SEQ.NEXTVAL,'id4','1',5000,'7','상품구매','2002-09-11');

INSERT INTO MILEAGE(MNUM,ID_FK,MILEAGE_CHK,MILEAGE_AMT,
      PRODUCTS_CODE_FK,MILEAGE_DESC,MILEAGE_CREATED)
VALUES(MILEAGE_SEQ.NEXTVAL,'id3','1',9000,'3','상품구매','2003-05-08');

INSERT INTO MILEAGE(MNUM,ID_FK,MILEAGE_CHK,MILEAGE_AMT,
                    PRODUCTS_CODE_FK,MILEAGE_DESC,MILEAGE_CREATED)
   VALUES(MILEAGE_SEQ.NEXTVAL,'id5','1',4300,'8','상품구매','2002-12-01');

INSERT INTO MILEAGE(MNUM,ID_FK,MILEAGE_CHK,MILEAGE_AMT,
                      PRODUCTS_CODE_FK,MILEAGE_DESC,MILEAGE_CREATED)
   VALUES(MILEAGE_SEQ.NEXTVAL,'id5','2',-2000,'6','상품구매시사용','2003-09-01');

INSERT INTO MILEAGE(MNUM,ID_FK,MILEAGE_CHK,MILEAGE_AMT,
                       PRODUCTS_CODE_FK,MILEAGE_DESC,MILEAGE_CREATED)
   VALUES(MILEAGE_SEQ.NEXTVAL,'id7','1',6000,'2','상품구매','2003-02-21');

INSERT INTO MILEAGE(MNUM,ID_FK,MILEAGE_CHK,MILEAGE_AMT,
                       PRODUCTS_CODE_FK,MILEAGE_DESC,MILEAGE_CREATED)
   VALUES(MILEAGE_SEQ.NEXTVAL,'id10','1',14000,'5','상품구매','2003-07-26');

INSERT INTO MILEAGE(MNUM,ID_FK,MILEAGE_CHK,MILEAGE_AMT,
                        PRODUCTS_CODE_FK,MILEAGE_DESC,MILEAGE_CREATED)
 VALUES(MILEAGE_SEQ.NEXTVAL,'id10','2',-1500,'5','상품구매시 사용','2003-08-26');

INSERT INTO MILEAGE(MNUM,ID_FK,MILEAGE_CHK,MILEAGE_AMT,
                        PRODUCTS_CODE_FK,MILEAGE_DESC,MILEAGE_CREATED)
 VALUES(MILEAGE_SEQ.NEXTVAL,'id10','2',-2500,'4','상품구매시 사용','2003-08-16');
