require 'selenium-webdriver'
require 'test/unit'

module Test
  class TestHomePage < Test::Unit::TestCase

    def setup
      options = Selenium::WebDriver::Chrome::Options.new
      options.add_argument('--headless')
      @driver = Selenium::WebDriver.for :chrome, options: options
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