class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.date :dtini
      t.date :dtfim

      t.timestamps
    end
  end
end
