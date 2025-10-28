# chaves e valores mínimos obrigatórios
on: push
jobs: 
  meu_primeiro_job: # Esta é a única chave que você inventa
    runs-on: ubuntu-latest # ubuntu-24.4, windows-latest, windows-2022, 
                          # Xcode iOs macOS Swift macos-latest macos-14
    steps:
      - run: echo "Olá, Fatec!"
      
      
