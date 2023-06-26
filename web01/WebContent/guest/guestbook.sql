--오라클 한줄 주석문(comment)
/*
오라클 한줄 이상 주석문 기호
*/

--guestbook 방명록 테이블 만들기
create table guestbook(
    gno number(38) primary key --오라클 시퀀스로 부터 번호를 가져와서 저장하는 방명록 번호 -> 중복 번호가 없고, null 이없다.
    ,gname varchar2(30) not null --글쓴이
    ,gtitle varchar2(200) not null --글제목
    ,gpwd varchar2(20) not null --비밀번호
    ,gcont varchar2(4000) not null  --글내용
    ,ghit number(38) default 0 --default 0 제약조건은 해당 컬럼인 ghit에 굳이 정수 숫자 번호값을 입력하지 않아도 기본값 0이 저장됨
    --조회수
    ,gdate date --방명록 날짜
);

select * from guestbook order by gno desc;

update guestbook set gname = "이순신", set gtitle = "반갑습니다", set gcont = "하이" where gpwd = "12";

--gno_seq 시퀀스 생성
create sequence gno_seq
start with 1 --1부터 시작
increment by 1 --1씩 증가
nocache; --임시 메모리를 사용하지 않겠다는 의미

--생성된 시퀀스 번호값 확인



create table boardT7(
    bno number(38) primary key,
    bname varchar2(30) not null,
    btitle varchar(200) not null,
    bcont varchar(4000) not null,
    bhit int default 0,
    bdate date default sysdate
);

create sequence bno_seq
start with 1
increment by 1
nocache;
































