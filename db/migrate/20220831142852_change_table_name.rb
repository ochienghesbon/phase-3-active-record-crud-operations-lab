class ChangeTableName < ActiveRecord::Migration[6.1]
  def change
      rename_table :spells, :movies
  end
end
