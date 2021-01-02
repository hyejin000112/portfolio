create table review (
 rno number(10,0),
 contentId number(10,0),
 reviewId varchar2(20),
 title varchar2(50),
 content varchar2(2000),
 evaluate varchar2(20),
 regdate date default sysdate,
 updatedate date default sysdate
);

alter table review add constraint rno_pk primary key(rno);
create sequence review_seq increment by 1 start with 1 nocache;

create table review (
 rno int(10) primary key auto_increment,
 contentId int(10),
 reviewId varchar(20),
 title varchar(50),
 content varchar(2000),
 evaluate varchar(20),
 regdate TIMESTAMP DEFAULT NOW(),
 updatedate TIMESTAMP DEFAULT NOW()
);