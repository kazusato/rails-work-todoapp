class AddColumnToTodo < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :group_id, :integer, null: false
  end
end
