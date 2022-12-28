/*・サブクエリ
クエリの結果に対してクエリを叩く
サブクエリ＝クエリの中のクエリ

相関サブクエリ（初心者が躓くところ）*/

CREATE TABLE items
(name VARCHAR(32),
 category VARCHAR(32),
  price INTEGER);

INSERT INTO items VALUES('iPhon 12',  'スマホ', 100000);
INSERT INTO items VALUES('Pixcel 5',  'スマホ', 80000);
INSERT INTO items VALUES('Xperia 5Ⅱ',  'スマホ', 90000);
INSERT INTO items VALUES('ルンバ980',  '掃除機', 50000);
INSERT INTO items VALUES('Dyson V10',  '掃除機', 40000);
INSERT INTO items VALUES('バルミューダC',  '掃除機', 60000);

/*・平均価格以上の商品を出力*/
SELECT * 
  FROM items
 WHERE price >= (SELECT AVG(price) FROM items);

/*・カテゴリーごとに平均価格以上の商品を出力
誤
SELECT category
  FROM items
 WHERE price >= (SELECT AVG(price) FROM items);*/

正解
SELECT * 
FROM items AS i1
  WHERE price >= (SELECT AVG(price) FROM items AS i2
                                 WHERE i1.category = i2.category
                                  GROUP BY category);
