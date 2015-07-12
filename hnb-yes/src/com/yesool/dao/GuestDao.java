package com.yesool.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.yesool.factory.Command;
import com.yesool.model.GuestVo;
import com.yesool.util.DBmanager;

public class GuestDao {
	private static GuestDao instance;
	private Connection cn;
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;
	private GuestDao (){
		cn = DBmanager.getConnection();
	}
	public static GuestDao getInstance(){
		if(instance == null){
			instance = new GuestDao();
		}
		return instance;
	}

	
	public int insertGuest(GuestVo gvo){
		int result = 0;
		String sql = "insert into guest (sabun, name, title, nalja, pay)";
		sql +="\n values(guest_seq.nextval, ?, ?, sysdate, ?";
		try {
			pst = cn.prepareStatement(sql);
			pst.setString(1, gvo.getName());
			pst.setString(2, gvo.getTitle());
			pst.setInt(3, gvo.getPay());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	public List<GuestVo> getGuestList(Command command){
		List<GuestVo> glist = new ArrayList<GuestVo>();
		System.out.println("start"+command.getStart());
		System.out.println("end"+command.getEnd());
		try {
			
			String	sql = "select sabun, name, title, nalja, pay";
				sql += "\n from (select rownum as seq, g.* from guest g)";
				sql += "\n where seq between ? and ?";
				sql += "\n order by sabun desc";
		
			
			pst = cn.prepareStatement(sql);
			pst.setInt(1, command.getStart());
			pst.setInt(2, command.getEnd());
			rs = pst.executeQuery();
			while(rs.next()){
				GuestVo gvo = new GuestVo();
				gvo.setSabun(rs.getInt("sabun"));
				gvo.setName(rs.getString("name"));
				gvo.setTitle(rs.getString("title"));
				gvo.setNalja(rs.getDate("nalja"));
				gvo.setPay(rs.getInt("pay"));
				glist.add(gvo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("DAO glist :" + glist);
		return glist;
	}
	
	public List<GuestVo> getGuestSearch(Command command){
		
		List<GuestVo> glist = new ArrayList<GuestVo>();
		
	
		try {
			String sql = "select sabun, name, title, nalja, pay";
			sql += "\n from (select rownum as seq, g.* from guest g where name like '%"+command.getKeyword()+"%') ";
			sql += "\n where seq between "+command.getStart()+" and "+command.getEnd()+"" ;
			sql += "\n order by sabun desc";
			st = cn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()){
				GuestVo gvo = new GuestVo();
				gvo.setNalja(rs.getDate("nalja"));
				gvo.setName(rs.getString("name"));
				gvo.setPay(rs.getInt("pay"));
				gvo.setSabun(rs.getInt("sabun"));
				gvo.setTitle(rs.getString("title"));
				glist.add(gvo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for(int i=0;i<glist.size();i++){
			System.out.println("출력물 :"+glist.get(i));
		}
		return glist;
		
	}
	public GuestVo getOneGuestByID(Command command){
		GuestVo gvo = new GuestVo();
		String sql = "select * from guest where sabun =" + command.getKeyword();
		try {
			st = cn.createStatement();
			rs = st.executeQuery(sql);
			
			if(rs.next()){
				gvo.setSabun(rs.getInt("sabun"));
				gvo.setName(rs.getString("name"));
				gvo.setTitle(rs.getString("title"));
				gvo.setNalja(rs.getDate("nalja"));
				gvo.setPay(rs.getInt("pay"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return gvo;
	}
	public int updateGuestTitle(GuestVo gvo){
		int result = 0;
		String sql = "update guest set title = ? ";
		sql += "\n where sabun = ?";
		try {
			pst = cn.prepareStatement(sql);
			pst.setString(1, gvo.getTitle());
			pst.setInt(2, gvo.getSabun());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public int deleteGuest(GuestVo gvo){
		int result = 0;
		String sql = "delete from guest where sabun = ?";
		try {
			pst = cn.prepareStatement(sql);
			pst.setInt(1, gvo.getSabun());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public int getTotalCount(){
		int result = 0;
		
		try {
			String sql = "select count(*) as count from guest";
			st = cn.createStatement();
			rs =st.executeQuery(sql);
			if(rs.next()){
				result = rs.getInt("count");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}
	public int getSearchCount(Command command){
		int result = 0;
		
		try {
			String sql = "select count(*) as count from guest where name like '%"+command.getKeyword()+"%'";
			st = cn.createStatement();
			rs =st.executeQuery(sql);
			if(rs.next()){
				result = rs.getInt("count");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}
		
}
