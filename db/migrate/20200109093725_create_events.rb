class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :day
      t.string :time
      t.string :description
      t.string :title

      t.timestamps
    end
  end
end
