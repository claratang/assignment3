class CreateHomeStates < ActiveRecord::Migration[5.0]
  def change
    create_table :home_states do |t|
      t.string :name
      t.string :state

      t.timestamps
    end
  end
end
