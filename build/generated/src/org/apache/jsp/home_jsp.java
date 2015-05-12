package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("        <title>Home Page</title>\r\n");
      out.write("    <script src=\"SpryAssets/SpryMenuBar.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <link href=\"SpryAssets/SpryMenuBarHorizontal.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("    <style type=\"text/css\">\r\n");
      out.write("    body {\r\n");
      out.write("\tbackground-image: url(siteBackground.jpg);\r\n");
      out.write("}\r\n");
      out.write("    </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("    <input name=\"\" type=\"image\" src=\"e-ban.png\">\r\n");
      out.write("<br><div align=\"center\">\r\n");
      out.write("  <ul id=\"MenuBar1\" class=\"MenuBarHorizontal\">\r\n");
      out.write("    <li><strong><a href=\"home.jsp\">Home</a> </strong></li>\r\n");
      out.write("    <li><strong><a href=\"#\" class=\"MenuBarItemSubmenu\">Request forms</a>\r\n");
      out.write("      </strong>\r\n");
      out.write("      <ul>\r\n");
      out.write("        <li><strong><a href=\"form.jsp\">Net Banking</a></strong></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("    </li>\r\n");
      out.write("    <li><strong><a class=\"MenuBarItemSubmenu\" href=\"#\">Net Banking</a>\r\n");
      out.write("      </strong>\r\n");
      out.write("      <ul>\r\n");
      out.write("        <li><strong><a href=\"login.jsp\">Login</a> </strong></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("    </li>\r\n");
      out.write("    <li><strong><a href=\"contact.jsp\">Contact Us</a></strong></li>\r\n");
      out.write("  </ul>\r\n");
      out.write("</div>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("var MenuBar1 = new Spry.Widget.MenuBar(\"MenuBar1\", {imgDown:\"SpryAssets/SpryMenuBarDownHover.gif\", imgRight:\"SpryAssets/SpryMenuBarRightHover.gif\"});\r\n");
      out.write("    </script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
