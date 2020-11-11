#define exp 2.71828182846

double Exponent(int x)		
{
	double sum= 1;			//initil with 1 because of the mul at the exp
	while(x>0)
	{
		sum *= exp;		//always do sum multiplicated at the exp
		--x;
	}
	return sum;
}

double Power(double x,int y)
{
	double sum =1;			//initial a random number

	while(y >0)
	{
		sum*=x; 		//initil with 1 because of the mul at the x
		--y;
	}
	return sum;
}
