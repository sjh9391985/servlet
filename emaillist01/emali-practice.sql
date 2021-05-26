desc emaillist;

-- list
SELECT 
    no, first_name, last_name, email
FROM
    emaillist
ORDER BY no DESC;

-- add
insert into emaillist values (1, '둘', '리','dooly@gmail.com');
insert into emaillist values (2, '마', '이콜','micol@gmail.com');

select no, name, password, message, reg_date from guestbook;

desc guestbook;

 -- alter table guestbook modify reg_date datetime null;

delete from guestbook where no = 7;
