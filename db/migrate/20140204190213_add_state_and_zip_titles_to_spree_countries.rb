class AddStateAndZipTitlesToSpreeCountries < ActiveRecord::Migration
  def change
    add_column :spree_countries, :state_title, :string
    add_column :spree_countries, :zip_title, :string
  end
end
