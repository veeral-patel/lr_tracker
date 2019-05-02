class CreateEngagements < ActiveRecord::Migration[5.2]
  def change
    create_table :engagements do |t|
      t.string :code
      t.string :client

      t.timestamps
    end
  end
end
