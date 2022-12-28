CREATE TABLE populations
(pref_name VARCHAR(32),
  population INTEGER);

INSERT INTO populations VALUES('京都',  300);
INSERT INTO populations VALUES('大阪',  900);
INSERT INTO populations VALUES('福岡',  500);
INSERT INTO populations VALUES('佐賀',  100);


/*・関西などエリアごとの人口を取得
一度エリアに分けてから集計する*/
SELECT
  CASE WHEN pref_name IN ('京都','大阪') THEN '関西'
  WHEN pref_name IN ('福岡', '佐賀') THEN '九州'
  ELSE NULL
  END AS district,
  populations
FROM
  populations;

/*・エリアごとに人口を集計する
ちょっとできない*/
SELECT
  CASE WHEN pref_name IN ('京都','大阪') THEN '関西'
  WHEN pref_name IN ('福岡', '佐賀') THEN '九州'
  ELSE NULL
  END AS district,
  SUM(population)
FROM
  populations
GROUP BY
  CASE WHEN pref_name IN ('京都','大阪') THEN '関西'
  WHEN pref_name IN ('福岡','佐賀') THEN '九州'
  ELSE NULL
  END;
