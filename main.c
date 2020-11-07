#include<stdio.h>
#include "myMath.h"
int main(){
double x= -1;
printf("please insert a real number:");
scanf("%lf", &x);
printf("the value of f(x) = e^x + x^3 -2 at the point %lf is:%lf\n",x ,sub(add(Exponent(x),Power(x,3)),2)); 



return 0; 
}
