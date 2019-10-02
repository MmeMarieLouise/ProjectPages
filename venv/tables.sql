-- To  query contact table

SELECT * FROM contact;

-- Create & populate contact table
CREATE TABLE contact(
id integer,
firstname character varying(50),
surname character varying(50),
email character varying(50),
telephone integer,
slack character varying(20),
linkedin character varying(50),
);

-- To add extra columns
ALTER TABLE contact
ADD project character varying(50);

ALTER TABLE contact
ADD position character varying(50);

-- To alter data type of column

ALTER TABLE contact ALTER COLUMN telephone TYPE BIGINT;

-- Populate contact table

INSERT INTO contact(
( id,
( firstname,
( surname,
( email,
( telephone,
( slack,
( linkedin,
( project,
( position)
VALUES (003,'Wolf','Ansley','wolf_ansley@email.com',07955513018, '@wolf', 'https://www.linkedin.com/in/wolf-ansley', 'Annual Investment Challenge', 'Graduate Trainee');

INSERT INTO contact(
( id,
( firstname,
( surname,
( email,
( telephone,
( slack,
( linkedin,
( project,
( position)
VALUES (004,'Panda','Beckwith','panda_beckwith@email.com', 07855539037 , '@panda', 'https://www.linkedin.com/in/panda-beckwith', 'Annual Investment Challenge', 'Apprentice');

INSERT INTO contact(
( id,
( firstname,
( surname,
( email,
( telephone,
( slack,
( linkedin,
( project,
( position)
VALUES (005,'Hyena','Chester','hyena_chester@email.com', 07255591356 , '@hyena', 'https://www.linkedin.com/in/hyena-chester', 'Annual Investment Challenge', 'Graduate Trainee');

INSERT INTO contact(
( id,
( firstname,
( surname,
( email,
( telephone,
( slack,
( linkedin,
( project,
( position)
VALUES (006,'Koala','Darlington','koala_darlington@email.com', 07955560437 , '@koala', 'https://www.linkedin.com/in/koala-darlington', 'Annual Investment Challenge', 'Graduate Trainee');

INSERT INTO contact(
( id,
( firstname,
( surname,
( email,
( telephone,
( slack,
( linkedin,
( project,
( position)
VALUES (007,'Tiger','Hayes','tiger_hayes@email.com', 07155525808 , '@tiger', 'https://www.linkedin.com/in/tiger-hayes', 'Site Migration', 'Developer');

INSERT INTO contact(
( id,
( firstname,
( surname,
( email,
( telephone,
( slack,
( linkedin,
( project,
( position)
VALUES (008,'Penguin','Peyton','penguin_peyton@email.com', 07555544757 , '@penguin', 'https://www.linkedin.com/in/penguin-peyton', 'Site Migration', 'Developer');

INSERT INTO contact(
( id,
( firstname,
( surname,
( email,
( telephone,
( slack,
( linkedin,
( project,
( position)
VALUES (009,'Fox','Ridley','fox_ridley@email.com', 07455576764 , '@fox', 'https://www.linkedin.com/in/fox-ridley', 'Site Migration', 'Developer');

INSERT INTO contact(
( id,
( firstname,
( surname,
( email,
( telephone,
( slack,
( linkedin,
( project,
( position)
VALUES (0010,'Turtle','Westcott','turtle_westcott@email.com', 07255550210 , '@turtle', 'https://www.linkedin.com/in/turtle-westcott', 'Site Migration', 'Developer');

-- change id values from string '001' to integers 001

UPDATE contact SET id = 003 WHERE firstname = 'Wolf';
UPDATE contact SET id = 004 WHERE firstname = 'Panda';
UPDATE contact SET id = 005 WHERE firstname = 'Hyena';
UPDATE contact SET id = 006 WHERE firstname = 'Koala';
UPDATE contact SET id = 007 WHERE firstname = 'Tiger';
UPDATE contact SET id = 008 WHERE firstname = 'Penguin';
UPDATE contact SET id = 009 WHERE firstname = 'Fox';
UPDATE contact SET id = 0010 WHERE firstname = 'Turtle';

-- Drop project table:

DROP TABLE project;

-- Create project table:

CREATE TABLE project(
id integer,
title character varying(50),
team character varying(50),
description character varying(200),
objectives character varying(400),
events character varying(50),
news character varying(50),
timeline character varying(50));

-- To alter character limit of column

ALTER TABLE project ALTER COLUMN objectives TYPE character varying(1000);
ALTER TABLE project ALTER COLUMN title TYPE character varying(100);
ALTER TABLE project ALTER COLUMN description TYPE character varying(1000);

SELECT * FROM project;

-- Populate project table

INSERT INTO project(
( id,
( title,
( team,
( description,
( objectives,
( events,
( news,
( timeline)
VALUES (0011, 'Annual Investment Challenge', 'Panda Beckwith', 'The Annual Investment Challenge is an opportunity for graduates and apprentices to work together to come up with ways to improve the organisation. We are proposing an improved infrastructure that would help great ideas thrive. We’d like to create something that helps the organisation work smarter. Our idea provides a new way of accessing and navigating institutional knowledge and expertise in Wellcome. We want to make the diversity of expertise, experience, and interests at Wellcome available to everyone on the intranet. It is a suite of upgraded features for the intranet which include: new personal profiles; new departmental pages and a new projects landing page and improved tagging functionality', 'Our aim is to help staff work smarter, more efficiently, to transform skills sharing and collaboration at the organisation, to improve the functionality of tags to allow users to search easily for skills, to make information about institutional knowledge easy to find and digitally accessible, to improve individual work streams and support large projects and staff networks, to prevent the duplication of work (to provide a clear, streamlined process for bringing together colleagues who can offer relevant support and insight into shared work) and to prevent siloed working / thinking', 'Co-Design workshop','Feature ideas - first interation', 'Pitch' );

INSERT INTO project(
( id,
( title,
( team,
( description,
( objectives,
( events,
( news,
( timeline)
VALUES (0012, 'Annual Investment Challenge', 'Tiger Hayes' , 'The Annual Investment Challenge is an opportunity for graduates and apprentices to work together to come up with ways to improve the organisation. We are proposing an improved infrastructure that would help great ideas thrive. We’d like to create something that helps the organisation work smarter. Our idea provides a new way of accessing and navigating institutional knowledge and expertise in Wellcome. We want to make the diversity of expertise, experience, and interests at Wellcome available to everyone on the intranet. It is a suite of upgraded features for the intranet which include: new personal profiles; new departmental pages and a new projects landing page and improved tagging functionality', 'Our aim is to help staff work smarter, more efficiently, to transform skills sharing and collaboration at the organisation, to improve the functionality of tags to allow users to search easily for skills, to make information about institutional knowledge easy to find and digitally accessible, to improve individual work streams and support large projects and staff networks, to prevent the duplication of work (to provide a clear, streamlined process for bringing together colleagues who can offer relevant support and insight into shared work) and to prevent siloed working / thinking', 'Co-Design workshop','Feature ideas - first interation', 'Pitch' );

INSERT INTO project(
( id,
( title,
( team,
( description,
( objectives,
( events,
( news,
( timeline)
VALUES (0013, 'Annual Investment Challenge', 'Penguin Peyton' , 'The Annual Investment Challenge is an opportunity for graduates and apprentices to work together to come up with ways to improve the organisation. We are proposing an improved infrastructure that would help great ideas thrive. We’d like to create something that helps the organisation work smarter. Our idea provides a new way of accessing and navigating institutional knowledge and expertise in Wellcome. We want to make the diversity of expertise, experience, and interests at Wellcome available to everyone on the intranet. It is a suite of upgraded features for the intranet which include: new personal profiles; new departmental pages and a new projects landing page and improved tagging functionality', 'Our aim is to help staff work smarter, more efficiently, to transform skills sharing and collaboration at the organisation, to improve the functionality of tags to allow users to search easily for skills, to make information about institutional knowledge easy to find and digitally accessible, to improve individual work streams and support large projects and staff networks, to prevent the duplication of work (to provide a clear, streamlined process for bringing together colleagues who can offer relevant support and insight into shared work) and to prevent siloed working / thinking', 'Co-Design workshop','Feature ideas - first interation', 'Pitch' );

INSERT INTO project(
( id,
( title,
( team,
( description,
( objectives,
( events,
( news,
( timeline)
VALUES (0014, 'Annual Investment Challenge', 'Fox Ridley' , 'The Annual Investment Challenge is an opportunity for graduates and apprentices to work together to come up with ways to improve the organisation. We are proposing an improved infrastructure that would help great ideas thrive. We’d like to create something that helps the organisation work smarter. Our idea provides a new way of accessing and navigating institutional knowledge and expertise in Wellcome. We want to make the diversity of expertise, experience, and interests at Wellcome available to everyone on the intranet. It is a suite of upgraded features for the intranet which include: new personal profiles; new departmental pages and a new projects landing page and improved tagging functionality', 'Our aim is to help staff work smarter, more efficiently, to transform skills sharing and collaboration at the organisation, to improve the functionality of tags to allow users to search easily for skills, to make information about institutional knowledge easy to find and digitally accessible, to improve individual work streams and support large projects and staff networks, to prevent the duplication of work (to provide a clear, streamlined process for bringing together colleagues who can offer relevant support and insight into shared work) and to prevent siloed working / thinking', 'Co-Design workshop','Feature ideas - first interation', 'Pitch' );

INSERT INTO project(
( id,
( title,
( team,
( description,
( objectives,
( events,
( news,
( timeline)
VALUES (0015, 'Annual Investment Challenge', 'Turtle Westcott', 'The Annual Investment Challenge is an opportunity for graduates and apprentices to work together to come up with ways to improve the organisation. We are proposing an improved infrastructure that would help great ideas thrive. We’d like to create something that helps the organisation work smarter. Our idea provides a new way of accessing and navigating institutional knowledge and expertise in Wellcome. We want to make the diversity of expertise, experience, and interests at Wellcome available to everyone on the intranet. It is a suite of upgraded features for the intranet which include: new personal profiles; new departmental pages and a new projects landing page and improved tagging functionality', 'Our aim is to help staff work smarter, more efficiently, to transform skills sharing and collaboration at the organisation, to improve the functionality of tags to allow users to search easily for skills, to make information about institutional knowledge easy to find and digitally accessible, to improve individual work streams and support large projects and staff networks, to prevent the duplication of work (to provide a clear, streamlined process for bringing together colleagues who can offer relevant support and insight into shared work) and to prevent siloed working / thinking', 'Co-Design workshop','Feature ideas - first interation', 'Pitch' );

INSERT INTO project(
( id,
( title,
( team,
( description,
( objectives,
( events,
( news,
( timeline)
VALUES (0016, 'Site Migration', 'Wolf Ansley', 'An initiative driven by the development teams of public_facing_site.ac.uk to migrate to a fully decoupled Drupal 8 and React JS website','We will use this project as a discovery period for the approach we are going to take long-term with the website. This quarter will aim to migrate the news section of wellcome.ac.uk to use a Drupal 8 backend and React frontend. ', 'Demo','Site Header', 'Development' );

INSERT INTO project(
( id,
( title,
( team,
( description,
( objectives,
( events,
( news,
( timeline)
VALUES (0017, 'Site Migration', 'Panda Beckwith', 'An initiative driven by the development teams of public_facing_site.ac.uk to migrate to a fully decoupled Drupal 8 and React JS website','We will use this project as a discovery period for the approach we are going to take long-term with the website. This quarter will aim to migrate the news section of wellcome.ac.uk to use a Drupal 8 backend and React frontend. ', 'Demo','Site Header', 'Development' );

INSERT INTO project(
( id,
( title,
( team,
( description,
( objectives,
( events,
( news,
( timeline)
VALUES (0018, 'Site Migration', 'Hyena Chester', 'An initiative driven by the development teams of public_facing_site.ac.uk to migrate to a fully decoupled Drupal 8 and React JS website','We will use this project as a discovery period for the approach we are going to take long-term with the website. This quarter will aim to migrate the news section of wellcome.ac.uk to use a Drupal 8 backend and React frontend. ', 'Demo','Site Header', 'Development' );


INSERT INTO project(
( id,
( title,
( team,
( description,
( objectives,
( events,
( news,
( timeline)
VALUES (0019, 'Site Migration', 'Koala Darlington', 'An initiative driven by the development teams of public_facing_site.ac.uk to migrate to a fully decoupled Drupal 8 and React JS website','We will use this project as a discovery period for the approach we are going to take long-term with the website. This quarter will aim to migrate the news section of wellcome.ac.uk to use a Drupal 8 backend and React frontend. ', 'Demo','Site Header', 'Development' );







