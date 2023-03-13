# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  def characters
    c_id = self.id

    matching_actors = Character.where({ :actor_id => c_id })

    the_roles = matching_roles

    return the roles
  end
end
