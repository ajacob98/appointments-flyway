ALTER TABLE experts DROP COLUMN id;

ALTER TABLE experts ADD CONSTRAINT pk_user_id PRIMARY KEY (user_id);