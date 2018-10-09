class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :description
      t.decimal :popularity
      t.references :base, foreign_key: true
      t.references :attack, foreign_key: true
      t.references :stat, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
