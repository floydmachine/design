package com.design.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.design.model.MenuModel;
import com.design.service.MenuService;

@Controller
public class MenuController
{

  @Autowired
  private MenuService menuService;
  

  
  @RequestMapping(value="/menuform",method=RequestMethod.GET)
  public String imageform(Model model){
    model.addAttribute("menu", new MenuModel());
  
    return "menucrud";
    
  }
  
  @RequestMapping(value="/menulist",method=RequestMethod.GET)
  public String listimage(Model model){
    List<MenuModel> menulist=this.menuService.listMenu();
    model.addAttribute("menulist", menulist);
    return "menulist";
    
  }
  
  @RequestMapping(value="/addmenu",method=RequestMethod.POST)
  public String addimage(@ModelAttribute MenuModel menu,Model model){
   
    if(menu.getMid()==0){
      menuService.addMenu(menu);
    }
    else{
      menuService.editMenu(menu);
    }
    return "redirect:/menuform";
    
  }
  
  @RequestMapping(value="/editmenu/{mid}",method=RequestMethod.GET)
  public String editPub(@PathVariable("mid")int mid,Model model){
    model.addAttribute("menu", this.menuService.getMenuById(mid));
    return "menucrud";
  }
  
  @RequestMapping(value="/delmenu/{mid}",method=RequestMethod.GET)
  public String deletePub(@PathVariable("mid")int mid,Model model){
    
    this.menuService.deleteMenu(mid);
    return "redirect:/menulist";
    
  }
}
