CREATE TYPE day AS ENUM ('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat');

CREATE TABLE day_schedules (
    id BIGSERIAL PRIMARY KEY,
    day day NOT NULL,
    duration_minutes integer NOT NULL,
    start_time time(6) without time zone NOT NULL,
    expert_id bigint NOT NULL
);

ALTER TABLE day_schedules ADD CONSTRAINT fk_expert_id FOREIGN KEY (expert_id) REFERENCES experts(user_id) ON DELETE CASCADE;