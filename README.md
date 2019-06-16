# A6-arrays
Input to the program: a file name whose first record is two integers that represent the dimensions of the matrix (number of rows number of columns).  The rest of the file is the matrix, provided in row major order.  Each row is in its own record.  Elements of the matrix are all positive integers, less than or equal 9999.  They are separated by one or more spaces. The second argument is the file name to output to.

Processing: Resucture the matrix such that each row is in monotonically increasing order and the rows are ordered such that the first element of each row is monotonically increasing.  You are to re-order each row first and once they are in monotonically increasing order, you are then to re-order the rows.  If two rows have the same initial value, the rows should be ordered by the second element in the row.  If those are both the same, it should be the third element, continuing through the last element.

Output from the program:  The re-ordered matrix in row-major order.  Again, each row is to be in its own record and the numbers are to be separated by one or more spaces.

Sample input, processing and output:
Input:
6 	 5
6 	 3 	 9 	 23 	 80 
7 	 54 	 78 	 87 	 87
83 	 5 	 67	 8 	 23
102 	 1 	 67 	 54 	 34
78 	 3 	 45 	 67 	 28
14	 33	 24 	 34	 9



Reordering each row
3	 6 	9 	23 	80
7 	54 	78 	87 	87
5 	8 	23 	67 	83
1 	34 	54 	67  	102
3 	28 	45 	67 	78
9 	14 	24 	33 	34

Output (rows reordered
1 	34 	54 	67 	102
3 	6 	9 	23 	80
3 	28 	45 	67 	78
5 	8 	23 	67 	83
7 	54 	78 	87 	87
	9 	14 	 24 	33 	34


The FORTRAN program is to be called assign6 and is to take two command line parameters:  the input file and the output file. Look at raw version to see original format.

source: https://docs.google.com/document/d/1hokrZZ6bCSJE6FgqlAK5lz1aDuvvJaqdocRRfyDq7fY/edit
