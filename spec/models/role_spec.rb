require 'spec_helper'

describe Role do

  it { should have_db_column(:name).of_type(:string) }

  it { should have_and_belong_to_many(:users) }

end
