# == Schema Information
#
# Table name: groups
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  user_id    :bigint(8)
#  cohort_id  :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Group, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
