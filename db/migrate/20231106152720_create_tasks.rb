class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :user
      t.string :description
      t.boolean :completed

      t.timestamps
    end
  end
end
