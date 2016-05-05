package edu.xidian.village.service;

import java.util.List;

import edu.xidian.village.vo.Wish;


public interface WishService {
	public void addWish(String content,int aid);
	public List<Wish> findAllWish(int aid);
}
