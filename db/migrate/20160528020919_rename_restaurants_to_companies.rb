class RenameRestaurantsToCompanies < ActiveRecord::Migration
  def change
    rename_table :restaurants, :companies
  end
end
