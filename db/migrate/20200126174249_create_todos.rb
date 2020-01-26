class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :title, :null => false
      t.timestamp :create_timestamp, default: -> { 'NOW()' }
    end
  end
end
