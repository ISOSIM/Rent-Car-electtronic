package com.rentcar.member.controller;

import com.rentcar.booking.BookingDTO;
import com.rentcar.carinfo.model.CarinfoDTO;
import com.rentcar.carinfo.model.CaroptionDTO;
import com.rentcar.login.model.LoginDTO;
import com.rentcar.member.model.CarConditionDTO;
import com.rentcar.member.model.CarInfo1DTO;
import com.rentcar.member.model.MemberDTO;
import com.rentcar.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.HashMap;

@Controller
@RequestMapping("/user/member")
public class MemberController {

    @Autowired
    @Qualifier("com.rentcar.member.service.MemberServiceImpl")
    private MemberService service;

    @GetMapping("/reservation")
    public String reservation(HttpSession session, Model model){
        String id = (String)session.getAttribute("id");
        System.out.println("id :::"+id);
//        String id = "user1";
        if (id == null) {
            return "redirect:/user/member/login/";
        } else {
            //LoginDTO dto = service.mypage(id);
            //System.out.println("dto :::"+dto);
            LoginDTO logindto = service.login(id);
            System.out.println("logindto :::"+logindto);

            String user_id = id;
            System.out.println("user_id :::"+user_id);
            BookingDTO bookdto = service.booking(user_id);
            System.out.println("bookdto :::"+bookdto);

            String carnumber = bookdto.getReserved_car();
            System.out.println("carnumber :::"+carnumber);
            CarinfoDTO cardto = service.carinfo(carnumber);
            System.out.println("cardto :::"+cardto);


            CaroptionDTO optdto = service.caroption(carnumber);
            System.out.println("optdto :::"+optdto);

            model.addAttribute("logindto", logindto);
            model.addAttribute("bookdto", bookdto);
            model.addAttribute("cardto", cardto);
            model.addAttribute("optdto", optdto);
        }


        return "/reservation";
    }


    @GetMapping("/mypage")
    public String mypage(HttpSession session, Model model){
        String id = (String) session.getAttribute("id");
        System.out.println("@@@@@@@@@@@@@@@@@@"+id);
        if (id == null) {
            return "redirect:/user/login";
        } else {
            LoginDTO dto = service.mypage(id);
            System.out.println("dto!!"+dto);
            model.addAttribute("dto", dto);
        }


        return "/mypage";
    }


}
