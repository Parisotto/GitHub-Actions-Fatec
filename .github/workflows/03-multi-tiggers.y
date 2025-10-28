name: Pipeline Experimental
on: [pull_request, push]
jobs: 
  ci-continious-intagracion:
    name: Teste de CI
    runs-on: ubuntu-latest 
    steps:
      - run: echo "Olá, Fatec!"
        name: Mensagem Especial
      - uses: actions/checkout@v5
        name: Fazendo clone e checkout no meu repositório nesta máquina virtual
      - name: Bom tarde!
        run: echo "Fatec ZS"
