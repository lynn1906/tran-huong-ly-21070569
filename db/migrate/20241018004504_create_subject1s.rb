class CreateSubject1s < ActiveRecord::Migration[7.0]
  def change
    create_table :subject1s do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
