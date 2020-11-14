#define exp 2.71828182846

double Exponent(int x)		
{
	if(x==0){
		return 1;
	}
	double sum= 1;			//initil with 1 because of the mul at the exp
	if(x>0){
	while(x>0)
	{
		sum *= exp;		//always do sum multiplicated at the exp
		--x;
	}
	}
	if(x<0){
	while(x<0){
	
		sum *= (1/exp);
		++x;
	}

	}	
	return sum;
}

double Power(double x,int y)
{
	if(y==0){
		return 1;
	}
	double sum =1;                  //initial a random number   
	if(y>0){

	while(y >0)
	{
		sum*=x; 		//initil with 1 because of the mul at the x
		--y;
	}
	}
	if(y<0){

	while(y<0){

		sum*=(1/x);
		y++;

	}
	}
	return sum;
}
