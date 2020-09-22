class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :dttini
      t.date :dttfim
      t.boolean :finish
      t.references :project, index: true, foreign_key: true

      t.timestamps
    end
  end
end
