class CreateDocspecs < ActiveRecord::Migration[5.2]
  def change
    create_table :docspecs do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :spec, index: true

      t.timestamps
    end
  end
end
