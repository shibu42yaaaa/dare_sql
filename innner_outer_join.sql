/*・テーブル結合（INER/OUTER JOIN）
複数テーブルのデータを一度に取得
テーブル結合（JOIN）
JOINはSQLにおいて必須
JOINをちゃんと理解すること！！*/

CREATE TABLE martians
(id INTEGER,
  name VARCHAR(32));

INSERT INTO martians VALUES(1,  'ハリー');
INSERT INTO martians VALUES(2,  'ハーマイオニー');
INSERT INTO martians VALUES(3,  'ロン');
INSERT INTO martians VALUES(3,  'ヴォルデモート');


CREATE TABLE histories
(id INTEGER,
 martians_id INTEGER,
  planet VARCHAR(32));

INSERT INTO histories VALUES(1,  3, '地球');
INSERT INTO histories VALUES(2,  1,'木星');
INSERT INTO histories VALUES(3,  4,'土星');
INSERT INTO histories VALUES(3,  5,'海王星');


/*・火星人の渡航歴を出力*/

/*idとmartians_idを軸にする*/
SELECT *
  FROM martians AS m
 INNER JOIN histories AS h ON m.id = h.martiant_id;


/*・渡航したヤツの名前と渡航先だけ出力*/

SELECT m.name, h.planet
  FROM martians AS m
 INNER JOIN histories AS h ON m.id = h.martians_id;


/*・マッチしないレコードは消えてしまうので、それがないようにする*/
SELECT m.name, h.planet
  FROM martians AS m
LEFT OUTER JOIN histories AS h
  ON M.id = h.martians_id;
