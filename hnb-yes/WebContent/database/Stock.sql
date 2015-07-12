
-- 재고관리 테이블

CREATE TABLE Stock( 
     datetime varchar2(12) PRIMARY KEY, -- 입출고 날짜시간 12자리를 PK로 사용
     put number(12), -- 입고량
     out number(12), -- 출고량
     base number(12) -- 기본수량    
);
