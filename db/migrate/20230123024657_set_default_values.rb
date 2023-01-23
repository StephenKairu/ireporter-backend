class SetDefaultValues < ActiveRecord::Migration[7.0]
  def change
    change_column :reports, :report_image, :string, :default => "https://img.freepik.com/free-photo/african-woman-hold-small-kenya-flag-hands_627829-10813.jpg?size=626&ext=jpg&ga=GA1.2.790298598.1667807727"
    change_column :reports, :report_status, :string, :default => "Pending"
    change_column :reports, :report_category, :string, :default => "Intervention"

    change_column :users, :role, :string, :default => "citizen"

    change_column :alerts, :status, :string, :default => "Under investigation"
    change_column :alerts, :image, :string, :default => "https://img.freepik.com/free-vector/loudspeaker-megaphone-with-lightings-red_1284-58706.jpg?size=626&ext=jpg&ga=GA1.2.790298598.1667807727&semt=sph"

  end
end
