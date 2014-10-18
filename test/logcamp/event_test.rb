require File.expand_path("../../test_helper", __FILE__)

module Logcamp
  class EventTest < Test::Unit::TestCase
    should "create should return status 201" do
      response = Logcamp::Event.create(date: "2014-07-01 14:50:28", currency: "CAD", city: "Paris", country: "Canada", client_email: "d@email.com", uid: "0000099")
      assert_equal "201", response.code
    end

    should "raise Logcamp::AuthenticationError if not token provided" do
      Logcamp.token = nil
      assert_raises(Logcamp::AuthenticationError) {Event::Event.create}
    end

    should "raise Logcamp::InvalidRequestError if not enough parameters" do
      begin
      rescue JSON::ParserError
        assert_raises(Logcamp::InvalidRequestError) {Logcamp::Event.create}
      end
    end
  end
end
