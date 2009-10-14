class CreateMadmimiCredentials < ActiveRecord::Migration
  def self.up
    create_table :madmimi_credentials do |t|
      t.string :url, :null => false
      t.string :username, :null => false
      t.string :api_key, :null => false
      t.string :token, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :madmimi_credentials
  end
end
