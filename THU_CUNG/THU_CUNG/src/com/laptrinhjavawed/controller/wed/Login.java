package com.laptrinhjavawed.controller.wed;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavawed.imp.DAO.AccountImp;
import com.laptrinhjavawed.model.Account;
import com.laptrinhjavawed.model.Card_Thu_cung;
import com.laptrinhjavawed.utils.SessionUtils;

@WebServlet(urlPatterns = { "/j_security_check" })
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	AccountImp account = new AccountImp();

	public Login() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String code = request.getParameter("code");

		String desk = null;
		if (code.equals("signin")) {
			String loi = request.getParameter("loi");
			if (loi != null && loi.equals("dangnhapsai")) {
				request.setAttribute("loi", "Tai khoan hoac mat khau khong dung");
			} else if (loi != null && loi.equals("khongcoquyen")) {
				request.setAttribute("loi", "Tai khoan cua ban khong co quyen dang nhap admmin");
			} else if (loi != null && loi.equals("chuadangnhap")) {
				request.setAttribute("loi", "Ban chua dang nhap");
			}
			desk = "/view/Signin.jsp";
		} else if (code.equals("signup")) {
			desk = "/view/Signup.jsp";
		}
		if (SessionUtils.getInstance().getValue(request, "giohangs") != null) {
			List<Card_Thu_cung> listSize = (List<Card_Thu_cung>) SessionUtils.getInstance().getValue(request,
					"giohangs");
			request.setAttribute("listSize", listSize.size());
		}
		if (SessionUtils.getInstance().getValue(request, "ACCOUNT") != null) {
			Account account = (Account) SessionUtils.getInstance().getValue(request, "ACCOUNT");
			request.setAttribute("name",account.getUser());
		}
		request.getRequestDispatcher(desk).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = request.getParameter("username");
		String pass = request.getParameter("password");
		String dangky = request.getParameter("login");
		if (dangky != null && dangky.equals("Dangky")) {
			String name = request.getParameter("name");
			String passAgain = request.getParameter("passAgain");
			if (user.isEmpty() || pass.isEmpty() || name.isEmpty() || passAgain.isEmpty()) {
				request.setAttribute("loi", "khong duoc de trong");
				request.getRequestDispatcher("/view/Signup.jsp").forward(request, response);
			} else if (!pass.equals(passAgain)) {
				request.setAttribute("loi", "khong trung mat khau");
				request.getRequestDispatcher("/view/Signup.jsp").forward(request, response);
			} else if (account.CheckNewAccount(user)) {
				request.setAttribute("loi", "tai khoan da ton tai");
				request.getRequestDispatcher("/view/Signup.jsp").forward(request, response);
			} else {
				account.InsertAccount(name, user, passAgain, 0);
				// gui email
				final String fromEmail = "19130082@st.hcmuaf.edu.vn";
				// Mat khai email cua ban
				final String password = "0372820810Hung@#*";
				// dia chi email nguoi nhan
				final String toEmail = user;
				final String subject = "Web Thu Cung";
				final String body = "Da dang ky thanh cong";
				Properties props = new Properties();
				props.put("mail.smtp.host", "smtp.gmail.com"); // SMTP Host
				props.put("mail.smtp.port", "587"); // TLS Port
				props.put("mail.smtp.auth", "true"); // enable authentication
				props.put("mail.smtp.starttls.enable", "true"); // enable STARTTLS
				Authenticator auth = new Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(fromEmail, password);
					}
				};
				Session session = Session.getInstance(props, auth);
				MimeMessage msg = new MimeMessage(session);
				// set message headers
				try {
					msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
					msg.addHeader("format", "flowed");
					msg.addHeader("Content-Transfer-Encoding", "8bit");
					msg.setFrom(new InternetAddress(fromEmail, "NoReply-JD"));
					msg.setReplyTo(InternetAddress.parse(fromEmail, false));
					msg.setSubject(subject, "UTF-8");
					msg.setText(body, "UTF-8");
					msg.setSentDate(new Date());
					msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail, false));
					Transport.send(msg);
				} catch (MessagingException e) {
					// TODO: handle exception
				}

				response.sendRedirect(request.getContextPath() + "/j_security_check?code=signin");

			}
		} else if (dangky != null && dangky.equals("Dangnhap")) {
			if (user.isEmpty() || pass.isEmpty()) {
				// ba loi
			} else {
				Account ac = account.CheckSignin(user, pass);
				if (ac != null) {
					SessionUtils.getInstance().putValue(request, "ACCOUNT", ac);
					response.sendRedirect(request.getContextPath() + "/HomePage");
				} else {
					// bao loi danh nhap sai
					response.sendRedirect(request.getContextPath() + "/j_security_check?code=signin&loi=dangnhapsai");
				}
				SessionUtils.getInstance().putValue(request, "ACCOUNT", ac);

			}

		}

	}

}
