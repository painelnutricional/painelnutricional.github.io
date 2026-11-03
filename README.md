# 🥗 Painel Nutricional

<div align="center">

> **Prontuário Clínico Digital, Gestão de Consultas e Leitor Inteligente de Formulários em PDF para Nutricionistas.**

[![Acessar Aplicação](https://img.shields.io/badge/Acessar%20Painel-painelnutricional.github.io-2e7d32?style=for-the-badge&logo=google-chrome&logoColor=white)](https://painelnutricional.github.io/)
[![Privacidade](https://img.shields.io/badge/LGPD-100%25%20Client--Side-blue?style=for-the-badge&logo=shield)](https://painelnutricional.github.io/)
[![Licença](https://img.shields.io/badge/Uso%20Cl%C3%ADnico-Privado%20%26%20Seguro-success?style=for-the-badge)](#)
[![Stack](https://img.shields.io/badge/Tecnologias-HTML5%20%7C%20CSS3%20%7C%20JS%20%7C%20PDF.js-orange?style=for-the-badge)](#)

</div>

---

## 📌 Sumário

* [🌟 O que é o Painel Nutricional?](#-o-que-é-o-painel-nutricional)
* [🔒 Segurança e Privacidade por Design (LGPD)](#-segurança-e-privacidade-por-design-lgpd)
* [🧩 Motor Inteligente de Leitura de PDFs](#-motor-inteligente-de-leitura-de-pdfs)
* [📊 Organização pelos 7 Eixos Temáticos Clínicos](#-organização-pelos-7-eixos-temáticos-clínicos)
* [🚀 Como Usar](#-como-usar)
  * [Opção 1: Direto no Navegador (Web)](#opção-1-direto-no-navegador-web-recomendado)
  * [Opção 2: No Computador (Offline)](#opção-2-no-computador-100-offline)
* [📖 Guia de Operação do Prontuário](#-guia-de-operação-do-prontuário)
  * [1. Cadastrar Paciente e Importar Formulários](#1-cadastrar-paciente-e-importar-formulários)
  * [2. Acompanhamento Contínuo de Consultas e Retornos](#2-acompanhamento-contínuo-de-consultas-e-retornos)
  * [3. Exclusão de Formulários Enviados por Engano](#3-exclusão-de-formulários-enviados-por-engano)
  * [4. Sistema de Backup Portátil (JSON)](#4-sistema-de-backup-portátil-json)
* [🎨 Temas e Conforto Visual (WCAG)](#-temas-e-conforto-visual-wcag)
* [💻 Arquitetura e Engenharia](#-arquitetura-e-engenharia)
* [👩‍⚕️ Autoria & Contato](#️-autoria--contato)

---

## 🌟 O que é o Painel Nutricional?

O **Painel Nutricional** é uma plataforma clínica web projetada sob medida para simplificar, agilizar e qualificar a rotina de atendimento de profissionais de nutrição. 

Ele elimina a necessidade de abrir múltiplos PDFs e prontuários dispersos durante o atendimento, consolidando:
1. **Questionários de Pré-Consulta e Anamneses**
2. **Formulários de Check-in Periódico e Acompanhamentos Semanais/Quinzenais (Nutrio, Google Forms, etc.)**
3. **Orientações Nutricionais e Condutas Clínicas**

Tudo é organizado cronologicamente em uma **linha do tempo interativa**, com segmentação temática e síntese evolutiva da paciente.

---

## 🔒 Segurança e Privacidade por Design (LGPD)

A proteção de dados sensíveis de saúde é a prioridade número um da arquitetura do Painel:

* 🛡️ **Zero Servidores Externos (100% Client-Side):** Todo o processamento de leitura de PDFs, extração de texto e estruturação de dados ocorre estritamente dentro da memória do navegador do próprio computador da nutricionista.
* 🚫 **Nenhum Dado Sai da Sua Máquina:** Nenhum nome de paciente, resposta de questionário ou informação clínica trafega pela internet ou é salvo em nuvem de terceiros.
* 💾 **Persistência Local Automática:** Os dados ficam salvos de forma resiliente no `localStorage` / `indexedDB` do navegador do computador de uso.
* 🔒 **Controle Discreto de Sigilo (Cadeado 🔒 / 🔓):** Alternância instantânea ao lado da paciente ativa. Permite alternar entre o modo protegido por iniciais (*C.R.S.F.*, *T.B.L.*) e nomes completos, garantindo privacidade durante atendimentos presenciais e compartilhamento de tela (LGPD).

---

## 🧩 Motor Inteligente de Leitura de PDFs

O painel conta com um motor de extração visual e semântica construído sobre o **PDF.js**, capaz de lidar com os diferentes formatos de documentos gerados no ecossistema de nutrição:

### 1. Pareamento Bidimensional de Colunas (Tabelas Nutrio e Anamneses)
Em questionários gerados por sistemas como o **Nutrio**, as perguntas e as respostas ficam dispostas lado a lado em colunas paralelas.
* O motor identifica automaticamente a presença de duas colunas estruturais (`X < 185` para perguntas e `X ≥ 185` para respostas).
* Pareia cada bloco de pergunta com sua respectiva resposta através das coordenadas verticais ($Y$), evitando que textos se misturem horizontalmente.
* Realiza a **fusão inteligente de quebras de página**: perguntas que iniciam no final de uma página e terminam no início da seguinte são recompostas perfeitamente.

NaN

---

## 📊 Organização pelos 7 Eixos Temáticos Clínicos

Tanto os formulários importados quanto as anotações são classificados automaticamente em **7 eixos temáticos com ícones e cores dedicadas**:

| Eixo Clínico | Descrição e Foco de Análise |
| :--- | :--- |
| 📋 **Histórico & Ponto de Partida** | Dados antropométricos (peso, altura), histórico de saúde, diagnósticos e metas iniciais. |
| 🥗 **Alimentação, Refeições & Rotina** | Refeições do dia a dia, horários, hidratação, substituições e organização prática. |
| 🍽️ **Apetite, Fome & Saciedade** | Escala de fome, saciedade pós-prandial, fissura por doces e adesão alimentar. |
| 🩺 **Digestão, Intestino & Sintomas** | Trânsito intestinal, evacuação, queixas de distensão, gases, refluxo ou azia. |
| ⚡ **Energia, Sono & Treinos** | Qualidade do sono, rendimento físico na musculação/cardio, fadiga e energia matinal. |
| 🧠 **Comportamento, Emoções & Ansiedade** | Relação com a comida, episódios de culpa, estresse no trabalho e contexto emocional. |
| 💡 **Evolução & Ajustes Solicitados** | Vitórias relatadas pela paciente, desafios enfrentados e pedidos de alteração na dieta. |

---

## 🚀 Como Usar

### Opção 1: Direto no Navegador (Web) — *Recomendado*
Basta acessar o link oficial hospedado no GitHub Pages:

👉 **[https://painelnutricional.github.io/](https://painelnutricional.github.io/)**

> 💡 **Dica:** Adicione aos seus favoritos (`Ctrl + D`) para abrir o painel com um clique no início de cada atendimento.

---

### Opção 2: No Computador (100% Offline)
Se desejar executar localmente no computador, sem necessidade de internet:
1. No topo da página do repositório, clique em **`Code`** ➔ **`Download ZIP`**.
2. Descompacte os arquivos em uma pasta de sua preferência (ex: em *Documentos*).
3. Dê dois cliques no arquivo **`iniciar_painel.bat`** (ou dê dois cliques diretamente em `index.html`).
4. O painel abrirá instantaneamente no seu navegador padrão (Google Chrome, Microsoft Edge, etc.).

---

## 📖 Guia de Operação do Prontuário

### 1. Cadastrar Paciente e Importar Formulários
1. No cabeçalho, clique no botão **`👤 + Nova Paciente`**.
2. Informe o nome ou sigla (ex: *Clarisse Ferreira* ou *C.F.*). Se a paciente já existir no sistema, ela será selecionada automaticamente sem gerar conflito.
3. No topo do prontuário, clique no botão verde **`📄 + Importar Formulário para [Nome]`**.
4. Arraste ou selecione o arquivo PDF do formulário.
5. O painel apresenta a prévia dos tópicos extraídos. Clique em **`✅ Salvar no Prontuário`**.

### 2. Navegação em 4 Abas Clínicas Especializadas
O prontuário da paciente organiza as informações em 4 visões com propósitos complementares:
1. 🩺 **Resumo Clínico (Visão Executiva Aberta):** Apresenta o panorama clínico integral da paciente na tela (Ponto de Partida/Baseline, Evolução, Vitórias, Alertas e Conduta) sem caixas colapsadas, permitindo leitura imediata.
2. 🎯 **Por Eixo Temático (Visual Limpo e Organizado):** Agrupa o histórico nos 7 pilares clínicos com seções **recolhidas por padrão** para manter a tela limpa; basta clicar no eixo desejado para expandir.
3. 📋 **Por Formulário (Histórico Cronológico):** Permite navegar atendimento a atendimento pelos chips de data (*#1*, *#2*...), com tópicos também **recolhidos por padrão** para consulta pontual.
4. 📈 **Evolução Comparativa (Linha do Tempo):** Exibe as respostas lado a lado ao longo dos meses, facilitando a visualização de progressos e adesão.

### 3. Barra de Ações Rápidas no Cabeçalho
Posicionada estrategicamente logo abaixo do seletor da paciente ativa:
* 📖 **Instruções:** Manual interativo completo acessível em qualquer tela.
* 💾 **Dados & Backup ▾:** Exportação e restauração de dados em formato JSON em segundos.
* 🖨️ **Imprimir / PDF:** Exportação limpa e sem ruídos para impressão ou arquivo digital.

### 4. Exclusão de Formulários Enviados por Engano
* Se você enviar um arquivo PDF incorreto ou em duplicidade, clique no ícone da lixeira vermelha (**`🗑️`**) localizado no próprio chip do formulário na linha do tempo.
* O sistema solicitará confirmação e removerá apenas aquele formulário específico, preservando a paciente e todos os demais registros.

### 5. Sistema de Backup Portátil (JSON)
O arquivo de backup é a garantia de portabilidade e proteção total dos seus dados:
* **Exportar Backup:** No menu superior, clique em **`💾 Dados & Backup ▾`** ➔ **`💾 Exportar Backup (JSON)`**. Um arquivo leve contendo todos os prontuários será baixado. Guarde esse arquivo no seu Google Drive, pendrive ou e-mail de tempos em tempos.
* **Restaurar Backup:** Ao formatar o computador ou mudar de notebook, abra o painel, clique em **`📥 Restaurar Backup (JSON)`** e selecione seu arquivo. Todo o histórico de todas as pacientes será restaurado no mesmo segundo.

---

## 🎨 Temas e Conforto Visual (WCAG)

O painel oferece **três paletas visuais completas** com alternância instantânea no canto superior direito:

* 🌿 **Padrão (Verde Clínico):** Foco, clareza e contraste balanceado para consultório.
* 🍂 **Boho (Tons Terrosos & Acolhedores):** Estética humanizada e suave.
* 🌙 **Dark Mode (Modo Noturno):** Alto contraste sem ofuscamento, ideal para sessões prolongadas de análise de relatórios à noite.

---

## 💻 Arquitetura e Engenharia

```text
painel-nutricional/
├── index.html            # Aplicação SPA completa (Markup, CSS Tematizado e Lógica de Negócio)
├── iniciar_painel.bat    # Executável de inicialização local para Windows
├── README.md             # Documentação técnica e guia do usuário
└── lib/
    ├── pdf.min.js        # Biblioteca PDF.js (Mozilla) embutida localmente
    ├── pdf.worker.js     # Worker offline para protocolo local file:// e compatibilidade
    └── pdf.worker.min.js # Web Worker assíncrono para parsing em alta performance
```

* **Zero Build Steps:** Funciona nativamente sem exigir `npm install`, Webpack ou servidores Node.js.
* **Resiliência:** Tratamento de erros gracioso em uploads de PDFs com layouts atípicos.
* **Acessibilidade:** Tipografia legível, foco visual adequado e semântica estruturada.

---

## ☕ Apoie este Projeto

O **Painel Nutricional** é uma iniciativa independente e 100% gratuita, criada para valorizar o tempo clínico e qualificar a relação nutricionista-paciente com total segurança e respeito à LGPD.

Se este prontuário facilita o seu atendimento no consultório ou seus estudos acadêmicos e você deseja incentivar a criação de novas funcionalidades e a manutenção ativa da ferramenta:

* **Chave Pix (Aleatória):** `f3605cd9-0b5c-48e4-9a5d-a45e7fd00b68`
* **Beneficiária:** Thaý Carvalho (*CRN10-14724*)

*Muito obrigada pelo carinho e por fortalecer a tecnologia aplicada à nutrição!* 🌱

---

## 👩‍⚕️ Autoria & Contato

Idealizado e desenvolvido por **Thayâne Carvalho** — Nutricionista (*CRN10-14724*) e Engenheira de Produção, com foco em gestão de projetos, inovação e tecnologia aplicadas à saúde e ao impacto social.

* 💼 **LinkedIn:** [linkedin.com/in/thaycc](https://www.linkedin.com/in/thaycc)
* 🐙 **GitHub:** [github.com/thaycarv](https://github.com/thaycarv)
* 🌐 **Painel Online:** [painelnutricional.github.io](https://painelnutricional.github.io/)

---

<div align="center">
  <sub>Desenvolvido com carinho para valorizar o tempo clínico e a relação nutricionista-paciente 🌱</sub>
</div>
