class Phone < ActiveRecord::Base

  before_create :dupa_wolowa
  before_create :piko_w_oko


  private
  def dupa_wolowa
    self.name = self.name.to_s.downcase
  end
  def piko_w_oko
    self.title = self.title.to_s.downcase
  end

end


