package com.lion.controller;

import com.lion.constant.UserConstant;
import com.lion.entity.Project;
import com.lion.entity.Publication;
import com.lion.entity.User;
import com.lion.service.ProjectService;
import com.lion.service.PublicationService;
import com.lion.service.UserService;
import com.lion.util.FileHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author DJ
 * @date 2017/11/1.
 */
@Controller
@RequestMapping(value = "/member")
public class MemberController {

    @Autowired
    UserService userService;
    @Autowired
    PublicationService publicationService;
    @Autowired
    ProjectService projectService;

    //显示所有用户信息
    @RequestMapping(value = "")
    public String memberPage(HttpServletRequest request){
        List<User> professorList=userService.listUserByRole(UserConstant.PROFESSOR);
        List<User> graduateList=userService.listUserByRole(UserConstant.GRADUATE);
        List<User> undergraduateList=userService.listUserByRole(UserConstant.UNDERGRADUATE);
        List<User> alumniList=userService.listUserByRole(UserConstant.ALUMNI);
        request.setAttribute("professorList",professorList);
        request.setAttribute("graduateList",graduateList);
        request.setAttribute("undergraduateList",undergraduateList);
        request.setAttribute("alumniList",alumniList);
        return "member/memberInfo";
    }

    //显示用户详细信息
    @RequestMapping(value = "memberDetail")
    public String memberDetail(Long id,HttpServletRequest request){
        User user=userService.getUserByUserId(id);
        request.setAttribute("user",user);
        List<Publication> publications=publicationService.listPublicationByUserId(id);
        request.setAttribute("publications",publications);
        List<Project> projects=projectService.listProjectByUserId(id);
        request.setAttribute("projects",projects);
        return "member/memberDetail";
    }
}
