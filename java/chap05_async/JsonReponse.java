package chap05_async;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;


@WebServlet("/JsonResponse")
public class JsonReponse extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	  // ---- JSON 데이터 응답하기 
	  
	  Map<String, Object> map = new HashMap<String, Object>();
	  map.put("title","파묘");
	  map.put("actors", Arrays.asList("김고은", "이도현", "최민식", "유해진"));
	  map.put("stars", 9.5);
	  map.put("info", Map.of("director", "장지헌", "genre", "스릴러"));
	  
	  // ---- JSON 문자열 (직열화)
	  Gson gson = new Gson();
	  String json = gson.toJson(map);
	  
	  // ---- 응답 만들기 ( 헤더, 바디 전송 )
	  response.setHeader("content-Type", "application/json; charset=UTF-8");
	  PrintWriter out = response.getWriter();
	  out.write(json);
	  
	  out.close();
	  
	  
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
