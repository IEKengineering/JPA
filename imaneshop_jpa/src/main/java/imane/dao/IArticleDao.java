package imane.dao;

import java.util.List;

import imane.entities.Article;
import imane.entities.Categorie;

public interface IArticleDao {
	public List<Article> getArticles(Long id);
	public Article getArticle(Long CodeArticle);
	public List<Categorie> getCategories();
	public Long getCatId(String cat);
	public String getCat(Long id);
	public Categorie getCategory(Long id);
}
