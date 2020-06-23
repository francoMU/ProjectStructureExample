#include <iostream>

extern "C" {
   void add_interface(double [], double [], double [], const int * ); 
}



int main(int argc, char *argv[])
{
   const int N = 5;

   double a[N] = {1,2,3,4,5};
   double b[N] = {1,2,3,4,5};
   double c[N]; 

   add_interface(a,b,c,&N);

   for(int i = 0; i < N; i++)
   {
      std::cout << c[i] << std::endl;
   };

   return 0;
}
