package com.design.dao;

import java.util.List;

import com.design.model.PhotoModel;

public interface PhotoDao
{
  
  public void addPhoto(PhotoModel p);
  
  public void editPhoto(PhotoModel p);
  
  public void deletePhoto(int id);
  
  public List<PhotoModel> listImage();
  
  public PhotoModel getPhotoById(int id);
  

}
