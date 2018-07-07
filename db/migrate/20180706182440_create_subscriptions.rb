class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name, null: false, default: 'VIP Subscriptions'
      t.timestamps
    end
  end
end
