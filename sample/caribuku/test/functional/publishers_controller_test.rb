require 'test_helper'

class PublishersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:publishers)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_publisher
    assert_difference('Publisher.count') do
      post :create, :publisher => { }
    end

    assert_redirected_to publisher_path(assigns(:publisher))
  end

  def test_should_show_publisher
    get :show, :id => publishers(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => publishers(:one).id
    assert_response :success
  end

  def test_should_update_publisher
    put :update, :id => publishers(:one).id, :publisher => { }
    assert_redirected_to publisher_path(assigns(:publisher))
  end

  def test_should_destroy_publisher
    assert_difference('Publisher.count', -1) do
      delete :destroy, :id => publishers(:one).id
    end

    assert_redirected_to publishers_path
  end
end
