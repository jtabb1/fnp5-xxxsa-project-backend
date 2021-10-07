class CreateStarterTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :starter_types do |t|
      t.string :type_name

      t.timestamps
    end
  end
end