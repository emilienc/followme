require 'test_helper'

class BalisesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Balise.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Balise.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Balise.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to balise_url(assigns(:balise))
  end

  def test_edit
    get :edit, :id => Balise.first
    assert_template 'edit'
  end

  def test_update_invalid
    Balise.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Balise.first
    assert_template 'edit'
  end

  def test_update_valid
    Balise.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Balise.first
    assert_redirected_to balise_url(assigns(:balise))
  end

  def test_destroy
    balise = Balise.first
    delete :destroy, :id => balise
    assert_redirected_to balises_url
    assert !Balise.exists?(balise.id)
  end
end
