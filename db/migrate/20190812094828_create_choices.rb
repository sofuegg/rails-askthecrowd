class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.string :photo
      t.string :text

      t.timestamps
    end
  end
end
