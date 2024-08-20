require "application_system_test_case"

class ProjetosTest < ApplicationSystemTestCase
  setup do
    @projeto = projetos(:one)
  end

  test "visiting the index" do
    visit projetos_url
    assert_selector "h1", text: "Projetos"
  end

  test "should create projeto" do
    visit projetos_url
    click_on "New projeto"

    fill_in "Data fim", with: @projeto.data_fim
    fill_in "Data inicio", with: @projeto.data_inicio
    fill_in "Descricao", with: @projeto.descricao
    fill_in "Nome", with: @projeto.nome
    fill_in "Prioridade", with: @projeto.prioridade
    fill_in "Responsavel", with: @projeto.responsavel
    fill_in "Status", with: @projeto.status
    click_on "Create Projeto"

    assert_text "Projeto was successfully created"
    click_on "Back"
  end

  test "should update Projeto" do
    visit projeto_url(@projeto)
    click_on "Edit this projeto", match: :first

    fill_in "Data fim", with: @projeto.data_fim
    fill_in "Data inicio", with: @projeto.data_inicio
    fill_in "Descricao", with: @projeto.descricao
    fill_in "Nome", with: @projeto.nome
    fill_in "Prioridade", with: @projeto.prioridade
    fill_in "Responsavel", with: @projeto.responsavel
    fill_in "Status", with: @projeto.status
    click_on "Update Projeto"

    assert_text "Projeto was successfully updated"
    click_on "Back"
  end

  test "should destroy Projeto" do
    visit projeto_url(@projeto)
    click_on "Destroy this projeto", match: :first

    assert_text "Projeto was successfully destroyed"
  end
end
