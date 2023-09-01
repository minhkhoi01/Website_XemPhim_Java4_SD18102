package Entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class FavoriteRP {
	@Id
	private String videoTitle;
	private Long count;
	private Date news;
	private Date oldes;

	public FavoriteRP() {

	}

	public FavoriteRP(String videoTitle, Long count, Date news, Date oldes) {
		this.videoTitle = videoTitle;
		this.count = count;
		this.news = news;
		this.oldes = oldes;
	}

	public String getVideoTitle() {
		return videoTitle;
	}

	public void setVideoTitle(String videoTitle) {
		this.videoTitle = videoTitle;
	}

	public Long getCount() {
		return count;
	}

	public void setCount(Long count) {
		this.count = count;
	}

	public Date getNews() {
		return news;
	}

	public void setNews(Date news) {
		this.news = news;
	}

	public Date getOldes() {
		return oldes;
	}

	public void setOldes(Date oldes) {
		this.oldes = oldes;
	}

}
