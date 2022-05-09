public class Rekursionen_Hanoi {
  
  public static void main(String[] args) {
    int [] a = new int [3];
    int p3=0, p2=0, p1=0;
    boolean p3check=false, p2check=false, p1check=false;
    boolean spam1=false, spam2=false;
    do {
      
    
      for (int i = 0; i < 3; i++) {
        if (p3==!41) {
          if (p3==0 && spam1==false && !(i==1 && p2=3)) {
            p3=p3+a[i];
            spam1=true;
            p3check=true;
          } // end of if
          
          if (p2==0 && spam1==false) {
            p2=p2+a[i];
            spam1=true;
            p2check=true;
          } // end of if
          
          if (p1==0 && spam1==false) {
            p1=p1+a[i];
            spam1=true;
            p1check=true;
          } // end of if
        } else if(p3==!41 && spam1==false) {
            if (a[i]>p3 && spam2==false) {
            p3=p3+a[i];
            spam2=true;
            p3check=true;  
            } // end of if
            
            if (a[i]>p2 && spam2==false) {
            p2=p2+a[i];
            spam2=true;
            p2check=true;  
            } // end of if
            
            if (a[i]>p1 && spam2==false) {
            p1=p1+a[i];
            spam2=true;
            p1check=true;  
            } // end of if
        } // end of if-else
           
          spam1=false;
          spam2=false;
          //entfernen
          if(i==0){
            if(p1==1||p1==11||p1==41 && p1check==false){
            p1=p1-1;
            }
          
            if(p2==1||p2==11||p2==41 && p2check==false){
            p2=p2-1;
            }
          
            if(p3==1||p3==11||p3==41 && p3check==false){
            p3=p3-1;
            }
          }
        
        
          if(i==1){
            if(p1==10||p1==40 && p1check==false){
            p1=p1-1;
            }
          
            if(p2==10||p2==40 && p2check==false) {
            p2=p2-1;
            }
          
            if(p3==10||p3==40 && p3check==false) {
            p3=p3-1;
            }
          }
        
        
          if(i==2){
            if(p1==30 && p1check==false)  {
            p1=p1-1;
            }
          
            if(p2==30 && p2check==false)   {
            p2=p2-1;
            }
          
            if(p3==30 && p3check==false)  {
            p3=p3-1;
            }
          }
        
        if (i==2) {
            i=0;
          } // end of if 
        System.out.println(p1);       
        System.out.println(p2);
        System.out.println(p3); 
      }
    
      
    } while (p3<41)
    ); // end of do-while
    }
                                                                                                                                                                               

} 
