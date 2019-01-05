class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.references :user, foreign_key: true
      t.string :company_name
      t.boolean :agency, default: false
      t.string :position
      t.string :location
      t.string :currency, default: "GBP"
      t.integer :salary_low
      t.integer :salary_high
      t.date :date_applied
      t.string :status, default: "Applied"
      t.string :url
      t.text :notes

      t.timestamps
    end
  end
end
