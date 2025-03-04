package de.oc.integration.jasper.webapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import de.oc.utils.MessageSigner;

@WebServlet(name = "MessageSigning", urlPatterns = { "/sign" })
public class MessageSignerController extends HttpServlet {

	private static final long serialVersionUID = -5042760524308470544L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		AppConfig appConfig = null;

		try (PrintWriter pw = response.getWriter()) {
			appConfig = AppConfig.getInstance();

			String keyPath = appConfig.getConfigHomeDir() + "\\sign\\key.pem";
			byte[] key = MessageSigner.readFile(keyPath);

			String toSign = request.getParameter("toSign");
			String signature = new MessageSigner(key).sign(toSign);

			response.setLocale(Locale.ENGLISH);
			response.setContentType("text/plain");
			response.setHeader("content-type", "text/plain");

			pw.write(signature);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
}
