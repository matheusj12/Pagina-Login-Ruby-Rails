require "application_system_test_case"

class FuncionariosTest < ApplicationSystemTestCase
  setup do
    @funcionario = funcionarios(:one)
  end

  test "visiting the index" do
    visit funcionarios_url
    assert_selector "h1", text: "Funcionarios"
  end

  test "should create funcionario" do
    visit funcionarios_url
    click_on "New funcionario"

    check "Ativo" if @funcionario.ativo
    fill_in "Cargo", with: @funcionario.cargo
    fill_in "Cpf", with: @funcionario.cpf
    fill_in "Data admissao", with: @funcionario.data_admissao
    fill_in "Data nascimento", with: @funcionario.data_nascimento
    fill_in "Departamento", with: @funcionario.departamento
    fill_in "Email", with: @funcionario.email
    fill_in "Endereco", with: @funcionario.endereco
    fill_in "Estado civil", with: @funcionario.estado_civil
    fill_in "Genero", with: @funcionario.genero
    fill_in "Identificacao", with: @funcionario.identificacao
    fill_in "Nome", with: @funcionario.nome
    fill_in "Salario", with: @funcionario.salario
    fill_in "Telefone", with: @funcionario.telefone
    click_on "Create Funcionario"

    assert_text "Funcionario was successfully created"
    click_on "Back"
  end

  test "should update Funcionario" do
    visit funcionario_url(@funcionario)
    click_on "Edit this funcionario", match: :first

    check "Ativo" if @funcionario.ativo
    fill_in "Cargo", with: @funcionario.cargo
    fill_in "Cpf", with: @funcionario.cpf
    fill_in "Data admissao", with: @funcionario.data_admissao
    fill_in "Data nascimento", with: @funcionario.data_nascimento
    fill_in "Departamento", with: @funcionario.departamento
    fill_in "Email", with: @funcionario.email
    fill_in "Endereco", with: @funcionario.endereco
    fill_in "Estado civil", with: @funcionario.estado_civil
    fill_in "Genero", with: @funcionario.genero
    fill_in "Identificacao", with: @funcionario.identificacao
    fill_in "Nome", with: @funcionario.nome
    fill_in "Salario", with: @funcionario.salario
    fill_in "Telefone", with: @funcionario.telefone
    click_on "Update Funcionario"

    assert_text "Funcionario was successfully updated"
    click_on "Back"
  end

  test "should destroy Funcionario" do
    visit funcionario_url(@funcionario)
    click_on "Destroy this funcionario", match: :first

    assert_text "Funcionario was successfully destroyed"
  end
end
