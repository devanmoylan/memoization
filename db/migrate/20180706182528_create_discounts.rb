class CreateDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts do |t|
      t.belongs_to :subscription, foreign_key: true
      t.string :name, null: false, default: '$10 off'
      t.integer :amount, null: false, default: 10
      t.timestamps
    end
  end
end
