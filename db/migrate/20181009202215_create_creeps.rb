class CreateCreeps < ActiveRecord::Migration[5.2]
  def change
    # drop_table :creeps
    create_table :creeps do |t|
      t.string :creep_name
      t.string :creep_type
      t.references :attack, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
