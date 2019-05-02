class CreateSystems < ActiveRecord::Migration[5.2]
  def change
    create_table :systems do |t|
      t.string :hostname
      t.text :lead
      t.text :notes
      t.text :summary
      t.integer :status
      t.references :engagement, foreign_key: true

      t.timestamps
    end
  end
end
