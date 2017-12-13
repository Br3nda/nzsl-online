##
# A "sheet" of items (signs) saved by a user
class VocabSheet < ActiveRecord::Base
  has_many :items, dependent: :destroy

  def includes_sign?(sign_id)
    items.any? { |i| i.sign_id == sign_id }
  end
end
