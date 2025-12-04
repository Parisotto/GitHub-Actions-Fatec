name: GitHub Actions - Workflow Dispatch Template
run-name: Running - ${{ github.event_name }}
on:
  workflow_dispatch:
    inputs:
      serie: # esta chave você coloca o nome que quiser. Coloquei serie
        description: Digite sua série favorita
        type: string

jobs:
  on-workflow_dispatch:
    runs-on: ubuntu-latest
    steps:
      - name: Cometário
        run: |
          echo "Comentário WORKFLOW DISPATCH"
          echo "Minha Série Favorita: ${{inputs.serie}}!"
