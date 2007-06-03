module matrix;

private import structexception;

class Matrix {
	private:
	double[][] array;
	uint n,m;

	public:
	this(double[][] array)
	in {
	assert(array.length > 0);
	for (uint i = 0; i < array.length; i++) assert(array[i].length > 0);
	}
	body {
	uint m;
	this.array.length = array.length;
	for (uint i = 0; i < array.length; i++) {
		if (i == 0) m = array[i].length;
		this.array[i].length = m;
		for (uint j = 0; j < m; j++) this.array[i][j] = array[i][j];
		}
	this.n = this.array.length;
	this.m = m;
	}

	this(uint n,uint m)
	in {
	assert((n > 0) && (m > 0));
	}
	body {
	this.array.length = n;
	for (uint i = 0; i < n; i++) this.array[i].length = m;
	this.n = n;
	this.m = m;
	}

	~this() {
	for (uint i = 0; i < this.array.length; i++) this.array[i] = null;
	this.array = null;
	n = m = 0;
	}

	void opAddAssign(Matrix B) {
	if ((n != B.n) || (m != B.m)) throw new StructException("Matrices dims mismatch");
	
	}

	void opMulAssign(Matrix B) {
	if ((n != m) || (n != B.n) || (m != B.m)) throw new StructException("Matrices dims mismatch");
	
	}

	Matrix inv() {
	if (n != m) throw new StructException("Quadratic matrix expected");
	Matrix invA = new Matrix(n,n);
	
	return invA;
	}

	Matrix transpose() {
	Matrix A_t = new Matrix(m,n);
	uint j;
	for (uint i = 0; i < n; i++) for (j = 0; j < m; j++) A_t.array[j][i] = this.array[i][j];
	return A_t;
	}

	double tr() {
	if (n != m) throw new StructException("Quadratic matrix expected");
	double x = 0.0;
	for (uint i = 0; i < n; i++) x += this.array[i][i];
	return x;
	}

	double det() {
	if (n != m) throw new StructException("Quadratic matrix expected");
	double x = 0.0, y;
	for (uint off = 0; off < n; off++) { // making Sarrus rule
		y = 1.0;
		
		}
	return x;
	}
	
	}