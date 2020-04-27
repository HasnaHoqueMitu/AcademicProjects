import java.util.Scanner;

//package MedProject;

public class Main {
	public static void main(String[] args) {
		System.out.println("Mitu's work Start!");
		Syrup S1 = new Syrup("Napa", "Square", "27.09.2019", 20, "Fever", true, 1000 );
		Syrup S2 = new Syrup("Parapyrol", "Beximco", "27.09.2020", 70, "Fever", true, 800 );
		Syrup S3 = new Syrup("Para", "Incepta", "27.10.2030", 50, "Fever", true, 80 );
		Syrup S4 = new Syrup("Safi", "Hamdard", "27.11.2019", 175,"Allergy", true, 500);
		Syrup S5 = new Syrup("Adovas", "Square", "15.09.2018", 50, "Caugh", true, 1000 );
		Syrup S6 = new Syrup("Prudex", "Beximco", "15.09.209", 60, "Caugh", true, 700 );
		Syrup S7 = new Syrup("Tuska", "Square", "15.09.2018", 40, "Caugh", true, 1000 );
		Syrup S8 = new Syrup("Adryl", "Square", "15.09.2020", 70, "Allergy", true, 500 );
		
		
		MedicineList medi = new MedicineList();
		medi.addSyrup(S1);
		medi.addSyrup(S2);
		medi.addSyrup(S3);
		medi.addSyrup(S4);
		medi.addSyrup(S5);
		medi.addSyrup(S6);
		medi.addSyrup(S7);
		medi.addSyrup(S8);
		
		
		medi.getSyrup();
		
		System.out.println("******************************************************************** DETAILS OF Syrup ******************************************************************************");
		System.out.println(S1.toString());
		System.out.println(S2.toString());
		System.out.println(S3.toString());
		System.out.println(S4.toString());
		System.out.println(S5.toString());
		System.out.println(S6.toString());
		System.out.println(S7.toString());
		System.out.println(S8.toString());
		System.out.println("******************************************************************** ________________ ******************************************************************************");
		
		
		
		Capsul C1 = new Capsul("Napa", "Square", "27.09.2019", 2, "Fever", true, 50000 );
		Capsul C2 = new Capsul("Paracetamol", "Square", "27.09.2020", 5, "Pain Killer", true, 10000 );
		Capsul C3 = new Capsul("Panion", "Square", "27.09.2030", 5, "Pain Killer", true, 20000 );
		Capsul C4 = new Capsul("Atrizin", "Square", "27.09.2021", 20, "Allergy", true, 8000 );
		Capsul C5 = new Capsul("Fexo", "Square", "27.09.2019", 10, "Cold", true, 15000 );
		Capsul C6 = new Capsul("Bexidal", "Beximco", "27.09.2023", 25, "Allergy", true, 20000 );
		Capsul C7 = new Capsul("Ace Plus", "Square", "27.09.2025", 20, "Fever", true, 50000 );
		Capsul C8 = new Capsul("Seclo", "Square", "27.09.2019", 10, "Gastric", true, 1000 );
		Capsul C9 = new Capsul("Proceptin", "Square", "27.09.2020", 10, "Gastric", true, 1000 );
		Capsul C10 = new Capsul("Atova", "Beximco", "27.09.2019", 20, "Cold", true, 10000 );
		Capsul C11 = new Capsul("Mevin", "Square", "27.09.2021", 10, "Pain Killer", true, 8000 );
		
    	medi.addCapsul(C1);
		medi.addCapsul(C2);
		medi.addCapsul(C3);
		medi.addCapsul(C4);
		medi.addCapsul(C5);
		medi.addCapsul(C6);
		medi.addCapsul(C7);
		medi.addCapsul(C8);
		medi.addCapsul(C9);
		medi.addCapsul(C10);
		medi.addCapsul(C11);
		
		
		medi.getCapsul();

		System.out.println("******************************************************************** DETAILS OF Capsul ******************************************************************************");
		System.out.println(C1.toString());
		System.out.println(C2.toString());
		System.out.println(C3.toString());
		System.out.println(C4.toString());
		System.out.println(C5.toString());
		System.out.println(C6.toString());
		System.out.println(C7.toString());
		System.out.println(C8.toString());
		System.out.println(C9.toString());
		System.out.println(C10.toString());
		System.out.println(C11.toString());
		System.out.println("******************************************************************** ________________ ******************************************************************************");
		
		
		
		
		
		System.out.println();
		
		Scanner scanner = new Scanner( System.in );
		System.out.print( "Medicine for: " );
		String input = scanner.nextLine();
		System.out.print( "You are looking for Syrup or Capsul? " );
		String type = scanner.nextLine();
		if(type.toLowerCase().equals("syrup")) {
			medi.getSpecificSyrup(input);
		}
		else if (type.toLowerCase().equals("capsul")) {
			medi.getSpecificCapsul(input);
		}
		
		System.out.println();
		System.out.println("DO you want to remove any medicine from store?");
		String rmv = scanner.nextLine();
		if(rmv.toLowerCase().equals("yes")) {
			System.out.println("DO you want to remove Syrup or Capsul?");
			
			String rmvItem = scanner.nextLine();
			if(rmvItem.toLowerCase().equals("syrup")) {
				System.out.println("Which Syrup You want to remove ?");	
				String rmvSyrup = scanner.nextLine();
				Boolean f = medi.removeSyrup(rmvSyrup);
				if(f== true) {
				System.out.println("Succesfully removed? " + f);
				}
				else {
					System.out.println("Could not found.");	
				}
				
				System.out.println("Updated Syrup list: ");
				medi.getSyrup();
				
			}
			
			else if(rmvItem.toLowerCase().equals("capsul")) {
				System.out.println("Which Capsul You want to remove ?");	
				String rmvCapsul = scanner.nextLine();
				Boolean f = medi.removeCapsul(rmvCapsul);
				if(f== true) {
				System.out.println("Succesfully removed? " + f);
				}
				else {
					System.out.println("Could not found.");	
				}
				
				System.out.println("Updated Capsul list: ");
				medi.getCapsul();
			}
			
			
		}
		else {
			System.out.println("That's great! ");
		}
		
		System.out.println("Mitu's work end!");
		
		
		
		//masud
		System.out.println("Masud's and Arman's work start!");
		System.out.println("Total prices of every Syrup :");
		medi.getSyrupWithTotalPri­ce();
		
		System.out.println("Total prices of every Capsul :");
		medi.getCapsulWithTotalPri­ce();
		
		System.out.println("Masud's and Arman's work end!");
		
		//Roza
		
	
		System.out.println("Roza's  work start!");
		
		 System.out.println("Input customer's name:");

	        System.out.println("Customer's name: ");
	        String name = scanner.nextLine();
	        Customer customer1 = new Customer(name);

	        System.out.println();
	        System.out.println();
	        System.out.println(" CUSTOMER:  " + customer1.getName() + "- ");
	        System.out.println();

//	        System.out.println("Customer want to buy Syrup or Capsul?");
//	        String typ = scanner.nextLine();
//	        if(typ.toLowerCase().equals("syrup")) {
//	            System.out.println("Which medicine does the customer want?");
//	            Medicine medName = scanner.nextLine();
//	            customer1.addPurchasedMed(medName);
//	        }

	        System.out.println("DO you want to buy any medicine from store?");
	        rmv = scanner.nextLine();
	        if(rmv.toLowerCase().equals("yes")) {
	            System.out.println("DO you want to buy Syrup or Capsul?");

	            String rmvItem = scanner.nextLine();
	            if(rmvItem.toLowerCase().equals("syrup")) {
	                System.out.println("Which Syrup You want to buy ?");
	                String rmvSyrup = scanner.nextLine();
	                Boolean f = medi.removeSyrup(rmvSyrup);
	                if(f== true) {
	                    System.out.println("Succesfully bought? " + f);
	                    ((Customer) customer1).setPurchasedMedicineName(rmvSyrup);
	                }
	                else {
	                    System.out.println("Could not found.");
	                }

//	                System.out.println("Updated Syrup list: ");
//	                medi.getSyrup();

	            }

	            else if(rmvItem.toLowerCase().equals("capsul")) {
	                System.out.println("Which Capsul You want to buy ?");
	                String rmvCapsul = scanner.nextLine();
	                Boolean f = medi.removeCapsul(rmvCapsul);
	                if(f== true) {
	                    //System.out.println("Succesfully removed? " + f);
	                    if(rmvItem.toLowerCase().equals("Napa") ) {



	                    }



	                }
	                else {
	                    System.out.println("Could not found.");
	                }

//	                System.out.println("Updated Capsul list: ");
//	                medi.getCapsul();

	            }


	        }
	        else {
	            System.out.println("That's great! ");
	        }

	        System.out.println("Input customer's name:");
	        System.out.println("Customer's name: ");
	        name = scanner.nextLine();
	        Person customer2 = new Customer(name);


	        System.out.println();
	        System.out.println();
	        System.out.println();
	        System.out.println(" CUSTOMER:  " + customer2.getName() + "- ");
	        System.out.println("DO you want to buy any medicine from store?");
	        rmv = scanner.nextLine();
	        if(rmv.toLowerCase().equals("yes")) {
	            System.out.println("DO you want to buy Syrup or Capsul?");

	            String rmvItem = scanner.nextLine();
	            if(rmvItem.toLowerCase().equals("syrup")) {
	                System.out.println("Which Syrup You want to buy ?");
	                String rmvSyrup = scanner.nextLine();
	                Boolean f = medi.removeSyrup(rmvSyrup);
	                if(f== true) {
	                    System.out.println("Succesfully bought? " + f);
	                    ((Customer) customer2).setPurchasedMedicineName(rmvSyrup);
	                }
	                else {
	                    System.out.println("Could not found.");
	                }

//	                System.out.println("Updated Syrup list: ");
//	                medi.getSyrup();

	            }

	            else if(rmvItem.toLowerCase().equals("capsul")) {
	                System.out.println("Which Capsul You want to buy ?");
	                String rmvCapsul = scanner.nextLine();
	                Boolean f = medi.removeCapsul(rmvCapsul);
	                if(f== true) {
	                    //System.out.println("Succesfully removed? " + f);
	                    if(rmvItem.toLowerCase().equals("Napa") ) {



	                    }



	                }
	                else {
	                    System.out.println("Could not found.");
	                }

//	                System.out.println("Updated Capsul list: ");
//	                medi.getCapsul();

	            }


	        }
	        else {
	            System.out.println("That's great! ");
	        }


	        System.out.println("Input customer's name:");
	        System.out.println("Customer's name: ");
	        name = scanner.nextLine();
	        Person customer3 = new Customer(name);
	        System.out.println();
	        System.out.println();
	        System.out.println();

	        System.out.println(" CUSTOMER:  " + customer3.getName() + "- ");

	        System.out.println("DO you want to buy any medicine from store?");
	        rmv = scanner.nextLine();
	        if(rmv.toLowerCase().equals("yes")) {
	            System.out.println("DO you want to buy Syrup or Capsul?");

	            String rmvItem = scanner.nextLine();
	            if(rmvItem.toLowerCase().equals("syrup")) {
	                System.out.println("Which Syrup You want to buy ?");
	                String rmvSyrup = scanner.nextLine();
	                Boolean f = medi.removeSyrup(rmvSyrup);
	                if(f== true) {
	                    System.out.println("Succesfully bought? " + f);
	                    ((Customer) customer3).setPurchasedMedicineName(rmvSyrup);
	                }
	                else {
	                    System.out.println("Could not found.");
	                }

//	                System.out.println("Updated Syrup list: ");
//	                medi.getSyrup();

	            }

	            else if(rmvItem.toLowerCase().equals("capsul")) {
	                System.out.println("Which Capsul You want to buy ?");
	                String rmvCapsul = scanner.nextLine();
	                Boolean f = medi.removeCapsul(rmvCapsul);
	                if(f== true) {
	                    //System.out.println("Succesfully removed? " + f);
	                    if(rmvItem.toLowerCase().equals("Napa") ) {



	                    }



	                }
	                else {
	                    System.out.println("Could not found.");
	                }

//	                System.out.println("Updated Capsul list: ");
//	                medi.getCapsul();

	            }


	        }
	        else {
	            System.out.println("That's great! ");
	        }


	        Person staff1 = new Staff("John", 12000, "9.00 AM - 5.00 PM");
	        Person staff2 = new Staff("Colleen", 12000, "9.00 AM - 5.00 PM");
	        Person staff3 = new Staff("Marry", 15000, "5.00 PM - 1.00 AM");
	        Person staff4 = new Staff("Julia", 15000, "5.00 PM - 1.00 AM");
	        Person staff5 = new Staff("David", 18000, "1.00 AM - 9.00 AM");



	    PersonList staff = new PersonList("STAFF");
	    PersonList customer = new PersonList("CUSTOMER");

	        staff.addPerson(staff1);
	        staff.addPerson(staff2);
	        staff.addPerson(staff3);
	        staff.addPerson(staff4);
	        staff.addPerson(staff5);

	        customer.addPerson(customer1);
	        customer.addPerson(customer2);
	        customer.addPerson(customer3);


	        System.out.println("********************************************************** STAFF INFO ******************************************************************************");
	        staff.definePersonList();
	        System.out.println("******************************************************************** ________________ ******************************************************************************");
	        System.out.println();
	        System.out.println();

	        System.out.println("******************************************************* CUSTOMER INFO ******************************************************************************");
	        customer.definePersonList();
	        System.out.println("******************************************************************** ________________ ******************************************************************************");

	        }

		
	
		
		

	}

