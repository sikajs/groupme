class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :titles
      t.text :description

      t.timestamps
    end
  end
end
