require 'rails_helper'

RSpec.describe Todo, type: :model do
  # ensure Todo model has a 1:m relationship with Item model
  it { should have_many(:items).dependent(:destroy) }
  # Validation test
  # ensure columns title and created_by ore present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
