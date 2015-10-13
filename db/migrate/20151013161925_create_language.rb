class CreateLanguage < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.column :name, :string
    end
  end
end
