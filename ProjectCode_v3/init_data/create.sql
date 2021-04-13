DROP TABLE IF EXISTS user_table;

CREATE TABLE IF NOT EXISTS user_table (
  full_name VARCHAR(30),    
  username VARCHAR(30) NOT NULL,  
  password_ VARCHAR(30) NOT NULL,
  major VARCHAR(30),
  gpa DECIMAL,       
  year  VARCHAR(30),
  pronouns VARCHAR(30),
  experience VARCHAR(500),
  skills VARCHAR(500),
  PRIMARY KEY(username) 
);

INSERT INTO user_table(full_name, username, password_, major, gpa, year, pronouns, experience, skills)
VALUES('Abeal Sileshi', 'abealsileshi', 'fakepassword', 'CS', 4.00, 'senior' , 'he/him/his', 'I have minimal experience.', 'and no skills');

DROP TABLE IF EXISTS posts;

CREATE TABLE IF NOT EXISTS posts(
  post_text VARCHAR(500) NOT NULL,
  username_posts VARCHAR(30) REFERENCES user_table (username)
    
  PRIMARY KEY(posts) 
);

INSERT INTO posts(post_text)
VALUES('This is the very first post from anything');
