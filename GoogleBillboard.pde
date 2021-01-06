public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
  boolean primeFound = false;
  double firstPrime = 0;
  double ePart = 0;
  for(int i = 0; (primeFound == false) && i<1008 ; i++){
    if(i==0){
    ePart = Math.pow(10,9)*(Double.parseDouble(e.substring(i,i+11)));
  }else if(i==1){
    ePart = Math.pow(10,10)*(Double.parseDouble(e.substring(i,i+11)));
  }else {
    ePart = (Double.parseDouble(e.substring(i,i+10)));
  }
    primeFound = isPrime(ePart);
    System.out.println(primeFound);
    if(primeFound){
      firstPrime = ePart;
      
      System.out.println(firstPrime);
    }
  }  
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    if(dNum<2){return false;}
  if(dNum==2){return true;}
  for(double i = 2; i<=Math.sqrt(dNum); i++){
    if(dNum%i == 0){
      return false;
    }
  }
  return true;  
} 
