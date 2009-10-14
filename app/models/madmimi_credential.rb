class MadmimiCredential < ActiveRecord::Base
  validates_presence_of :url, :username, :api_key, :token
  validates_uniqueness_of :url
end
