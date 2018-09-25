
class Welcome
{
	public void accept()
	{
		System.out.println("Accept Class");
	}
	public void display()
	{	
		System.out.println("Display Class");
		System.out.println("Welcome to deloitte");
	}
	public static void main(String[] args)
	{
		System.out.println("Welcome ITPL");
		Welcome w=new Welcome();
		w.display();
		w.accept();
		Hii h=new Hii();
		h.hii();
		Bye b=new Bye();
		b.sayBye();
	}
}