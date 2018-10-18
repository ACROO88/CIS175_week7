package edu.dmacc.spring.albumregistration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AlbumController {
	
	@Autowired AlbumDao dao;
	
	@RequestMapping(value="/form")
		public ModelAndView album() {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("albumForm");
		modelAndView.addObject("album", new Album());
		
		return modelAndView;
	}
	
	@RequestMapping(value="/result")
		public ModelAndView processAlbum(Album album) {
		//System.out.println("In processAlbum");
		ModelAndView modelAndView = new ModelAndView();
		dao.insertAlbum(album);
		//System.out.println("Value in getAlbum" + album.getAlbum());
		modelAndView.setViewName("albumResult");
		modelAndView.addObject("a", album);
		return modelAndView;
	}
	
	@Bean
		public AlbumDao dao() {
		AlbumDao bean = new AlbumDao();
		return bean;
	}
	
	@RequestMapping(value="/viewAll")
	public ModelAndView viewAll() {
		ModelAndView modelAndView = new ModelAndView();
		List<Album>allAlbums = dao.getAllAlbums();
		modelAndView.setViewName("viewAllAlbums");
		modelAndView.addObject("all", allAlbums);
		return modelAndView;
	}
	
}
