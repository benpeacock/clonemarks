class CreateEmailReceivers < ActiveRecord::Migration
  def change
    create_table :email_receivers do |t|

      t.timestamps
    end
  end
end
