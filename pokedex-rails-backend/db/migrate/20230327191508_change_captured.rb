class ChangeCaptured < ActiveRecord::Migration[7.0]
  def change
    change_column :pokemons, :captured, :boolean, default: false
  end
end
