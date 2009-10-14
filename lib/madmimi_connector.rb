require 'net/http'

class MadmimiConnector
  
  def self.perform
    puts "begin fetching audiences from shopify and uploading them to madmimi.."
    MadmimiCredential.all.each do |credential|
      upload_audiences_to_madmimi(credential, fetch_audiences_from_shopify(credential))
    end
    puts "end fetching and uploading..........................................."
  end
  
  def self.fetch_audiences_from_shopify(credential)
    session = ShopifyAPI::Session.new(credential.url, credential.token)
    ActiveResource::Base.site = session.site
    audiences = ShopifyAPI::Order.find(:all).map(&:email)
    puts audiences
    audiences
  ensure
    ActiveResource::Base.site = nil
  end
  
  def self.upload_audiences_to_madmimi(credential, audiences)
    url = URI.parse('http://madmimi.com/audience_members')
    csv_data = audiences.unshift('email').join("\n")
    puts csv_data
    response = Net::HTTP.post_form(url, {
      'username' => credential.username, 
      'api_key' => credential.api_key, 
      'csv_file' => csv_data
    })
  end
end