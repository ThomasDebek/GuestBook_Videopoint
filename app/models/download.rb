class Download < ActiveRecord::Base
  after_create :fetch_body


  private
  def fetch_body
    sleep 2
    fetch_body = Net::HTTP.get(URI.parse(self.url))
    update_attribute(:body, fetch_body.force_encoding('UTF-8'))
    sleep 2
  end
end
