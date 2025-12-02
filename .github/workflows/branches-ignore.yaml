name: Build and deploy Node.js app to Azure Web App - fatec-teste

on:
  push:
    branches-ignore:
      - main
      - develop
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest
    permissions:
      contents: read #This is required for actions/checkout

    steps:
      - uses: actions/checkout@v4

      - name: Set up Node.js version
        uses: actions/setup-node@v3
        with:
          node-version: '22.x'

      - name: npm install, build, and test
        run: |
          npm install
          npm run build --if-present
          npm run test --if-present

      - name: Upload artifact for deployment job
        uses: actions/upload-artifact@v4
        with:
          name: node-app
          path: .

  deploy:
    runs-on: ubuntu-latest
    needs: build
    permissions:
      id-token: write #This is required for requesting the JWT
      contents: read #This is required for actions/checkout

    steps:
      - name: Download artifact from build job
        uses: actions/download-artifact@v4
        with:
          name: node-app
      
      - name: Login to Azure
        uses: azure/login@v2
        with:
          client-id: ${{ secrets.AZUREAPPSERVICE_CLIENTID_1BE844F29ED5470C9CE7543E2F557931 }}
          tenant-id: ${{ secrets.AZUREAPPSERVICE_TENANTID_E56CC63789324CEB9B4E82F1382944DB }}
          subscription-id: ${{ secrets.AZUREAPPSERVICE_SUBSCRIPTIONID_630B71B1C027438F980C095D2CA27646 }}

      - name: 'Deploy to Azure Web App'
        id: deploy-to-webapp
        uses: azure/webapps-deploy@v3
        with:
          app-name: 'fatec-teste'
          slot-name: 'Production'
          package: .
          
