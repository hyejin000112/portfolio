create table replyQnA(
    rno number(10,0),
    bno number(10,0),
    reply varchar2(1000),
    replyId varchar2(50),
    replyPw varchar2(50),
    replyDate date default sysdate,
    updateDate date default sysdate
);

select * from replyqna;

create table replyqna(
    rno int(10) primary key auto_increment,
    bno int(10),
    reply varchar(1000),
    replyId varchar(50),
    replyPw varchar(50),
    replyDate TIMESTAMP DEFAULT NOW(),
    updateDate TIMESTAMP DEFAULT NOW()
);
