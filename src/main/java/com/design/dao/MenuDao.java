package com.design.dao;

import java.util.List;

import com.design.model.MenuModel;

public interface MenuDao
{

  public void addMenu(MenuModel m);
  
  public void editMenu(MenuModel m);
  
  public void deleteMenu(int id);
  
  public List<MenuModel> listMenu();
  
  public MenuModel getMenuById(int id);
}
