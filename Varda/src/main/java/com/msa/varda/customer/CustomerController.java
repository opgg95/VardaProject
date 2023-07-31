package com.msa.varda.customer;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.catalina.SessionIdGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class CustomerController {

   @Autowired
   ICustomerService customerService;

   //메인화면
   @RequestMapping(value="")
   public String logout() {
      return "main/logoutMain";
   }
   
   //로그인 1)로그인 폼으로
   @RequestMapping(value = "customer/login", method = RequestMethod.GET)
   public String login() {
      return "customer/loginForm"; // loginForm.jsp 또는 loginForm.html과 같은 실제 파일 이름을 반환합니다.
   }
   
   //로그인폼에서 2-1)회원가입 폼으로
   @RequestMapping(value="customer/join", method=RequestMethod.GET)
   public String joinCustomer() {
      return "customer/joinForm";
   }
  
  @RequestMapping(value="customer/joinCustomer", method = RequestMethod.POST)
  public String joinCustomer(CustomerVO customerVO, HttpSession session, Model model, @RequestParam("cId") String cId) {
     try {
        System.out.println("CustomerVO: "+ customerVO);
        customerService.joinCustomer(customerVO);//DB저장 처리 시작
         session.setAttribute("loginId", customerVO.getcId());
         session.setAttribute("seesionPW", customerVO.getcPwd());
         session.setAttribute("sessionName", customerVO.getcName());
         model.addAttribute("message", cId);
           return "customer/joinSuccess";
     }catch(DuplicateKeyException e) {
//           customerVO.setcId(null);
//           model.addAttribute("customerVO", customerVO);
           model.addAttribute("errorMessage", "이미 사용중인 ID입니다.");
           model.addAttribute("message", e.getMessage());
           e.printStackTrace();
           return "customer/joinForm";
  }
 }
 
   
     @GetMapping("/customer/joinCustomer") 
     public String successjoin(CustomerVO customerVO, HttpSession session, Model model, String cId) {
        session.setAttribute("loginId", customerVO.getcId());
         session.setAttribute("sessionPW", customerVO.getcPwd());
         session.setAttribute("sessionName", customerVO.getcName());
         model.addAttribute("message", cId);
        return "redirect:/customer/joinSuccess"; }
    
  
  //회원가입 시 중복되는 아이디가 있는지 체크
   @RequestMapping("customer/idCheck")
   public @ResponseBody String idCheck(@RequestParam("cId") String cId, Model model) {
      return customerService.idCheck(cId) ? "사용가능한 id입니다." : "이미 사용중인 id입니다.";
       }

   @RequestMapping(value="customer/loginForm", method =RequestMethod.GET)
   public String loginForm() {
      System.out.println("GET방식");
   return "redirect:/main/loginMain";
}
   
   //로그인폼에서 3)로그인 후
   @RequestMapping(value="customer/loginForm",method=RequestMethod.POST)
   //public String loginProcess(@RequestParam("id") String id, @RequestParam("password") String password) {
   public String loginProcess(CustomerVO customerVO, HttpSession session, Model model, String cId) {
      boolean loginOk= customerService.getInfo(customerVO);
      System.out.println("결과: "+loginOk);
      if(loginOk) {
         //세션에 저장하기
         session.setAttribute("loginId", customerVO.getcId());
         session.setAttribute("seesionPW", customerVO.getcPwd());
         session.setAttribute("sessionName", customerVO.getcName());
         System.out.println("로그인 성공");
         //성공 -forward
         model.addAttribute("message", cId + " 님 반갑습니다!  ");
         return "main/loginMain"; //로그인 성공시 이동할 페이지
      }else {
         //실패 - forward
         model.addAttribute("errorMessage", "ID 또는 PW가 일치자지 않거나 존재하지 않습니다.");
         return "customer/loginForm"; //로그인 실패시 로그인 폼으로 redirect
//         return "redirect:/";
      }
      //return "member/login";//  /WEB-INF/views/member/login.jsp
   }
    
   @RequestMapping(value="customer/loginConnect", method=RequestMethod.GET)
   public String loginConnect() {
      return "main/loginMain";
   }
   
   @RequestMapping(value="customer/loginConnect", method=RequestMethod.POST)
   public String loginConnect(CustomerVO customerVO, HttpSession session, Model model, String cId) {
      session.setAttribute("loginId", customerVO.getcId());
      session.setAttribute("seesionPW", customerVO.getcPwd());
      session.setAttribute("sessionName", customerVO.getcName());
      System.out.println("로그인 성공");
      //성공 -forward
      model.addAttribute("message", cId + " 님 환영합니다!");
      return "../main/loginMain";
   }
   
      //로그아웃하기
      @RequestMapping(value="customer/logout", method = RequestMethod.GET)
      public String logout(HttpSession session, HttpServletRequest request) {
         session.invalidate(); //로그아웃
         return "redirect:/";
      }


      
    //회원정보 수정하기 1)폼으로
      @RequestMapping(value="mypage/update", method=RequestMethod.GET)
         public String updateCustomerInfo(HttpSession session, Model model, CustomerVO customerVO) {
         String sessionId = (String)session.getAttribute("loginId");
         if(sessionId.equals("admin")) {
            return "redirect:/product/addProduct";
         }else {
            if(sessionId != null && !sessionId.equals("")) {
               customerVO = customerService.selectCustomerVO(sessionId);
               model.addAttribute("customer", customerVO);
               model.addAttribute("message", "회원정보 수정");
               return "mypage/update";
            }else {
               //sessionId가 세션에 없을 때 (로그인하지 않았을 때)
               model.addAttribute("message", "NOT_LOGIN_USER");
               return "main/logoutMain";
            }
         }
      }
         //2)로그인 메인폼으로

         @RequestMapping(value="mypage/update", method = RequestMethod.POST)
         public String updateCustomerInfo(@ModelAttribute("customerVO") CustomerVO customerVO, HttpSession session, Model model) {
            String sessionId = (String)session.getAttribute("loginId");
            customerVO.setcId(sessionId);
            customerService.updateInfo(customerVO); //DB에 저장시작
            model.addAttribute("customer", customerVO);
            return "main/loginMain";
         }
      
}

/*
 * package com.msa.varda.customer;
 * 
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpSession;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestMethod; import
 * org.springframework.web.bind.annotation.RequestParam; import
 * org.springframework.web.bind.annotation.ResponseBody;
 * 
 * @Controller public class CustomerController {
 * 
 * @Autowired ICustomerService customerService;
 * 
 * // 메인화면
 * 
 * @RequestMapping(value = "") public String logout() { return
 * "main/logoutMain"; }
 * 
 * // 로그인 1)로그인 폼으로
 * 
 * @RequestMapping(value = "customer/login", method = RequestMethod.GET) public
 * String login() { return "customer/loginForm"; // loginForm.jsp 또는
 * loginForm.html과 같은 실제 파일 이름을 반환합니다. }
 * 
 * // 로그인폼에서 2-1)회원가입 폼으로
 * 
 * @RequestMapping(value = "customer/join", method = RequestMethod.GET) public
 * String joinCustomer() { return "customer/joinForm"; }
 * 
 * 
 * //회원가입하기
 * 
 * @RequestMapping(value="customer/joinCustomer", method = RequestMethod.POST)
 * public String joinCustomer(CustomerVO customerVO) {
 * System.out.println("CustomerVO: "+ customerVO);
 * customerService.joinCustomer(customerVO);//DB저장 처리 시작 return
 * "customer/joinSuccess";
 * 
 * }
 * 
 * 
 * // 회원가입 시 중복되는 아이디가 있는지 체크
 * 
 * @RequestMapping("customer/idCheck") public @ResponseBody String
 * idCheck(@RequestParam("id") String id, Model model) {
 * System.out.println("id: " + id); return customerService.idCheck(id) ?
 * "사용가능한 id입니다." : "사용불가 id입니다."; }
 * 
 * // 로그인폼에서 3)로그인 후
 * 
 * @RequestMapping(value = "customer/loginForm", method = RequestMethod.POST) //
 * public String loginProcess(@RequestParam("id") String id,
 * // @RequestParam("password") String password) { public String
 * loginProcess(CustomerVO customerVO, HttpSession session) { boolean loginOk =
 * customerService.getInfo(customerVO); System.out.println("결과: " + loginOk); if
 * (loginOk) { // 세션에 저장하기 session.setAttribute("loginId", customerVO.getcId());
 * session.setAttribute("seesionPW", customerVO.getcPwd());
 * session.setAttribute("sessionName", customerVO.getcName());
 * System.out.println("로그인 성공"); // 성공 -forward return "main/loginMain"; } else
 * { // 실패 - forward return "redirect:/"; } // return "member/login";//
 * /WEB-INF/views/member/login.jsp }
 * 
 * @RequestMapping(value = "/main/loginMain") public String goLoginMain() {
 * return "redirect:/main/loginMain"; }
 * 
 * // 로그아웃하기
 * 
 * @RequestMapping(value = "customer/logout", method = RequestMethod.GET) public
 * String logout(HttpSession session, HttpServletRequest request) {
 * session.invalidate(); // 로그아웃 return "redirect:/"; }
 * 
 * // 회원정보 수정하기 1)폼으로
 * 
 * @RequestMapping(value = "mypage/update", method = RequestMethod.GET) public
 * String updateCustomerInfo(HttpSession session, Model model, CustomerVO
 * customerVO) { String sessionId = (String) session.getAttribute("loginId");
 * customerVO = customerService.updateCustomerInfo(sessionId);
 * model.addAttribute(customerVO); return "/mypage/update"; }
 * 
 * // 2)로그인 메인폼으로
 * 
 * @RequestMapping(value = "mypage/update", method = RequestMethod.POST) public
 * String updateCustomerInfo(CustomerVO customerVO, HttpSession session, Model
 * model) { String sessionId = (String) session.getAttribute("loginId");
 * customerVO.setcId(sessionId); customerService.updateInfo(customerVO); return
 * "redirect:/main/loginMain"; } }
 */