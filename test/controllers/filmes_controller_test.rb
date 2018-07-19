require 'test_helper'

class FilmesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @filme = filmes(:one)
  end

  test "should get index" do
    get filmes_url
    assert_response :success
  end

  test "should get new" do
    get new_filme_url
    assert_response :success
  end

  test "should create filme" do
    assert_difference('Filme.count') do
      post filmes_url, params: { filme: { genero_filme: @filme.genero_filme, nome: @filme.nome, preco_de_locacao: @filme.preco_de_locacao } }
    end

    assert_redirected_to filme_url(Filme.last)
  end

  test "should show filme" do
    get filme_url(@filme)
    assert_response :success
  end

  test "should get edit" do
    get edit_filme_url(@filme)
    assert_response :success
  end

  test "should update filme" do
    patch filme_url(@filme), params: { filme: { genero_filme: @filme.genero_filme, nome: @filme.nome, preco_de_locacao: @filme.preco_de_locacao } }
    assert_redirected_to filme_url(@filme)
  end

  test "should destroy filme" do
    assert_difference('Filme.count', -1) do
      delete filme_url(@filme)
    end

    assert_redirected_to filmes_url
  end
end
