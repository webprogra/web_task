import org.jsoup.Jsoup;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybean.data.*;
public class clawler extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public clawler() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		srcBean bean=new srcBean();
		request.setAttribute("bean",bean);
		request.setCharacterEncoding("gb2312");
		String url=request.getParameter("url");
        Document doc = Jsoup.connect(url).get();
        Elements jpgs=doc.select("img[src$=.jpg!qt226]");
        int size=jpgs.size();
        bean.setNum(size);
        String[]linkSrc=new String[size];
        String[]linkText=new String[size];
        int i=0;
        for (Element src : jpgs) {
        	String link=src.attr("abs:src");
        	linkSrc[i]=(src.attr("abs:src")).substring(0,(link.length()-6));
        	linkText[i]=src.attr("alt");
        	i++;
        }
        bean.setJpgs(linkSrc);
        bean.setName(linkText);
        RequestDispatcher dispatcher=request.getRequestDispatcher("show.jsp");
		dispatcher.forward(request,response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
