package com.rec.slider.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liferay.portal.theme.ThemeDisplay;
import com.rec.slider.bean.Slider;


public interface SlideService {

	List<Slider>  getContentSlider(ThemeDisplay themeDisplay,HttpServletRequest request, HttpServletResponse response, String limite,String categorias);



}