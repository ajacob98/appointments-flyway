CREATE TABLE if not exists all_users (
    id bigint NOT NULL,
    email character varying(255),
    name character varying(255),
    password character varying(255)
);