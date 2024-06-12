# 何か？
ISHI会のファニテックシャトル応募用のレイアウトを作るための環境構築用スクリプトです。  
WSL2 (Windows Subsystem for Linux)上のUbuntu22.04で動作します。  

# 実行方法
下記のコマンドを実行するだけです。  

`./pdk-setup.sh`

## xschemの追加設定
### シミュレーション用ファイルをインクルードする
xschemを`Tools → Execute TCL command`で下記のコマンドを実行する。  

```
tcleval(.include "$LIB/mos.lib")
tcleval(.include "$LIB/stdcells.lib")
```

「.include "$LIB/mos.lib"」や「.include "$LIB/stdcells.lib"」を回路のコマンドに書いてもOKです。  


## klayoutの追加設定
### テクノロジーの選択
テクノロジーで「OpenRule1umPDK」を選択する。

![テクノロジーの選択](./images/klayout_tech.png)


# ライセンス
[LICENSEファイル](LICENSE)
