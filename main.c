#include<stdio.h>
#include "myMath.h"
int main(){
double input= 0;
double res= 0 ;
printf("please insert a real number:");
scanf("%lf", &input);
res =  Exponent((int)input);		// do exponent for the input
res = add(res,Power(input,3));		//add input with power of 3
res = sub(res,2);			//div all with 2

printf("the value of f(x) = e^x + x^3 -2 at the point %0.4f is:%0.4f\n",input ,res); 

res = Power(input,2);                     //power the input at 3
res = mul(res , 2);			//multiplication the res at 2 
res = add(mul(input,3),res);		//add the res with multiplication of 3 at the input 

printf("the value of f(x) = 3x + 2X^2 at the point %0.4f is:%0.4f\n",input ,res);

res = Power(input,3);			//power the input at 3 
res = mul(res,4);			// multiplication of res at 4
res = div(res,5);			// div the res at 5
res = sub(res,mul(input,2));		//multiplication the inpu at 2 and sub the res at her
		
printf("the value of f(x) =  (4x^3)/5 -2x at the point %0.4f is:%0.4f\n",input ,res);
return 0; 
}
