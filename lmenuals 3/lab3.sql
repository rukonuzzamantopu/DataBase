create  database lmenuals3;
use lmenuals3;
CREATE TABLE player (
   player_no int PRIMARY KEY ,
    player_name varchar(50),
    league_no char(6)
    

);

CREATE TABLE diplomas(
student_name text(20) NOT null,
    course int NOT null,
    d_date date NOT null,
    sucessfull char(50),
    location varchar(50),
    PRIMARY KEY (student_name(20),course,d_date)
);
CREATE TABLE teams(
    team_no int PRIMARY KEY,
    player_no int UNIQUE,
    division char(40)
    );

    CREATE TABLE team2(
  teams_no int PRIMARY KEY NOT null,
    player_no int not null,
    division char (20),
    FOREIGN KEY (player_no) REFERENCES player(player_no)

);