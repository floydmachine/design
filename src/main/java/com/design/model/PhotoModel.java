package com.design.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Proxy;

@Entity
@Table(name="photo")
@Proxy(lazy=false)
public class PhotoModel
{
  @Id
  @Column(name="id")
  @GeneratedValue(strategy=GenerationType.AUTO)
  private int id;
  
  public int getId()
  {
    return id;
  }

  public void setId(int id)
  {
    this.id = id;
  }

  private String name;
  
  public String getName()
  {
    return name;
  }

  public void setName(String name)
  {
    this.name = name;
  }

  @Lob
  private byte[] image;
  
  public byte[] getImage()
  {
    return image;
  }

  public void setImage(byte[] image)
  {
    this.image = image;
  }

  @ManyToOne(cascade=CascadeType.ALL)
  private MenuModel menu;

  public MenuModel getMenu()
  {
    return menu;
  }

  public void setMenu(MenuModel menu)
  {
    this.menu = menu;
  }

}
