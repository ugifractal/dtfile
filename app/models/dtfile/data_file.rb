module Dtfile
  class DataFile < ActiveRecord::Base
    set_table_name :dt_data_files
    has_attached_file :file
  end
end
