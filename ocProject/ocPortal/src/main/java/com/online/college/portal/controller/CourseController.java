package com.online.college.portal.controller;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.online.college.core.brand.domain.Brand;
import com.online.college.core.brand.domain.BrandQueryDto;
import com.online.college.core.brand.service.IBrandService;
import com.online.college.core.branddetail.domain.BrandDetail;
import com.online.college.core.branddetail.service.IBrandDetailService;
import com.online.college.core.order.domain.Order;
import com.online.college.core.order.service.IOrderService;
import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.online.college.common.storage.QiniuStorage;
import com.online.college.common.web.JsonView;
import com.online.college.common.web.SessionContext;
import com.online.college.core.auth.domain.AuthUser;
import com.online.college.core.auth.service.IAuthUserService;
import com.online.college.core.course.domain.Course;
import com.online.college.core.course.domain.CourseQueryDto;
import com.online.college.core.course.domain.CourseSection;
import com.online.college.core.course.service.ICourseSectionService;
import com.online.college.core.course.service.ICourseService;
import com.online.college.core.user.domain.UserCourseSection;
import com.online.college.core.user.service.IUserCourseSectionService;
import com.online.college.portal.business.ICourseBusiness;
import com.online.college.portal.vo.CourseSectionVO;

/**
 * 课程详情信息
 */
@Controller
@RequestMapping("/course")
public class CourseController {

	@Autowired
	private ICourseBusiness courseBusiness;

	@Autowired
	private ICourseService courseService;

	@Autowired
	private IAuthUserService authUserService;

	@Autowired
	private ICourseSectionService courseSectionService;

	@Autowired
	private IUserCourseSectionService userCourseSectionService;

	@Autowired
	private IBrandService brandService;

	@Autowired
	private IOrderService orderService;

	@Autowired
	private IBrandDetailService branddetailService;


	/**
	 * 课程章节页面
	 *
	 * @return
	 */
	@RequestMapping("/learn/{courseId}")
	public ModelAndView learn(@PathVariable Long courseId) {
		if (null == courseId)
			return new ModelAndView("error/404");

		//获取课程
		Course course = courseService.getById(courseId);
		if (null == course)
			return new ModelAndView("error/404");

		//获取课程章节
		ModelAndView mv = new ModelAndView("learn");
		List<CourseSectionVO> chaptSections = this.courseBusiness.queryCourseSection(courseId);
		mv.addObject("course", course);
		mv.addObject("chaptSections", chaptSections);

		//获取讲师
		AuthUser courseTeacher = this.authUserService.getByUsername(course.getUsername());
		if (null != courseTeacher && StringUtils.isNotEmpty(courseTeacher.getHeader())) {
			courseTeacher.setHeader(QiniuStorage.getUrl(courseTeacher.getHeader()));
		}
		mv.addObject("courseTeacher", courseTeacher);

		//获取推荐课程
		CourseQueryDto queryEntity = new CourseQueryDto();
		queryEntity.descSortField("weight");
		queryEntity.setCount(5);//5门推荐课程
		queryEntity.setSubClassify(course.getSubClassify());
		List<Course> recomdCourseList = this.courseService.queryList(queryEntity);
		mv.addObject("recomdCourseList", recomdCourseList);

		//当前学习的章节
		UserCourseSection userCourseSection = new UserCourseSection();
		userCourseSection.setCourseId(course.getId());
		userCourseSection.setUserId(SessionContext.getUserId());
		userCourseSection = this.userCourseSectionService.queryLatest(userCourseSection);
		if (null != userCourseSection) {
			CourseSection curCourseSection = this.courseSectionService.getById(userCourseSection.getSectionId());
			mv.addObject("curCourseSection", curCourseSection);
		}

		return mv;
	}


	/**
	 * 视频学习页面
	 *
	 * @return
	 */
	@RequestMapping("/video/{sectionId}")
	public ModelAndView video(@PathVariable Long sectionId) {
		if (null == sectionId)
			return new ModelAndView("error/404");

		CourseSection courseSection = courseSectionService.getById(sectionId);
		if (null == courseSection)
			return new ModelAndView("error/404");

		//课程章节
		ModelAndView mv = new ModelAndView("video");
		List<CourseSectionVO> chaptSections = this.courseBusiness.queryCourseSection(courseSection.getCourseId());
		mv.addObject("courseSection", courseSection);
		mv.addObject("chaptSections", chaptSections);

		//学习记录
		UserCourseSection userCourseSection = new UserCourseSection();
		userCourseSection.setUserId(SessionContext.getUserId());
		userCourseSection.setCourseId(courseSection.getCourseId());
		userCourseSection.setSectionId(courseSection.getId());
		UserCourseSection result = userCourseSectionService.queryLatest(userCourseSection);

		if (null == result) {//如果没有，插入
			userCourseSection.setCreateTime(new Date());
			userCourseSection.setCreateUser(SessionContext.getUsername());
			userCourseSection.setUpdateTime(new Date());
			userCourseSection.setUpdateUser(SessionContext.getUsername());

			userCourseSectionService.createSelectivity(userCourseSection);
		} else {
			result.setUpdateTime(new Date());
			userCourseSectionService.update(result);
		}
		return mv;
	}

	@RequestMapping(value = "/getCurLeanInfo")
	@ResponseBody
	public String getCurLeanInfo() {
		JsonView jv = new JsonView();
		//加载当前用户学习最新课程
		if (SessionContext.isLogin()) {
			UserCourseSection userCourseSection = new UserCourseSection();
			userCourseSection.setUserId(SessionContext.getUserId());
			userCourseSection = this.userCourseSectionService.queryLatest(userCourseSection);
			if (null != userCourseSection) {
				JSONObject jsObj = new JSONObject();
				CourseSection curCourseSection = this.courseSectionService.getById(userCourseSection.getSectionId());
				jsObj.put("curCourseSection", curCourseSection);
				Course curCourse = courseService.getById(userCourseSection.getCourseId());
				jsObj.put("curCourse", curCourse);
				jv.setData(jsObj);
			}
		}
		return jv.toString();
	}

	/**
	 * 品牌宣传页面
	 *
	 * @return
	 */
	@RequestMapping(value = "/brand")
	public ModelAndView brand(){

		ModelAndView mv = new ModelAndView("brand");
		//获取品牌
		BrandQueryDto queryEntity = new BrandQueryDto();
		queryEntity.descSortField("weight");
		queryEntity.setCount(5);//5个品牌
//		queryEntity.setSubClassify(course.getSubClassify());
		List<Brand> BrandList = this.brandService.queryList(queryEntity);
		mv.addObject("BrandList", BrandList);


		return mv;
	}

	/**
	 * 品牌宣传详情页面
	 *
	 * @return
	 */
	@RequestMapping("/brand_detail/{brandId}")
	public ModelAndView brand_detail(@PathVariable Long brandId) {
		ModelAndView mv = new ModelAndView("brand_detail");
		//获取品牌详情
		BrandDetail brandDetail = this.branddetailService.getByBrandId(brandId);
		if (null != brandDetail && StringUtils.isNotEmpty(brandDetail.getBrandPic1())) {
			brandDetail.setBrandPic1(QiniuStorage.getUrl(brandDetail.getBrandPic1()));
		}
		if (null != brandDetail && StringUtils.isNotEmpty(brandDetail.getBrandPic2())) {
			brandDetail.setBrandPic2(QiniuStorage.getUrl(brandDetail.getBrandPic2()));
		}
		mv.addObject("brandDetail", brandDetail);
		return mv;
	}


	/**
	 * 下单页面
	 *
	 * @return
	 */
	@RequestMapping("/buy/{courseId}")
	public ModelAndView buy(@PathVariable Long courseId) {
		ModelAndView mv = new ModelAndView("buy");
        //获取课程实体
        Course course = courseService.getById(courseId);
        //获取课程价格
        BigDecimal orderprice = course.getPrice();
        //创建订单实体
        Order order = orderService.createOrderByProductPrice(orderprice);
		mv.addObject("order",order);

		return mv;
	}
}