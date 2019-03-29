drop table member;


create table member(
id varchar2(20) primary key,
pw varchar2(20) NOT NULL,
u_name varchar2(20) NOT NULL,
n_id varchar2(20) NOT NULL UNIQUE,
u_birthday date NOT NULL,
u_sex varchar(1) NOT NULL,
doro varchar2(100) NOT NULL,
d_juso varchar2(100),
postno varchar2(20) NOT NULL,
email varchar2(20) NOT NULL UNIQUE,
tel varchar2(20) NOT NULL,
petcount number(20) NOT NULL,
u_enrollday date,
status varchar(1),
manage varchar(1),
friend varchar(1),
f_id varchar2(20)
);


insert into member values('user01','0001','유저01','010-01','서울시','서초구','서운로 11길 35','서흥빌딩 6층 601호','06727','user01@naver.com','2','1990-01-01','김봄날','2019-03-26','1','1','1','1','user02');
insert into member values('user02','0002','유저02','010-02','서울시','서초구','서운로 11길 35','서흥빌딩 6층 602호','06727','user02@naver.com','1','1991-02-02','김재찬','2019-03-26','1','2','1','1','user07');
insert into member values('user03','0003','유저03','010-03','서울시','서초구','서운로 11길 35','서흥빌딩 6층 603호','06727','user03@naver.com','2','1992-03-03','한소금','2019-03-26','1','0','1','1','user01');
insert into member values('user04','0004','유저04','010-04','서울시','서초구','서운로 11길 35','서흥빌딩 6층 604호','06727','user04@naver.com','1','1993-04-04','허윤수','2019-03-26','0','1','1','1','user07');
insert into member values('user05','0005','유저05','010-05','서울시','서초구','서운로 11길 35','서흥빌딩 6층 605호','06727','user05@naver.com','2','1994-05-05','박가을','2019-03-26','1','1','1','1','user08');
insert into member values('user06','0006','유저06','010-06','서울시','서초구','서운로 11길 35','서흥빌딩 6층 606호','06727','user06@naver.com','1','1995-06-06','이상준','2019-03-26','0','0','1','1','user01');
insert into member values('user07','0007','유저07','010-07','서울시','서초구','서운로 11길 35','서흥빌딩 6층 607호','06727','user07@naver.com','2','1996-07-07','최기쁨','2019-03-26','1','1','1','1','user09');
insert into member values('user08','0008','유저08','010-08','서울시','서초구','서운로 11길 35','서흥빌딩 6층 608호','06727','user08@naver.com','1','1997-08-08','송진영','2019-03-26','0','1','1','1','user09');
insert into member values('user09','0009','유저09','010-09','서울시','서초구','서운로 11길 35','서흥빌딩 6층 609호','06727','user09@naver.com','2','1998-09-09','임새림','2019-03-26','1','1','1','1','user01');
insert into member values('user10','0010','유저10','010-10','서울시','서초구','서운로 11길 35','서흥빌딩 6층 610호','06727','user10@naver.com','1','1999-10-10','고민중','2019-03-26','0','0','0','2','user01');

update member set n_id = 'aaa' where id = 'user09';

select * from member where id = 'user01';

select * from member;

