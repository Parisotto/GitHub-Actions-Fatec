name: Pipeline Node.js
on:
  push:
    branches:
      - main
      - develop

jobs:
  # Início da fase CI
  testes:
    name: Job 1 Teste
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

  build:
    name: Job 2 Build
    runs-on: ubuntu-latest
    needs: testes
    steps:
      - run: echo "npm run build"

  # Inícioda fase CD
  qa:
    name: Fase de QA
    runs-on: ubuntu-latest
    needs: [testes, build]
    steps:
      - name: Passo QA
        run: echo "Testes de QA"
    
  prod:
    name: Em produção
    runs-on: ubuntu-latest
    needs: qa
    steps:
      - run: echo "npm run deploy"
        name: Fase de produção
