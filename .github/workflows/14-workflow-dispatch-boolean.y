name: GitHub Actions - Workflow Dispatch Template
run-name: Running - ${{ github.event_name }}
on:
  workflow_dispatch:
    inputs:
      resposta: # esta chave você coloca o nome que quiser.
        description: Esta foi a melhor matéria que você teve?
        type: boolean
jobs:
  on-workflow_dispatch:
    runs-on: ubuntu-latest
    steps:
      - name: Cometário
        run: |
          echo "Comentário WORKFLOW DISPATCH - Boleano"
          echo "Melhor matéria que cursei: ${{inputs.resposta}}!"
