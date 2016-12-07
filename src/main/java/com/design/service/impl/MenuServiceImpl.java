package com.design.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.design.dao.MenuDao;
import com.design.model.MenuModel;
import com.design.service.MenuService;

@Service
public class MenuServiceImpl implements MenuService
{

  @Autowired
  private MenuDao menuDao;
  

  @Override
  @Transactional
  public void addMenu(MenuModel m)
  {
   
    this.menuDao.addMenu(m);
    
  }

  @Override
  @Transactional
  public void editMenu(MenuModel m)
  {
  
    this.menuDao.editMenu(m);
    
  }

  @Override
  @Transactional
  public void deleteMenu(int id)
  {
    this.menuDao.deleteMenu(id);
    
  }

  @Override
  @Transactional
  public List<MenuModel> listMenu()
  {
    
    return this.menuDao.listMenu();
  }

  @Override
  @Transactional
  public MenuModel getMenuById(int id)
  {
   
    return this.menuDao.getMenuById(id);
  }

}
