require "test_helper"

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get mytasks" do
    get dashboards_mytasks_url
    assert_response :success
  end

  test "should get myjobs" do
    get dashboards_myjobs_url
    assert_response :success
  end

  test "should get myprofile" do
    get dashboards_myprofile_url
    assert_response :success
  end
end
