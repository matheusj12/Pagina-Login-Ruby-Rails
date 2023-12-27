# db/seeds.rb

# Certifique-se de que você tenha o Faker instalado no seu Gemfile
# Gemfile
# gem 'faker'

require 'faker'

# Criando 20 registros de clientes com dados fictícios
20.times do
  Client.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number
  )
end
