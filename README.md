shell コマンドが実行されるディレクトリを説明するためのリポジトリ。  
まずファイルそれぞれの内容を読んでほしいが大まかに説明すると以下の通り。

```
exedir-sh
 ├ b.sh  # exedir-sh/ に cd して x.sh を呼び出すだけ
 └ dir
   ├ a.sh  # exedir-sh/dir/ に cd して x.sh を呼び出すだけ
   └ x.sh  # カレントディレクトリに {実行ファイル名}.txt ファイルを作る。ただし `x.sh` が直接呼び出されたら先に exedir-sh/dir/ に cd する
```

`x.sh` `a.sh` `b.sh` それぞれの実行結果がどうなるかを想像してから結果を見てください。


<details>
 <summary>結果</summary>

`x.sh` `a.sh` `b.sh` をそれぞれ呼び出すと、結果こうなる。

```
exedir-sh
 ├ b.sh
 ├ b.sh.txt
 └ dir
   ├ a.sh
   ├ a.sh.txt
   ├ x.sh
   └ x.sh.txt
```
</details>
 
