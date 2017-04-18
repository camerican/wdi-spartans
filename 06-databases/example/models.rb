# corresponds to users table
class User < ActiveRecord::Base
  has_many :posts
  has_one :profile
  has_many :user_addresses
end

# corresponds to posts table
class Post < ActiveRecord::Base
  belongs_to :user
end

class Profile < ActiveRecord::Base
  belongs_to :user
end

class Address < ActiveRecord::Base
  has_many :user_addresses
end

class UserAddress < ActiveRecord::Base

end
