ALTER TABLE day_schedules ALTER COLUMN day TYPE character varying(255) USING day::TEXT;
DROP TYPE day;
ALTER TABLE day_schedules ADD CONSTRAINT day_schedule_day_check CHECK (((day)::text = ANY ((ARRAY['Sun'::character varying, 'Mon'::character varying, 'Tue'::character varying, 'Wed'::character varying, 'Thu'::character varying, 'Fri'::character varying, 'Sat'::character varying])::text[])))