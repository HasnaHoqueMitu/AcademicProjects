#include<bits/stdc++.h>

using namespace std ;

// structure type to store file data in a structure array .
struct DATA{

    string year , causeName , diseaseName , state , deaths , deathRate  ;

};

DATA data[200200] ;

double convertStringToNumber(string num){

    return strtod((num).c_str(),0) ;
}

int main(){

    ifstream myData;
    myData.open("NCHS_-_Leading_Causes_of_Death__United_States.csv"); // Reading the csv file from file

    int id = 0 ;
    string yy , cn , dn , st , dth , dthRate  ;
    while(myData.good()){

        getline(myData, yy , ','), data[id].year = yy ;
        getline(myData, cn , ','), data[id].causeName = cn ;
        getline(myData, dn   , ','),data[id].diseaseName = dn  ;
        getline(myData, st , ','),data[id].state = st ;
        getline(myData, dth , ','),data[id].deaths = dth ;
        getline(myData, dthRate , '\n'),data[id].deathRate = dthRate ;

        id+=1 ;

    }

    myData.close() ;

    int flag= 0 ;
    string deathCause,stateName ;
    cout<<"Enter the cause of death and state name :" <<endl;
    cin>>deathCause>>stateName ;
   // cout<<deathCause <<" --  " <<stateName <<endl ;
    for(int i=1 ; i<=id ; i++){
        if( deathCause == data[i].diseaseName ){
            flag =1 ;
            //cout<<" i -> " <<i <<endl ;
            cout<<"Year " <<data[i].year <<"  ::: " <<"Death Rate " <<data[i].deathRate <<endl ;
        }
    }

    if(flag == 0){
        cout<<"No data has been found!" <<endl ;
    }

    return 0 ;
}
