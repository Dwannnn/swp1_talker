class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      
      t.text :talk_type
      t.text :talk_content

      t.timestamps null: false
    end
  end
end
