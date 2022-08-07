class CreateStoreInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :store_infos do |t|
      t.string :name
      t.string :address
      t.integer :taxRate
      t.string :contactNumber
      t.string :currencySymbol

      t.timestamps
    end
  end
end
