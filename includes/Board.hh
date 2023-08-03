#pragma once

enum class Cell { empty = 0, white, black, white_queen, black_queen };

class Board {
  public:
    Board();
    ~Board();
  private:
    Cell cells[32] = {};
};
