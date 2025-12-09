name: GitHub Actions - Workflow run Completed Template
run-name: Running - Workflow run Basic Template
on:
  workflow_run:
    workflows: [Trigger]
    types: [completed]

jobs:
  somente_em_sucesso:
    if: ${{ github.event.workflow_run.conclusion == 'success' }}
    runs-on: ubuntu-latest
    steps:
      - run: echo "O workflow anterior terminou com sucesso!"

  somente_em_falha:
    if: ${{ github.event.workflow_run.conclusion == 'failure' }}
    runs-on: ubuntu-latest
    steps:
      - run: echo "O workflow anterior falhou!"
