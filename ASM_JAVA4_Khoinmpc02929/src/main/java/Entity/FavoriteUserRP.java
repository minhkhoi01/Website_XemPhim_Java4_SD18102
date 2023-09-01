package Entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class FavoriteUserRP {
	@Id
	private String id;
	private String fullname;
	private String email;
	private Date LikeDate;

	public FavoriteUserRP() {

	}

	public FavoriteUserRP(String id, String fullname, String email, Date likeDate) {
		this.id = id;
		this.fullname = fullname;
		this.email = email;
		this.LikeDate = likeDate;
	}

	public String getid() {
		return id;
	}

	public void setid(String id) {
		this.id = id;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getLikeDate() {
		return LikeDate;
	}

	public void setLikeDate(Date likeDate) {
		this.LikeDate = likeDate;
	}

}
