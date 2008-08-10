require 'test_helper'

class RulesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:rules)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_rule
    assert_difference('Rule.count') do
      post :create, :rule => { }
    end

    assert_redirected_to rule_path(assigns(:rule))
  end

  def test_should_show_rule
    get :show, :id => rules(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => rules(:one).id
    assert_response :success
  end

  def test_should_update_rule
    put :update, :id => rules(:one).id, :rule => { }
    assert_redirected_to rule_path(assigns(:rule))
  end

  def test_should_destroy_rule
    assert_difference('Rule.count', -1) do
      delete :destroy, :id => rules(:one).id
    end

    assert_redirected_to rules_path
  end
end
