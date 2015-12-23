class AddMemoToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :memo, :string
  end
end
