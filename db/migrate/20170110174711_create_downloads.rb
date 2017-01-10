class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.string :url
      t.text :body

      t.timestamps null: false
    end
  end
end
