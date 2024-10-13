-- Удаляем индекс для столбца user_id в таблице refresh_tokens
DROP INDEX IF EXISTS idx_refresh_tokens_user_id;

-- Удаляем столбец user_id из таблицы refresh_tokens
ALTER TABLE refresh_tokens DROP COLUMN IF EXISTS user_id;

-- Удаляем индекс для столбца user_id в таблице access_tokens
DROP INDEX IF EXISTS idx_access_tokens_user_id;

-- Удаляем столбец user_id из таблицы access_tokens
ALTER TABLE access_tokens DROP COLUMN IF EXISTS user_id;
