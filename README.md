# dtan4-sezemi-2014-readable-code-2
* 開発言語: Ruby

## 実行手順
第二引数に `id` を指定すると、指定された id のレシピが出力される。
`id` を指定しない場合、すべてのレシピが出力される。

```sh
chmod +x recipe.rb
./recipe.rb recipe-data.txt [id]
```

## `recipe-data.txt` のフォーマット
1行に1つレシピタイトルを書く。

### 例

```
オムライス
親子丼
杏仁豆腐
```
