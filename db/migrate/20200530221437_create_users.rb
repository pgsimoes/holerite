class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.references :companies
      t.integer :kind
      t.integer :registration
      t.integer :status

      t.timestamps
    end
  end
end
