class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.integer :user_id

      t.timestamps
    end
  end
end
