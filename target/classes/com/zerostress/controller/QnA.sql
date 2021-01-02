create table QnA(
    bno number(10,0),
    writer varchar2(50),
    title varchar2(100),
    content varchar2(1000),
    regDate date default sysdate,
    updateDate date default sysdate
);

create sequence QnA_seq INCREMENT by 1 start with 1 NOCACHE;

alter table QnA add CONSTRAINT QnA_pk PRIMARY KEY(bno);

select * from QnA;

create table qna(
    bno int(10) not null auto_increment primary key,
    writer varchar(50),
    title varchar(100),
    content varchar(1000),
    regDate TIMESTAMP DEFAULT NOW(),
    updateDate TIMESTAMP DEFAULT NOW()
);