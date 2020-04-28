require 'tic_tac_toe'

describe Board do
subject(:board) { described_class.new}

  describe ' #display_board' do
    it 'Display board method prints board to screen' do
      expect(board.display_board).to eq board.board
    end
  end

  describe ' #add_turn' do
    it 'should increment the array' do
      expect { board.add_turn(3) }.to change(board,:board).from([" ", " ", " ", " ", " ", " ", " ", " ", " "]).to([" ", " ", " ", " X", " ", " ", " ", " ", " "])
    end
  end
end
