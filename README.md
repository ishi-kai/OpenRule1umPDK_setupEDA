# 何か？
ISHI会版OpenMPW用のレイアウトを作るための環境構築用スクリプトです。  
WSL2 (Windows Subsystem for Linux)上のUbuntu22.04とUbuntu22.04とMac Mコアシリーズで動作します。  

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

### フレーム
PADのレイアウトとなります。これをベースに設計してください。  
ピン番号は、下面左端（南面西端）が1番で左回りでカウントします。  

[フレーム用のGDSファイル](./GDS/PTS06/top_frame.gds)


# ライセンス
[LICENSEファイル](LICENSE)
