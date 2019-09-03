class AddBoardIdToTodos < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :board_id, :integer, foreign_key: true
  end
end
