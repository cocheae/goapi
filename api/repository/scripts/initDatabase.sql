-- Database: barsDb

-- DROP DATABASE IF EXISTS "barsDb";

-- CREATE DATABASE "barsDb"
--     WITH
--     OWNER = postgres
--     ENCODING = 'UTF8'
--     LC_COLLATE = 'C'
--     LC_CTYPE = 'C'
--     LOCALE_PROVIDER = 'libc'
--     TABLESPACE = pg_default
--     CONNECTION LIMIT = -1
--     IS_TEMPLATE = False
-- 	;

DROP TABLE IF EXISTS "barEvents";
DROP TABLE IF EXISTS "bar";


CREATE TABLE bar (
                       bar_id INT GENERATED ALWAYS AS IDENTITY,
                       bar_name VARCHAR(200),
                       address	VARCHAR(200),
                       url		VARCHAR(200),
                       PRIMARY KEY(bar_id)
);

INSERT INTO public.bar(bar_name, address, url)
VALUES ('Sidetrack','3349 North Halsted Chicago, IL 60657', 'https://www.sidetrackchicago.com/');


CREATE TABLE "barEvents" (
                             bar_event_id INT GENERATED ALWAYS AS IDENTITY,
                             bar_id INT,
                             event_name VARCHAR(200),
                             cover INT,


                             PRIMARY KEY (bar_event_id),
                             CONSTRAINT fk_bar FOREIGN KEY(bar_id) REFERENCES bar(bar_id)
);

INSERT INTO public."barEvents"(bar_id, event_name, cover)
VALUES (1,'TGIF: Friday Afternoon Show Tunes', 0);