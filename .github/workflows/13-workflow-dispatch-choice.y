name: GitHub Actions - Workflow Dispatch choice Template
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
          
jobs:
  on-workflow_dispatch:
    runs-on: ubuntu-latest
    steps:
      - name: Cometário
        run: |
          echo "Comentário WORKFLOW DISPATCH choice"
          echo "Selecionado - ${{inputs.tags}}!"

