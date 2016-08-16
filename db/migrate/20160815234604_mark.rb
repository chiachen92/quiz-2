class Mark < ActiveRecord::Migration[5.0]
  def change
    add_column :supports, :mark, :string, :default => "undone"
  end
end
