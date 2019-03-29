drop sequence seq_no;

create sequence seq_no
increment by 1
start with 1
nocycle
nocache;

drop table member;
drop table pet;
// f_id는 self join으로 만들어지는 컬럼. or 친구테이블빼야하나? 어떻게 처리해야 할까?  여기는 우선 수기로 넣는방식이라 만들어주었는데...

create table member(
					no number(4),
					id varchar2(20) primary key,
					pw varchar2(20) NOT NULL,
					n_id varchar2(20) NOT NULL UNIQUE,
					tel varchar2(20) NOT NULL,
					sido varchar2(20) NOT NULL,
					sigungu varchar2(20) NOT NULL,
					roadname varchar2(20) NOT NULL,
					d_juso varchar2(50),
					zonecode varchar2(20) NOT NULL,
					email varchar2(20) NOT NULL UNIQUE,
					u_sex char(1) NOT NULL,
					u_birthday date NOT NULL,
					u_name varchar2(20) NOT NULL,
					u_enrollday date NOT NULL,
					status char(1) NOT NULL,
					manage char(1) NOT NULL,
					petnum number NOT NULL,
					friend char(1),
					f_id varchar2(20)
);

create table pet(
				id references member(id) on delete cascade,
				p_name varchar2(20) primary key,
				p_sex char not null,
				p_size char not null,
				p_birthdate date not null
);
// id, p_name, p_sex, p_size, p_birthdate
insert into pet values('user01','멍멍이01','1','1','18-02-01');
insert into pet values('user01','멍멍이02','2','3','18-02-01');
insert into pet values('user02','멍멍이03','1','1','18-02-07');
insert into pet values('user02','멍멍이04','2','3','18-01-01');
insert into pet values('user04','멍멍이05','1','1','18-02-01');
insert into pet values('user04','멍멍이06','2','3','18-02-01');
insert into pet values('user04','멍멍이07','1','1','18-02-07');
insert into pet values('user04','멍멍이08','2','3','18-01-01');

// no, id, pw, n_id, tel, sido, sigungu, roadname, d_juso, zonecode, email, u_sex, u_birthday, u_enrollday, status, manage, petnum, friend, f_id
insert into member values(seq_no.nextval,'user01','0001','유저01','010-01','서울시','서초구','화령로 1135','대호프레601ȣ','06727','user01@naver.com','2','1990-01-01','홍길동','2019-03-26','1','1','2','2','user02');
insert into member values(seq_no.nextval,'user02','0002','유저02','010-02','서울시','서초구','화령로 1135','대호프레601ȣ','06727','user02@naver.com','1','1991-01-01','이길동','2019-03-27','2','1','2','1','user01');
insert into member values(seq_no.nextval,'user03','0003','유저03','010-03','서울시','서초구','화령로 1135','대호프레601ȣ','06727','user03@naver.com','2','1992-01-01','김길동','2019-03-28','1','1','2','1','');
insert into member values(seq_no.nextval,'user04','0004','유저04','010-04','서울시','서초구','화령로 1135','대호프레601ȣ','06727','user04@naver.com','2','1993-01-01','박길동','2019-03-29','1','2','4','1','');
insert into member values(seq_no.nextval,'user05','0005','유저05','010-05','서울시','서초구','화령로 1135','대호프레601ȣ','06727','user05@naver.com','1','1994-01-01','최길동','2019-03-21','2','2','1','1','');
insert into member values(seq_no.nextval,'user06','0006','유저06','010-06','서울시','서초구','화령로 1135','대호프레601ȣ','06727','user06@naver.com','1','1995-01-01','태길동','2019-03-22','2','1','1','2','user08');
insert into member values(seq_no.nextval,'user07','0007','유저07','010-07','서울시','서초구','화령로 1135','대호프레601ȣ','06727','user07@naver.com','1','1996-01-01','오길동','2019-03-23','2','1','1','1','user08');
insert into member values(seq_no.nextval,'user08','0008','유저08','010-08','서울시','서초구','화령로 1135','대호프레601ȣ','06727','user08@naver.com','2','1997-01-01','나길동','2019-03-24','1','1','1','2','user07');

// MemberMapper에서 가져온 sql about member table
 <select id="MemberView" resultType="com.vo.member.MemberVo">
    select * from member
  </select>
  
  <select id="MemberFind" resultType="">
  	select * from member where no=#{no}
  </select>
  
  <insert id="MemberInsert" >
  	 insert into member   (no,id,pw,n_id,tel,sido,gu,doro,d_juso,postnum,email,u_sex,u_birthday,u_name,u_enrollday,status,manage,petnum,friend,f_id)
  values (seq_no.nextval,#{id},#{pw},#{n_id},#{tel},#{sido},#{gu},#{doro},#{d_juso},#{postnum},#{email},#{u_sex},#{u_birthday},#{u_name},#{u_enrollday},#{status},#{manage},#{petnum},#{friend},#{f_id})
  </insert>
  

  <delete id="MemberDelete" > 
  	delete from member where no=#{no} 
  </delete>
  
  <update id="MemberUpdate" parameterType="int">
  	update member set price=#{price} where no=#{no}
  </update>
  
  
	// pet table 기본 crud sql 작성 // id, p_name, p_sex, p_size, p_birthdate
	select * from pet
	update into pet set (p_sex=#{p_sex}, p_size=#{p_size}, p_birthdate where p_name = #{p_name}
	insert into pet (id,p_name,p_sex,p_size,p_birthdate) values (#{id},#{p_name},#{p_sex},#{p_size},#{p_birthdate})
	delete from pet where p_name=#{p_name}
	no, id, pw, n_id, tel, sido, sigungu, roadname, d_juso, zonecode, email, u_sex, u_birthday, u_enrollday, status, manage, petnum, friend, f_id

	// pet member join view
	// 회원관리 개념 전체 회원정보 보여줌	>> 이 때문에 pet table 제약조건 not null 빼 주어야 하나?
		select m.no, m.id, m.pw, m.n_id, m.tel, m.sido, m.sigungu, m.roadname, m.d_juso, m.zonecode, m.email, m.u_sex, m.u_birthday, m.u_enrollday, m.status, m.manage, m.petnum, m.friend, m.f_id,
		p.p_name, p.p_sex, p.p_size, p.p_birthdate from member m, pet p where m.id=p.id(+)
	
	// 개인정보 확인
		select m.no, m.id, m.pw, m.n_id, m.tel, m.sido, m.sigungu, m.roadname, m.d_juso, m.zonecode, m.email, m.u_sex, m.u_birthday, m.u_enrollday, m.status, m.manage, m.petnum, m.friend, m.f_id,
		p.p_name, p.p_sex, p.p_size, p.p_birthdate from member m, pet p where m.id=p.id(+) and m.id=#{id}

 <select id="MemberPetView" resultType="">
  select m.no, m.id, m.pw, m.n_id, m.tel, m.sido, m.sigungu, m.roadname, m.d_juso, m.zonecode, m.email, m.u_sex, m.u_birthday, m.u_enrollday, m.status, m.manage, m.petnum, m.friend, m.f_id, p.p_name, p.p_sex, p.p_size, p.p_birthdate 
  from member m, pet p 
  where m.id=p.id(+) and m.id=#{id}
  </select>
  
  <select id="PetView" resultType="com.pet.PetVo">
  	select * from pet
  </select>
  
  <insert id="PetInsert">
  	insert into pet (id,p_name,p_sex,p_size,p_birthdate) values (#{id},#{p_name},#{p_sex},#{p_size},#{p_birthdate})
  </insert>
  
  <delete id="PetDelete">
  	delete from pet where p_name=#{p_name};
  </delete>
  
  <update id="PetUpdate" parameterType="int">
  	update into pet set (p_sex=#{p_sex}, p_size=#{p_size}, p_birthdate where p_name = #{p_name}
  </update>


// test

select m.no, m.id, m.pw, m.n_id, m.tel, m.sido, m.sigungu, m.roadname, m.d_juso, m.zonecode, m.email, m.u_sex, m.u_birthday, m.u_enrollday, m.status, m.manage, m.petnum, m.friend, m.f_id,
		p.p_name, p.p_sex, p.p_size, p.p_birthdate from member m, pet p where m.id=p.id(+) and m.id='user01'

delete from member where no=1;
select * from pet;

select * from member where id = 'user01';


