CREATE SEQUENCE users_user_id_seq;
ALTER TABLE all_users ADD PRIMARY KEY (id);
ALTER TABLE all_users ALTER COLUMN id SET DEFAULT nextval('users_user_id_seq');

CREATE TABLE if not exists experts (
    qualification character varying(255),
    time_zone character varying(255),
    id BIGSERIAL PRIMARY KEY,
    user_id bigint NOT NULL,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES all_users (id)
);