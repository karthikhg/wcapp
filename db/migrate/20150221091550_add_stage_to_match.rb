class AddStageToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :stage, :string
    Match.all.each do |match|
      match.stage = "group"
      match.save
    end
  end
end
