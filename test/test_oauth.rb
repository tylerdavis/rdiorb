require File.dirname(__FILE__) + '/common'
include Rdio

class TestOAuth < RdioTestCase

  def test_set_get_pin
    api = Rdio::api
    api.get_pin = lambda {|url| url+url}
    get_pin = api.get_pin
    url = 'test'
    assert_equal (url+url),get_pin.call(url)
    get_pin = api.oauth.get_pin
    url = 'test2'
    assert_equal (url+url),get_pin.call(url)
  end
  
end
