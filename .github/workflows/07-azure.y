name: Aula Workflow Manual

on: 
  # push:
  #   branches:
  #     - main
  # schedule:
  #     - cron: '0 2 * * *'
  workflow_dispatch:
    inputs:
      rodar_testes:
        description: 'Rodar testes antes do deploy?'
        required: true
        default: 'nao'
        type: choice
        options:
          - sim
          - nao

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout código
        uses: actions/checkout@v4

      - name: Configura versão do Node.js 
        uses: actions/setup-node@v3
        with:
          node-version: '22.x'        

      - name: Instalar dependências
        run: npm install

      - name: Executar build
        run: npm run build

      - name: Rodar testes
        if: ${{ github.event.inputs.rodar_testes == 'sim' }}
        run: |
          npm test
          echo "testes executados"

      - name: Upload artefato para tarefa de implantação
        uses: actions/upload-artifact@v4
        with:
          name: node-app
          path: .
          
  deploy:
    needs: build
    runs-on: ubuntu-latest

    steps:
      - name: Download artefeto do job build
        uses: actions/download-artifact@v4
        with:
          name: node-app

      - name: Login no Azure
        uses: azure/login@v2
        with:
          creds: ${{ secrets.AZURE_CREDENTIALS }}

      - name: Deploy no Azure Web App
        id: deploy-to-webapp
        uses: azure/webapps-deploy@v3
        with:
          app-name: fatec-teste
          slot-name: 'Production'
          package: .

      
