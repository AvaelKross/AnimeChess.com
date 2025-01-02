class AddChessRelatedFieldsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :ranks, :jsonb, default: {}
    add_column :users, :wins_loses, :jsonb, default: {}
    add_column :users, :currency, :integer, default: 0
    add_column :users, :avatar_url, :string
    add_column :users, :admin, :boolean, default: false
  end
end
