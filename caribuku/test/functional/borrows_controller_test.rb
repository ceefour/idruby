require 'test_helper'

class BorrowsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:borrows)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_borrow
    assert_difference('Borrow.count') do
      post :create, :borrow => { }
    end

    assert_redirected_to borrow_path(assigns(:borrow))
  end

  def test_should_show_borrow
    get :show, :id => borrows(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => borrows(:one).id
    assert_response :success
  end

  def test_should_update_borrow
    put :update, :id => borrows(:one).id, :borrow => { }
    assert_redirected_to borrow_path(assigns(:borrow))
  end

  def test_should_destroy_borrow
    assert_difference('Borrow.count', -1) do
      delete :destroy, :id => borrows(:one).id
    end

    assert_redirected_to borrows_path
  end
end
