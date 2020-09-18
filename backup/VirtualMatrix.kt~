fun computeUnidimensionalPosition(row: Int, column: Int, rows: Int, columns: Int): Int {
  val rowsTravel = if(row < rows) row * columns else 0
  val index = if(column < columns) rowsTravel + column else 0

  return index
}

fun createMatrix(rows: Int, columns: Int): Array<Int> {
  val size: Int = rows * columns;
  val matrix = Array<Int>(size) { 0 };
  return matrix;
}

fun writeInMatrix(matrix: Array<Int>, rows: Int, columns: Int, row: Int, column: Int, value: Int) {
  val position: Int = computeUnidimensionalPosition(row, column, rows, columns);
  println("(write) [position]: $position")
  if(position < matrix.size - 1)
    matrix[position] = value;
}

fun getMatrixValue(matrix: Array<Int>, rows: Int, columns: Int, row: Int, column: Int): Int {
  val position: Int = computeUnidimensionalPosition(row, column, rows, columns);
  println("(get) [position]: $position")
  return matrix[position];
}

// Set following values to change the size of the "matrix"
const val ROWS: Int = 4;
const val COLUMNS: Int = 4;

fun main() {
  val matrix: Array<Int> = createMatrix(ROWS, COLUMNS);

  writeInMatrix(matrix, ROWS, COLUMNS, 3, 3, 5);

  val value: Int = getMatrixValue(matrix, ROWS, COLUMNS, 3, 3);

  println(value);
}

