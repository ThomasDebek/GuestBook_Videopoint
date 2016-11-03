class Post < ActiveRecord::Base
  before_create :titleize_author

  has_many :comments
  has_and_belongs_to_many :tags



  #validates :body, presence: true



#  scope :published, -> { where(author: true )}
 # scope :ordered, -> { order(created_at: :desc)}
  #scope :created_before, -> { where("created_at < ?" ) }


  private
  def titleize_author
   self.author = self.author.to_s.titleize
  end

end
