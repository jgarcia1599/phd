CREATE DATABASE IF NOT EXISTS midtermp3;

-- Switch to the newly created database
USE midtermp3;

CREATE TABLE Team (
    team_name VARCHAR(255),
    location VARCHAR(255),
    PRIMARY KEY (team_name)
);

CREATE TABLE Game (
    game_date DATE,
    home_team VARCHAR(255),
    away_team VARCHAR(255),
    score_home INT,
    score_away INT,
    stadium VARCHAR(255),
    PRIMARY KEY (game_date, home_team, away_team),
    FOREIGN KEY (home_team) REFERENCES Team(team_name),
    FOREIGN KEY (away_team) REFERENCES Team(team_name)
);


CREATE TABLE User (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE Bet (
    bet_id INT,
    user_id INT,
    game_date DATE,
    home_team VARCHAR(255),
    away_team VARCHAR(255),
    bet_amount DECIMAL(10, 2),
    predicted_score_home INT,
    predicted_score_away INT,
    PRIMARY KEY (bet_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (game_date, home_team, away_team) REFERENCES Game(game_date, home_team, away_team)
);

CREATE TABLE BetEnhancer (
    enhancer_id INT,
    bet_id INT,
    reason VARCHAR(255),
    multiplier DECIMAL(3,2),
    bonus_amount DECIMAL(10, 2),
    PRIMARY KEY (enhancer_id),
    FOREIGN KEY (bet_id) REFERENCES Bet(bet_id)
);

-- Inserting sample data into the Team table
INSERT INTO Team (team_name, location) VALUES ('Team A', 'Location A');
INSERT INTO Team (team_name, location) VALUES ('Team B', 'Location B');
INSERT INTO Team (team_name, location) VALUES ('Team C', 'Location C');

-- Inserting sample data into the Game table
INSERT INTO Game (game_date, home_team, away_team, score_home, score_away, stadium) VALUES ('2024-03-20', 'Team A', 'Team B', 2, 1, 'Stadium AB');
INSERT INTO Game (game_date, home_team, away_team, score_home, score_away, stadium) VALUES ('2024-03-21', 'Team B', 'Team C', 3, 3, 'Stadium BC');
INSERT INTO Game (game_date, home_team, away_team, score_home, score_away, stadium) VALUES ('2024-03-22', 'Team A', 'Team C', 1, 0, 'Stadium AC');

-- Inserting sample data into the User table
INSERT INTO User (user_id, first_name, last_name, email) VALUES (1, 'John', 'Doe', 'johndoe@example.com');
INSERT INTO User (user_id, first_name, last_name, email) VALUES (2, 'Jane', 'Smith', 'janesmith@example.com');
INSERT INTO User (user_id, first_name, last_name, email) VALUES (3, 'Alice', 'Johnson', 'alicejohnson@example.com');

-- Inserting sample data into the Bet table
INSERT INTO Bet (bet_id, user_id, game_date, home_team, away_team, bet_amount, predicted_score_home, predicted_score_away) VALUES (1, 1, '2024-03-20', 'Team A', 'Team B', 100.00, 2, 1);
INSERT INTO Bet (bet_id, user_id, game_date, home_team, away_team, bet_amount, predicted_score_home, predicted_score_away) VALUES (2, 2, '2024-03-20', 'Team A', 'Team B', 200.00, 1, 2);
INSERT INTO Bet (bet_id, user_id, game_date, home_team, away_team, bet_amount, predicted_score_home, predicted_score_away) VALUES (3, 3, '2024-03-21', 'Team B', 'Team C', 300.00, 3, 2);
INSERT INTO Bet (bet_id, user_id, game_date, home_team, away_team, bet_amount, predicted_score_home, predicted_score_away) VALUES (4, 1, '2024-03-22', 'Team A', 'Team C', 400.00, 0, 1);

-- Note: Adjust the bet_amount and other details as necessary to test different scenarios.
