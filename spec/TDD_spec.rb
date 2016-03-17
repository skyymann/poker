require 'TDD'

describe Array do
  describe "#uniq" do
    let(:array1) {[1,2,3,1,3,3]}
    it "does not return duplicates" do
      expect(array1.my_uniq).to eq([1,2,3])
    end

    let(:array2) {[3, 3, 4, 1, 1, 2, 3]}
    it "returns elements in order of original array" do
      expect(array2.my_uniq).to eq([3, 4, 1, 2])
    end

    let(:array3) {["yes", "yes", "no", "no", "yes", 1, 1, "no", [1], [1] ]}
    it "works with mixed data sets" do
      expect(array3.my_uniq).to eq(["yes", "no", 1, [1]])
    end

  end
  describe "#two_sum" do
    let(:array1) {[-1,0,2,-2,1]}
    it "finds all zero-sum pairs" do
      expect(array1.two_sum).to eq([[0,4],[2,3]])
    end

    let(:array2) {[-1,-1,1]}
    it "put smaller first elements first" do
      expect(array2.two_sum).to eq([[0,2],[1,2]])
    end

    let (:array3) {[1, 2, 3]}
    it "returns empty array if there are no sums" do
      expect(array3.two_sum).to_not eq([1,1])
    end
    #
    # it "returns nil if array is empty"
    # it "won't return a mirror image"

    let (:array4) {["a", "b", "-a"]}
    it "won't return nonsense strings" do
      expect(array4.two_sum).to_not eq([0, 2])
    end
  end

  describe "#my_transpose" do
    let(:matrix1) {[ [0, 1, 2], [3, 4, 5], [6, 7, 8] ]}
    it "transposes rows into columns" do
      expect(matrix1.my_transpose).to eq([ [0, 3, 6], [1, 4, 7], [2, 5, 8] ])
    end

    let(:matrix2) {[ [1, 2], [nil, 3] ]}
      it "works with nil elements" do
      expect(matrix2.my_transpose).to eq([ [1, nil], [2, 3] ])
    end
  end

  describe "#stock_picker" do
    let(:array) {[2, 3, 9, 7]}
    it "returns an array of days to make biggest profit" do
      expect(array.stock_picker).to eq([0, 2])
    end

    let(:array1) {[2, 6, 3, 9, 1, 6, 8]}
    it "returns shortest time interval in tie breaker" do
      expect(array1.stock_picker).to eq([4, 6])
    end

    let(:array2) {[9, 8, 2]}
    it "returns [0,0] if no profit possible" do
      expect(array2.stock_picker).to eq([0,0])
    end

    let(:array3) {[1]}
    it "returns [-1] when less than two days are given" do
      expect(array3.stock_picker).to eq([-1])
    end

  end


end
