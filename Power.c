#define exp 2.71828182846

double Exponent(int x)
{
	double sum= 1;
	while(x>0)
	{
		sum *= exp;
		--x;
	}
	return sum;
}

double Power(double x,int y)
{
	double sum =1;

	while(y >0)
	{
		sum*=x; 
		--y;
	}
	return sum;
}
