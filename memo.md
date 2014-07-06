# 開発メモ

## spec1
* `show_recipe_title` というメソッドを定義することで、レシピタイトルを表示するということを明確にした。
    * [コミット ffab108e](https://github.com/dtan4/dtan4-sezemi-2014-readable-code-2/commit/ffab108edd531c858fa1ab22749fc0bf6e9b364c)

## spec3
* 変数名を `recipe_data_file_name` とすることで、この変数がレシピデータのファイル名であることを明確にした。
* 引数が指定されていない、指定されたファイルがないときはその旨表示して終了するようにした。
    * [コミット f5b88c5](https://github.com/dtan4/dtan4-sezemi-2014-readable-code-2/commit/f5b88c59aaba6b7bddf5e48aacf80c35ef64fccc)

## spec5
* `#show_recipe_title` メソッドに渡す変数名を `recipe_title`, `id` とし、何を引数に与えているのかを明確にした。
    * [コミット 0825760](https://github.com/dtan4/dtan4-sezemi-2014-readable-code-2/commit/082576024433f211c37b19e70eeabe9b000f7dd4)
* `id` が `recipe-data.txt` の行番号に対応することを明確にした
    * [コミット 1e7f6e7](https://github.com/dtan4/dtan4-sezemi-2014-readable-code-2/commit/1e7f6e7352573f9aa38adb1e7a6bc5740b1a7e7e)

## spec6
* すべてのレシピを表示するメソッドと指定された id のレシピのみ表示するメソッドを分離した。
