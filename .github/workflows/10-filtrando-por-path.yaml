name: GitHub Actions - Push - Path Template
run-name: Running - ${{ github.event_name }}
on:
  push:
    # branches:
    #   - master
    branches-ignore:
      - main
      - develop
      - 'release/**'
    paths:
      - '**.txt'
      - '**.test'

jobs:
  on-push:
    runs-on: ubuntu-latest
    steps:
      - name: Cometário
        run: |
          echo "Comentário PUSH WORKFLOW - Path"
          echo "Executado!"
