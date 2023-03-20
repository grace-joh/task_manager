require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'instance models' do
    describe '#laundry?' do
      it 'returns true when the title is laundry' do
        task = Task.create!(title: 'laundry', description: 'clean clothes')

        expect(task.laundry?).to be(true)
      end

      it 'returns true when the description is laundry' do
        task = Task.create!(title: 'Clean my clothes', description: 'laundry')

        expect(task.laundry?).to be(true)
      end

      it 'returns false when neither the description nor title is laundry' do
        task = Task.create!(title: 'dishes', description: 'wash the dishes')

        expect(task.laundry?).to be(false)
      end

      it 'returns true when the title contains the word laundry' do
        task = Task.create!(title: 'laundry/drying', description: 'clean clothes')

        expect(task.laundry?).to be(true)
      end

      it 'returns true when the description contains the word laundry' do
        task = Task.create!(title: 'clean clothes', description: 'do laundry and dry')

        expect(task.laundry?).to be(true)
      end

      it 'is case insensitive when checking if the title contains the word laundry' do
        task = Task.create!(title: 'Laundry/drying', description: 'clean clothes')

        expect(task.laundry?).to be(true)
      end

      it 'is case insensitive when checking if the description contains the word laundry' do
        task = Task.create!(title: 'clean clothes', description: 'do Laundry and dry')

        expect(task.laundry?).to be(true)
      end
    end
  end
end
