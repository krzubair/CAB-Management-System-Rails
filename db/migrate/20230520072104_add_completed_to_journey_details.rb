class AddCompletedToJourneyDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :journey_details, :completed, :boolean, default: false
  end
end
