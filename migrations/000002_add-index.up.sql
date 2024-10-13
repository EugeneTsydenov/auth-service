ALTER TABLE refresh_tokens ADD COLUMN user_id VARCHAR(36);

CREATE UNIQUE INDEX idx_refresh_tokens_user_id ON refresh_tokens(user_id);

ALTER TABLE access_tokens ADD COLUMN user_id VARCHAR(36);

CREATE UNIQUE INDEX idx_access_tokens_user_id ON access_tokens(user_id);

ALTER TABLE refresh_tokens ALTER COLUMN user_id SET NOT NULL;
ALTER TABLE access_tokens ALTER COLUMN user_id SET NOT NULL;
