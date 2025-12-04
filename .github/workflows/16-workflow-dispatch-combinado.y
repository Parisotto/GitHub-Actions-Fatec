name: GitHub Actions - Workflow Dispatch Template
run-name: Running - ${{ github.event_name }}
on:
  workflow_dispatch:
    inputs:
      tags:
        description: Selecione a tag
        type: choice
        options:
          - tag1
          - tag2
          - tag3
        default: tag1
        required: true
      resposta:
        description: Esta foi a melhor matéria que você teve?
        type: boolean
      serie:
        description: Digite sua série favorita
        type: string
jobs:
  on-workflow_dispatch:
    runs-on: ubuntu-latest
    steps:
      - name: Cometário
        run: |
          echo "Comentário WORKFLOW DISPATCH"
          echo "Selecionado - ${{inputs.tags}}!"
          echo "Melhor matéria que cursei: ${{inputs.resposta}}!"
          echo "Minha Série Favorita: ${{inputs.serie}}!"
