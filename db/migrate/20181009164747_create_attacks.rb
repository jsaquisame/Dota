class CreateAttacks < ActiveRecord::Migration[5.2]
  def change
    create_table :attacks do |t|
      t.string :attack_type

      t.timestamps
    end
  end
end
