USE hr;

ALTER TABLE country_new RENAME country_list;

ALTER TABLE locations ADD region_id INT;

ALTER TABLE locations ADD ID INT FIRST;

ALTER TABLE locations DROP region_id;

ALTER TABLE locations ADD region_id INT AFTER state_province;

ALTER TABLE locations MODIFY country_id VARCHAR(5);

-- ALTER TABLE locations DROP state_province ADD state varchar(25) AFTER city; (generates error because the table exists and contains data)

ALTER TABLE locations CHANGE state_province state varchar(25);

ALTER TABLE locations DROP PRIMARY KEY;

ALTER TABLE locations ADD PRIMARY KEY(location_id, country_id);

SHOW COLUMNS FROM locations;

DESC locations;

ALTER TABLE countries RENAME country_new;

ALTER TABLE locations MODIFY country_id INT;

ALTER TABLE locations DROP city;

ALTER TABLE locations DROP PRIMARY KEY;

ALTER TABLE job_history ADD FOREIGN KEY(job_id) REFERENCES jobs(job_id);

ALTER TABLE job_history
ADD CONSTRAINT fk_job_id
FOREIGN KEY (job_id)
REFERENCES jobs(job_id)
ON UPDATE RESTRICT
ON DELETE CASCADE;

ALTER TABLE job_history
DROP FOREIGN KEY fk_job_id;

ALTER TABLE job_history
ADD INDEX indx_job_id(job_id);

ALTER TABLE job_history
DROP INDEX indx_job_id;