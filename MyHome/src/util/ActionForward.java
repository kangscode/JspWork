package util;

public class ActionForward {
	
	private String nextPath; //���� ������ ���
	private boolean isRedirect;
	
	public ActionForward(String nextPath, boolean isRedirect) {
		super();
		this.nextPath = nextPath;
		this.isRedirect = isRedirect;
	}

	public String getNextPath() {
		return nextPath;
	}

	public void setNextPath(String nextPath) {
		this.nextPath = nextPath;
	}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	
}
