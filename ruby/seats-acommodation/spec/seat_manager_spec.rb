require 'spec_helper'

require_relative '../seat_manager'

RSpec.describe SeatManager do
  describe '#seat_combinations' do
    context 'when 8 elements' do
      it 'calculates the right number of seats' do
        manager = described_class.new([8, 2, 6])
        expect(manager.seat_combinations).to eq 5
      end
    end

    context 'when 4 elements' do
      it 'calculates the right number of seats' do
        manager = described_class.new([4])
        expect(manager.seat_combinations).to eq 4
      end
    end

    context 'when 6 elements' do
      it 'calculates the right number of seats' do
        manager = described_class.new([6, 1, 3, 5])
        expect(manager.seat_combinations).to eq 2
      end
    end
  end
end
