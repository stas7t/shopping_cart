require 'spec_helper'

module ShoppingCart
  RSpec.describe Coupon, type: :model do
    # pending "add some examples to (or delete) #{__FILE__}"  
    it { expect(subject).to validate_presence_of :code }
    it { expect(subject).to validate_presence_of :discount }
    it { expect(subject).to validate_uniqueness_of :code }
    it { expect(subject).to validate_numericality_of :discount }
  end
end
