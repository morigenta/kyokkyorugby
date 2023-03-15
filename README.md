# kyokkyo-homepage

北海道教育大学旭川校ラグビー部のホームページのソースコード

##　コンテナ起動

起動するときは以下のコマンドを入力する。

````sh

# Start
$ docker run -dit --rm --name portfolio1 -v "$PWD/public":/usr/local/apache2/htdocs/ -p 3000:80 httpd:2.4-alpine


##　アクセス

コンテナ起動中は、以下の　URL　にアクセスできます。

<http://localhost:3000/>

## コンテナ終了

制作終了時は以下のコマンドでコンテナを終了します。
（※ `docker run` コマンドで --rm を使用している場合は Ctrl + C でプロセスを終了すると、自動的にコンテナも削除されます。）

```sh
$ docker stop portfolio1
````
