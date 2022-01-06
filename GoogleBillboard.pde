public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";
int x = 2;
int y = 12;
public void setup()  
{            
  String digits = e.substring(x, y);
  double dNum = Double.parseDouble(digits);
  for (int i = 0; i < e.length(); i++){
    digits = e.substring(x + i, y + i);
    dNum = Double.parseDouble(digits);
    if (isPrime(dNum) == true){
      System.out.println(dNum);
    break;
    }
  }
}  
public void draw()  
{   
}  
public boolean isPrime(double dNum)  
{   
    boolean bool = true;
  if (dNum < 2){
    bool = false;
  }
  for (int i = 2; i <= Math.sqrt(dNum); i++){
    if (dNum % i == 0){
      bool = false;
      break;
    }
  }
  return bool; 
} 
