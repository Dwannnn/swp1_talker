class CreateLearns < ActiveRecord::Migration
  def change
    create_table :learns do |t|

      t.text :ask
      t.text :answer

      t.timestamps null: false
    end
  end
end
