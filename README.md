# dtan4-sezemi-2014-readable-code-2
* 開発言語: Ruby

## 実行手順
必須引数として、第一引数にユーザー名、第二引数にレシピデータを収録したファイルを指定する。
第三引数にレシピ ID を指定すると、指定された ID のレシピが出力される。
`id` を指定しない場合、すべてのレシピが出力される。

```sh
chmod +x manager.rb
./manager.rb kou recipe-data.txt [id]
```

## `recipe-data.txt` のフォーマット
1行に1つレシピデータを書く。
レシピのフォーマットは以下に準ずる。

```
<recipe title> <recipe url>
```

### 例

```
オムライス http://cookpad.com/recipe/2653946
親子丼 http://cookpad.com/recipe/2657882
杏仁豆腐 http://cookpad.com/recipe/2654398
```
