package Hack.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Hack.db.Provider;
import Hack.db.Review;
import Hack.db.product;

public class ReviewDao 
{
	public static int reviewUpdate(Review v)
	{
		int status = 0;
		try 
		{
			Connection con = Provider.getConnection();
			String sql = "insert into review(buyeremailid,review,selleremailid) values(?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, v.getBuyeremailid());
			pst.setString(2, v.getReview());
			pst.setString(3, v.getSelleremailid());
			
			
			status = pst.executeUpdate();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static ArrayList<Review> getReview(String emailid)
	{
		ArrayList<Review> ar=new ArrayList<Review>();
		try
		{
		Connection con=Provider.getConnection();
		String sql="select * from review where teacheremailid=?";
		PreparedStatement pst=con.prepareStatement(sql);
		pst.setString(1, emailid);
		ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
			Review v=new Review();
			v.setBuyeremailid(rs.getString(1));
			v.setReview(rs.getString(2));
			v.setSelleremailid(rs.getString(3));
			ar.add(v);
		}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return ar;
		
	}
	public static ArrayList<Review> getTopReview()
	{
		ArrayList<Review> ar=new ArrayList<Review>();
		try
		{
		Connection con=Provider.getConnection();
		String sql="select * from review ";
		PreparedStatement pst=con.prepareStatement(sql);
		
		ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
			Review v=new Review();
			v.setBuyeremailid(rs.getString(1));
			v.setReview(rs.getString(2));
			v.setSelleremailid(rs.getString(3));
			ar.add(v);
		}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return ar;
		
	}
}
