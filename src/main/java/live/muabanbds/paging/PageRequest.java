package live.muabanbds.paging;


public class PageRequest  {
	
	private Integer page;
	private Integer maxPageItem;
	private String search;
	
	public PageRequest(Integer page, Integer maxPageItem) {
		this.page = page;
		this.maxPageItem = maxPageItem;
	}

	public PageRequest(Integer page, Integer maxPageItem, String search) {
		this.page = page;
		this.maxPageItem = maxPageItem;
		this.search = search;
	}

	public Integer getPage() {
		return this.page;
	}


	public Integer getOffset() {
		if (this.page != null && this.maxPageItem != null) {
			return (this.page - 1) * this.maxPageItem;
		}
		return null;
	}

	public String getSearchKeyWord() {
		return search;
	}


	public void setSearchKeyWord(String keyWord) {
		this.search = keyWord;
	}

	public Integer getLimit() {
		return this.maxPageItem;
	}

}
