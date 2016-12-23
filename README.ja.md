# dl

[English](https://github.com/lempiji/dl/blob/master/README.md) / 日本語

`ls`コマンドを`dl`と入力してしまった人を矯正するため、D言語くんのアニメーションを表示します。

## D言語くん

```
  _   _
 (_) (_)
/______ \
\\(O(O \/
 | | | |
 | |_| |
/______/
  <   >
 (_) (_)
```

## 使い方

### 簡単に表示してみる場合

1. [dub](http://code.dlang.org/download)をインストールします
2. コンソールで`dub run dl`と入力します

### ちゃんと矯正したい場合

1. [git](https://git-scm.com)をインストールします

2. 任意のターミナルやコマンドラインを起動します

3. 適当なディレクトリに移動して、以下のコマンドを実行します  

  ```bash
  git clone https://github.com/lempiji/dl.git
  cd dl
  dub build
  ```

4. カレントディレクトリにパスを通します

5. 間違って `dl` と入力してみます

### 注意
アスキーアートの位置調整等にANSIエスケープコードを使用しているため、Windowsのcmd.exeではうまく表示されません。
[Visual Studio Code](https://code.visualstudio.com)のターミナルを使うのがおすすめです。
