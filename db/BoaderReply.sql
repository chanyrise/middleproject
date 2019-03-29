Alter table boarder modify no number(10); 
Alter table boarder modify contents varchar2(3600); 
Alter table boarder drop column pw; 
Alter table reply add r_regdate date;

drop table boarder;
drop sequence seq_boarder_no;
drop table reply;
drop sequence seq_reply_no;

// boarder table 생성
create table boarder(
               no number(4) primary key,
               title varchar2(100) not null,
               viewcount number(20) not null,
               regdate date not null,
               subtitle varchar2(10),
               n_id varchar2(20) references member(n_id) ,
               contentType char,
               contents varchar2(3600) not null
               ) ;
               // 8개 컬럼
// reply table 생성                 
create table reply(
               no number(4) references boarder(no) on delete cascade,
               r_no number(4) primary key,
               n_id varchar2(20) references member(n_id),
               r_contents varchar2(500) not null,
               r_regdate date not null
              ); 
               
create sequence seq_boarder_no
increment by 1
start with 1
nocycle
nocache;
              
create sequence seq_reply_no
increment by 1
start with 1
nocycle
nocache;         


//no title viewcount regdate subtitle n_id contentType contents 8개 컬럼
insert into boarder values(seq_boarder_no.nextval,'따로 표현하는 방법은',232,'19-03-28','정보','유저01','1','이는 어느 한 ... 합니다.');
insert into boarder values(seq_boarder_no.nextval,'관계형 데이터베이스',22,'19-03-27','정보','유저02','1','이는 어느 한 ... 슈퍼키란, 튜플을 유일하게 식별할 수 있는 하나의 속성 혹은 속성의 집합을 말합니다.');
insert into boarder values(seq_boarder_no.nextval,' 키는 각각 튜플',123,'19-03-26','정보','유저03','1','이는 어느 한 ... 슈퍼키란, 튜플을 유일하게 식별할 수 있는 하나의 속성 혹은 속성의 집합을 말합니다.');
insert into boarder values(seq_boarder_no.nextval,'이터 정의언어로 작성',40,'19-03-25','정보','유저04','1','이는 어느 한 ... 슈퍼키란, 튜플을 유일하게 식별할 수 있는 하나의 속성 혹은 속성의 집합을 말합니다.');
insert into boarder values(seq_boarder_no.nextval,' 슈퍼키(Super Key) : 복합키(은',96,'19-03-24','정보','유저01','1','이는 어느 한 ... 슈퍼키란, 튜플을 유일하게 식별할 수 있는 하나의 속성 혹은 속성의 집합을 말합니다.');
insert into boarder values(seq_boarder_no.nextval,'조양호 이어 박삼구도은',1315,'19-03-23','정보','유저05','1','이는 어느 한 ... 슈퍼키란, 튜플을 유일하게 식별할 수 있는 하나의 속성 혹은 속성의 집합을 말합니다.');
insert into boarder values(seq_boarder_no.nextval,'채용법  국회 본회의 통과',156,'19-03-22','정보','유저06','1','이는 어느 한 ... 슈퍼키란, 튜플을 유일하게 식별할 수 있는 하나의 속성 혹은 속성의 집합을 말합니다.');
insert into boarder values(seq_boarder_no.nextval,'기초학력 미달 증',978,'19-03-20','정보','유저07','1','이는 어느 한 ... 슈퍼키란, 튜플을 유일하게 식별할 수 있는 하나의 속성 혹은 속성의 집합을 말합니다.');
insert into boarder values(seq_boarder_no.nextval,'코스피 2,120대로 ',1523,'19-03-21','정보','유저03','1','이는 어느 한 ... 슈퍼키란, 튜플을 유일하게 식별할 수 있는 하나의 속성 혹은 속성의 집합을 말합니다.');
insert into boarder values(seq_boarder_no.nextval,'김학의 출국금지 여부 미리 알아봤다은',4156,'19-03-22','정보','유저01','1','이는 어느 한 ... 슈퍼키란, 튜플을 유일하게 식별할 수 있는 하나의 속성 혹은 속성의 집합을 말합니다.');
insert into boarder values(seq_boarder_no.nextval,'행 추락사 10대들…최대 징역 10년 구형',15,'19-03-28','정보','유저04','1','이는 어느 한 ... 슈퍼키란, 튜플을 유일하게 식별할 수 있는 하나의 속성 혹은 속성의 집합을 말합니다.');


   
   
//no r_no n_id r_contents
insert into reply values(1,seq_reply_no.nextval,'유저01','계층구조로 정렬하기.  출처: https://blog.kjslab.com/11','19-03-28'); 
insert into reply values(1,seq_reply_no.nextval,'유저02','계층구조로 정렬하기.  출처: https://blog.kjslab.com/11','19-03-29'); 
insert into reply values(1,seq_reply_no.nextval,'유저02','계층구조로 정렬하기.  출처: https://blog.kjslab.com/11','19-03-29'); 
insert into reply values(2,seq_reply_no.nextval,'유저03','계층구조로 정렬하기.  출처: https://blog.kjslab.com/11','19-03-18'); 
insert into reply values(2,seq_reply_no.nextval,'유저04','계층구조로 정렬하기.  출처: https://blog.kjslab.com/11','19-03-18'); 
insert into reply values(2,seq_reply_no.nextval,'유저01','계층구조로 정렬하기.  출처: https://blog.kjslab.com/11','19-03-19'); 
insert into reply values(4,seq_reply_no.nextval,'유저04','계층구조로 정렬하기.  출처: https://blog.kjslab.com/11','19-03-16'); 
insert into reply values(4,seq_reply_no.nextval,'유저04','계층구조로 정렬하기.  출처: https://blog.kjslab.com/11','19-03-16'); 
insert into reply values(5,seq_reply_no.nextval,'유저01','계층구조로 정렬하기.  출처: https://blog.kjslab.com/11','19-03-25'); 
insert into reply values(5,seq_reply_no.nextval,'유저05','계층구조로 정렬하기.  출처: https://blog.kjslab.com/11','19-03-26'); 
insert into reply values(5,seq_reply_no.nextval,'유저01','계층구조로 정렬하기.  출처: https://blog.kjslab.com/11','19-03-26'); 
insert into reply values(11,seq_reply_no.nextval,'유저05','계층구조로 정렬하기.  출처: https://blog.kjslab.com/11','19-03-28'); 
insert into reply values(11,seq_reply_no.nextval,'유저01','계층구조로 정렬하기.  출처: https://blog.kjslab.com/11','19-03-28'); 
insert into reply values(11,seq_reply_no.nextval,'유저05','계층구조로 정렬하기.  출처: https://blog.kjslab.com/11','19-03-28'); 
insert into reply values(9,seq_reply_no.nextval,'유저01','계층구조로 정렬하기.  출처: https://blog.kjslab.com/11','19-03-28'); 
insert into reply values(10,seq_reply_no.nextval,'유저01','',''); 
select * from boarder;
select * from reply;

// join test 

// 댓글 리스트 test
select b.no,b.title, b.regdate, b.n_id, b.contents, r.r_no, r.n_id, r.r_regdate, r.r_contents from boarder b, reply r where b.no(+)=r.no and b.contentType='1' order by r_regdate, b.no, r.r_no; 
// 댓글을 찾을 필요가 있을까? // 만약 댓글을 찾을 필요가 있다면 댓글 찾을 때 reply table의 rownum으로 찾는 방법 생각 해 보기.
select r.r_no, r.n_id, b.contents, r.r_contents,b.regdate,r.r_regdate from boarder b, reply r where b.no(+)=r.no and contentType='1' order by r_regdate, b.no, r.r_no;
select count(*) from boarder b, reply r where b.no=r.no(+) and contentType='1' order by r_regdate, b.no, r.r_no;
select count(*) from boarder b, reply r where b.no(+)=r.no and contentType='1' order by r_regdate, b.no, r.r_no; 
select count(*) from boarder b, reply r where b.no=r.no(+) and r.n_id is null and contentType='1' order by r_regdate, b.no, r.r_no; 

/* 게시판 리스트(board.jsp)*/
// getAll
select no, subtitle, title, n_id, viewcount, regdate from boarder where contentType='1';

// FindById, FindBySubtitle, FindByTitle
select no, subtitle, title, n_id, viewcount, regdate from boarder where n_id='?' and contentType='1';
select no, subtitle, title, n_id, viewcount, regdate from boarder where subtitle='?' and contentType='1';
select no, subtitle, title, n_id, viewcount, regdate from boarder where contentType='1' and title like '%?%'; 

// InsertAll
insert into boarder (no, subtitle, title, n_id, viewcount, regdate) values (?,?,?,?,?,?) where contentType='1';

// DeleteAll 리스트, 글내용, 댓글까지 한꺼번에 삭제?! cascade 이용
delete from boarder where no = ? and contentType='1' cascade;

// UpdateAll : 리스트, 글내용 수정 수정일 추가해야하나...?! 
update boarder set subtitle=?, title=?, regdate=? where no=? and contentType='1';



/* 게시글, 댓글 읽기 : join으로 진행!(Boardcontent.jsp) 무엇을 쓰는지 몰라 3가지 경우 모두 작성. */

// 게시글 전체에 댓글 없는 것도 null로 채워져서 나옴 // 1개의 게시글에 댓글 여러개가 있다면 1개의 게시글 내용 중복으로 여러개+각각의 댓글
select b.no,b.title, b.regdate, b.n_id, b.contents, r.r_no, r.n_id, r.r_regdate, r.r_contents from boarder b, reply r where b.no=r.no(+) and b.contentType='1' order by r_regdate, b.no, r.r_no; 
// 게시글에 댓글 있는 것만 출력
select b.no,b.title, b.regdate, b.n_id, b.contents, r.r_no, r.n_id, r.r_regdate, r.r_contents from boarder b, reply r where b.no(+)=r.no and b.contentType='1' order by r_regdate, b.no, r.r_no; 
// 게시글에 댓글 없는 것만 출력
select b.no,b.title, b.regdate, b.n_id, b.contents, r.r_no, r.n_id, r.r_regdate, r.r_contents from boarder b, reply r where b.no=r.no(+) and r.n_id is null and b.contentType='1' order by r_regdate, b.no, r.r_no; 


/* 게시글 */
// InsertBoard >> 위의 InsertAll과 다른 점은 내용이 들어간다는 점? 여기서 추가할때 InsertAll에도 동시에 같은 내용이 추가 되어야 함.
insert into boarder (no, subtitle, title, n_id, viewcount, regdate, contents) values (?,?,?,?,?,?,?) where contentType='1';

// DeleteBoard >> 위의 DeleteAll과 무엇이 다를까? 

// UpdateBoard >> defalut값으로 원래 있는 값을 주고 변경하는 방향.
update boarder set contents=? where no=? and contentType='1';

 
/* 댓글 no r_no n_id r_contents r_regdate ==> subquery 추가 필요 */
// InsertReply
insert into reply (no, r_no, n_id, r_regdate, r_contents) values (?,?,?,?,?) ;

// DeleteReply
delete from reply where r_no=?;

// UpdateReply
update reply set r_contents where r_no?;
