package myssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import myssm.entity.User;
import myssm.service.UserService;
import myssm.vo.TiaoJian;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Conditional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * @控制器
 * @author chen
 */

@Controller
public class UserController {

	@Autowired
	private UserService userServiceImpl;

	// 注册
	@RequestMapping("regist")
	public String regist(User user, Model model) {
		String cardmsg = "";
		User cardId = userServiceImpl.getCardId(user.getCardId());

		if (cardId != null) {
			cardmsg = "用户名已存在";
			model.addAttribute("cardmsg", cardmsg);
			return "/jsp/regist.jsp";
		}
		if (cardId == null) {
			userServiceImpl.addUser(user);
			cardmsg = "创建成功";
		}
		model.addAttribute("cardmsg", cardmsg);
		return "/jsp/login.jsp";
	}

	// 登陆
	@RequestMapping("login")
	public String login(HttpSession httpSession, Model model, String cardId,
			String password) {
		User user = userServiceImpl.getUserByCardIdAndPwd(cardId, password);
		String msg = "";
		if (user == null) {
			msg = "用户名或密码错误,请重新输入";
		}
		if (msg != "") {
			model.addAttribute("msg", msg);
			return "/jsp/login.jsp";
		}
		httpSession.setAttribute("user", user);
		return "redirect:/jsp/index.jsp";
	}

	// 退出
	@RequestMapping("logout")
	public String logout(HttpSession httpSession) {
		httpSession.removeAttribute("user");

		return "redirect:/jsp/login.jsp";
	}

	// 分页查询数据
	@RequestMapping("showReal")
	public String showReal(Model model, TiaoJian tiaoJian) {
		model.addAttribute("pb", userServiceImpl.showBean(tiaoJian));
		return "/jsp/query.jsp";
	}

}
