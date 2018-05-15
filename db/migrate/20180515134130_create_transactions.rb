class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :token
      t.float :value
      t.string :type
      t.belongs_to :account_to, as: :account, index: true
      t.belongs_to :account_from, as: :account, index: true

      t.timestamps null: false
    end
    add_index :transactions, :token
    add_index :transactions, :type
  end
end
