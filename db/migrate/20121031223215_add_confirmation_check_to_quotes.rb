class AddConfirmationCheckToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :verification, :integer
  end
end
