USE hr;

INSERT INTO countries (country_id, country_name) VALUES ('GR', 'Greece');

INSERT INTO countries (country_id, country_name, region_id) VALUES ('SW', 'Sweden', NULL);

INSERT INTO countries (country_id, country_name, region_id) VALUES
('AS', 'Austria', 1001),
('CR', 'Croatia', 1002),
('CU', 'Cuba', 1003);

CREATE TABLE IF NOT EXISTS country_new
AS SELECT * FROM countries;

INSERT INTO country_new SELECT * FROM countries;

INSERT INTO countries VALUES('C1', 'India',1001);

INSERT INTO countries (country_id,country_name,region_id) VALUES('C1','India',NULL);

CREATE TABLE IF NOT EXISTS jobs (
JOB_ID integer NOT NULL UNIQUE ,
JOB_TITLE varchar(35) NOT NULL,
MIN_SALARY decimal(6,0)
);

INSERT INTO jobs VALUES(1001,'OFFICER',8000);

INSERT INTO countries VALUES(501,'Italy',185);

INSERT INTO countries(COUNTRY_NAME,REGION_ID) VALUES('India',185);

INSERT INTO countries(COUNTRY_NAME,REGION_ID) VALUES('Japan',102);

INSERT INTO countries VALUES(501,'India',102);

INSERT INTO countries(region_id) VALUES(109);

INSERT INTO countries(country_name,region_id) VALUES('Australia',121);

INSERT INTO job_history VALUES(501,1001,60);

INSERT INTO job_history VALUES(502,1003,80);

INSERT INTO employees VALUES(510,'Alex','Hanes','CLERK',18000,201,60);

INSERT INTO employees VALUES(511,'Kim','Leon','CLERK',18000,211,80);

INSERT INTO employees VALUES(512,'Kim','Leon','CLERK',18000,80,211);

INSERT INTO employees VALUES(510,'Alex','Hanes',60,1001,18000);

INSERT INTO employees VALUES(511,'Tom','Elan',60,1003,22000);

INSERT INTO employees VALUES(511,'Tom','Elan',80,1001,22000);