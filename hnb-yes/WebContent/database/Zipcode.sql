
-- 우편번호

CREATE TABLE Zipcode(
	seq       number(5,0) PRIMARY KEY,
	zipcode  varchar2(7) NOT NULL,
	sido       varchar2(6) NOT NULL,
	gugun    varchar2(30) NOT NULL,
	dong      varchar2(50) NOT NULL,
	ri           varchar2(80),
	bunji      varchar2(20)
);
