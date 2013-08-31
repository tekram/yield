class CreateRequestingMds < ActiveRecord::Migration
  def change
    create_table :requesting_mds do |t|
      t.string :name

      t.timestamps
    end
  end
end
