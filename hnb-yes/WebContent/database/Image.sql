

-- 이미지 

CREATE TABLE Image(
     img_no number(12) PRIMARY KEY, -- 시퀀스
     img_path varchar(30),
     img_ext varchar(5),
     img_blob BLOB,
     img_clob CLOB );
