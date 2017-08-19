class Question < ActiveRecord::Base
  belongs_to :group
  belongs_to :user
  has_many :answers

  #validation
  validates_presence_of :user_id, :text, :group_id

  def user_answer(user_id)
    Answer.find_by(user_id: user_id, question_id: id)
  end
end
