import sys
import os

# アプリケーションのディレクトリをパスに追加
sys.path.insert(0, '/var/www/flask_app')

from app import app as application

if __name__ == '__main__':
    application.run()