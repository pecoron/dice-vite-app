# Dockerfile

# 1. Node.jsの公式イメージ（軽量版）
FROM node:20-alpine

# 2. 作業ディレクトリを作る
WORKDIR /app

# 3. package.jsonとlockファイルをコピー（依存インストールのキャッシュを効かせる）
COPY package*.json ./

# 4. 依存インストール
RUN npm install

# 5. 残りのファイルをコピー
COPY . .

# 6. ポート開放（viteのデフォルトポート）
EXPOSE 5173

# 7. Viteの開発サーバーを起動（--hostをつけると外部からアクセスできる）
CMD ["npm", "run", "dev", "--", "--host"]

