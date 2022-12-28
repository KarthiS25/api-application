class CreateGardens < ActiveRecord::Migration[7.0]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :state

      t.timestamps
    end
  end
end
