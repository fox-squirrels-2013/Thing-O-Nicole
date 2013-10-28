class CreateScreens < ActiveRecord::Migrate
  def change
    create_table(:screens) do |t|
      t.string :name
      t.timestamps
    end
  end
end
