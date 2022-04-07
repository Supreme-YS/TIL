package me.supreme;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HelloServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        System.out.println("Servlet Init");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("doGet");
        resp.getWriter().println("<html>");
        resp.getWriter().println("<head>");
        resp.getWriter().println("<body>");
//        resp.getWriter().println("<h1>Hello Servlet</h1>");
        resp.getWriter().println("<h1> Hello," + getName());
        resp.getWriter().println("</body>");
        resp.getWriter().println("</head>");
        resp.getWriter().println("</html>");
    }

    // Object 타입이니까 뭐, toString을 호출해서 값을 잘 꺼낸다.
    private Object getName() {
        return getServletContext().getAttribute("name");
    }

    @Override
    public void destroy() {
        System.out.println("Servlet Destroyed");
    }
}
