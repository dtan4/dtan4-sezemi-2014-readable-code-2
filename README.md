# dtan4-sezemi-2014-readable-code-2
* 開発言語: Ruby

## 実行手順
第二引数に `id` を指定すると、指定された id のレシピが出力される。
`id` を指定しない場合、すべてのレシピが出力される。

```sh
chmod +x manager.rb
./manager.rb recipe-data.txt [id]
```

## `recipe-data.txt` のフォーマット
1行に1つレシピ情報を書く。
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
