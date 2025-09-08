# 📖 Documentação Técnica

## 🏗️ Arquitetura do Sistema

### Estrutura do Projeto

```
Pagina-Login-Ruby-Rails/
├── app/
│   ├── controllers/          # Controladores da aplicação
│   ├── models/              # Modelos de dados
│   ├── views/               # Views (ERB templates)
│   │   ├── layouts/         # Layouts base
│   │   ├── home/           # Views da home
│   │   └── ...             # Outros módulos
│   ├── assets/             # Assets estáticos
│   │   ├── stylesheets/    # Arquivos SCSS/CSS
│   │   ├── javascripts/    # Arquivos JavaScript
│   │   └── images/         # Imagens
│   └── helpers/            # Helper methods
├── config/                 # Configurações
│   ├── routes.rb          # Rotas da aplicação
│   ├── database.yml       # Configuração do BD
│   └── application.rb     # Configuração principal
├── db/                    # Banco de dados
│   ├── migrate/          # Migrações
│   ├── schema.rb         # Schema atual
│   └── seeds.rb          # Dados iniciais
└── public/               # Arquivos públicos
```

## 🗄️ Modelo de Dados

### Principais Entidades

#### Users (Usuários)
```ruby
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
```

**Campos:**
- `email`: String (único, obrigatório)
- `encrypted_password`: String
- `reset_password_token`: String
- `provider`: String (OAuth)
- `uid`: String (OAuth)

#### Products (Produtos)
```ruby
class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
```

**Campos:**
- `name`: String (obrigatório)
- `price`: Decimal (obrigatório)
- `description`: Text
- `created_at`: DateTime
- `updated_at`: DateTime

#### Clients (Clientes)
```ruby
class Client < ApplicationRecord
  validates :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
```

**Campos:**
- `name`: String (obrigatório)
- `email`: String
- `phone`: String
- `address`: Text
- `created_at`: DateTime
- `updated_at`: DateTime

#### Vendas
```ruby
class Venda < ApplicationRecord
  belongs_to :client, optional: true
  belongs_to :product, optional: true
  
  validates :preco, presence: true, numericality: { greater_than: 0 }
end
```

**Campos:**
- `client_id`: Integer (FK)
- `product_id`: Integer (FK)
- `preco`: Decimal
- `data`: Date
- `quantidade`: Integer
- `created_at`: DateTime
- `updated_at`: DateTime

## 🛣️ Rotas Principais

### Dashboard
```ruby
root 'home#index'
get 'home/index'
```

### Autenticação (Devise)
```ruby
devise_for :users
# Gera automaticamente:
# GET    /users/sign_in
# POST   /users/sign_in
# DELETE /users/sign_out
# GET    /users/sign_up
# POST   /users
```

### Resources
```ruby
resources :products
resources :clients
resources :vendas
resources :funcionarios
resources :departamentos
# ... outros módulos
```

## 🎨 Frontend

### CSS Framework
- **Bootstrap 5.3.0**: Framework CSS responsivo
- **Font Awesome 6.4.0**: Ícones vetoriais
- **Google Fonts (Inter)**: Tipografia moderna

### Estrutura de Estilos
```scss
// app/assets/stylesheets/
├── application.scss        # Imports principais
├── home/
│   └── home.scss          # Estilos da home
└── components/            # Componentes reutilizáveis
```

### JavaScript
- **Stimulus**: Framework JavaScript do Rails
- **Turbo**: Navegação SPA-like
- **Bootstrap JS**: Componentes interativos

## 📊 Gráficos e Visualizações

### Chartkick + Google Charts
```erb
<%= pie_chart @produto_counts, 
    donut: true, 
    colors: ['#007bff', '#28a745', '#ffc107'],
    library: { 
      packages: ['corechart'],
      pieHole: 0.4,
      chartArea: { width: '80%', height: '80%' }
    } %>
```

## 🔐 Autenticação e Autorização

### Devise Configuration
```ruby
# config/initializers/devise.rb
Devise.setup do |config|
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 12
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
end
```

### Proteção de Rotas
```ruby
class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
```

## 🗃️ Banco de Dados

### SQLite (Desenvolvimento)
```yaml
# config/database.yml
development:
  adapter: sqlite3
  database: db/development.sqlite3
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000
```

### PostgreSQL (Produção Recomendada)
```yaml
production:
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  database: app_production
  username: app
  password: <%= ENV['DATABASE_PASSWORD'] %>
```

## 🚀 Deploy

### Preparação para Produção
```bash
# Precompilar assets
RAILS_ENV=production bundle exec rails assets:precompile

# Executar migrações
RAILS_ENV=production bundle exec rails db:migrate

# Configurar variáveis de ambiente
export SECRET_KEY_BASE=your_secret_key
export DATABASE_URL=postgresql://...
```

### Heroku
```bash
# Adicionar buildpacks
heroku buildpacks:add heroku/nodejs
heroku buildpacks:add heroku/ruby

# Deploy
git push heroku main
heroku run rails db:migrate
```

## 🧪 Testes

### Estrutura de Testes
```
test/
├── controllers/           # Testes de controladores
├── models/               # Testes de modelos
├── integration/          # Testes de integração
├── system/              # Testes do sistema
└── fixtures/            # Dados de teste
```

### Executando Testes
```bash
# Todos os testes
bundle exec rails test

# Testes específicos
bundle exec rails test test/models/user_test.rb
bundle exec rails test test/controllers/home_controller_test.rb

# Com cobertura
bundle exec rails test --coverage
```

## 🔧 Configurações Importantes

### Timezone
```ruby
# config/application.rb
config.time_zone = 'Brasilia'
config.i18n.default_locale = :'pt-BR'
```

### Logs
```ruby
# config/environments/production.rb
config.log_level = :info
config.log_tags = [ :request_id ]
```

### Assets
```ruby
# config/environments/production.rb
config.assets.compile = false
config.assets.digest = true
```

## 📈 Performance

### Caching
```ruby
# config/environments/production.rb
config.cache_classes = true
config.action_controller.perform_caching = true
config.cache_store = :memory_store
```

### Database Queries
- Use `includes` para evitar N+1 queries
- Adicione índices nas colunas frequentemente consultadas
- Use `counter_cache` para contadores

### Asset Pipeline
- Minimize e comprima CSS/JS
- Use CDN para assets estáticos
- Optimize imagens

## 🔍 Debugging

### Rails Console
```bash
bundle exec rails console
# ou
bundle exec rails c
```

### Debugging em Views
```erb
<%= debug(@variable) %>
<%= @variable.inspect %>
```

### Logs
```bash
tail -f log/development.log
tail -f log/production.log
```

---

Para mais detalhes, consulte a [documentação oficial do Rails](https://guides.rubyonrails.org/).
