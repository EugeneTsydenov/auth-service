CREATE TABLE refresh_tokens (
                                id VARCHAR(36) NOT NULL PRIMARY KEY
);

CREATE TABLE access_tokens (
                               id VARCHAR(36) NOT NULL PRIMARY KEY,
                               refresh_token_id VARCHAR(36) REFERENCES refresh_tokens(id) ON DELETE CASCADE
);
