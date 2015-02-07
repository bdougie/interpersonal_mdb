class AddsCreditsForPeopleAndMovies < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.belongs_to :movie, index: true
      t.belongs_to :person, index: true
      t.timestamps
    end
  end
end
