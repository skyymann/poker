require 'towers_of_hanoi'
describe TowersOfHanoi do
  let(:toh) {TowersOfHanoi.new}
  let(:toh_solved) {TowersOfHanoi.new([[],[],[3,2,1]])}
  let(:toh1) {TowersOfHanoi.new([[3],[2],[1]])}
  describe "#initialize" do

    it "initializes with two empty arrays and one ordered array" do

      expect(toh.towers).to eq([[3,2,1],[],[]])
    end

  end

  describe "#play" do

  end

  describe "#won?" do

    it "returns true when two empty spindles" do
      expect(toh_solved.won?).to be(true)
    end



    it "return false when there are discs on two or more spindles" do

      expect(toh.won?).to be(false)
    end

    it "returns false when there are discs on the first tower" do

      expect(toh.won?).to be(false)
    end
  end

  describe "#valid_move?(from_tower, to_tower)" do

    it "returns false for values greater than two" do
      expect(toh.valid_move?(3,4)).to be(false)
    end

    it "returns false if from_tower is empty" do
      expect(toh.valid_move?(1,2)).to be(false)
    end

    it "return false if a larger disc is put on top of a small disc" do
      expect(toh1.valid_move?(0,1)).to be(false)
    end

  end
  describe "#move(from_tower, to_tower)" do

    it "moves a disc" do
      expect(toh1.move(2,1)).to eq([2,1])
    end

  end


end
