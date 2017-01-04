package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import connection.DBConnection;
import query.Select.profilequery;
import vo.Profile;

public class ProfileController {
	
	public ArrayList<Profile> selectAllProfileList(HttpServletRequest request){
		
		// return value 
		ArrayList<Profile> profiles = new ArrayList<Profile>();
		Profile profile = null;
		
		DBConnection connect = new DBConnection();
		query.Select.profilequery ProfileQuery = new query.Select.profilequery();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = connect.OracleConnect();
			
			pstmt = conn.prepareStatement(ProfileQuery.getSelectAllProfileList());
			
			rs = pstmt.executeQuery();

			
			while(rs.next()){
				profile = new Profile();
				
				profile.setPROFILE_ID(rs.getInt("PROFILE_ID"));
				profile.setPNAME(rs.getString("NAME"));
				profile.setADDRESS(rs.getString("Address"));
				profile.setEMAIL(rs.getString("EMAIL"));
				
				profiles.add(profile);
			}
		} catch (ClassNotFoundException ce){
			ce.printStackTrace();
		} catch (SQLException e) {
			// SQL Error Exception
			e.printStackTrace();
		} finally{
			try{ 
				if ( rs != null ) rs.close();
				if ( pstmt != null) pstmt.close();
				if ( conn != null) conn.close();
			} catch(Exception e){
				e.printStackTrace();
			}
		}
		return profiles;
	}
}