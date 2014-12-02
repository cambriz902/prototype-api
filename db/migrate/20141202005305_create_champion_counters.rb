class CreateChampionCounters < ActiveRecord::Migration
  def change
    create_table :champion_counters do |t|
      t.string :name
      t.string :strongOne
      t.string :strongTwo
      t.string :strongThree
      t.string :strongFour
      t.string :strongFive
      t.string :weakOne
      t.string :weakTwo
      t.string :weakThree
      t.string :weakFour
      t.string :weakFive

      t.timestamps
    end
  end
end
