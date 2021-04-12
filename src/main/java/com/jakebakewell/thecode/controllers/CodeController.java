package com.jakebakewell.thecode.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CodeController {
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping("/trycode")
	public String trycode(@RequestParam(value="code") String code, RedirectAttributes redirectAttributes) {
		if (code.equals("code")) {
			return "redirect:/thecode";
		}
		else {
			redirectAttributes.addFlashAttribute("error", "Incorrect code!");
			return "redirect:/";
		}
	}
	
	@RequestMapping("/thecode")
	public String thecode() {
		return "success.jsp";
	}
}
