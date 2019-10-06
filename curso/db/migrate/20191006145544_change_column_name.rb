class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :profesors, :email, :correo
  end
end
