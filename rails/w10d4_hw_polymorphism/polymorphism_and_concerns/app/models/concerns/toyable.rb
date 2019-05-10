module Toyable
  extend ActiveSupport::Concern

  included do
    has_many :toys, as: :toyable
  end

  def receive_toy(name)
    new_toy = Toy.find_or_create_by(name: name)
    self.toy_ids += [new_toy.id]
    # self.toys.find_or_create_by(name: name)
    # db constraint prevents line 11 from working
  end

end