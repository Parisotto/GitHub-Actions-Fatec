name: GitHub Actions - Workflow Dispatch Template
run-name: Running - ${{ github.event_name }}
on: [workflow_dispatch]
     
jobs:
  on-workflow_dispatch:
    runs-on: ubuntu-latest
    steps:
      - name: Cometário
        run: echo "Comentário WORKFLOW DISPATCH - Básico"
