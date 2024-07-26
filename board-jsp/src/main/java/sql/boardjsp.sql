create table member(
	id		varchar2(10) not null,	--id
	pass	varchar2(10) not null,	--pw
	name 	varchar2(30) not null,	-- name
	regidate date default sysdate not null,	-- 생성날짜
	primary key(id) -- 기본키 생성
) -- 회원용 테이블

create table board(
	num			number primary key,		-- 게시물번호(시퀀스)
	title		varchar2(200) not null,	-- 제목
	content		varchar2(2000) not null, -- 내용
	id			varchar2(10) not null,	-- 작성자 ->member=id
	postdate 	date default sysdate not null, -- 작성일
	visitcount	number(6) -- 조회수
)
select *from board;
-- 외래키 설정 (부모 member -> 자식 board)
alter table board add constraint board_member_fk foreign key(id) references member(id);

-- 시퀀스 설정 (자동번호 주입)
create sequence seq_board_num
	increment by 1	-- 증가값 1
	start with 1	-- 시작값 1
	minvalue 1		-- 최소값 1
	nomaxvalue		-- 최대값 없음
	nocycle			-- 반복 없음
	nocache;		-- 미리 만들지 않음

drop sequence seq_board_num;

insert into member(id, pass, name) values('kth', '1234', '김태희');
insert into member(id, pass, name) values('ehw', '1234', '이현우');
insert into member(id, pass, name) values('kuh', '1234', '김우혁');

select * from board;


insert into board(num, title, content, id, postdate, visitcount)
	values(seq_board_num.nextval, '제목1', '내용1', 'kth', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount)
	values(seq_board_num.nextval, '제목2', '내용2', 'kth', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount)
	values(seq_board_num.nextval, '제목3', '내용3', 'kth', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount)
	values(seq_board_num.nextval, '제목4', '내용4', 'kth', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount)
	values(seq_board_num.nextval, '제목5', '내용5', 'kth', sysdate, 0);

select*from member where id='kth' and pass='1234';

select count(*) from board where title like '%제목%'




