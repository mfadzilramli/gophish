class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.text   :description
      t.datetime  :date_start_at
      t.datetime  :date_end_at
      t.timestamps
    end
  end
end
