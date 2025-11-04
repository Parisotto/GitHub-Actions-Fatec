name: Pipeline Node.js
on:
  push:
    branches:
      - main
      - develop

jobs:
  build:
    name: Job 1 Build
    runs-on: ubuntu-latest
    steps:
      - name: Passo 1 - Task de Checkout
        uses: actions/checkout@v5
      
      - name: Passo2 - Task de Set up Node.js
        uses: actions/setup-node@v4
        with:
          node-version: 22

      - name: Passo 3 - Task de Install Dependencias
        run: npm ci

      - name: Passo 4 - Task de Run Testes
        run: npm run test

      - run: npm run build
      - run: npm run deploy
