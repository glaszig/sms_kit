require 'helper'

class MockProvider < ExampleProvider
  def connection
    super do |conn|
      conn.headers[:user_agent] = 'customer user agent'
    end
  end
end

class HttpTest < MiniTest::Test

  def setup
    @mock = MockProvider.new
  end

  def test_connection_config
    conn = @mock.connection
    assert_equal 'customer user agent', conn.headers[:user_agent]
  end

end