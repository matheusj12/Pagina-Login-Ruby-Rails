# 🏢 Sistema de Gestão Empresarial

Um sistema completo de gestão empresarial desenvolvido em Ruby on Rails, com interface moderna e intuitiva para gerenciar todos os aspectos do seu negócio.

![Ruby](https://img.shields.io/badge/Ruby-3.4.5-red?style=flat-square&logo=ruby)
![Rails](https://img.shields.io/badge/Rails-7.2.0-red?style=flat-square&logo=rubyonrails)
![Bootstrap](https://img.shields.io/badge/Bootstrap-5.3.0-purple?style=flat-square&logo=bootstrap)
![SQLite](https://img.shields.io/badge/SQLite-3.46-blue?style=flat-square&logo=sqlite)

## 📋 Índice

- [Características](#características)
- [Tecnologias](#tecnologias)
- [Pré-requisitos](#pré-requisitos)
- [Instalação](#instalação)
- [Configuração](#configuração)
- [Uso](#uso)
- [Módulos](#módulos)
- [Screenshots](#screenshots)
- [Contribuição](#contribuição)
- [Licença](#licença)

## ✨ Características

### 🎨 Interface Moderna
- **Design Responsivo**: Interface adaptável para desktop, tablet e mobile
- **Bootstrap 5**: Framework CSS moderno com componentes elegantes
- **Font Awesome**: Ícones vetoriais para melhor experiência visual
- **Animações Suaves**: Transições e efeitos que melhoram a UX

### 📊 Dashboard Inteligente
- **Estatísticas em Tempo Real**: Visualize dados importantes instantaneamente
- **Gráficos Interativos**: Charts dinâmicos com Google Charts
- **Cards de Status**: Visão rápida dos principais KPIs
- **Ações Rápidas**: Acesso direto às funcionalidades mais usadas

### 🔐 Sistema de Autenticação
- **Devise**: Sistema robusto de autenticação
- **Registro e Login**: Fluxo completo de usuários
- **Sessões Seguras**: Gerenciamento seguro de sessões

## 🛠 Tecnologias

### Backend
- **Ruby** 3.4.5
- **Ruby on Rails** 7.2.0
- **SQLite3** (Desenvolvimento)
- **Devise** (Autenticação)
- **Chartkick** (Gráficos)

### Frontend
- **Bootstrap** 5.3.0
- **Font Awesome** 6.4.0
- **Google Charts** (Visualizações)
- **SCSS** (Estilização)
- **JavaScript** (Interatividade)

### Outras Ferramentas
- **Bundler** (Gerenciamento de gems)
- **Git** (Controle de versão)
- **Puma** (Servidor web)

## 📋 Pré-requisitos

Antes de começar, certifique-se de ter instalado:

- **Ruby** 3.4.5 ou superior
- **Bundler** (gem install bundler)
- **Git**
- **SQLite3**
- **Node.js** (para assets)

### 🐧 Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install -y ruby-dev sqlite3 libsqlite3-dev pkg-config nodejs npm
```

### 🍎 macOS
```bash
brew install ruby sqlite3 node
```

## 🚀 Instalação

### 1. Clone o repositório
```bash
git clone https://github.com/matheusj12/Pagina-Login-Ruby-Rails.git
cd Pagina-Login-Ruby-Rails
```

### 2. Instale as dependências
```bash
# Instalar bundler se não tiver
gem install bundler

# Instalar gems do projeto
bundle install
```

### 3. Configure o banco de dados
```bash
# Executar migrações
bundle exec rails db:migrate

# (Opcional) Popular com dados de exemplo
bundle exec rails db:seed
```

### 4. Inicie o servidor
```bash
bundle exec rails server
```

O aplicativo estará disponível em: [http://localhost:3000](http://localhost:3000)

## ⚙️ Configuração

### Variáveis de Ambiente

Crie um arquivo `.env` na raiz do projeto (opcional):

```bash
# Banco de dados (produção)
DATABASE_URL=postgresql://user:password@localhost/app_production

# Configurações de email
SMTP_USERNAME=your_email@gmail.com
SMTP_PASSWORD=your_app_password

# Chaves secretas
SECRET_KEY_BASE=your_secret_key_here
```

### Configuração de Produção

Para deploy em produção, configure:

```bash
# Precompilar assets
RAILS_ENV=production bundle exec rails assets:precompile

# Configurar banco de produção
RAILS_ENV=production bundle exec rails db:migrate
```

## 💻 Uso

### Primeiro Acesso

1. **Acesse o sistema**: [http://localhost:3000](http://localhost:3000)
2. **Cadastre-se**: Clique em "Sign up" para criar uma conta
3. **Faça login**: Use suas credenciais para acessar o dashboard
4. **Explore**: Navegue pelos módulos disponíveis

### Dashboard Principal

O dashboard oferece:
- **Estatísticas Gerais**: Contadores de clientes, produtos, vendas e funcionários
- **Gráficos**: Distribuição de produtos em formato de pizza
- **Ações Rápidas**: Links diretos para as principais funcionalidades
- **Menu Organizado**: Navegação por categorias (Vendas, Financeiro, RH)

## 📦 Módulos

### 🛒 Vendas e Comercial
- **Produtos**: Cadastro e gerenciamento de catálogo
- **Clientes**: Base de dados de clientes
- **Vendas**: Registro e acompanhamento de vendas
- **Pedidos**: Gestão de pedidos de venda

### 💰 Financeiro
- **Contas a Pagar**: Controle de despesas
- **Contas a Receber**: Gestão de receitas
- **Fluxo de Caixa**: Controle financeiro
- **Tesouraria**: Gestão de caixa

### 👥 Recursos Humanos
- **Funcionários**: Cadastro de colaboradores
- **Departamentos**: Organização estrutural
- **Folha de Pagamento**: Gestão salarial
- **Ponto Eletrônico**: Controle de frequência

### 📋 Operacional
- **Estoque**: Consulta e controle
- **Compras**: Gestão de fornecedores
- **Ativos**: Cadastro de patrimônio
- **Projetos**: Gerenciamento de projetos

### 📊 Relatórios e Analytics
- **Relatórios**: Diversos relatórios gerenciais
- **Dashboards**: Visualizações interativas
- **Automação**: Tarefas automatizadas

## 📸 Screenshots

### Dashboard Principal
![Dashboard](docs/images/dashboard.png)
*Dashboard moderno com estatísticas em tempo real*

### Interface Responsiva
![Mobile](docs/images/mobile.png)
*Interface adaptada para dispositivos móveis*

### Módulo de Vendas
![Vendas](docs/images/vendas.png)
*Gestão completa de vendas e clientes*

## 🤝 Contribuição

Contribuições são sempre bem-vindas! Para contribuir:

### 1. Fork o projeto
```bash
git clone https://github.com/seu-usuario/Pagina-Login-Ruby-Rails.git
```

### 2. Crie uma branch para sua feature
```bash
git checkout -b feature/nova-funcionalidade
```

### 3. Faça suas alterações e commit
```bash
git add .
git commit -m "Adiciona nova funcionalidade X"
```

### 4. Push para a branch
```bash
git push origin feature/nova-funcionalidade
```

### 5. Abra um Pull Request

### 📋 Diretrizes de Contribuição

- Mantenha o código limpo e bem documentado
- Adicione testes para novas funcionalidades
- Siga as convenções do Ruby/Rails
- Atualize a documentação quando necessário

### 🐛 Reportando Bugs

Para reportar bugs, abra uma [issue](https://github.com/matheusj12/Pagina-Login-Ruby-Rails/issues) com:

- Descrição detalhada do problema
- Passos para reproduzir
- Ambiente (OS, Ruby version, etc.)
- Screenshots (se aplicável)

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## 👨‍💻 Autor

**Matheus**
- GitHub: [@matheusj12](https://github.com/matheusj12)
- Github: [@mattobl](https://github.com/mattobl) 

## 🙏 Agradecimentos

- **Ruby on Rails Community** - Framework incrível
- **Bootstrap Team** - Design system moderno
- **Font Awesome** - Ícones vetoriais
- **Google Charts** - Visualizações de dados

---

⭐ **Gostou do projeto? Deixe uma estrela!** ⭐

![Footer](https://img.shields.io/badge/Feito%20com-❤️-red?style=flat-square) ![Ruby](https://img.shields.io/badge/Ruby%20on-Rails-red?style=flat-square&logo=rubyonrails)
