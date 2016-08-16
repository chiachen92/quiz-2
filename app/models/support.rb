class Support < ApplicationRecord



def self.search(keyword)
  where(["name ILIKE ? or message ILIKE ? or email ILIKE ? or department ILIKE ?", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%"])
end




end
