require 'test_helper'

class LoanSectorsControllerTest < ActionController::TestCase
  setup do
    @loan_sector = loan_sectors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loan_sectors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loan_sector" do
    assert_difference('LoanSector.count') do
      post :create, :loan_sector => @loan_sector.attributes
    end

    assert_redirected_to loan_sector_path(assigns(:loan_sector))
  end

  test "should show loan_sector" do
    get :show, :id => @loan_sector.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @loan_sector.to_param
    assert_response :success
  end

  test "should update loan_sector" do
    put :update, :id => @loan_sector.to_param, :loan_sector => @loan_sector.attributes
    assert_redirected_to loan_sector_path(assigns(:loan_sector))
  end

  test "should destroy loan_sector" do
    assert_difference('LoanSector.count', -1) do
      delete :destroy, :id => @loan_sector.to_param
    end

    assert_redirected_to loan_sectors_path
  end
end
