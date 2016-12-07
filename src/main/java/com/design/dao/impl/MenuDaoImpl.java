package com.design.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.design.dao.MenuDao;
import com.design.model.MenuModel;

@Repository
public class MenuDaoImpl implements MenuDao
{

  @Autowired
  private SessionFactory sessionFactory;
  
  @Override
  public void addMenu(MenuModel m)
  {
    Session session=this.sessionFactory.getCurrentSession();
    session.save(m);
  }

  @Override
  public void editMenu(MenuModel m)
  {
    Session session=this.sessionFactory.getCurrentSession();
    session.update(m);
  }

  @Override
  public void deleteMenu(int id)
  {
    Session session=this.sessionFactory.getCurrentSession();
    MenuModel m=(MenuModel)session.load(MenuModel.class, new Integer(id));
    if(null!=m){
      session.delete(m);
    }
  }

  @SuppressWarnings("unchecked")
  @Override
  public List<MenuModel> listMenu()
  {
    Session session=this.sessionFactory.getCurrentSession();
    List<MenuModel> listMenu=session.createQuery("from MenuModel").list();
    return listMenu;
  }

  @Override
  public MenuModel getMenuById(int id)
  {
    Session session=this.sessionFactory.getCurrentSession();
    MenuModel m=(MenuModel) session.load(MenuModel.class, new Integer(id));
    return m;
  }

}
