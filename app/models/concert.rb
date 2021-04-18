class Concert < ApplicationRecord
  belongs_to :group

  def name_group
    self.group.name
  end

  

end
