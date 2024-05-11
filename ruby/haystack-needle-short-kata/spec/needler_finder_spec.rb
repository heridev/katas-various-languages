require_relative '../needler_finder.rb'
require 'spec_helper'

RSpec.describe NeedlerFinder do
  describe '#find' do
    let(:haystack) { 'holatusad' }
    let(:needler) { 'sad' }
    context 'when the needler exists at the end' do
      it 'returns the position where the needler starts' do
        result = described_class.new(haystack).find_from(needler)
        expect(result).to eq 6
      end
    end

    context 'when the needler exists at the beginning' do
      let(:needler) { 'hola' }
      it 'returns the position where the needler starts' do
        result = described_class.new(haystack).find_from(needler)
        expect(result).to eq 0
      end
    end

    context 'when the needler does not exist' do
      let(:needler) { 'sal' }
      it 'returns nil' do
        result = described_class.new(haystack).find_from(needler)
        expect(result).to be_nil
      end
    end
  end
end
