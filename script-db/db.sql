drop database if exists `idiomas`;
create database `idiomas`;
use idiomas;
create table users(
	id int primary key auto_increment,
    name varchar(100) not null,
    lastname varchar(100) not null,
    email varchar(50) not null,
    password varchar(200) not null,
    birthdate date not null
);

create table languages(
	id int primary key auto_increment,
    name varchar(30) not null,
    initials char(2) not null
);

create table decks(
	id int primary key auto_increment,
    name varchar(30) not null,
    created_at datetime not null,
    user_id int,
    language_id int,
    foreign key(user_id) references users(id),
    foreign key(language_id) references languages(id)
);

create table words(
	id int primary key auto_increment, 
    name varchar(30)  not null
);

create table decks_words(
	deck_id int,
    word_id int,
    primary key(deck_id, word_id),
    foreign key(deck_id) references decks(id),
    foreign key(word_id) references words(id)
);

create table phrases(
	id int primary key auto_increment,
    phrase varchar(255) not null,
	translation varchar(255)
);

create table phrases_words(
	phrase_id int, 
    deck_id int,
    word_id int,
    primary key(phrase_id, deck_id, word_id),
    foreign key(phrase_id) references phrase(id),
    foreign key(deck_id) references decks_words(dekc_id),
    foreign key(word_id) references decks_words(word_id)
);