name: GitHub Actions - Workflow run Combinado Template
run-name: Running - Workflow run Combinado Template
on:
  workflow_run:
    workflows: [Trigger]
    types: [requested, in_progress, completed]

jobs:
  quando_Trigger_for_disparado:
    runs-on: ubuntu-latest
    steps:
      - name: Comentário
        run: echo "Workflow run Combinado foi trigado!"

