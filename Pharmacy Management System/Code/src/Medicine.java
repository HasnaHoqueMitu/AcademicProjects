//package MedProject;
public class Medicine {
	
	private String MedicineType;
	private String MedicineName;
	private String CompanyName;
	private String ExpireDate;
	private int CostPerMedicine;
	private String Sickness;
	
	// constructor
	
	public Medicine(String MedicineType) {
		this.MedicineType = MedicineType;
		
	}
	
	public Medicine(String Mname, String Cname, String Edate, int CostPerMedicine, String Sickness ) {
		this.MedicineName = Mname;
		this.CompanyName = Cname;
		this.ExpireDate  =  Edate;
		this.CostPerMedicine = CostPerMedicine;
		this.Sickness = Sickness;
		//System.out.println(MedicineName + "has been added !");
	}
	
	// getter setter
	public String getMedcineName() {
		return MedicineName;
	}
	public String getCompanyName() {
		return CompanyName;
	}
	
	public String getExpireDate() {
		return ExpireDate;
	}
		
	public int getCostPerMedicine() {
		return CostPerMedicine;
	}
	
	
	public void setCostPerMedicine(int a) {
		this.CostPerMedicine = a;
	}
	
	public String getSickness() {
		return Sickness;
	}
	
}
