name: GitHub Actions - Push - Types Template
run-name: Running - ${{ github.event_name }}
on:
  pull_request:
    types: # Pode ser um dos 3, 2 deles ou apenas 1:
      - opened
      - reopened
      - closed
    branches:
      - main
      - develop
    paths:
      - '**.md'

jobs:
  on-push:
    runs-on: ubuntu-latest
    steps:
      - name: Cometário
        run: |
          echo "Comentário PULL-REQUEST WORKFLOW - Type"
          echo "Executado!"
