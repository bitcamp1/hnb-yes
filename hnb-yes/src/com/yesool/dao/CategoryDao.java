package com.yesool.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.yesool.factory.Command;
import com.yesool.model.CategoryVo;
import com.yesool.util.DBmanager;

public class CategoryDao {
	private static CategoryDao instance;
	private Connection cn;
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;
	CategoryVo cvo;
	private CategoryDao() {
		cn = DBmanager.getConnection();
	}
	public static CategoryDao getInstance (){
		if(instance == null){
			instance = new CategoryDao();
		}
		return instance;
	}
	
	
	public int insertCategory(CategoryVo cvo){
		int result = 0;
		try {
			String sql = "insert into category (cate_no, cate_name )"
					+ "\n values(seq.nextval , ?)";
			pst = cn.prepareStatement(sql);
			pst.setString(1, cvo.getCateName());
			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public List<CategoryVo> selectAllCategory(Command command){
		List<CategoryVo> list = new ArrayList<CategoryVo>();
		try {
			String sql = "select * from "
					+ "\n (select rownum as row, c.* from category c"
					+ "\n where "+command.getKeyField()+" like '%"+command.getKeyword()+"%')"
					+ "\n where row between '"+command.getStart()+"' and '"+command.getEnd()+"' "
					+ "\n order by row desc";
			cvo = new CategoryVo();
			st = cn.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				cvo.setCateName(rs.getString("cate_name"));
				cvo.setCateNO(rs.getInt("cate_no"));
				list.add(cvo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public CategoryVo selectCateName(CategoryVo cvo){
		String sql = "select cate_name from category where cate_no = ?";
		try {
			st = cn.createStatement();
			rs = st.executeQuery(sql);
			cvo.setCateName(rs.getString(1));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cvo;
	}
	public int updateCategory(CategoryVo cvo){
		int result = -1;
		try {
			String sql = "update category set cate_name = ?";
			sql += "where cate_no = ?";
					pst = cn.prepareStatement(sql);
					pst.setString(1, cvo.getCateName());
					pst.setInt(2, cvo.getCateNO());
					result = pst.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public int deleteCategory(CategoryVo cvo){
		int result = 0;
		try {
			String sql = "delete from category where cate_no = ?";
			pst = cn.prepareStatement(sql);
			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
