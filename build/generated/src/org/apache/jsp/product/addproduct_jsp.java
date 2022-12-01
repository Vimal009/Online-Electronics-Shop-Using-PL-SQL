package org.apache.jsp.product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            form{\n");
      out.write("                width: 350px;\n");
      out.write("                height: 390px;\n");
      out.write("                background: linear-gradient(to top,rgb(248, 248, 248)100%,rgb(243, 241, 241)9);\n");
      out.write("                position: absolute;\n");
      out.write("                top: 100px;\n");
      out.write("                right: 450px;\n");
      out.write("                border-radius: 10px;\n");
      out.write("                padding: 25px;\n");
      out.write("            }\n");
      out.write("            h3{\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            body {\n");
      out.write("            background-image: url(\"iii.jpg\");\n");
      out.write("            background-color: #cccccc;\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            background-size: 100%;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Add Product</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"form\">\n");
      out.write("        <form method=\"post\" action=\"../operation/add.jsp\">\n");
      out.write("            <h3>Product Id: <input type=\"text\" name=\"id\" placeholder=\"ID\"><br></h3>\n");
      out.write("            <h3>Product Name: <input type=\"text\" name=\"name\" placeholder=\"Name\"><br></h3>\n");
      out.write("            <h3>Product Description: <input type=\"text\" name=\"description\" placeholder=\"Description\"><br></h3>\n");
      out.write("            <h3>Product Price: <input type=\"text\" name=\"price\" placeholder=\"Price\"><br></h3>\n");
      out.write("            <h3>Product Color: <input type=\"text\" name=\"color\" placeholder=\"Color\"><br></h3>\n");
      out.write("            <h3>Company Name: <input type=\"text\" name=\"company\" placeholder=\"Company Name\"><br></h3>\n");
      out.write("            <h3>Product Type: <input type=\"text\" name=\"type\" placeholder=\"Type\"><br></h3>\n");
      out.write("            <h3>Product Available: <input type=\"text\" name=\"available\" placeholder=\"Available\"><br></h3>\n");
      out.write("            \n");
      out.write("            <input type=\"submit\" value=\"ADD\">\n");
      out.write("        </div>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
