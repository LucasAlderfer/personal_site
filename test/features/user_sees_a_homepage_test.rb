require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end
end

class ErrorTest < CapybaraTestCase
  def test_user_sees_error_page_when_appropriate
    visit '/account'

    assert_equal 404, page.status_code
    assert page.has_content?("Page not found.")
  end
end
