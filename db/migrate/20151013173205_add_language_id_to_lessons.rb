class AddLanguageIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :language_id, :integer
  end
end
