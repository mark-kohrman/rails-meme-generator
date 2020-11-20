class CreateMemes < ActiveRecord::Migration[6.0]
  def change
    create_table :memes do |t|
      t.string :top_text
      t.string :bottom_text
      t.string :img_url

      t.timestamps
    end
  end
end
