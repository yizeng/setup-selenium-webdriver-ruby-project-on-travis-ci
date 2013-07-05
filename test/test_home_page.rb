require 'selenium-webdriver'
require 'test/unit'

module Test
  class TestHomePage < Test::Unit::TestCase

    def setup
      @driver = Selenium::WebDriver.for :phantomjs
      @driver.navigate.to('http://yizeng.me')
    end

    def teardown
      @driver.quit
    end

    def test_home_page_title
      assert_equal('Yi Zeng', @driver.title)
    end
  end
end