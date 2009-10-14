require 'test_helper'

class MadmimiCredentialTest < ActiveSupport::TestCase
  should_validate_presence_of :url, :username, :api_key
  should_validate_uniqueness_of :url
end
