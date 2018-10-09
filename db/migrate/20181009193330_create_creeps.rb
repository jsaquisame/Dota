class CreateCreeps < ActiveRecord::Migration[5.2]
  def change
    create_table :creeps do |t|
      t.string :name
      t.string :type
      t.references :attack, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
