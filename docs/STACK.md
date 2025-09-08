# 🛠️ Stack Tecnológica

## 📊 Visão Geral das Tecnologias

### Backend
| Tecnologia | Versão | Descrição | Documentação |
|-----------|--------|-----------|--------------|
| ![Ruby](https://img.shields.io/badge/Ruby-3.4.5-red?logo=ruby) | 3.4.5 | Linguagem de programação | [ruby-doc.org](https://ruby-doc.org/) |
| ![Rails](https://img.shields.io/badge/Rails-7.2.0-red?logo=rubyonrails) | 7.2.0 | Framework web | [rubyonrails.org](https://rubyonrails.org/) |
| ![SQLite](https://img.shields.io/badge/SQLite-3.46-blue?logo=sqlite) | 3.46 | Banco de dados | [sqlite.org](https://www.sqlite.org/) |
| ![Puma](https://img.shields.io/badge/Puma-6.4-yellow) | 6.4.2 | Servidor web | [github.com/puma/puma](https://github.com/puma/puma) |

### Frontend
| Tecnologia | Versão | Descrição | Documentação |
|-----------|--------|-----------|--------------|
| ![Bootstrap](https://img.shields.io/badge/Bootstrap-5.3.0-purple?logo=bootstrap) | 5.3.0 | Framework CSS | [getbootstrap.com](https://getbootstrap.com/) |
| ![Font Awesome](https://img.shields.io/badge/Font_Awesome-6.4.0-blue?logo=fontawesome) | 6.4.0 | Ícones vetoriais | [fontawesome.com](https://fontawesome.com/) |
| ![Sass](https://img.shields.io/badge/Sass-SCSS-pink?logo=sass) | - | Pré-processador CSS | [sass-lang.com](https://sass-lang.com/) |
| ![JavaScript](https://img.shields.io/badge/JavaScript-ES6+-yellow?logo=javascript) | ES6+ | Linguagem de script | [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript) |

### Gems Principais
| Gem | Versão | Descrição | Uso no Projeto |
|-----|--------|-----------|----------------|
| `devise` | 4.9.4 | Autenticação | Sistema de login/registro |
| `chartkick` | 5.0.7 | Gráficos | Dashboard com charts |
| `groupdate` | 6.4.0 | Agrupamento de dados | Análise temporal |
| `bootsnap` | 1.18.4 | Cache de boot | Performance |
| `jbuilder` | 2.12.0 | JSON builder | APIs |
| `turbo-rails` | 2.0.6 | SPA-like navigation | UX melhorada |
| `stimulus-rails` | 1.3.4 | JavaScript framework | Interatividade |

### Ferramentas de Desenvolvimento
| Ferramenta | Descrição | Comando |
|-----------|-----------|---------|
| `Bundler` | Gerenciador de gems | `bundle install` |
| `Rails CLI` | Interface de linha de comando | `rails generate` |
| `Rails Console` | Console interativo | `rails console` |
| `Git` | Controle de versão | `git commit` |

## 🏗️ Arquitetura MVC

### Model-View-Controller Pattern
```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│    Model    │────│ Controller  │────│    View     │
│             │    │             │    │             │
│ - User      │    │ - HomeCtrl  │    │ - ERB       │
│ - Product   │    │ - UsersCtrl │    │ - SCSS      │
│ - Client    │    │ - Products  │    │ - JS        │
└─────────────┘    └─────────────┘    └─────────────┘
       │                   │                   │
       │                   │                   │
       ▼                   ▼                   ▼
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│  Database   │    │   Routes    │    │   Assets    │
│   SQLite    │    │ config/     │    │ app/assets  │
│             │    │ routes.rb   │    │             │
└─────────────┘    └─────────────┘    └─────────────┘
```

## 🎨 Design System

### Cores Principais
```scss
// Gradiente Principal
$primary-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);

// Cores do Sistema
$primary: #667eea;
$secondary: #764ba2;
$success: #28a745;
$info: #17a2b8;
$warning: #ffc107;
$danger: #dc3545;
```

### Tipografia
```scss
// Fonte Principal
font-family: 'Inter', sans-serif;

// Hierarquia
h1: 2.5rem (40px)
h2: 2rem (32px)
h3: 1.75rem (28px)
h4: 1.5rem (24px)
h5: 1.25rem (20px)
h6: 1rem (16px)
```

### Espaçamentos
```scss
// Bootstrap Spacing Scale
$spacer: 1rem; // 16px

// Aplicação
padding: $spacer * 0.5; // 8px
margin: $spacer * 1;    // 16px
gap: $spacer * 1.5;     // 24px
```

## 📱 Responsividade

### Breakpoints (Bootstrap 5)
```scss
// Extra small devices (phones)
xs: 0px

// Small devices (landscape phones)
sm: 576px

// Medium devices (tablets)
md: 768px

// Large devices (desktops)
lg: 992px

// Extra large devices
xl: 1200px

// Extra extra large devices
xxl: 1400px
```

### Grid System
```html
<!-- Container responsivo -->
<div class="container">
  <div class="row">
    <div class="col-lg-6 col-md-12">
      <!-- Conteúdo -->
    </div>
  </div>
</div>
```

## 🔄 Fluxo de Dados

### Request-Response Cycle
```
1. User Request → 2. Router → 3. Controller → 4. Model → 5. Database
     ↑                                                      ↓
     │                                                      │
8. Response ← 7. View ← 6. Controller ← ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┘
```

### Exemplo Prático (Dashboard)
```ruby
# 1. Rota
get 'home/index'

# 2. Controller
def index
  @produtos = Product.all                    # 3. Model Query
  @produto_counts = @produtos.group(:name).count
  @total_clientes = Client.count
end

# 3. View (ERB)
<%= pie_chart @produto_counts %>             # 4. Renderização
```

## 🔐 Segurança

### Autenticação (Devise)
```ruby
# Configurações de segurança
config.stretches = 12                       # Bcrypt rounds
config.password_length = 6..128            # Tamanho da senha
config.email_regexp = /\A[^@\s]+@[^@\s]+\z/ # Validação email
config.reset_password_within = 6.hours     # Token expiration
```

### Proteções do Rails
```ruby
# CSRF Protection
protect_from_forgery with: :exception

# SQL Injection Prevention
User.where(email: params[:email])          # ✅ Safe
User.where("email = '#{params[:email]}'")  # ❌ Dangerous

# XSS Prevention
<%= user.name %>                           # ✅ Escaped
<%== user.name %>                          # ❌ Raw HTML
```

## 📈 Performance

### Otimizações Implementadas
- **Asset Precompilation**: CSS/JS minificados
- **Gzip Compression**: Reduz tamanho dos assets
- **Database Indexing**: Consultas mais rápidas
- **Turbo Drive**: Navegação SPA-like
- **Lazy Loading**: Carregamento sob demanda

### Métricas de Performance
```
First Contentful Paint: < 2s
Largest Contentful Paint: < 4s
Cumulative Layout Shift: < 0.1
First Input Delay: < 100ms
```

## 🧪 Testes

### Framework de Testes
```ruby
# Minitest (padrão do Rails)
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user without email" do
    user = User.new
    assert_not user.save
  end
end
```

### Tipos de Teste
- **Unit Tests**: Modelos e helpers
- **Integration Tests**: Controladores
- **System Tests**: End-to-end com Capybara
- **Performance Tests**: Benchmarking

## 🚀 Deploy

### Opções de Deploy
| Plataforma | Tipo | Configuração |
|-----------|------|--------------|
| **Heroku** | PaaS | `git push heroku main` |
| **AWS** | IaaS | EC2 + RDS |
| **DigitalOcean** | VPS | Droplet + PostgreSQL |
| **Railway** | PaaS | GitHub integration |

### Checklist de Produção
- [ ] Configurar variáveis de ambiente
- [ ] Configurar banco de produção
- [ ] Precompilar assets
- [ ] Configurar domínio
- [ ] SSL/TLS habilitado
- [ ] Monitoramento configurado

---

## 📚 Recursos de Aprendizado

### Documentação Oficial
- [Rails Guides](https://guides.rubyonrails.org/)
- [Ruby Documentation](https://ruby-doc.org/)
- [Bootstrap Documentation](https://getbootstrap.com/docs/)

### Tutoriais Recomendados
- [Rails Tutorial (Michael Hartl)](https://www.railstutorial.org/)
- [GoRails](https://gorails.com/)
- [Drifting Ruby](https://www.driftingruby.com/)

### Comunidade
- [Rails Community](https://rubyonrails.org/community/)
- [Ruby Brasil](https://github.com/ruby-brasil)
- [Stack Overflow](https://stackoverflow.com/questions/tagged/ruby-on-rails)
