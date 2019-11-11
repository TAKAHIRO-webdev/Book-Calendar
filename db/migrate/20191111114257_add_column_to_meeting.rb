class AddColumnToMeeting < ActiveRecord::Migration[6.0]
  def change
    add_column :meetings, :end_time, :datetime
    add_column :meetings, :content, :text
    add_column :meetings, :start_page, :integer 
    add_column :meetings, :end_page, :integer 
  end
end
