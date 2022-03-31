class AddColumnToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :id_group, :integer
  end
end
