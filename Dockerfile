# MySQLの公式イメージをベースにする
FROM mysql:8.2

# MySQLの設定ファイルをイメージ内にコピー
COPY ./my.cnf /etc/mysql/conf.d/my.cnf

# ポートを開放
EXPOSE 3306

# MySQLサーバーを起動するコマンドを設定
CMD ["mysqld"]
