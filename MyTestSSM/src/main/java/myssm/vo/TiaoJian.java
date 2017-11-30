package myssm.vo;

/*
 * @该类是分页时候用的条件
 * @author chen
 */
public class TiaoJian {
	// limit (pageNo-1)*pageSize ,pageSize
	private Integer type=1;
	private String content="";
	
	
	private Integer limit=3;//pageSize
	private Integer startNum;//(pageNo-1)*pageSize
	private Integer pageNo=1;//��ǰҳ
	
	
	public Integer getPageNo() {
		return pageNo;
	}
	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getLimit() {
		return limit;
	}
	public void setLimit(Integer limit) {
		this.limit = limit;
	}
	public Integer getStartNum() {
		return (pageNo-1)*limit;
	}
	public void setStartNum(Integer startNum) {
		this.startNum = startNum;
	}
	
	
	
}
