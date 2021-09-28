class CreateTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.belongs_to :employee, null: false, foreign_key: true
      t.belongs_to :task, null: false, foreign_key: true
      t.integer :trainer
      # t.integer :completion_date
      t.integer :initial_production_rate
      t.integer :initial_error_rate
      t.string :error_rate_in_english

      t.timestamps
    end
  end
end