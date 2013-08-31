class CreateAttendings < ActiveRecord::Migration
  def change
    create_table :attendings do |t|
      t.string :name

      t.timestamps
    end
  end
end
