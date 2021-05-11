DROP TABLE IF EXISTS kontext_conc_persistence;

CREATE TABLE kontext_conc_persistence (
    id VARCHAR(191) PRIMARY KEY,
    data TEXT NOT NULL,
    created TIMESTAMP NOT NULL,
    num_access INT NOT NULL DEFAULT 0,
    last_access TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
