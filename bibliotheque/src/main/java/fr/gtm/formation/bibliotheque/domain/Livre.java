package fr.gtm.formation.bibliotheque.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "livre")
public class Livre {
	
	@Id
	@Column(name = "idLivre")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column
	private String title;
	
	@Column
	private String author;
	
	@Column
	private String editor;
	
	@Column
	private String genre;
	
	@Lob
	@Column
	private String resume;

	public Livre(Integer id, String title, String author, String editor, String genre, String resume) {
		super();
		this.id = id;
		this.title = title;
		this.author = author;
		this.editor = editor;
		this.genre = genre;
		this.resume = resume;
	}

	
	public Livre(String title, String author, String editor, String genre, String resume) {
		super();
		this.title = title;
		this.author = author;
		this.editor = editor;
		this.genre = genre;
		this.resume = resume;
	}


	public Livre() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getEditor() {
		return editor;
	}

	public void setEditor(String editor) {
		this.editor = editor;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getResume() {
		return resume;
	}

	public void setResume(String resume) {
		this.resume = resume;
	}

}
