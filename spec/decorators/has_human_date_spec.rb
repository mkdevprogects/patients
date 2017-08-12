require 'spec_helper'

describe 'HasHumanDate' do
  describe '#human_date_on' do
    subject { klass.new }
    let(:klass) do
      Class.new do
        include HasHumanDate

        def created_at
          @created_at ||= Time.now
        end
      end
    end

    it 'human_first_occurence_date should return date on format "day - month - year"' do
      expect(subject.human_date_on(:created_at)).to eq subject.created_at.strftime("%d - %m - %Y")
    end
  end
end
