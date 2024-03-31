CREATE DATABASE ecoecho;

CREATE TABLE users(
    user_id int AUTO_INCREMENT PRIMARY KEY,
    username varchar(50) not null,
    email varchar(50) not null,
    password varchar(50) not null,
    expert boolean);


    CREATE TABLE blog_messages(
    message_id int AUTO_INCREMENT PRIMARY KEY,
    content text ,
    user_id int ,
    message_date Datetime);

    CREATE TABLE likes(
    like_id int AUTO_INCREMENT PRIMARY key ,
    user_id int ,
    article_id int ,
    like_date datetime);

    CREATE TABLE articles(
    article_id int AUTO_INCREMENT PRIMARY key,
    title varchar(255) ,
    content text ,
    user_id int,
    pub_date datetime,
    language_id int );

    CREATE TABLE languages(
    language_id int AUTO_INCREMENT PRIMARY key ,
    language_name varchar(50) not null);

    CREATE TABLE comments(
   comment_id int AUTO_INCREMENT PRIMARY key , 
    content text,
    article_id int,
    user_id int ,
    comment_date datetime,
    validated boolean);

    CREATE TABLE media(
    media_id int AUTO_INCREMENT PRIMARY KEY,
    media_type varchar(50),
    media_url varchar(255),
    article_id int );


ALTER TABLE likes
ADD CONSTRAINT user_id_constraint
FOREIGN KEY (user_id)
REFERENCES users(user_id);


ALTER TABLE likes
ADD CONSTRAINT article_id_constraint
FOREIGN KEY (article_id)
REFERENCES articles(article_id);


ALTER TABLE articles
ADD CONSTRAINT article_user_id_constraint
FOREIGN KEY (user_id)
REFERENCES users(user_id);


ALTER TABLE articles
ADD CONSTRAINT article_language_id_constraint
FOREIGN KEY (language_id)
REFERENCES languages(language_id);


ALTER TABLE comments
ADD CONSTRAINT comments_articles_constraint
FOREIGN KEY (article_id)
REFERENCES articles(article_id);


ALTER TABLE comments
ADD CONSTRAINT comments_users_constraint
FOREIGN KEY (user_id)
REFERENCES users(user_id);


ALTER TABLE blog_messages
ADD CONSTRAINT blog_messages_users_constraint
FOREIGN KEY (user_id)
REFERENCES users(user_id);


ALTER TABLE media
ADD CONSTRAINT media_articles_constraint
FOREIGN KEY (article_id)
REFERENCES articles(article_id);
