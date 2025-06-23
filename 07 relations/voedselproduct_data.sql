
ALTER TABLE voedselProduct
ADD CONSTRAINT FK_voedselProduct_ingredient
FOREIGN KEY (hoofdIngredientId) REFERENCES ingredient(id);


insert into ingredient (id, naam) values (2, 'honing');
insert into ingredient (id, naam) values (3, 'bosbessen');


insert into voedselProduct (hoofdIngredientId, naam) values (2, 'honingkoek');
insert into voedselProduct (hoofdIngredientId, naam) values (3, 'bosbessenkwark');
