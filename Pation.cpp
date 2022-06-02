#include<iostream>
using namespace std;

class Doctor{
private:
	string Dname,dadd,Dcn;
	
public:
	void dgetdata(){
		cout<<"\nEnter the Doctor Name: ";
		cin>>Dname;
		cout<<"Enter the Doctor Address: ";
		cin>>dadd;
		cout<<"Enter Doctor Contact No. : ";
		cin>>Dcn;
		}
	void ddisplay(){
		cout<<"---------------------------------\n";
		cout<<"Name: "<<Dname<<endl;
		cout<<"Address: "<<dadd<<endl;
		cout<<"Contact No.: "<<Dcn<<endl;
	}
};


class pation{
private:
	int Age;
	string Pname,bd,Add,cn;
	
public:
	void getdata(){
		cout<<"\nEnter the Parent Name: ";
		cin>>Pname;
		cout<<"Enter the Parent Age: ";
		cin>>Add;
		cout<<"Enter Parent Blood Group : ";
		cin>>bd;
		cout<<"Enter the Parent Address: ";
		cin>>Add;
		cout<<"Enter Parent Contact No. : ";
		cin>>cn;
		}
	void display(){
		cout<<"---------------------------------\n";
		cout<<"Name: "<<Pname<<endl;
		cout<<"Age: "<<Age<<endl;
		cout<<"Address: "<<Add<<endl;
		cout<<"Contact No.: "<<cn<<endl;
	}
	
};

int main(){
	int n,v,f;
	cout<<"1. Add Parent Details"<<endl;
	cout<<"2. Dispaly Parent Details"<<endl;
	cout<<"3. Add Doctor Details"<<endl;
	cout<<"4. Dispaly Doctor Details"<<endl;
	cout<<" Press any key to exit"<<endl;
	cout<<"\nEnter the number: ";
	cin>>n;
	Doctor doc[20];
	pation p[20];

	
	while(n==1||n==2||n==3||n==4){
		if (n==1){
		p[v].getdata();
		v++;
		}
		else if(n==2){
			for(int x=0;x<v;x++){
			p[x].display();
			}
		}
		else if (n==3){
			doc[f].dgetdata();
			f++;
		}
		
		else if(n==4){
			for(int y=0;y<f;y++){
			doc[y].ddisplay();
			}
		}

	cout<<"\n\n1. Add Parent Details"<<endl;
	cout<<"2. Dispaly Parent Details"<<endl;
	cout<<"3. Add Doctor Details"<<endl;
	cout<<"4. Dispaly Doctor Details"<<endl;
	cout<<" Press any key to exit"<<endl;
	cout<<"Enter the number: ";
	cin>>n;
}


	
return 0;	
}
