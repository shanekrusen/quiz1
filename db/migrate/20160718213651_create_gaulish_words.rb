class CreateGaulishWords < ActiveRecord::Migration
  def change
    create_table :gaulish_words do |t|
      t.string :word
      t.string :origin
      t.text :translation

      t.timestamps
    end
  end
end
