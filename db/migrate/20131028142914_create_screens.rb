class createScreens < ActiveRecord::Migrate
  def change
    create_table(:screens) do |t|
      t.string :name
    end
  end
end