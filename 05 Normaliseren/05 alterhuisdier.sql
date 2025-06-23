ALTER TABLE huisdieren DROP COLUMN eigenaar;
ALTER TABLE huisdieren ADD eigenaar_id INT NOT NULL;

update huisdieren set eigenaar_id = 1 where id = 1;
update huisdieren set eigenaar_id = 2 where id = 2;
update huisdieren set eigenaar_id = 3 where id = 3;
update huisdieren set eigenaar_id = 4 where id = 4;
update huisdieren set eigenaar_id = 5 where id = 5;
update huisdieren set eigenaar_id = 6 where id = 6;
update huisdieren set eigenaar_id = 7 where id = 7;