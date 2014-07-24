class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many :comments, :as => :commentable

  def as_json(options={})
    @attributes.merge({
      :user => user.attuid,
      :comments => comments
    })
  end
end
