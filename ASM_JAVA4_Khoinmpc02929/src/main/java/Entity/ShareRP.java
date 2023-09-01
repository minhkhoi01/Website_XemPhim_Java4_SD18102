package Entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ShareRP {
	@Id
	private String fullname;
	private String from;
	private String to;
	private Date shareDate;

	public ShareRP() {

	}

	public ShareRP(String fullname, String from, String to, Date shareDate) {

		this.fullname = fullname;
		this.from = from;
		this.to = to;
		this.shareDate = shareDate;
	}

	public String getfullname() {
		return fullname;
	}

	public void setfullname(String fullname) {
		this.fullname = fullname;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public Date getShareDate() {
		return shareDate;
	}

	public void setShareDate(Date shareDate) {
		this.shareDate = shareDate;
	}

}
