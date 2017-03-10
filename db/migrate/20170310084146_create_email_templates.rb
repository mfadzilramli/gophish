class CreateEmailTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :email_templates do |t|
      t.string  :title
      t.string  :description
      t.text    :content
      t.boolean :shared, default: false
      t.timestamps
    end
  end
end
