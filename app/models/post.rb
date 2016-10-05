class Post < ActiveRecord::Base

  has_many :comments



  #validates :body, presence: true
  #before_create :titleize_author


#  scope :published, -> { where(author: true )}
 # scope :ordered, -> { order(created_at: :desc)}
  #scope :created_before, -> { where("created_at < ?" ) }


  #private
 # def titleize_author
  #  self.author = self.author.to_s.titleize
 # end

end
