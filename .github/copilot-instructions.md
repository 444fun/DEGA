# Copilot Instructions

Este repositório é um site estático minimalista. Estas instruções orientam agentes de codificação (AI) para serem imediatamente produtivos aqui.

**Propósito do repositório:**

- Site estático de uma única página. Arquivo principal: [index.html](index.html).

**Visão Geral / Arquitetura:**

- Projeto sem backend: apenas HTML, possivelmente CSS e scripts inline.
- Alterações costumam ser feitas diretamente em [index.html](index.html); não há build pipeline detectado.

**Fluxos de trabalho do desenvolvedor (essenciais):**

- Servir localmente (rápido):
  - Python: `python -m http.server 8000` e abrir `http://localhost:8000`.
  - VS Code: usar extensão "Live Server" para recarga ao salvar.
- Controle de versão: crie branchs curtas `feature/descrição` ou `fix/descrição`, abra PRs para revisão.

**Conveniências e padrões do projeto:**

- Não há testes automatizados ou lint config detectados; antes de grandes alterações, peça orientação do mantenedor.
- Prefira mudanças pequenas e testáveis diretamente em [index.html](index.html). Se adicionar arquivos, coloque-os em pastas `css/`, `js/`, `assets/` conforme a necessidade.

**Exemplos de mudanças seguras:**

- Atualizar texto: editar diretamente [index.html](index.html), verificar em browser local.
- Adicionar CSS: criar `css/styles.css` e referenciar em [index.html](index.html).

**Integrações / dependências externas:**

- Nenhuma dependência de build encontrada; se precisar de bibliotecas (ex.: Bootstrap), adicione via CDN em [index.html](index.html) ou inclua o pacote manualmente.

**Regras específicas para agentes de IA ao gerar código:**

- Fazer mudanças pequenas e bem isoladas por PR (uma funcionalidade por PR).
- Quando modificar [index.html](index.html), incluir um breve comentário no PR explicando intenção e como testar localmente.
- Não adicionar ferramentas de build ou dependências complexas sem pedir instruções do mantenedor.

**Checklist mínimo para PRs gerados por agente:**

- Descrição corta do que foi alterado e por quê.
- Como testar localmente (comando de servidor local e URL).
- Indicar arquivos alterados e pontos de verificação no navegador.

Se faltar contexto (ex.: requisitos de design, deploy), pergunte ao mantenedor antes de mudanças amplas.

---

Se quiser, eu adapto isso para incluir convenções de commit, normas de lint/format ou um exemplo de PR template. Deseja que eu ajuste algo específico?
