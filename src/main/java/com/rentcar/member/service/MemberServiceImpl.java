package com.rentcar.member.service;


import com.rentcar.booking.BookingDTO;
import com.rentcar.carinfo.model.CarinfoDTO;
import com.rentcar.carinfo.model.CaroptionDTO;
import com.rentcar.login.model.LoginDTO;
import com.rentcar.member.model.CarConditionDTO;
import com.rentcar.member.model.CarInfo1DTO;
import com.rentcar.member.model.MemberDTO;
import com.rentcar.member.mapper.MemberMapper;



import com.rentcar.member.mapper.MemberMapper;
import com.rentcar.member.model.CarConditionDTO;
import com.rentcar.member.model.CarInfo1DTO;
import com.rentcar.member.model.MemberDTO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service("com.rentcar.member.service.MemberServiceImpl")
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper mapper;


    @Override
    public LoginDTO mypage(String id) {
        return mapper.mypage(id);
    }


    @Override
    public LoginDTO login(String id) {
        return mapper.login(id);
    }

    @Override
    public BookingDTO booking(String user_id) {
        return mapper.booking(user_id);
    }

    @Override
    public CarinfoDTO carinfo(String carnumber) {
        return mapper.carinfo(carnumber);
    }

    @Override
    public CaroptionDTO caroption(String carnumber) {
        return mapper.caroption(carnumber);
    }
}
