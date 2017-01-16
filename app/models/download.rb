class Download < ActiveRecord::Base
  after_create :fetch_body


  private
  def fetch_body
     PostFetchJob.perform_later(self)
  end
end
