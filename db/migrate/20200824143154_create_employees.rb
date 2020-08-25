class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.integer :phoneNumber
      t.date :dob
      t.string :emp_image

      t.timestamps
    end
  end
end
