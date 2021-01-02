create table userinfo (
    userId varchar2(50),
    userPw varchar2(50) default 'kakaoPw',
    userName varchar2(50),
    userEmail varchar2(100),
    userAddrZipNum varchar2(100),
    userAddrBasic varchar2(300),
    userAddrDetail varchar2(300),
    status varchar2(30),
    regdate date default sysdate
);

alter table userinfo add CONSTRAINT userinfo_pk PRIMARY KEY (userId);

create table userinfo (
    userId varchar(50) primary key,
    userPw varchar(50) default 'kakaoPw',
    userName varchar(50),
    userEmail varchar(100),
    userAddrZipNum varchar(100),
    userAddrBasic varchar(300),
    userAddrDetail varchar(300),
    status varchar(30),
    emailcheck varchar(30),
    regdate TIMESTAMP DEFAULT NOW()
);