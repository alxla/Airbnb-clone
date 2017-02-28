class ChangeTypeFromProfileTableToProfileType < ActiveRecord::Migration[5.0]
  def change
    rename_column :profiles, :type, :profile_type
  end
end
