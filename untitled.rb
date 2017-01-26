def size
  grid.size
end

alias_method :rows, :size

def solved?
  rows.all? { |row| solved_set?(row) } &&
    columns.all? { |col| solved_set?(col) } &&
    squares.all? { |square| solved_set?(square) }
end
