class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :name
      t.integer :audience
      t.date :date
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
