class CreateReceipts < ActiveRecord::Migration[6.0]
  def change
    create_table :receipts do |t|
      t.string :link
      t.references :user
      t.references :companies

      t.timestamps
    end
  end
end
