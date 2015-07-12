DROP TABLE guest;

CREATE TABLE guest(
     sabun number(4) primary key,
     name varchar2(30) not null,
     title varchar2(30) not null,
     nalja date not null,
     pay number(3) not null
);

CREATE SEQUENCE guest_seq START WITH 1000 INCREMENT BY 1;
ALTER TABLE Guest
MODIFY (name varchar2(30));

ALTER TABLE Guest(
MODIFY (title varchar2(300));

ALTER TABLE Guest(
MODIFY (sabun number(8));

UPDATE guest SET name = 'last';

insert into guest values(6032,'abdul','lie',sysdate,32);
insert into guest values(6033,'adolf','hit',sysdate,33);
insert into guest values(6034,'mao','march',sysdate,34);
insert into guest values(6035,'riza','pal',sysdate,35);
insert into guest values(6036,'key','money',sysdate,36);
insert into guest values(6037,'mann','choo',sysdate,37);
insert into guest values(6038,'permi','par',sysdate,38);
insert into guest values(6039,'arthur','chamber',sysdate,39);
insert into guest values(6040,'win','stone',sysdate,40);
insert into guest values(6041,'frank','lose',sysdate,41);
insert into guest values(6042,'jul','open',sysdate,42);
insert into guest values(6043,'vas','sigh',sysdate,43);
insert  into  guest   values(4400, 'zero',  'guest0',   sysdate, 40) ;
insert  into  guest   values(4411, 'first',  'guest1',  sysdate, 41) ;
insert  into  guest   values(4422, 'two',   'guest2', sysdate, 42) ;
insert  into  guest   values(4433, 'three', 'guest3',   sysdate, 43) ;
insert  into  guest   values(4444, 'aaa4',   'guest4', sysdate, 44) ;
insert  into  guest   values(4455, 'aaa5',  'guest5',  sysdate, 45) ;
insert  into guest   values(4466, 'aaa6',   'guest6', sysdate, 46) ;
insert  into  guest   values(4477, 'aaa7',   'guest7',   sysdate, 47) ;
insert  into  guest   values(4488, 'nine',  'guest8',   sysdate, 48) ;
insert  into  guest   values(4499, 'ten',    'guest9', sysdate, 49) ;

insert  into  guest  values(5500, 'apple',   'board0',  sysdate, 50) ;
insert  into  guest   values(5511, 'banana',  'board1',  sysdate, 51) ;
insert  into  guest   values(5522, 'cherry',  'board2',  sysdate, 52) ;
insert  into  guest   values(5533, 'orange',   'board3', sysdate, 53) ;
insert  into  guest   values(5544, 'mango',  'board4',   sysdate, 54) ;
insert  into  guest   values(5555, 'peach',  'board5', sysdate, 55) ;
insert  into  guest   values(5566, 'bbb6',  'board6',  sysdate, 56) ;
insert  into  guest   values(5577, 'bbb7',  'board7',   sysdate, 57) ;
insert  into  guest  values(5588, 'bbb8',  'board8',   sysdate, 58) ;
insert  into  guest   values(5599, 'bbb9',  'board9',  sysdate, 59) ;

insert  into  guest   values(6600, 'lee',   'note0',  sysdate, 60) ;
insert  into  guest   values(6611, 'kim',  'note1',  sysdate, 61) ;
insert  into  guest   values(6622, 'goo',   'note2',  sysdate, 62) ;
insert  into  guest   values(6633, 'park',  'note3',  sysdate, 63) ;
insert  into  guest   values(6644, 'ccc4',   'note4',  sysdate, 64) ;
insert  into  guest   values(6655, 'ccc5',  'note5',  sysdate, 65) ;
insert  into  guest   values(6666, 'red',   'note6',  sysdate, 66) ;
insert  into  guest  values(6677, 'green',  'note7',  sysdate, 67) ;
insert  into  guest   values(6688, 'blue',  'note8',  sysdate, 68) ;
insert  into  guest   values(6699, 'last',  'note9',  sysdate, 69) ;


insert  into  guest   values(7700, 'zero',  'book0',  sysdate, 40) ;
insert  into  guest   values(7711, 'first', 'book1',  sysdate, 41) ;
insert  into  guest   values(7722, 'two',  'book2',  sysdate, 42) ;
insert  into  guest  values(7733, 'three', 'book3',  sysdate, 43) ;
insert  into  guest   values(7744, 'aaa4',  'book4',  sysdate, 44) ;
insert  into  guest   values(7755, 'aaa5', 'book5',  sysdate, 45) ;
insert  into  guest  values(7766, 'aaa6',  'book6',  sysdate, 46) ;
insert  into  guest   values(7777, 'aaa7', 'book7',  sysdate, 47) ;
insert  into  guest  values(7788, 'nine',   'book8',  sysdate, 48) ;
insert  into  guest   values(7799, 'ten',   'book9',  sysdate, 49) ;

insert  into  guest   values(8800, 'apple',  'bank0',   sysdate, 50) ;
insert  into  guest   values(8811, 'banana',  'bank1',   sysdate, 51) ;
insert  into  guest   values(8822, 'cherry',   'bank2',   sysdate, 52) ;
insert  into  guest   values(8833, 'orange', 'bank3',   sysdate, 53) ;
insert  into  guest   values(8844, 'mango', 'bank4',   sysdate, 54) ;
insert  into  guest   values(8855, 'peach', 'bank5',   sysdate, 55) ;
insert  into  guest   values(8866, 'bbb6',  'bank6',   sysdate, 56) ;
insert  into  guest   values(8877, 'bbb7',  'bank7',   sysdate, 57) ;
insert  into  guest   values(8888, 'bbb8',   'bank8',   sysdate, 58) ;
insert  into  guest   values(8899, 'bbb9',   'bank9',   sysdate, 59) ;

insert  into  guest   values(9900, 'lee',   'last0',  sysdate, 60) ;
insert  into  guest   values(9911, 'kim',  'last1',  sysdate, 61) ;
insert  into  guest   values(9922, 'goo',  'last2',  sysdate, 62) ;
insert  into  guest   values(9933, 'park',  'last3',  sysdate, 63) ;
insert  into  guest   values(9944, 'ccc4',  'last4',  sysdate, 64) ;
insert  into  guest   values(9955, 'ccc5',  'last5',  sysdate, 65) ;
insert  into  guest   values(9966, 'red',  'last6',   sysdate, 66) ;
insert  into  guest   values(9977, 'green', 'last7',  sysdate, 67) ;
insert  into  guest   values(9988, 'blue',  'last8',  sysdate, 68) ;
insert  into  guest   values(9999, 'last',  'last9',  sysdate, 69) ;

insert  into  guest   values(4100, 'zero',  'aa0',   sysdate, 40) ;
insert  into  guest   values(4111, 'first',  'aa1',  sysdate, 41) ;
insert  into  guest   values(4122, 'two',   'aa2', sysdate, 42) ;
insert  into  guest   values(4133, 'three', 'aa3',   sysdate, 43) ;
insert  into  guest   values(4244, 'lee4',   'aa4', sysdate, 44) ;
insert  into  guest   values(4155, 'lee5',  'aa5',  sysdate, 45) ;
insert  into guest   values(4166, 'kim6',   'aa6', sysdate, 46) ;
insert  into  guest   values(4177, 'kim7',   'aa7',   sysdate, 47) ;
insert  into  guest   values(4188, 'park',   'aa8',   sysdate, 48) ;
insert  into  guest   values(4199, 'choi',    'aa9', sysdate, 49) ;

insert  into  guest  values(5100, 'color0',   'bb0',  sysdate, 50) ;
insert  into  guest   values(5111, 'brown1',  'bb1',  sysdate, 51) ;
insert  into  guest   values(5122, 'yellow2',  'bb2',  sysdate, 52) ;
insert  into  guest   values(5133, 'color3',   'bb3', sysdate, 53) ;
insert  into  guest   values(5144, 'pink4',  'bb4',   sysdate, 54) ;
insert  into  guest   values(5155, 'red5',  'bb5', sysdate, 55) ;
insert  into  guest   values(5166, 'green6',  'bb6',  sysdate, 56) ;
insert  into  guest   values(5177, 'blue7',  'bb7',   sysdate, 57) ;
insert  into  guest   values(5188,  'black8',  'bb8',   sysdate, 58) ;
insert  into  guest   values(5199, 'white9',  'bb9',  sysdate, 59) ;

select * from guest where name like '%n%';

select count(*) from guest;

select count(*) as cnt from guest;

select rownum, sabun, name, nalja from guest;

select * from guest where pay between 30 and 70;

update guest set name = 'last', title='coffee', nalja = sysdate, pay=123 where sabun = 4400;


