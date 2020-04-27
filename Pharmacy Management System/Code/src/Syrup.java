//package MedProject;

public class Syrup extends Medicine {
	private String SyrupName;
	private boolean isSyrup;
	private int AmountPerSyrup;


	
    //constructor
	
	public Syrup(String MedicineType) {
		super(MedicineType);
		
	}
	public Syrup(String Mname, String Cname, String Edate, int CostPerMedicine, String Sickness, boolean isSyrup, int  AmountPerSyrup) {
		super(Mname, Cname, Edate, CostPerMedicine, Sickness);
		this.SyrupName = Mname;
		this.isSyrup = true;	
		this.AmountPerSyrup=AmountPerSyrup;
	}
	
	//getter setter
	public String getSyrupname() {
		return SyrupName;
	}
	
	public int getAmountPerSyrup() {
		return AmountPerSyrup;
	}
	
	public void setAmountPerSyrup(int a) {
		this.AmountPerSyrup = a;
	}
	
	public String toString() {
		String Details = "\n                     " +
	                     "  |*Syrup Name : " + getSyrupname() + "*| "+
				         "  |*Company Name : " + getCompanyName() +"*| "+
				         "  |*Expire Date : " + getExpireDate() +  "*| "+
				         "  |*Cost Per Syrup : " + getCostPerMedicine() +   "*| "+
				         "  |*For : " + getSickness() + "*| \n " ;
		return Details;
	}
	
	
	
}