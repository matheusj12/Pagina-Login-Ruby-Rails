# 🤝 Guia de Contribuição

Obrigado por considerar contribuir para o Sistema de Gestão Empresarial! Este documento fornece diretrizes para contribuir com o projeto.

## 📋 Código de Conduta

Este projeto adere ao [Contributor Covenant](https://www.contributor-covenant.org/). Ao participar, você deve seguir este código de conduta.

## 🚀 Como Contribuir

### 🐛 Reportando Bugs

Antes de criar um relatório de bug, verifique se o problema já não foi reportado. Quando criar um relatório, inclua:

- **Título claro e descritivo**
- **Descrição detalhada** do problema
- **Passos para reproduzir** o bug
- **Comportamento esperado** vs **comportamento atual**
- **Screenshots** (se aplicável)
- **Informações do ambiente**:
  - SO e versão
  - Versão do Ruby
  - Versão do Rails
  - Navegador e versão

### ✨ Sugerindo Melhorias

Para sugerir melhorias:

1. Verifique se a sugestão já não existe
2. Crie uma issue detalhada explicando:
   - O problema que resolve
   - A solução proposta
   - Exemplos de uso
   - Impacto esperado

### 🔧 Contribuindo com Código

#### 1. Configuração do Ambiente

```bash
# Fork e clone o repositório
git clone https://github.com/seu-usuario/Pagina-Login-Ruby-Rails.git
cd Pagina-Login-Ruby-Rails

# Instale as dependências
bundle install

# Configure o banco de dados
bundle exec rails db:migrate

# Execute os testes
bundle exec rails test
```

#### 2. Criando uma Branch

```bash
# Crie uma branch para sua contribuição
git checkout -b feature/nome-da-funcionalidade
# ou
git checkout -b bugfix/nome-do-bug
# ou
git checkout -b docs/melhoria-documentacao
```

#### 3. Convenções de Código

##### Ruby/Rails
- Siga o [Ruby Style Guide](https://rubystyle.guide/)
- Use nomes descritivos para variáveis e métodos
- Mantenha métodos pequenos e focados
- Adicione comentários quando necessário

##### Frontend
- Use classes CSS semânticas
- Siga as convenções do Bootstrap 5
- Mantenha JavaScript organizado e modular
- Use SCSS para estilização

##### Commits
Use mensagens de commit claras e descritivas:

```bash
# Bom
git commit -m "Adiciona validação de email no modelo User"
git commit -m "Corrige bug no cálculo de desconto"
git commit -m "Atualiza documentação da API"

# Evite
git commit -m "fix"
git commit -m "mudanças"
git commit -m "wip"
```

#### 4. Testes

- Adicione testes para novas funcionalidades
- Certifique-se de que todos os testes passam
- Mantenha a cobertura de testes alta

```bash
# Execute todos os testes
bundle exec rails test

# Execute testes específicos
bundle exec rails test test/models/user_test.rb
```

#### 5. Documentação

- Atualize a documentação para novas funcionalidades
- Adicione comentários no código quando necessário
- Atualize o README se aplicável

#### 6. Pull Request

1. **Push sua branch**:
   ```bash
   git push origin feature/nome-da-funcionalidade
   ```

2. **Crie um Pull Request** com:
   - Título claro e descritivo
   - Descrição detalhada das mudanças
   - Referência às issues relacionadas
   - Screenshots (se aplicável)

3. **Template do PR**:
   ```markdown
   ## Descrição
   Breve descrição das mudanças realizadas.

   ## Tipo de Mudança
   - [ ] Bug fix
   - [ ] Nova funcionalidade
   - [ ] Breaking change
   - [ ] Documentação

   ## Como foi testado
   Descreva como você testou suas mudanças.

   ## Checklist
   - [ ] Código segue as diretrizes do projeto
   - [ ] Testes foram adicionados/atualizados
   - [ ] Documentação foi atualizada
   - [ ] Todos os testes passam
   ```

## 🎯 Áreas para Contribuição

### 🔧 Desenvolvimento
- Novas funcionalidades
- Melhorias de performance
- Correções de bugs
- Refatoração de código

### 🎨 Design/UX
- Melhorias na interface
- Responsividade
- Acessibilidade
- Iconografia

### 📚 Documentação
- Melhoria do README
- Guias de uso
- Comentários no código
- Exemplos práticos

### 🧪 Testes
- Aumentar cobertura
- Testes de integração
- Testes de performance
- Testes de acessibilidade

## 📞 Contato

- **Issues**: Para bugs e sugestões
- **Discussões**: Para perguntas gerais
- **Email**: matyftw12@gmail.com

## 🎉 Reconhecimento

Todos os contribuidores serão reconhecidos no README e terão seus nomes adicionados à lista de colaboradores.

---

**Obrigado por contribuir! 🙏**
