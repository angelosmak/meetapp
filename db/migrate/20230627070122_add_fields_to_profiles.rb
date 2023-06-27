class AddFieldsToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :email, :string
    add_column :profiles, :username, :string
  end
end
