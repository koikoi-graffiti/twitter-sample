class AddFieldToUsers < ActiveRecord::Migration[5.1]
  def change
    #add_index :users(テーブル名), :username(カラム名), 制約
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_index :users, :username, unique: true
  end
end