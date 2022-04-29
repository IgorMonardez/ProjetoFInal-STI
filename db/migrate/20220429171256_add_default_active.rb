class AddDefaultActive < ActiveRecord::Migration[6.1]
  def change
    change_column_default :campus, :active, true
  end
end
