class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.string :title
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
