require 'test_helper'

class AkcesControllerTest < ActionController::TestCase
  setup do
    @akce = akces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:akces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create akce" do
    assert_difference('Akce.count') do
      post :create, akce: { cena: @akce.cena, misto_srazu: @akce.misto_srazu, popis: @akce.popis, termin: @akce.termin }
    end

    assert_redirected_to akce_path(assigns(:akce))
  end

  test "should show akce" do
    get :show, id: @akce
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @akce
    assert_response :success
  end

  test "should update akce" do
    patch :update, id: @akce, akce: { cena: @akce.cena, misto_srazu: @akce.misto_srazu, popis: @akce.popis, termin: @akce.termin }
    assert_redirected_to akce_path(assigns(:akce))
  end

  test "should destroy akce" do
    assert_difference('Akce.count', -1) do
      delete :destroy, id: @akce
    end

    assert_redirected_to akces_path
  end
end
