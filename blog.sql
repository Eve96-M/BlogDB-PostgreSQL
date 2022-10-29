CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "email" varchar UNIQUE,
  "password" varchar UNIQUE,
  "age" int
);

CREATE TABLE "entries" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar,
  "description" varchar,
  "author" varchar,
  "content" varchar,
  "category_id" int
);

CREATE TABLE "categories" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "comments" (
  "id" SERIAL PRIMARY KEY,
  "comment" varchar,
  "entry_id" int,
  "user_id" int
);

ALTER TABLE "comments" ADD FOREIGN KEY ("entry_id") REFERENCES "entries" ("id");

ALTER TABLE "comments" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "entries" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

insert into categories (name) values ('review');
insert into categories (name) values ('recomendation');
insert into users (name, email, password, age) values ('Evelio Medina', 'eve@gmail.com', 'atunconpan', 26);
insert into users (name, email, password, age) values ('Romario Castellanos', 'rom@gmail.com', 'zidian', 27);
insert into entries (title, description, author , content, category_id) values ('Reviewing D&D ONE', 'lorem ipsum dolor ouch', 'MrTuna01', 'D&D one es una de las patentes mas actuales de wizards of the coast y un plateamiento atrevido para la post pandemia',1);
insert into entries (title, description, author , content, category_id) values ('Detras del telon: vampiro la mascarada quinta edicion', 'lorem ipsum dolor vampiros 123', 'MrSalmon02', 'nos controlan desde las sombras, politica, megacorporaciones, todo, bienvenido al mundo de las tinieblas, jueguenlo',2);
insert into comments (comment, entry_id, user_id) values ('No me gusta, que vuelva 3.5', 1, 1);
insert into comments (comment, entry_id, user_id) values ('Me gusta mas vampiro quinta edicion', 1, 2);
insert into comments (comment, entry_id, user_id) values ('tengo que probarlo a ver que tal', 2, 1);
insert into comments (comment, entry_id, user_id) values ('y hombre lobo para cuando?', 2, 2);