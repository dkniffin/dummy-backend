class DatabaseCleanerController < ApplicationController
  def clean_database
    DatabaseCleaner.clean_with :truncation
    render json: { "meta" => { "success" => true, "message" => "You just wiped the database!" } }
  end
end
