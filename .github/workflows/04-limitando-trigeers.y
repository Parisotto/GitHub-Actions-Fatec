name: Pipeline Experimental
on: 
  push:
    branches: # [main, develop]
      - main
      - develop

jobs:
  ci-continous-integration:
    name: Teste de Integração
    runs-on: ubuntu-latest
    steps: 
      - run: echo "Olá, Fatec!"
      
      
