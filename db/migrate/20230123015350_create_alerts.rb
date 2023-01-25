class CreateAlerts < ActiveRecord::Migration[7.0]
  def change
    create_table :alerts do |t|
      t.string "title"
      t.string "message"
      t.string "image"
      t.float "lat"
      t.float "lng"
      t.string "status"

      t.timestamps
    end
  end
end
