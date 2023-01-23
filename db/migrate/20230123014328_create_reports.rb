class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.string "report_title"
      t.string "report_message"
      t.string "report_image"
      t.string "report_status"
      t.string "report_address"
      t.string "report_category"

      t.timestamps
    end
  end
end
