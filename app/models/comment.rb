class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, :polymorphic => true

  def as_json(options={})
    @attributes.merge({
      :user => user.attuid
    })
  end

end
