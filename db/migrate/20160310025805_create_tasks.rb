class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :details
      t.date :completion_date
      t.references :users, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
