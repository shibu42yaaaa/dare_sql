/* 　membersについてのテーブル作成*/
CREATE TABLE members
(name VARCHAR(32),
 created_day INTEGER,
 channel VARCHAR(32),
  age INTEGER);

INSERT INTO members VALUES('山岸エレン', 20210213, 'web', 27);
INSERT INTO members VALUES('朝倉光一', 20210213, 'ad', 27);
INSERT INTO members VALUES('加藤さゆり', 20210215, 'ad', 27);
INSERT INTO members VALUES('神谷雄介', 20210215, 'ad', 27);
INSERT INTO members VALUES('岸あかり', 20210216, 'web', 27);

/*今週の日毎の会員登録数を出力*/

/*誤）SELECT * FROM members;*/

SELECT COUNT(name)
FROM members
WHERE created_day = '2021-02-13';

SELECT COUNT(name)
FROM members
WHERE created_day = 20210213;


/*・昨年の日毎の会員数を出力*/

SELECT created_day, COUNT(name)
  FROM members
 GROUP BY created_day;


/*・日毎の会委員登録数をチャンネルごとで出力
誤)
SELECT channel, COUNT(name)
  FROM members
GROUP BY channel;*/

SELECT created_day, channel, COUNT(name)
  FROM members
GROUP BY created_day, channel;


/*・日毎の会員登録者の平均年齢と最大年齢を出力*/

SELECT created_day, AVG(age), MAX(age)
  FROM members
GROUP BY created_day;