package serviceI;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface validateLoginI {

	public void doGet(HttpServletRequest request, HttpServletResponse response) 
	           throws ServletException, Exception;
}
