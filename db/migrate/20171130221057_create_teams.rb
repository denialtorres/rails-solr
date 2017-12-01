class CreateTeams < ActiveRecord::Migration
  def change
     create_table :teams do |t|
       t.string :club_name
       t.string :short_name
       t.string :color
       t.string :city
       t.string :stadium
     end
   end
end
