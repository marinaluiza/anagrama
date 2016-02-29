class RenameTableAgain < ActiveRecord::Migration
  def change
	rename_table :comparacoes, :comparacaos
  end
end
