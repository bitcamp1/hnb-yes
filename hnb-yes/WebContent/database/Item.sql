
-- 아이템 
-- 이 테이블을 생성하기 전에
-- Category 와 Image 테이블을 먼저 
-- 생성하고 commit 한 후
-- 생성해야함

CREATE TABLE Item(
	item_no number(12) PRIMARY KEY,
	item_name varchar2(50) NOT NULL,
	price number(12) DEFAULT 0,
	pd_date varchar2(20) DEFAULT '없음', -- 생산년도, 30년산 등등 계산에 사용
	capa number(4) DEFAULT 0, -- 용량 ml
	alcol number(3,1) DEFAULT 00.0, -- 18.2 도 
	description varchar2(300) DEFAULT '없음',
	pd_org varchar2(20) NOT NULL, -- 제품 원산지
	sale_type varchar(20) DEFAULT '일반판매', -- 선물용, 일반판매용,세일판매용
	dc_rate number(3,2)  DEFAULT 0.00, -- 할인률
	cate_name number(12) NOT NULL,-- 카테고리 
	img_name number(12));
	  
