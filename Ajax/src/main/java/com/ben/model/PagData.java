package com.ben.model;

public class PagData {
	
	private int currentpage;
	private int totalpage;
	public int getCurrentpage() {
		return currentpage;
	}
	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}
	public int getTotalpage() {
		return totalpage;
	}
	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}
	@Override
	public String toString() {
		return "PagData [currentpage=" + currentpage + ", totalpage=" + totalpage + "]";
	}

}
