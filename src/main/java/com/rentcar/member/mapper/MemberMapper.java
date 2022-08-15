package com.rentcar.member.mapper;


import com.rentcar.booking.BookingDTO;
import com.rentcar.carinfo.model.CarinfoDTO;
import com.rentcar.carinfo.model.CaroptionDTO;
import com.rentcar.login.model.LoginDTO;
import com.rentcar.member.model.CarConditionDTO;
import com.rentcar.member.model.CarInfo1DTO;
import com.rentcar.member.model.MemberDTO;
import org.springframework.stereotype.Repository;

import java.util.HashMap;


public interface MemberMapper {
    LoginDTO mypage(String id);


    LoginDTO login(String id);

    BookingDTO booking(String user_id);

    CarinfoDTO carinfo(String carnumber);

    CaroptionDTO caroption(String carnumber);
}
