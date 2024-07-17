# Amazon Linux 2をベースイメージとして使用
FROM amazonlinux:2

# システムパッケージを更新し、必要なツールをインストール
RUN yum update -y && \
    yum install -y python3 python3-pip && \
    yum clean all

# 作業ディレクトリを設定
WORKDIR /app

# 依存関係ファイルをコピーし、Pythonパッケージをインストール
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# アプリケーションのソースコードをコピー
COPY . .

# アプリケーションが使用するポートを指定
EXPOSE 5000

# Flaskアプリケーションを実行
CMD ["python3", "app.py"]