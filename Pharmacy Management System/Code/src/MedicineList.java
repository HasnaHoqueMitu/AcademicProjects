//package MedProject;

public class MedicineList {

	private Syrup[] syrups = new Syrup[100];
	private Capsul[] capsuls = new Capsul[100];
	private static int count_syrup= 0;
	private static int count_capsul= 0;
	

    // Syrups functions	
	public void addSyrup(Syrup syr) {			
			syrups[count_syrup]=syr;
			count_syrup++;				
		}
			
	public void getSyrup() {
		for(int k=0; k<count_syrup; k++) {

			System.out.println("Syrup Name : "+syrups[k].getMedcineName() + "      *Amount : " +syrups[k].getAmountPerSyrup());
		}
		System.out.println("__________________________________");
		int x = count_syrup;
		System.out.println(x + " Types of Syrup has been stored.");
		System.out.println("__________________________________");		
	}
		
	public void getSpecificSyrup(String sick) {
		System.out.println("For " + sick + ":");
		for(int p=0; p<count_syrup; p++) {
			
			if(syrups[p].getSickness().toLowerCase().equals(sick.toLowerCase())) {

			System.out.println("Syrup Name : "+syrups[p].getMedcineName());
			}
		}
		}

	
	
	//Capsuls Finctions	
	public void addCapsul(Capsul cps) {
			
			capsuls[count_capsul]=cps;
			count_capsul++;
			}
	
	public void getCapsul() {
		for(int k=0; k<count_capsul; k++) {

			System.out.println("Capsul Name : " + capsuls[k].getMedcineName() + "     *Amount : " + capsuls[k].getAmountPerCapsul());
		}
		System.out.println("__________________________________");
		int x = count_capsul;
		System.out.println(x + " Types of Capsul has been stored.");
		System.out.println("__________________________________");
		}
	
	public void getSpecificCapsul(String sick) {
		System.out.println("For " + sick + ":");
		for(int p=0; p<count_capsul; p++) {
			
			if(capsuls[p].getSickness().toLowerCase().equals(sick.toLowerCase())) {

			System.out.println("Capsul Name : "+capsuls[p].getMedcineName());
			}
		}
		}
	
	
	
	//remove medicine
	
	//remove syrup
	public boolean removeSyrup(String name) {
	      boolean found = false;
	      // Look for the course index
	      int courseIndex = -1;  // need to initialize
	      System.out.println("Previous Syrup number : " + count_syrup);
	      for (int i = 0; i < count_syrup; i++) {
		     
	         if (syrups[i].getMedcineName().toLowerCase().equals(name.toLowerCase())) {
	        	 System.out.println("Removing Syrup : " +syrups[i].getMedcineName());
	            courseIndex = i;
	            found = true;
	            break;
	         }
	         
	      }
	      if (found) {
	         // Remove the syrup and re-arrange for syrups array
	         for (int i = courseIndex; i < count_syrup-1; i++) {
	        	 syrups[i] = syrups[i+1];
	         }
	         count_syrup--;
	         return true;
	      } else {
	         return false;
	      }
	   }
	
	//remove capsul
	
	public boolean removeCapsul(String name) {
	      boolean found = false;
	      // Look for the course index
	      int courseIndex = -1;  // need to initialize
	      System.out.println("Previous Capsul number : " + count_capsul);
	      for (int i = 0; i < count_capsul; i++) {
		      
	         if (capsuls[i].getMedcineName().toLowerCase().equals(name.toLowerCase())) {
	        	 System.out.println("Removing Capsul : " +capsuls[i].getMedcineName());
	            courseIndex = i;
	            found = true;
	            break;
	         }
	         
	      }
	      if (found) {
	         // Remove the capsul and re-arrange for capsul array
	         for (int i = courseIndex; i < count_capsul-1; i++) {
	        	 capsuls[i] = capsuls[i+1];
	         }
	         count_capsul--;
	         return true;
	      } else {
	         return false;
	      }
	   }
	
	
	
	
	//masud
	
	public void getSyrupWithTotalPri­ce() {
		for(int k=0; k<count_syrup; k++) {

		System.out.println("Syrup Name: "+syrups[k].getMedcineName() + "   *Amount : " +syrups[k].getAmountPerSyrup() + "    *TotalPrice : " + (syrups[k].getAmountPerSyrup() * syrups[k].getCostPerMedicine()) );
		}
		System.out.println("___________________________________________________________________");
		}
	
	public void getCapsulWithTotalPri­ce() {
		for(int k=0; k<count_capsul; k++) {

		System.out.println("Capsul Name: "+capsuls[k].getMedcineName() + "   *Amount : " +capsuls[k].getAmountPerCapsul() + "    *TotalPrice : " + (capsuls[k].getAmountPerCapsul() * capsuls[k].getCostPerMedicine()) );
		}
		System.out.println("___________________________________________________________________");
		}
	
	



}
