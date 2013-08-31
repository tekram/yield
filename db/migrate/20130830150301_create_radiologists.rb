class CreateRadiologists < ActiveRecord::Migration
  def change
    create_table :radiologists do |t|
      t.string :name

      t.timestamps
    end
  end
end
