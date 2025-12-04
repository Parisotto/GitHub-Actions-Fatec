# Usamos schedule (agendamento) com cron (cronometrado)
# para definir quando a pipeline será executada.
# OBS1: O horário é UTC, então no Brasil será executado 3 horas depois
# OBS2: Você pode usar o site https://crontab.guru para ajudar na montagemj
# OBS3: A execução dificilmente será no horário exato agendado
# pois depende da disponibilidade do GitHub Actions
name: GitHub Actions - Cron Job Template
run-name: Running - ${{ github.event_name }}
on:
  schedule:
    # minutos horas dias mês semana (0 é domingo, 6 é sábado)
    - cron: '30 5 * * 1,3'  # 5h e 30min nas segundas e quartas-feiras
    - cron: '0 19 * * 2'  # 19h e 0min nas terças-feiras
    - cron: '59 23 31 12 *' # 23h e 59min do dia 31 de dezembro
     
jobs:
  teste_schedule:
    runs-on: ubuntu-latest
    steps:
      - name: Pular as segundas e quartas-feiras
        if: github.event.schedule != '30 5 * * 1,3'
        run: echo "Este passo nao será executado no segundo e no terceiro cron"
      - name: Todas as vezes
        run: echo "Já este passo sermpre será executado"
