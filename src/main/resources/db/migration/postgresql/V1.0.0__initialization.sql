CREATE TABLE CLAN (
	id INT NOT NULL, 
	name VARCHAR(255) NOT NULL,
	tag VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
); 

CREATE TABLE MEMBER (
   id INT NOT NULL,
   clanid INT,
   clanname VARCHAR(255),
   clantag VARCHAR(255),
   name VARCHAR(255) NOT NULL,
   role VARCHAR(255),
   wtr VARCHAR(255) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE CAMPAIGN (
	id SERIAL NOT NULL, 
	name VARCHAR(255) NOT NULL, 
	startDate DATE NOT NULL, 
	endDate DATE NOT NULL, 
	payload TEXT NOT NULL, 
	PRIMARY KEY (id)
); 

CREATE TABLE CAMPAIGNREGISTRATION (
	campaignid INT NOT NULL,
	memberid INT NOT NULL,
	fullyavailable BOOLEAN NOT NULL,
	availability TEXT NOT NULL,
	PRIMARY KEY (campaignid, memberid)
	
);

CREATE TABLE TEAM (
   id SERIAL NOT NULL,
   campaignid INT,
   name VARCHAR(255),
   payload TEXT,
   PRIMARY KEY (id)
);

CREATE TABLE MESSAGE (
   id SERIAL NOT NULL,  
   type VARCHAR(255) NOT NULL,
   editorid INT NOT NULL,
   reference INT,
   text TEXT NOT NULL,
   updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (id)
);

create table Data (
   id SERIAL NOT NULL,
   type VARCHAR(255) NOT NULL,
   reference INT,
   text TEXT,    
   PRIMARY KEY (id)
);