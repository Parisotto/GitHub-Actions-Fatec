console.log("👋 Olá, mundo! Este é um exemplo de integração entre GitHub Actions e Azure App Service!");

const express = require('express');
const app = express();

// Rota principal
app.get('/', (req, res) => {
  res.send(`
    <h1>🚀 Deploy feito com sucesso!</h1>
    <p>Este app foi publicado automaticamente no <b>Azure App Service</b> via <b>GitHub Actions</b>.</p>
    <p>👨‍🏫 Exemplo criado por <b>Edson Parisotto</b>.</p>
  `);
});

// Porta dinâmica fornecida pelo Azure ou 3000 localmente
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`🌐 Servidor rodando em http://localhost:${PORT}`);
});
