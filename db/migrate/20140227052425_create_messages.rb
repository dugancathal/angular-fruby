class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :to, index: true
      t.references :from, index: true
      t.string :body

      t.timestamps
    end
  end
end
