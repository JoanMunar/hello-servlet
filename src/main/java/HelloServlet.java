import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by jmunarb on 27/10/16.
 */
public class HelloServlet extends HttpServlet {

    private String message;

    public void init() throws ServletException {

// Do required initialization
        message = "Hello World";
        System.out.println("sServlet" + HelloServlet.class.getName() + "OK");
    }

    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws ServletException, IOException
    {

        // Create cookies for first and last names.
        Cookie firstName = new Cookie("first_name",
                request.getParameter("first_name"));
        Cookie lastName = new Cookie("last_name",
                request.getParameter("last_name"));

        // Set response content type
        response.setContentType("text/html");

        // Add both the cookies in the response header.
        response.addCookie( firstName );
        response.addCookie( lastName );


        // Actual logic goes here.
        PrintWriter out = response.getWriter();
        out.println("<h1>" + message + "</h1>");
    }

    public void destroy()
    {
        System.out.println("Salimos");
    }
}
