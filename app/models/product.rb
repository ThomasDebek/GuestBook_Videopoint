class Product < ActiveRecord::Base
  private
  def titleize_name
    self.name = self.name.to_s.titleize
  end
end
