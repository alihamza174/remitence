class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :rollnumber
      t.integer :results

      t.timestamps
    end
  end
end
