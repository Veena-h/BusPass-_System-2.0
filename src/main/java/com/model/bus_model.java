package com.model;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.connection.connection;
import com.entity.BusAdd_entity;
import com.entity.pass_entity;
import com.entity.route_entity;
import com.entity.studentRegistration_rentity;

public class bus_model 
{

	Connection conn;
	public bus_model(Connection conn) 
	{
		super();
		this.conn=conn;
		
	}
	public boolean insert_studentDetails(studentRegistration_rentity f) throws SQLException 
	{
		boolean b=false;
		String sql="insert into stud_registartion(fname,lname,address,phone,gender,dob,dept,course,email,password,prn_no) values(?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement p=conn.prepareStatement(sql);

		p.setString(1, f.getFirst_name());
		p.setString(2, f.getLast_name());
		p.setString(3, f.getAddress());
		p.setString(4, f.getPhone());
		p.setString(5, f.getGender());
		p.setString(6, f.getDOB());
		p.setString(7, f.getDept());
		p.setString(8, f.getCourse());
		p.setString(9, f.getEmail());
		
	    p.setString(10, f.getPassword());
	    p.setString(11, f.getPrn_no());
		 
		
		int i=p.executeUpdate();
		if(i==1)
		{
			System.out.println("inserted");
			b=true;
			
		}
		
		
		
			
		return b;

	}
	
	
	/*
	 * public String student_login(String email, String password) throws
	 * SQLException { studentRegistration_rentity r=null; String s=null; String
	 * sql="select * from stud_registartion where email=? and password=?";
	 * PreparedStatement ps=conn.prepareStatement(sql); ps.setString(1, email);
	 * ps.setString(2, password);
	 * 
	 * ResultSet rs=ps.executeQuery(); while(rs.next()) { r=new
	 * studentRegistration_rentity(); r.setFirst_name(rs.getString("fname"));
	 * r.setEmail(rs.getString("email"));; r.setPassword(rs.getString("password"));
	 * 
	 * if(email.equals(r.getEmail()) && password.equals(r.getPassword())) {
	 * s=r.getFirst_name(); break;
	 * 
	 * } }
	 * 
	 * 
	 * 
	 * return s;
	 * 
	 * }
	 */


	public studentRegistration_rentity  student_login(String email, String password) throws SQLException {
        String sql = "select * from stud_registartion where email=? and password=?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, email);
        ps.setString(2, password);

        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            studentRegistration_rentity result = new studentRegistration_rentity();
            result.setFirst_name(rs.getString("fname"));
            result.setId(rs.getInt("s_id"));
            return result; // Return the LoginResult object if login successful
        }
        return null; // Return null if login failed
    }

	
	
	
	public List<studentRegistration_rentity> select() throws SQLException
	{
	     List<studentRegistration_rentity> al=new ArrayList<>();
	     studentRegistration_rentity e=null;
	     String sql="select * from stud_registartion ";
	  PreparedStatement stmt = conn.prepareStatement(sql);
	  
	  ResultSet rs=stmt.executeQuery();
	  
	  while(rs.next())
	  {
		  e = new studentRegistration_rentity(); 
		  e.setId(rs.getInt(1));
		  e.setFirst_name(rs.getString(2));
		  e.setLast_name(rs.getString(3));
		  e.setAddress(rs.getString(4));
		  e.setPhone(rs.getString(5));
		  e.setGender(rs.getString(6));
		  e.setDOB(rs.getString(7));
		  e.setDept(rs.getString(8));
		  e.setCourse(rs.getString(9));
		  e.setEmail(rs.getString(10));
		  e.setPassword(rs.getString(11));
		  e.setPrn_no(rs.getString(12));
				  
          //Display values
         al.add(e);
		  
	  }
	return al;

	
	}
	
	
	public List<studentRegistration_rentity> studentRegisterById(int id) throws SQLException
	{
	     List<studentRegistration_rentity> al=new ArrayList<>();
	     studentRegistration_rentity e=null;
	     String sql="select * from stud_registartion where s_id=?";
	     PreparedStatement stmt = conn.prepareStatement(sql);
	      stmt.setInt(1, id);
	      
	     ResultSet rs=stmt.executeQuery();
	  
	  while(rs.next())
	  {
		  e = new studentRegistration_rentity(); 
		  e.setId(rs.getInt(1));
		  e.setFirst_name(rs.getString(2));
		  e.setLast_name(rs.getString(3));
		  e.setAddress(rs.getString(4));
		  e.setPhone(rs.getString(5));
		  e.setGender(rs.getString(6));
		  e.setDOB(rs.getString(7));
		  e.setDept(rs.getString(8));
		  e.setCourse(rs.getString(9));
		  e.setEmail(rs.getString(10));
		  e.setPassword(rs.getString(11));
		  e.setPrn_no(rs.getString(12));	
			 	  
          //Display values
         al.add(e);
		  
	  }
	return al;

	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public boolean insert_busdetails(BusAdd_entity f) throws SQLException 
	{
		boolean b=false;
		String sql="insert into bus_details(stop_no,stop_name,morning_time,evening_time,bus_fee,driver_name,bus_no,bus_name,seats) values(?,?,?,?,?,?,?,?,?)";
		PreparedStatement p=conn.prepareStatement(sql);

		p.setString(1, f.getStop_no());
		p.setString(2, f.getStop_name());
		p.setString(3, f.getMorning_time());
		p.setString(4, f.getEvening_time());
		p.setString(5, f.getBus_fee());
		p.setString(6, f.getDriver_name());
		p.setString(7, f.getMainBusNo());
		p.setString(8, f.getMainBusName());
		p.setString(9, f.getSeats());
	
		
		int i=p.executeUpdate();
		if(i==1)
		{
			System.out.println("inserted");
			b=true;
			
		}
		
		
		
			
		return b;
	}

	
	public List<BusAdd_entity> selectBusdetails() throws SQLException
	{
	     List<BusAdd_entity> al=new ArrayList<>();
	     BusAdd_entity e=null;
	     String sql="select * from bus_details";
	  PreparedStatement stmt = conn.prepareStatement(sql);
	  
	  ResultSet rs=stmt.executeQuery();
	  
	  while(rs.next())
	  {
		  e = new BusAdd_entity(); 
		  e.setId(rs.getInt(1));
		  e.setStop_no(rs.getString(2));
		  e.setStop_name(rs.getString(3));
		  e.setDriver_name(rs.getString(4));
		  e.setMorning_time(rs.getString(5));
		  e.setEvening_time(rs.getString(6));
		  e.setBus_fee(rs.getString(7));
		  e.setMainBusNo(rs.getString(8));
		  e.setMainBusName(rs.getString(9));
		  e.setSeats(rs.getString(10));
          //Display values
         al.add(e);
		  
	  }
	return al;

	
	}
	
	
	public List<BusAdd_entity> showbystopname(String stopno) throws SQLException
	{
		List<BusAdd_entity> al=new ArrayList<>();
		BusAdd_entity e=null;
		String sql = "select * from bus_details where bus_no=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, stopno);   
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
				e = new BusAdd_entity(); 
			 
				e.setId(rs.getInt(1));
				 e.setId(rs.getInt(1));
				  e.setStop_no(rs.getString(2));
				  e.setStop_name(rs.getString(3));
				  e.setDriver_name(rs.getString(4));
				  e.setMorning_time(rs.getString(5));
				  e.setEvening_time(rs.getString(6));
				  e.setBus_fee(rs.getString(7));
				  e.setMainBusNo(rs.getString(8));
				  e.setMainBusName(rs.getString(9));
				  e.setSeats(rs.getString(10));
			
			al.add(e);
		}
		
		return al;
	}
	
	
	
	public List<BusAdd_entity> showbystopno(String stopno) throws SQLException
	{
		List<BusAdd_entity> al=new ArrayList<>();
		BusAdd_entity e=null;
		String sql = "select * from bus_details where stop_no=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, stopno);   
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
				e = new BusAdd_entity(); 
			 
				e.setId(rs.getInt(1));
				 e.setId(rs.getInt(1));
				  e.setStop_no(rs.getString(2));
				  e.setStop_name(rs.getString(3));
				  e.setDriver_name(rs.getString(4));
				  e.setMorning_time(rs.getString(5));
				  e.setEvening_time(rs.getString(6));
				  e.setBus_fee(rs.getString(7));
				  e.setMainBusNo(rs.getString(8));
				  e.setMainBusName(rs.getString(9));
				  e.setSeats(rs.getString(10));
			
			al.add(e);
		}
		
		return al;
	}
	
	
	public List<BusAdd_entity> showbyid(int id) throws SQLException
	{
		List<BusAdd_entity> al=new ArrayList<>();
		BusAdd_entity e=null;
		String sql = "select * from bus_details where id=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, id);   
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
				e = new BusAdd_entity(); 
			 
				e.setId(rs.getInt(1));
				 e.setId(rs.getInt(1));
				  e.setStop_no(rs.getString(2));
				  e.setStop_name(rs.getString(3));
				  e.setDriver_name(rs.getString(4));
				  e.setMorning_time(rs.getString(5));
				  e.setEvening_time(rs.getString(6));
				  e.setBus_fee(rs.getString(7));
				  e.setMainBusNo(rs.getString(8));
				  e.setMainBusName(rs.getString(9));
				  e.setSeats(rs.getString(10));
			
			al.add(e);
		}
		
		return al;
	}
	
	
	
	// main bus route
	public boolean insert_Mainbusdetails2(BusAdd_entity f) throws SQLException 
	{
		boolean b=false;
		String sql="insert into mainbus_details(bus_no,bus_name,seats) values(?,?,?)";
		PreparedStatement p=conn.prepareStatement(sql);

		p.setString(1, f.getMainBusNo());
		p.setString(2, f.getMainBusName());
		p.setString(3, f.getSeats());
		
		
	
		
		int i=p.executeUpdate();
		if(i==1)
		{
			System.out.println("inserted");
			b=true;
			
		}
				
		return b;
	}
	
	
	public List<BusAdd_entity> selectMainBusdetails() throws SQLException
	{
	     List<BusAdd_entity> al=new ArrayList<>();
	     BusAdd_entity e=null;
	     String sql="select * from mainbus_details";
	  PreparedStatement stmt = conn.prepareStatement(sql);
	  
	  ResultSet rs=stmt.executeQuery();
	  
	  while(rs.next())
	  {
		  e = new BusAdd_entity(); 
		  e.setMainBusId(rs.getInt(1));
		  e.setMainBusNo(rs.getString(2));
		  e.setMainBusName(rs.getString(3));
		  e.setSeats(rs.getString(4));
		  
		  
          //Display values
         al.add(e);
		  
	  }
	return al;

	
	}
	
	
	
	public List<BusAdd_entity> showByMainbusNo(String MainbusNo) throws SQLException
	{
		List<BusAdd_entity> al=new ArrayList<>();
		BusAdd_entity e=null;
		String sql = "select * from mainbus_details where bus_no=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, MainbusNo);   
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
				e = new BusAdd_entity(); 
			 
				  e.setMainBusId(rs.getInt(1));
				  e.setMainBusNo(rs.getString(2));
				  e.setMainBusName(rs.getString(3));
				  e.setSeats(rs.getString(4));
				  
				 
			
			al.add(e);
		}
		
		return al;
	}
	
	
	
	public List<BusAdd_entity> showByMainbusId(int MainbusId) throws SQLException
	{
		List<BusAdd_entity> al=new ArrayList<>();
		BusAdd_entity e=null;
		String sql = "select * from mainbus_details where MainBus_Id=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, MainbusId);   
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
				e = new BusAdd_entity(); 
			 
				  e.setMainBusId(rs.getInt(1));
				  e.setMainBusNo(rs.getString(2));
				  e.setMainBusName(rs.getString(3));
				  e.setSeats(rs.getString(4));
				  
				 
			
			al.add(e);
		}
		
		return al;
	}
	
	
	
	
	//main bus route end
	
	
	
	public int insert_routedetails(route_entity f,InputStream file,InputStream file1) throws SQLException 
	{
		int b=0;
		
	String sql="insert into stud_route(stop_no,stop_name,driver_name,name,address,phone,dept,course,pic,pic1,s_id,prn_no,paymentMethod,bus_no,bus_name,fees,feespaid,seats) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement p=conn.prepareStatement(sql);
	
	p.setString(1, f.getStop_no());
	p.setString(2, f.getStop_name());
	p.setString(3, f.getDriver_name());
	p.setString(4, f.getName());
	p.setString(5, f.getAddress());
	p.setString(6, f.getPhone());
	p.setString(7, f.getDept());
	p.setString(8, f.getCourse());
	
	
	
	
	
	
	
	if(file!=null)
	{	
		p.setBlob(9,file);
	}
	
	if(file1!=null)
	{
		
		p.setBlob(10, file1);
	}


	p.setInt(11, f.getS_id());
	
	p.setString(12, f.getPrn_no());
	
	p.setString(13, f.getPaymentMethod());
	
	p.setString(14, f.getBus_no());
	p.setString(15, f.getBus_name());
	p.setString(16, f.getFees());
	p.setString(17, f.getFeespaid());
	p.setString(18, f.getSeats());
	
	
	int i=p.executeUpdate();
	
	if(i==1)
	{
		System.out.println("inserted");
		
		
	}
	
	
	
		
	return b;
	}

	
	public List<route_entity> routeform() throws SQLException
	{
	     List<route_entity> al=new ArrayList<>();
	     route_entity e=null;
	     String sql="select * from stud_route";
	  PreparedStatement stmt = conn.prepareStatement(sql);
	  
	  ResultSet rs=stmt.executeQuery();
	  
	  while(rs.next())
	  {
		  e = new route_entity(); 
		  e.setId(rs.getInt(1));
		  e.setStop_no(rs.getString(2));
		  e.setStop_name(rs.getString(3));
		  e.setDriver_name(rs.getString(4));
		  e.setName(rs.getString(5));
		  e.setAddress(rs.getString(6));
		  e.setPhone(rs.getString(7));
		  e.setDept(rs.getString(8));
		  e.setCourse(rs.getString(9));
		  
		    
		  
		  java.sql.Blob blob=rs.getBlob(10);
			 if(blob!=null)
			 {
				 byte[] img=blob.getBytes(1,(int)blob.length());
				 e.setPic(img);
			 }
			 
			 java.sql.Blob blob1=rs.getBlob(11);
			 if(blob1!=null)
			 {
				 byte[] img=blob1.getBytes(1,(int)blob1.length());
				 e.setPic1(img);
			 }
		  
			 e.setS_id(rs.getInt(12));
			 
			 
			 e.setPrn_no(rs.getString(13));
			 e.setPaymentMethod(rs.getString(14));
			 
			 e.setBus_no(rs.getString(15));
			 e.setBus_name(rs.getString(16));
			 e.setFees(rs.getString(17));
			 e.setFeespaid(rs.getString(18));
			 e.setSeats(rs.getString(19));
		  
          //Display values
         al.add(e);
		  
	  }
	return al;
	   
		
	}
	
	
	
	public List<route_entity> routeby_id(int id) throws SQLException
	{
	     List<route_entity> al=new ArrayList<>();
	     route_entity e=null;
	     String sql="select * from stud_route where id=?";
	  PreparedStatement stmt = conn.prepareStatement(sql);
	    stmt.setInt(1, id);    
	  
	  ResultSet rs=stmt.executeQuery();
	  
	  while(rs.next())
	  {
		  e = new route_entity(); 
		  e.setId(rs.getInt(1));
		  e.setStop_no(rs.getString(2));
		  e.setStop_name(rs.getString(3));
		  e.setDriver_name(rs.getString(4));
		  e.setName(rs.getString(5));
		  e.setAddress(rs.getString(6));
		  e.setPhone(rs.getString(7));
		  e.setDept(rs.getString(8));
		  e.setCourse(rs.getString(9));
		  
		  
		  java.sql.Blob blob=rs.getBlob(10);
			 if(blob!=null)
			 {
				 byte[] img=blob.getBytes(1,(int)blob.length());
				 e.setPic(img);
			 }
			 
			 java.sql.Blob blob1=rs.getBlob(11);
			 if(blob1!=null)
			 {
				 byte[] img=blob1.getBytes(1,(int)blob1.length());
				 e.setPic1(img);
			 }
		  
			 e.setS_id(rs.getInt(12));  
			 e.setPrn_no(rs.getString(13));
			 e.setPaymentMethod(rs.getString(14));
			 e.setBus_no(rs.getString(15));
			 e.setBus_name(rs.getString(16));
			 e.setFees(rs.getString(17));
			 e.setFeespaid(rs.getString(18));
			 e.setSeats(rs.getString(19));
		  
          //Display values
         al.add(e);
		  
	  }
	return al;
	   
		
	}
	
	
	
	
	public boolean insert_pass(pass_entity f,byte[] img) throws SQLException
	{
		boolean b=false;
		
		String sql="insert into pass(bus_no,stud_name,u_id,start_date,end_date,status,date,address,phone,pic,s_id,bus_name,stop_name,dept,course,install,seatNo) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement p=conn.prepareStatement(sql);
		
		p.setString(1, f.getBus_no());
		p.setString(2, f.getStud_name());
		p.setString(3, f.getU_id());
		p.setString(4, f.getStart_date());
		p.setString(5, f.getEnd_date());
		p.setString(6, f.getStatus());
		
		
		p.setString(7, f.getDate());
		p.setString(8, f.getAddress());
		p.setString(9, f.getPhone());
		
		p.setBytes(10, img);
		p.setInt(11, f.getS_id());
		
		p.setString(12,f.getBus_name());
		p.setString(13, f.getStop_name());
		p.setString(14, f.getDepartment());
		p.setString(15, f.getCourse());
		p.setString(16, f.getInstall());
		p.setString(17, f.getSeatNo());
		
		int i=p.executeUpdate();
		
		if(i>0)
		{
			System.out.println("inserted");
			b=true;
			
		}
		
		
		
			
		return b;
	}

	
	public List<pass_entity> pass_response() throws SQLException
	{
	     List<pass_entity> al=new ArrayList<>();
	     pass_entity e=null;
	     String sql="select * from pass";
	  PreparedStatement stmt = conn.prepareStatement(sql);
	  
	  ResultSet rs=stmt.executeQuery();
	  
	  while(rs.next())
	  {
		  e = new pass_entity(); 
		  e.setId(rs.getInt(1));
		  e.setBus_no(rs.getString(2));
		  e.setStud_name(rs.getString(3));
		  e.setU_id(rs.getString(4));
		  e.setStart_date(rs.getString(5));
		  e.setEnd_date(rs.getString(6));
		  e.setStatus(rs.getString(7));
		  
		  e.setDate(rs.getString(8));
		  e.setAddress(rs.getString(9));
		  e.setPhone(rs.getString(10));
		  e.setPic(rs.getBytes(11));
		  e.setS_id(rs.getInt(12));
		  
		  e.setBus_name(rs.getString(13));
		  e.setStop_name(rs.getString(14));
		  e.setDepartment(rs.getString(15));
		  e.setCourse(rs.getString(16));
		  e.setInstall(rs.getString(17));
		  e.setSeatNo(rs.getString(18));
		 
		  
          //Display values
         al.add(e);
		  
	  }
	return al;
	   
		
	}
	public boolean delet_pass(int id) throws SQLException 
	{
		boolean b=false;
		String sql="delete from pass where id=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
		
		int i=ps.executeUpdate();
		if(i==1)
		{
			System.out.println("deleted");
			b=true;
		}
		return b;

	}
	
	
	
	
	public List<pass_entity> pass_id(int s_id) throws SQLException
	{
	     List<pass_entity> al=new ArrayList<>();
	     pass_entity e=null;
	     String sql="select * from pass where s_id=? ";
	     PreparedStatement stmt = conn.prepareStatement(sql);
	    stmt.setInt(1, s_id);    
	  
	  ResultSet rs=stmt.executeQuery();
	  
	  while(rs.next())
	  {
		  e = new pass_entity(); 
		  e.setId(rs.getInt(1));
		  e.setBus_no(rs.getString(2));
		  e.setStud_name(rs.getString(3));
		  e.setU_id(rs.getString(4));
		  e.setStart_date(rs.getString(5));
		  e.setEnd_date(rs.getString(6));
		  e.setStatus(rs.getString(7));
		  
		  
		  
		  e.setDate(rs.getString(8));
		  e.setAddress(rs.getString(9));
		  e.setPhone(rs.getString(10));
		  e.setPic(rs.getBytes(11));
		  e.setS_id(rs.getInt(12));  
		  
		  e.setBus_name(rs.getString(13));
		  e.setStop_name(rs.getString(14));
		  e.setDepartment(rs.getString(15));
		  e.setCourse(rs.getString(16));
		  e.setInstall(rs.getString(17));
		  e.setSeatNo(rs.getString(18));
		 
		 
		  
          //Display values
         al.add(e);
		  
	  }
	return al;
	   
		
	}
	
	
	
	
	public boolean delete_busdetails(int id) throws SQLException 
	{
		boolean b=false;
		
		String sql="delete from bus_details where id=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
	
		int i=ps.executeUpdate();
		if(i==1)
		{
			System.out.println("deleted successfully");
			b=true;
		}
		return b;
	}
	
	
	
	public boolean update_busdetails(BusAdd_entity f) throws SQLException 
	{
		boolean b=false;
		String sql="update bus_details set stop_no=? , stop_name=? , morning_time=?,evening_time=?,bus_fee=? ,driver_name=? ,bus_no=?,bus_name=?,seats=? where id=?";
		PreparedStatement p=conn.prepareStatement(sql);
//		ResultSet rs=p.executeQuery();
		p.setString(1, f.getStop_no());  
		p.setString(2, f.getStop_name());
		
		p.setString(3, f.getMorning_time());
		p.setString(4, f.getEvening_time());
		p.setString(5, f.getBus_fee());
		p.setString(6, f.getDriver_name());
		p.setString(7, f.getMainBusNo());
		p.setString(8, f.getMainBusName());
		p.setString(9, f.getSeats());
		
		p.setInt(10, f.getId());
		
		int i=p.executeUpdate();
		if(i==1)
		{
			System.out.println("updated");
			b=true;
			
		}
		
		
		
			
		return b;

	}
	
	
	public boolean delete_formDetail(int id) throws SQLException
	{
		boolean b=false;
		String sql="delete from stud_route where id=? ";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
		
		int i=ps.executeUpdate();
		if(i==1)
		{
			System.out.println("deleted");
			b=true;
		}
		return b;
	}
	
	
	
	
	
	public String forgetpass(String currentPass) 
	{
		
		String pass="123";
		String s=null;
		
		if(currentPass.equals(pass))
		{
			System.out.println("success");
		   s=pass;
			
		}
		return s;
	}
	
	
	
	
	
	public boolean updateSeats(BusAdd_entity f) throws SQLException 
	{
		boolean b1=false;
		String sql="update mainbus_details set bus_no=? , bus_name=? ,seats=? where MainBus_Id=? ";
		PreparedStatement p=conn.prepareStatement(sql);
//		ResultSet rs=p.executeQuery();
		
		
		
		
		p.setString(1, f.getMainBusNo());  
		p.setString(2, f.getMainBusName());
		
		p.setString(3, f.getSeats());
		
		p.setInt(4, f.getMainBusId());

		
		int i=p.executeUpdate();
		if(i==1)
		{
			System.out.println("updated");
			b1=true;
			
		}
		
		
		
			
		return b1;

	}
	
	
	public boolean delete_Mainbusdetails(int id) throws SQLException 
	{
		
		boolean b=false;
		String sql="delete from mainbus_details where MainBus_Id=? ";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
		
		int i=ps.executeUpdate();
		if(i==1)
		{
			System.out.println("deleted");
			b=true;
		}
		return b;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
