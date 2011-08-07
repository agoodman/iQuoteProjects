class AddCompanyInfoToUsers < ActiveRecord::Migration

  def self.up
    add_column :users, :company_name, :string
    add_column :users, :company_url, :string
    add_column :users, :twitter_handle, :string
    add_column :users, :facebook_handle, :string
    add_column :users, :skype_handle, :string
    add_column :users, :linkedin_handle, :string
  end

  def self.down
    remove_column :users, :company_name
    remove_column :users, :company_url
    remove_column :users, :twitter_handle
    remove_column :users, :facebook_handle
    remove_column :users, :skype_handle
    remove_column :users, :linkedin_handle
  end
  
end
