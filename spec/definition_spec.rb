require('rspec')
require('definition.rb')

describe(Definition) do

  describe('#description') do
    it('returns the definition of a word') do
      test_definition = Definition.new(:description => 'in a way that lasts or remains unchanged indefinitely; for all time.')
      expect(test_definition.description()).to(eq('in a way that lasts or remains unchanged indefinitely; for all time.'))
    end
  end
end
