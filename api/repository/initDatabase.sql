DROP TABLE IF EXISTS "barEvents";
DROP TABLE IF EXISTS "bars";

CREATE TABLE "bars" (
                        bar_id INT GENERATED ALWAYS AS IDENTITY,
                        address	VARCHAR(200),
                        url		VARCHAR(200),
                        PRIMARY KEY(bar_id)
);

CREATE TABLE "barEvents" (
                             bar_event_id INT GENERATED ALWAYS AS IDENTITY,
                             bar_id INT,
                             event_name VARCHAR(200),
                             cover INT,


                             PRIMARY KEY (bar_event_id),
                             CONSTRAINT fk_bar FOREIGN KEY(bar_id) REFERENCES bars(bar_id)
);