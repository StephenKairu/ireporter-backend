class AddUserAndReportToAlerts < ActiveRecord::Migration[7.0]
  def change
    add_reference :alerts, :user, foreign_key: true
    add_reference :alerts, :report, foreign_key: true
  end
end
