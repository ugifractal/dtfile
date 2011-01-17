class CreateDataFiles < ActiveRecord::Migration
  def self.up
    create_table :dt_data_files do |t|
      t.string :file_file_name
      t.string :file_updated_at
      t.string :file_content_type
      t.string :file_file_size
      t.timestamps
    end    
  end

  def self.down
    drop_table :dt_data_files
  end

end
