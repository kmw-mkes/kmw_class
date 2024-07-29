package book;

public class BookController {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
			BookService bookService = new BookServiceImpl();
			
			bookService.startProgram();
	}

}
