require 'test_helper'

class DistributorsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Distributor.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Distributor.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Distributor.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to distributor_url(assigns(:distributor))
  end

  def test_edit
    get :edit, :id => Distributor.first
    assert_template 'edit'
  end

  def test_update_invalid
    Distributor.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Distributor.first
    assert_template 'edit'
  end

  def test_update_valid
    Distributor.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Distributor.first
    assert_redirected_to distributor_url(assigns(:distributor))
  end

  def test_destroy
    distributor = Distributor.first
    delete :destroy, :id => distributor
    assert_redirected_to distributors_url
    assert !Distributor.exists?(distributor.id)
  end
end
