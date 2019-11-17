class AddColumnToSessions < ActiveRecord::Migration[5.2]
  def change
    add_column :sessions, :date, :string
  end
end
