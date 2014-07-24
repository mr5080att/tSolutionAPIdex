class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :comments, :as => :commentable

  def as_json(options={})
    @attributes.merge({
      :user => user.attuid,
      :comments => comments,
      :answers => answers
    })
  end
end
