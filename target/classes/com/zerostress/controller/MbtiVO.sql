create table MbtiVO (
    userId varchar2(10, 0),
    pno number(10, 0),
    type varchar2(50),
    explain varchar2(200),
    image1 varchar2(50),
    image2 varchar2(50),
    tour1 varchar2(50),
    tour2 varchar2(50),
    content1 varchar2(1000),
    content2 varchar2(1000),
    activity1 varchar2(100),
    activity2 varchar2(100),
    regdate date default sysdate
);

create table mbtivo (
    userId varchar(10) primary key,
    pno int(10),
    type varchar(50),
    explain1 varchar(200),
    image1 varchar(50),
    image2 varchar(50),
    tour1 varchar(50),
    tour2 varchar(50),
    content1 varchar(1000),
    content2 varchar(1000),
    activity1 varchar(100),
    activity2 varchar(100),
    regdate TIMESTAMP DEFAULT NOW()
);
