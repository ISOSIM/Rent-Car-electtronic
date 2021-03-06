package com.rentcar.login.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.rentcar.login.model.LoginDTO;
import com.rentcar.login.service.LoginService;
import com.rentcar.utility.UploadLicense;
import com.rentcar.utility.Utility;

@Controller
public class LoginController {
  private static final Logger log = LoggerFactory.getLogger(LoginController.class);

  @Autowired
  @Qualifier("com.rentcar.login.service.LoginServiceImpl")
  private LoginService service;



  @Value("${login.url}")
  private String apiURL;

  @Value("${login.secret-key}")
  private String secretKey;


  //ocr
  @PostMapping("/license")
  @ResponseBody
  public ResponseEntity<Map> licInfo(MultipartFile fname) {

    String upDir = UploadLicense.getUploadDir();
    String fname2 = Utility.saveFileSpring(fname, upDir);

    String imageFile = UploadLicense.getUploadDir() + "\\" + fname2;

    Map map = new HashMap();

    try {
      URL url = new URL(apiURL);
      HttpURLConnection con = (HttpURLConnection) url.openConnection();
      con.setUseCaches(false);
      con.setDoInput(true);
      con.setDoOutput(true);
      con.setReadTimeout(30000);
      con.setRequestMethod("POST");
      String boundary = "----" + UUID.randomUUID().toString().replaceAll("-", "");
      con.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + boundary);
      con.setRequestProperty("X-OCR-SECRET", secretKey);

      JSONObject json = new JSONObject();
      json.put("version", "V2");
      json.put("requestId", UUID.randomUUID().toString());
      json.put("timestamp", System.currentTimeMillis());
      JSONObject image = new JSONObject();
      image.put("format", "jpg");
      image.put("name", "demo");
      JSONArray images = new JSONArray();
      images.put(image);
      json.put("images", images);
      String postParams = json.toString();

      con.connect();
      DataOutputStream wr = new DataOutputStream(con.getOutputStream());
      long start = System.currentTimeMillis();
      File file = new File(imageFile);
      Utility.writeMultiPart(wr, postParams, file, boundary);
      wr.close();

      int responseCode = con.getResponseCode();
      BufferedReader br;
      if (responseCode == 200) {
        br = new BufferedReader(new InputStreamReader(con.getInputStream()));
      } else {
        br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
      }
      String inputLine;
      StringBuffer response = new StringBuffer();
      while ((inputLine = br.readLine()) != null) {
        response.append(inputLine);
      }
      br.close();
      // System.out.println(response); // ?????????

      // ---------------------------------------?????? ????????? ?????? ????????? ?????? ??????
      // String to Json Object
      JSONObject jsonObj = new JSONObject(response.toString());
      // System.out.println(jsonObj); https://jsonbeautifier.org/ ?????? ??????
      JSONArray jsonArr = (JSONArray) jsonObj.get("images");
      // System.out.println(jsonArr); https://jsonbeautifier.org/ ?????? ??????
      JSONObject jsonObj2 = (JSONObject) jsonArr.get(0);
      // System.out.println(jsonObj2); https://jsonbeautifier.org/ ?????? ??????
      JSONArray jsonArr2 = (JSONArray) jsonObj2.get("fields");
      // System.out.println(jsonArr2); //https://jsonbeautifier.org/ ?????? ??????
      // System.out.println(" ?????? ??? : " + jsonArr2.length());// ?????????

      StringBuffer sb = new StringBuffer();
      for (int i = 0; i < jsonArr2.length(); i++) {
        sb.append(" " + jsonArr2.getJSONObject(i).get("inferText"));

      }

      // System.out.println(sb);

      // ---- ??????????????? ???????????? ???????????? ????????????
      int hypLic = sb.indexOf("-"); // ??????????????? ?????? ??? ????????? ????????? ????????????

      String lic1 = sb.substring(hypLic - 2); // ????????? ????????? ?????? ??????????????? ?????? ?????? //loginDTO??? license??? ??????????????????
      // System.out.println(lic1);

      String lic = lic1.substring(0, 16);
      System.out.println("????????????: " + lic);

      // ---- ??????????????? ???????????? ????????????????????? ????????????
      int hypJum = sb.lastIndexOf("-"); // ????????? -??? ???????????? //hypenJ : ??????????????? ?????? ?????????

      String jumin1 = sb.substring(hypJum - 6); // - ?????? ??? 6??????(????????????)?????? ?????? //jumin1 : ????????????
      // System.out.println(jumin1);

      String jumin = jumin1.substring(0, 15); // ???????????????????????? (- ??????)
      System.out.println("??????????????????: " + jumin);

      map.put("lic", lic);
      map.put("jumin", jumin);

    } catch (Exception e) {
      System.out.println(e);
    }
    return new ResponseEntity<Map>(map, HttpStatus.OK);

  }

  @GetMapping("/lic")
  public String licInfo() {

    return "/lic";
  }



  @GetMapping("/user/pwfind")
  public String pwfind() {

    return "/user/pwfind";
  }

  @GetMapping("/user/idfind")
  public String idfind() {

    return "/user/idfind";
  }

  @PostMapping("/user/create")
  public String create(LoginDTO dto, HttpServletRequest request) throws IOException {

    String upDir = UploadLicense.getUploadDir();
    String fname = Utility.saveFileSpring(dto.getFnameMF(), upDir);

    int size = (int) dto.getFnameMF().getSize();
    if (size > 0) {
      dto.setFname(fname);
    } else {
      return "error";
    }

    if (service.create(dto) > 0) {
      return "redirect:/";
    } else {
      return "error";
    }

  }

  @PostMapping("/user/createForm")
  public String create() {

    return "/user/create";
  }

  @GetMapping("/user/agree")
  public String agree() {

    return "/user/agree";
  }

  @GetMapping("/user/logout")
  public String logout(HttpSession session) {
    session.invalidate();

    return "redirect:/";
  }

  @PostMapping("/user/login")
  public String login(@RequestParam Map<String, String> map, HttpSession session, HttpServletRequest request,
      HttpServletResponse response, Model model) {

    int cnt = service.loginCheck(map);

    if (cnt > 0) {// ???????????????
      Map gmap = service.getGrade(map.get("id"));
      session.setAttribute("id", map.get("id"));
      session.setAttribute("grade", gmap.get("grade"));
      session.setAttribute("mname", gmap.get("mname"));

      // ?????? ??????, ????????? ?????? ??????
      Cookie cookie = null;
      String c_id = request.getParameter("c_id");
      if (c_id != null) {
        cookie = new Cookie("c_id", c_id); // c_id=> Y
        cookie.setMaxAge(60 * 60 * 24 * 365);// 1???
        response.addCookie(cookie);// client ???????????? ?????? ??????

        cookie = new Cookie("c_id_val", map.get("id"));
        cookie.setMaxAge(60 * 60 * 24 * 365);
        response.addCookie(cookie);
      } else {
        cookie = new Cookie("c_id", ""); // ?????? ??????
        cookie.setMaxAge(0);
        response.addCookie(cookie);

        cookie = new Cookie("c_id_val", "");// ?????? ??????
        cookie.setMaxAge(0);
        response.addCookie(cookie);
      }
    }

    if (cnt == 0 || cnt < 0) {

      model.addAttribute("msg", "????????? ?????? ??????????????? ???????????? ????????????.");

      return "/login/errorMsg";
    }
    return "redirect:/";
  }

  @GetMapping("/user/login")
  public String login(HttpServletRequest request) {

    // ?????? ?????? ??????
    String c_id = ""; // c_id: ????????? ?????? ?????? (Y)
    String c_id_val = ""; // ????????? ???

    Cookie[] cookies = request.getCookies();
    Cookie cookie = null;

    if (cookies != null) {
      for (int i = 0; i < cookies.length; i++) {
        cookie = cookies[i];

        if (cookie.getName().equals("c_id")) {
          c_id = cookie.getValue(); // Y
        } else if (cookie.getName().equals("c_id_val")) {
          c_id_val = cookie.getValue(); // ????????????
        }
      }
    }

    request.setAttribute("c_id", c_id);
    request.setAttribute("c_id_val", c_id_val);

    return "/user/login";
  }

  @GetMapping("/")
  public String home() {

    return "/home";
  }
}
