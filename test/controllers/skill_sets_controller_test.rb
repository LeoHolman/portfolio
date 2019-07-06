require 'test_helper'

class SkillSetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get skill_sets_index_url
    assert_response :success
  end

  test "should get show" do
    get skill_sets_show_url
    assert_response :success
  end

end
