package _000_window_to_windo_move_THIS_3__Value_Object_;

 class LoginVO {
    private String id;
    private String pw;
	public LoginVO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}
	public LoginVO() {}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
    
}
