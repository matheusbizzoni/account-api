class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :cpf_or_cnpj
      t.date :birthdate
      t.string :fantasy_name
      t.string :client_type
      t.timestamps null: false
    end
  end
end
