class CreateApplicants < ActiveRecord::Migration[6.0]
  def change
    create_table :applicants do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :gender
      t.string :status
      t.string :date_of_birth

      t.timestamps
    end
  end
end
