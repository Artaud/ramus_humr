require 'test_helper'

class PrihlaskasControllerTest < ActionController::TestCase
  setup do
    @prihlaska = prihlaskas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prihlaskas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prihlaska" do
    assert_difference('Prihlaska.count') do
      post :create, prihlaska: { akce_id: @prihlaska.akce_id, jmeno_prijmeni: @prihlaska.jmeno_prijmeni, kontakt: @prihlaska.kontakt, role_ucastnika_id: @prihlaska.role_ucastnika_id, vzkaz: @prihlaska.vzkaz }
    end

    assert_redirected_to prihlaska_path(assigns(:prihlaska))
  end

  test "should show prihlaska" do
    get :show, id: @prihlaska
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prihlaska
    assert_response :success
  end

  test "should update prihlaska" do
    patch :update, id: @prihlaska, prihlaska: { akce_id: @prihlaska.akce_id, jmeno_prijmeni: @prihlaska.jmeno_prijmeni, kontakt: @prihlaska.kontakt, role_ucastnika_id: @prihlaska.role_ucastnika_id, vzkaz: @prihlaska.vzkaz }
    assert_redirected_to prihlaska_path(assigns(:prihlaska))
  end

  test "should destroy prihlaska" do
    assert_difference('Prihlaska.count', -1) do
      delete :destroy, id: @prihlaska
    end

    assert_redirected_to prihlaskas_path
  end
end
