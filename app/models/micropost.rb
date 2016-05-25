class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  

  private

    # Validates the size of an uploaded picture.
    

end