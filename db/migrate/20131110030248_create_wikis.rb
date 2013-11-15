class CreateWikis < ActiveRecord::Migration
  def change
    create_table :wikis do |t|
      t.string :content
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
