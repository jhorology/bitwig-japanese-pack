Japanese L10N Pack for Bitwig Studio
================

Japanse localization pack for Bitwig Studio.

### Build and Install

Modify pom.xml to suit your environment.

```
    mvn integration-test
```
Or you can also download recently build from [here](https://www.dropbox.com/sh/6stkj1n9670qvx8/AAAnXeUKrLX4nreH8sQhvuCqa).

* Mac OSX
```
/Applications/Bitwig Studio.app/Contents/PlugIns/JavaVM.plugin/Contents/Home/lib/ext/bitwig-japanese-pack-${version}.jar
/Applications/Bitwig Studio.app/Contents/Resources/localization/Bitwig Studio-resources_ja.properties
/Applications/Bitwig Studio.app/Contents/Resources/localization/GUIApplication-resources_ja.properties
```

* Windows
```
```

* Linux
```
/opt/bitwig-studio/lib/jre/lib/ext/bitwig-japanese-pack-${version}.jar
/opt/bitwig-studio/resources/localization/Bitwig Studio-resources_ja.properties
/opt/bitwig-studio/resources/localization/GUIApplication-resources_ja.properties
```

### Important Notice
1.2から言語の設定が廃止されたようです。本パックをインストールした場合システムの言語設定に従います。
旧1.1.xx時、システムの言語が英語、Bitwitg Studioの設定が日本語等デフォルト以外の設定にしていた場合、
1.2では日本語と英語混じりのおかしな状態になります、そうなった場合一旦以下のファイルを削除してください。
```
OSX    ~/Library/Application Support/Bitwig/Bitwig Studio/prefs/1.2 BETA x.prefs
Linux  ~/.BitwigStudio/prefs/1.2 BETA x.prefs
Windows  環境持ってないので知りません。
```
言語を切り替えて使用したい場合、Linuxでは以下の用にLANGを指定し起動します。
```
日本語 LANG=ja_JP.UTF-8 /opt/bitwig-studio/bitwig-studio
英語   LANG=en_US.UTF-8 /opt/bitwig-studio/bitwig-studio
```
OSXではopenコマンドで起動します。
```
日本語 open -a Bitwig\ Studio --args -AppleLanguages '("ja-JP")'
英語   open -a Bitwig\ Studio --args -AppleLanguages '("en-US")'
```
また1.2よりフォントがOpen SansからSource Sans Proに変更になったため、
自家合成した[フォント](https://github.com/jhorology/bitwig-japanese-pack/tree/master/fonts)に置き換えました、Source Sans Proをベースにしたメトリックのため
デバイスパネル等でのGUIのズレが解消しました。(日本語フォントとして一般使用には向かないと思います。)

### Credit
[Gen Sans Pro Plus fonts](https://github.com/jhorology/bitwig-japanese-pack/tree/master/fonts) are generated from following fonts.
  - Source Sans Pro https://github.com/adobe-fonts/source-sans-pro
  - Mgen+ http://jikasei.me/font/mgenplus
    - M plus https://mplus-fonts.osdn.jp
    - Source Han Sans  https://github.com/adobe-fonts/source-han-sans
