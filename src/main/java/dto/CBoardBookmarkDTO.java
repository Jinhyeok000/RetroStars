package dto;

import java.sql.Timestamp;
/**
 * Description : 클래스에 대한 설명을 입력해주세요.
 * Date : 2024. 6. 14.
 * History :
 *  - 작성자 : KJY, 날짜 : 2024. 6. 14., 설명 : 최초작성
 * @author : KJY 
 * @version 1.0 
 */
public class CBoardBookmarkDTO {
	
	private String userId;
	private int cBoradCategory;
	private String cBoardTitle, writerId;
	private Timestamp cBoardDate;
	
	public CBoardBookmarkDTO(String userId, int cBoradCategory, String cBoardTitle, String writerId,
			Timestamp cBoardDate) {
		super();
		this.userId = userId;
		this.cBoradCategory = cBoradCategory;
		this.cBoardTitle = cBoardTitle;
		this.writerId = writerId;
		this.cBoardDate = cBoardDate;
	}
	public CBoardBookmarkDTO() {
		super();
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getcBoradCategory() {
		return cBoradCategory;
	}
	public void setcBoradCategory(int cBoradCategory) {
		this.cBoradCategory = cBoradCategory;
	}
	public String getcBoardTitle() {
		return cBoardTitle;
	}
	public void setcBoardTitle(String cBoardTitle) {
		this.cBoardTitle = cBoardTitle;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public Timestamp getcBoardDate() {
		return cBoardDate;
	}
	public void setcBoardDate(Timestamp cBoardDate) {
		this.cBoardDate = cBoardDate;
	}
	
	

}