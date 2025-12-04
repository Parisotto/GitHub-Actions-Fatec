name: GitHub Actions - Push - Path Template
run-name: Running - ${{ github.event_name }}
on:
  push:
    # branches:
    #  - tests
    #  - master
    branches-ignore:
      - main
      - develop
      - 'release/**'
    paths:
      - '**.txt'

jobs:
  on-push:
    runs-on: ubuntu-latest
    steps:
      - name: Comentário
        run: |
          echo "Comentário PUSH WORKFLOW - path"
          echo "Executando"
