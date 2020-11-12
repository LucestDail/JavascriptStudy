package jspChap1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalenderTest
 */
@WebServlet("/CalenderTest")
public class CurrentTimeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CurrentTimeServlet() {
        super();
    }

/**
 * get 방식 요청시 호출되는 메소드
 * request : 요청 객체, 브라우저(클라이언트) -> 서버(데이터베이스)
 * response : 응답 객체, 서버(데이터베이스) -> 브라우저(클라이언트)
 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		Calendar c = Calendar.getInstance();
		int h = c.get(Calendar.HOUR_OF_DAY); //현재 시
		int m = c.get(Calendar.MINUTE); // 현재 분
		int s = c.get(Calendar.SECOND); // 현재 초
		PrintWriter out = response.getWriter(); //클라이언트로 전송할 문자형 출력스트림
		out.println("<html><head><title>현재시간</title></head>");
		out.println("<body>");
		out.println("<h1> 현재시간은 " + h + "시 " + m + "분 " + s + "초 입니다.</h1>");
		out.println("</body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
