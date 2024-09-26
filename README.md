# 何か？
ISHI会版OpenMPW用のレイアウトを作るための環境構築用スクリプトです。  
WSL2 (Windows Subsystem for Linux)上のUbuntu22.04とUbuntu22.04とMac Mコアシリーズで動作します。  

# 実行方法
下記のコマンドを実行するだけです。  

## 共通コマンド
`./eda-setup.sh`

### Mac OS
#### OS名の変更
Mac OSは上記スクリプト内のOS名の変更をしてください。  

`export MAC_OS_NAME=Sonoma`
#### QTの変更
brewのqt@5が必要です。  
qtがインストール済みの場合は削除する必要があります。  


## フェニテックシャトルの場合
`./pdk_PTC06-setup.sh`

## 東海理化シャトルの場合
`./pdk_TR10-setup.sh`


# xschemの追加設定
## TEGから求めた抵抗・容量の値(2017/9/23:akita11)
### TEGから求めたシート抵抗（カッコ内はTEGのV-I特性から求めた抵抗とL/W）
- Poly : 20Ω□(500Ω, 45um/1.8um)
- Nwell : 1.1kΩ□(10kΩ, 45um/4.8um)
- Nact : - (- , 45um/3.0um)※ダイオード特性となって測定不能
- Pact : 42Ω□(625Ω, 45um/3.0um)

### TEGから求めた容量（カッコ内はTEGのC-f特性から求めた容量とL/W）
- Poly-Metal (ACTEG15) 3.06fF/um^2 (44pF, 120um/120um)
- nMOS Cap (ACTEG14) 5.42fF(蓄積・強反転)/3.82fF(弱反転) (78pF/55pF, 120um/120um)
- pMOS Cap (ACTEG07) 5.34fF(蓄積・強反転)/3.54fF(弱反転) (77pF/51pF, 120um/120um)


# klayoutの追加設定
## テクノロジーの選択
テクノロジーで「OpenRule1umPDK」を選択する。

![テクノロジーの選択](./images/klayout_tech.png)


## フレーム
### フェニテックシャトル用
パッドのレイアウトとなります。これをベースに設計してください。  
ピン番号は、下面左端（南面西端）が1番で左回りでカウントします。  

[フレーム用のGDSファイル](./GDS/PTC06/top_frame.gds)
![フレーム用のGDSファイル](./images/pad_frame.png)


### パッド
本番のパッドではESD対策が施されています。（ただのメタルがあるだけのように見えますが、最終提出の時にはESD対策が施されたパッドへ置き換わります。）  
もし、アナログ回路の実装などでESD対策が不要や自分で実装したい場合には下記の手順に従ってESD未対策のパッドをお使いください。  

![Pad変更手順1](./images/pad_noesd_1.jpg)
![Pad変更手順2](./images/pad_noesd_2.jpg)


# サンプル
[サンプル](/samples)内に各種サンプルがあります。


# ライセンス
[LICENSEファイル](LICENSE)
