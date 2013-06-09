require 'selenium-webdriver'
require 'test/unit'

module Test
  class TestHomePage < Test::Unit::TestCase

    PAGE_TITLE = 'Yi Zeng'

    def setup
      @driver = Selenium::WebDriver.for :phantomjs
      @driver.navigate.to('http://yizeng.me')
    end

    def teardown
      @driver.quit
    end

    def test_home_page_title
      assert_equal(PAGE_TITLE, @driver.title)
    end
  end
end