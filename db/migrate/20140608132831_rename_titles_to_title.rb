class RenameTitlesToTitle < ActiveRecord::Migration
  def change
    rename_column :groups, :titles, :title
  end
end
