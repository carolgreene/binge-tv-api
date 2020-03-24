class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :name
      t.string :genre
      t.string :summary

      t.timestamps
    end
  end
end
