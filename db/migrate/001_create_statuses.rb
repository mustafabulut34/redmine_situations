class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|

      t.string :issue, :default => '-'

      t.integer :issue_id, :default => 0

      t.string :statu, :default => '-'

      t.string :time, :default => '-'

      t.string :category, :default => '-'

      t.string :user, :default => '-'


    end

  end
end
