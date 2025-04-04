#include <iostream>
using namespace std;

int main(){
    int num = 10;
    
    if (num <= 20){
        cout<<"num 10 is less then num 20";
    }
   
}


#include <iostream>
using namespace std;

int main(){
    int num = 10;
    
    if (num >= 20){
        cout<<"num 10 is less then num 20";
    }else{
        cout<<"num 20 is less then num 10";
    }
   
}


#include <iostream>
using namespace std;

int main(){
  int age;
  float weight;
  
  cout<<"Enter your age: ";
  cin>>age;
  
  if(age >= 18){
      cout<<"Enter your weight: ";
        cin>>weight;
      if (weight >= 50){
          cout<<"You can donate";
      }else{
          cout<<"You can not donate";
      }
  }else{
      cout<<"you can not donate";
  }
   
}


#include <iostream>
using namespace std;

int main(){
  int score;
  
  cout<<"Enter your score: ";
  cin>>score;
  
  if (score >= 0 && score <= 100){
      if(score >= 80){
      cout<<"First class";
  }else if(score >= 60){
      cout<<"Second class";
  }else if(score >= 40){
      cout<<"Third class";
  }
  }else{
      cout<<"Invalid score";
  }
  
  
}


#include <iostream>
using namespace std;

int main(){
    
    int day = 10;
    
    switch(day){
        case 1:
            cout<<"mon";
            break;
        case 2:
            cout<<"tue";
            break;
        case 3:
            cout<<"wed";
            break;
        case 4:
            cout<<"thu";
            break;
        case 5:
            cout<<"fri";
            break;
        case 6:
            cout<<"sat";
            break;
        case 7:
            cout<<"sun";
            break;
        default:
            cout<<"Invalid day";
    }
  
}
