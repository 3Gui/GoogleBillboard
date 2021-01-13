public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
void setup(){
  boolean primeFound = false;
  double firstPrime = 0;
  double ePart = 0;
  int counter = 0;
  boolean fifth49Found = false;
  
  for(int i = 0; (primeFound == false) && i<e.length()-10 ; i++){
    if(i==0){
    ePart = Math.pow(10,9)*(Double.parseDouble(e.substring(i,i+11)));
  }else if(i==1){
    ePart = Math.pow(10,10)*(Double.parseDouble(e.substring(i,i+11)));
  }else {
    ePart = (Double.parseDouble(e.substring(i,i+10)));
  }
    primeFound = isPrime(ePart);
    //System.out.println(primeFound);
    if(primeFound){
      firstPrime = ePart;
      System.out.println("The first 10 digit prime in e is "+firstPrime);
      
    }
  } 
  
  
  
  for(int i = 0; (fifth49Found == false) && i<e.length()-10 ; i++){
    if(i==0){
    ePart = Math.pow(10,9)*(Double.parseDouble(e.substring(i,i+11)));
  }else if(i==1){
    ePart = 0;
  }else {
    ePart = (Double.parseDouble(e.substring(i,i+10)));
  }
    if(is49(ePart)){
      counter++;
      if(counter == 5){
        fifth49Found = true;
        
      }
    }
    //System.out.println(primeFound);
    if(fifth49Found){
      System.out.println("The Fifth 10 digit number in e to add up to 49 is "+ePart);
    }
  } 
  
  
}


boolean is49(double n){
 int ans = 0;
 String temp = (long)n +"";
 for(int i = 0; i<temp.length(); i++){
   ans += Integer.parseInt(temp.substring(i,i+1));
 }
  
  if (ans == 49){return true;}
  return false;
}



boolean isPrime(double n){
  if(n<2){return false;}
  if(n==2){return true;}
  for(double i = 2; i<=Math.sqrt(n); i++){
    if(n%i == 0){
      return false;
    }
  }
  return true;
}
