
-- 게시판

CREATE TABLE Board(
	board_no number(12) PRIMARY KEY,
	title varchar2(80),
	content varchar2(200),
	read_count number(3),
	reg_no number(3),
	reg_level number(3),
	reg_step number(3),
	request_ip varchar2(20),
	reg_date date,
	img_no number(12)
	    CONSTRAINT board_img_fk
	    REFERENCES Image(img_no)
	    ON DELETE SET NULL,
	boardgrp_no number(12)
	     CONSTRAINT board_grp_fk
	     REFERENCES Boardgrp(boardgrp_no)
	     ON DELETE SET NULL,
	email varchar2(50)
	     CONSTRAINT board_email_fk 
	     REFERENCES Member(email)
	     ON DELETE SET NULL
);

