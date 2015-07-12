
-- 회원, 직원 관리 통합

CREATE TABLE Member(
	email varchar2(50) PRIMARY KEY,
	name varchar2(30) NOT NULL,
	pass varchar2(50) NOT NULL,
	admin char(1) DEFAULT 0, -- 1 관리자 0 사용자 , default 0 
	phone varchar2(13),
	zipcode varchar2(80),
	address varchar2(80),
	address_detail varchar2(80),
	reg_date date DEFAULT SYSDATE
);
