class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

	t.string:title  #This is Title Field
	t.text:content

        t.timestamps # null: false // Put this for the extra two field for keping logs records.
    end
  end
end 
