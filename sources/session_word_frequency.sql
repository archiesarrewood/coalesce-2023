WITH tokens AS (
    SELECT TRIM(LOWER(REGEXP_REPLACE(word, '[^a-zA-Z]+', '', 'g'))) AS token
    FROM (
        SELECT UNNEST(STRING_SPLIT(title || description, ' ')) AS word
        from ${sessions}
    ) AS subquery
),
stopwords AS (
    SELECT UNNEST(STRING_SPLIT('a an and are as at for from in is it of on the to with will this how be that you session their your can they by we into not using our all have or also through but use you what been some like am has about new youll october more well its talk up us do th', ' ')) AS stopword
),
word_frequencies AS (
    SELECT
        token,
        COUNT(*) AS frequency
    FROM
        tokens
    WHERE
        token NOT IN (SELECT stopword FROM stopwords)
    GROUP BY
        token
)
SELECT
    token AS word,
    frequency
FROM word_frequencies
WHERE frequency > 15 and length(token) > 1
ORDER BY frequency DESC;
