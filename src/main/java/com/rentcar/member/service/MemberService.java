package com.rentcar.member.service;


import com.rentcar.booking.BookingDTO;
import com.rentcar.carinfo.model.CarinfoDTO;
import com.rentcar.carinfo.model.CaroptionDTO;
import com.rentcar.login.model.LoginDTO;


//@Service
public interface MemberService {

    LoginDTO mypage(String id);
    LoginDTO login(String id);

    BookingDTO booking(String user_id);

    CarinfoDTO carinfo(String carnumber);

    CaroptionDTO caroption(String carnumber);
}