RSpec.shared_examples 'has human date' do |field, object_class|
  describe 'object specific human date method' do
    subject { "#{object_class.capitalize}Decorator".constantize.new(object) }
    let(:object) { create(object_class) }

    it 'returns formatted date' do
      expect(subject.send("human_#{field}")).to eq object.send(field).strftime("%d - %m - %Y")
    end
  end
end
