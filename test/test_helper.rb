require "logcamp"
require "test/unit"
require "shoulda"

class Test::Unit::TestCase

  setup do
    Logcamp.token = "e5b8dde5955381f73a24982fb3ce3c7f"
  end

  teardown do
    Logcamp.token = nil
  end
end
