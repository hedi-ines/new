package fr.gtm.bibliotheque.domain;

public class Livre {
	
	private Integer id;
	private String title;
	private String author;
	private String editor;
	private String genre;
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
