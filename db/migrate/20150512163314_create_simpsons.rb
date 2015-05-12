class CreateSimpsons < ActiveRecord::Migration
  def change
    create_table :simpsons do |t|

    	t.string :fname
    	t.string :lname
    	t.string :occupation

      t.timestamps null: false
    end
  end
end
