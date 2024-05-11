require_relative '../my_service_api.rb'
# require_relative '../spec/responses/items.json'

require 'spec_helper.rb'
require 'pry'

RSpec.describe MyServiceApi do
  describe '#get_stack_overflow_posts' do
    let(:subject) { described_class.get_stack_overflow_posts }

    context 'when there are no exceptions' do
      it 'includes the right overflow posts' do
        stub_request(:get, "https://api.stackexchange.com/2.2/questions?site=stackoverflow").
          with(
            headers: {
            'Accept'=>'*/*',
            'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
            'User-Agent'=>'Ruby'
            }).
          to_return(
            status: 200,
            body: File.read('spec/responses/items.json'),
            headers: {'Content-Type' => 'application/json'}
          )
        expect(subject.parsed_response).to eq(JSON.parse(File.read('spec/responses/items.json')))
        expect(subject['items'].size).to eq 30
        expect(subject.code).to eq 200
      end

      it 'includes the right post details' do
        first_post = subject['items'].first
        ['tags', 'owner', 'is_answered'].each do |key_name|
          first_post.keys.include?(key_name)
        end
      end
    end

    context 'when there are exceptions' do
      it 'raises an exception' do
        binding.pry
        expect(subject).to eq ('test')
      end
    end
  end
end
