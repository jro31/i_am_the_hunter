class AddSalaryTypeToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :salary_type, :string, default: "month"
  end
end
