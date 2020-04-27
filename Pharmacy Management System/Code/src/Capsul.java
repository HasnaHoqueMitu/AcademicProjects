//package MedProject;

public class Capsul extends Medicine {
	
	private String CapsulName;
	private boolean isCapsul;
	private int AmountPerCapsul;
	
    //constructor
	public Capsul(String Mname, String Cname, String Edate, int CostPerMedicine, String Sickness, boolean isCapsul, int  AmountPerCapsul) {
		super(Mname, Cname, Edate, CostPerMedicine, Sickness);
		this.CapsulName = Mname;
		this.isCapsul = true;
		this.AmountPerCapsul = AmountPerCapsul;
	}
	
	//getter setter
	public String getCapsulName() {
		return CapsulName;
	}
	
	public int getAmountPerCapsul() {
		return AmountPerCapsul;
	}
	
	public void setAmountPerCapsul(int a) {
		this.AmountPerCapsul = a;
	}
	
	
	public String toString() {
		String Details = "\n                     " +
	                     "  |*Capsul Name : " + getCapsulName()   + "*| "+
				         "  |*Company Name : " + getCompanyName() +"*| "+
				         "  |*Expire Date : " + getExpireDate() +  "*| "+
				         "  |*Cost Per Syrup : " + getCostPerMedicine() +   "*| "+
				         "  |*For : " + getSickness() + "*| \n " ;
		return Details;
	}


}
