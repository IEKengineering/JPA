package imane.web.models;

import java.util.ArrayList;
import java.util.List;

import imane.entities.Article;

public class ArticleModel {
	private List<Article> articles = new ArrayList<Article>();

	public ArticleModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public List<Article> getArticles() {
		return articles;
	}

	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}
	
	
}
