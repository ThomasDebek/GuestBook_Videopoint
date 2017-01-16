class PostFetchJob < ActiveJob::Base
  queue_as :default

  def perform(download)
    sleep 2
    fetched_body = Net::HTTP.get(URI.parse(download.url))
    download.update_attribute(:body, fetched_body.force_encoding('UTF-8'))
    sleep 2
  end
end
