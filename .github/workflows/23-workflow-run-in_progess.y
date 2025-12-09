name: GitHub Actions - Workflow run In Progress Template
run-name: Running - Workflow run In Progress Template
on:
  workflow_run:
    workflows: [Trigger]
    types: [in_progress]

jobs:
  quando_Trigger_for_disparado:
    runs-on: ubuntu-latest
    steps:
      - name: Comentário
        run: echo "Workflow run In Progress foi trigado!"

