/* テーブル作成 */
CREATE TABLE eva
(name VARCHAR(32),
 kawaii INTEGER,
 roll VARCHAR(32));


INSERT INTO eva VALUES('綾波レイ', 10, 'パイロット');
INSERT INTO eva VALUES('アスカ', 3, 'パイロット');
INSERT INTO eva VALUES('碇ユイ', 6, '');
INSERT INTO eva VALUES('葛城ミサト', 4, '作戦部長');


/*可愛いが５よりも大きいキャラの名前と可愛さ*/
SELECT name, kawaii FROM eva WHERE kawaii > 5;

/*可愛いが５よりも大きいパイロットのレコード*/
/*誤　SELECT role = 'パイロット' FROM eva WHERE kawaii > 5;*/

/*正解*/
SELECT * FROM eve WHERE kawaii > 5 AND role = 'パイロット';

/*可愛いが５より大きいか、パイロットのレコードを取得*/
SELECT * FROM eva WHERE kawaii > 5 OR role = 'パイロット'

/*可愛いが４〜６のキャラのレコードを取得
誤）SELECT * FROM eva WHERE kawaii > 4 OR kawaii < 6;*/

/*正解*/
SELECT * FROM eva
WHERE kawaii BETWEEN 4 AND 6;


/*役職がパイロットか作戦部長のレコードを取得
誤）SELECT * FROM eva WHERE role = 'パイロット' OR '作戦部長';*/

/*正解*/
SELECT * FROM eva WHERE kawaii IN ('パイロット','作戦部長');
/*(* NOT IN：まとめて否定)*/


/*名前が「ア」から始まるレコードを取得*/
SELECT * FROM eva
WHERE name LIKE 'ア%';


/*rollが空のレコード*/
SELECT * FROM eva
WHERE roll IS NULL;


/*evaテーブルのうち、レコードを２行だけ取得*/

SELECT * FROM eva
LIMIT 2;


/*可愛いの昇順で並び替える*/
SELECT * FROM eva
ORDER BY kawaii;

/* ＊降順の場合
ORDER BY kawaii DESC;*/