class CreateSenders < ActiveRecord::Migration[5.0]
  def change
    create_table :senders do |t|
      t.string  :title
      t.string  :name
      t.string  :subject
      t.string  :email_from
      t.string  :description
      t.timestamps
    end
  end
end
