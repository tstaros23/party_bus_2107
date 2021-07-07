require 'pry'
require './lib/bus'

RSpec.configure do |config|
  config.default_formatter = 'doc'
end

RSpec.describe 'Party Bus Spec Harness' do
  before :each do
    @bus = Bus.new('Party Bus', 5)
  end

  describe 'Iteration 1' do
    it '1. Bus Instantiation' do
      expect(Bus).to respond_to(:new).with(2).argument
      expect(@bus).to be_an_instance_of(Bus)
    end

    it '2. Bus Attributes' do
      expect(@bus).to respond_to(:name).with(0).argument
      expect(@bus.name).to eq('Party Bus')

      expect(@bus).to respond_to(:capacity).with(0).argument
      expect(@bus.capacity).to eq(5)

      expect(@bus).to respond_to(:passengers).with(0).argument
      expect(@bus.passengers).to eq([])
    end
  end

  describe 'Iteration 2' do
    it '1. Bus adds passengers' do
      @bus.add_passenger('Sal')
      @bus.add_passenger('Alex')
      @bus.add_passenger('Dave')

      expect(@bus.passengers).to eq(['Sal', 'Alex', 'Dave'])
    end

    it '2. Bus Yells at passengers' do
      @bus.add_passenger('Mike')
      @bus.add_passenger('Megan')
      @bus.add_passenger('Tim')

      expect(@bus).to respond_to(:yell_at_passengers).with(0).argument
      expect(@bus.yell_at_passengers).to eq(['MIKE', 'MEGAN', 'TIM'])
    end
  end

  describe 'Iteration 3' do
    before :each do
      @bus.add_passenger('Mike')
      @bus.add_passenger('Megan')
      @bus.add_passenger('Tim')
    end

    it '1. Bus counts passengers' do
      expect(@bus).to respond_to(:number_of_passengers).with(0).argument
      expect(@bus.number_of_passengers).to eq(3)

      @bus.add_passenger('Alice')
      expect(@bus.number_of_passengers).to eq(4)
    end

    it '2. Bus over capacity' do
      expect(@bus).to respond_to(:over_capacity?).with(0).argument

      @bus.add_passenger("four")
      expect(@bus.over_capacity?).to eq(false)

      @bus.add_passenger("five")
      expect(@bus.over_capacity?).to eq(false)

      @bus.add_passenger("six")
      expect(@bus.over_capacity?).to eq(true)
    end
  end

  describe 'Iteration 4' do
    it '1. Bus Kicks Out' do
      @bus.add_passenger('Sal')
      @bus.add_passenger('Alex')
      @bus.add_passenger('Dave')

      @bus.kick_out

      expect(@bus.passengers).to eq(["Alex", "Dave"])
      expect(@bus.number_of_passengers).to eq(2)

      @bus.kick_out
      expect(@bus.passengers).to eq(["Dave"])
      expect(@bus.number_of_passengers).to eq(1)
    end
  end
end
