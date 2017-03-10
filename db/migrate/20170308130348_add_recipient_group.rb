class AddRecipientGroup < ActiveRecord::Migration[5.0]
  def change
    add_reference :recipients, :recipient_group
  end
end
