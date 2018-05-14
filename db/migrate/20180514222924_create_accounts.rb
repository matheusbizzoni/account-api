class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :status
      t.float :balance
      t.references :person, index: true
      t.timestamps null: false
    end
  end
end
