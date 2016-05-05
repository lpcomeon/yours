package edu.xidian.village.dao;

import java.util.List;

import edu.xidian.village.vo.Wish;

public interface WishDao {
	public void addWish(Wish wish);
	public List<Wish> findAllWish(int aid);
}
