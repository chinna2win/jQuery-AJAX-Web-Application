package com.java;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/GetUserServlet")
public class BirtServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Properties prop = new Properties();
	String propFileName = "birtReport.properties";
	InputStream inputStream = getClass().getClassLoader().getResourceAsStream(propFileName);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		  
		try {
			Map<String, String> options = new LinkedHashMap<String, String>();
			if (inputStream != null) {
				prop.load(inputStream);
			} else {
				throw new FileNotFoundException("property file '" + propFileName + "' not found in the classpath");
			}
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			Connection conn = DriverManager.getConnection(prop.getProperty("SERVER_TEST_DB_DRIVER"),
					prop.getProperty("USERNAME_TEST"), prop.getProperty("PASSWORD_TEST"));
			CallableStatement statCall = conn.prepareCall("{call dbPSIava.dbo.getDataPointName}");
			ResultSet rs = statCall.executeQuery();

			while (rs.next()) {
				options.put(rs.getString(1), rs.getString(1));
			}
			String json = new Gson().toJson(options);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(json);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}