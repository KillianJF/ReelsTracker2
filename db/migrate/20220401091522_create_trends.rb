class CreateTrends < ActiveRecord::Migration[6.1]
  def change
    create_table :trends do |t|
      t.string :label
      t.text :description
      t.string :domain
      t.text :example
      t.date :started_date
      t.date :posting_date
      t.integer :virality
      t.text :ideas

      t.timestamps
    end
  end
end
