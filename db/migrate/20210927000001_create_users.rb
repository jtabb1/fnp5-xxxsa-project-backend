class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :usr_name

      t.timestamps
    end
  end
end