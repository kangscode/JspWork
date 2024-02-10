package board.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDAO;
import util.Action;

public class DeleteAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int seq = Integer.parseInt(request.getParameter("seq"));
		
		boolean check = BoardDAO.getInstance().delete(seq);
		
		request.setAttribute("check", check);
        request.setAttribute("status", "delete");
        request.setAttribute("url", "/MyHome/board/list.brd");
		
	}

}
