package com.entity;

public class BusAdd_entity 
{
	private int id;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private  String stop_no;
	private String stop_name;
	private String driver_name;
	public String getDriver_name() {
		return driver_name;
	}
	public void setDriver_name(String driver_name) {
		this.driver_name = driver_name;
	}
	private String morning_time;
	private String evening_time;
	private String bus_fee;
	public String getStop_no() {
		return stop_no;
	}
	public void setStop_no(String stop_no) {
		this.stop_no = stop_no;
	}
	public String getStop_name() {
		return stop_name;
	}
	public void setStop_name(String stop_name) {
		this.stop_name = stop_name;
	}
	public String getMorning_time() {
		return morning_time;
	}
	public void setMorning_time(String morning_time) {
		this.morning_time = morning_time;
	}
	public String getEvening_time() {
		return evening_time;
	}
	public void setEvening_time(String evening_time) {
		this.evening_time = evening_time;
	}
	public String getBus_fee() {
		return bus_fee;
	}
	public void setBus_fee(String bus_fee) {
		this.bus_fee = bus_fee;
	}
	
	
	
	private int MainBusId;
	private String MainBusName;
	private String MainBusNo;
     private String seats;
     


	public String getSeats() {
		return seats;
	}
	public void setSeats(String seats) {
		this.seats = seats;
	}
	public int getMainBusId() {
		return MainBusId;
	}
	public void setMainBusId(int mainBusId) {
		MainBusId = mainBusId;
	}
	public String getMainBusName() {
		return MainBusName;
	}
	public void setMainBusName(String mainBusName) {
		MainBusName = mainBusName;
	}
	public String getMainBusNo() {
		return MainBusNo;
	}
	public void setMainBusNo(String mainBusNo) {
		MainBusNo = mainBusNo;
	}
	
	
	
}
