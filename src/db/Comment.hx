package db;
import mt.db.Types;

class Comment extends neko.db.Object {

	static function RELATIONS() {
		return [
			{ prop : "entry", key : "eid", manager : Entry.manager, lock : false },
			{ prop : "user", key : "uid", manager : User.manager, lock : false },
		];
	}
	public static var manager = new CommentManager(Comment);

	public var id : SId;
	public var entry(dynamic,dynamic) : Entry;
	public var date : SDateTime;
	public var user(dynamic,dynamic) : SNull<User>;
	public var userName : STinyText;
	public var userMail : STinyText;
	public var url : SNull<STinyText>;
	public var content : SText;
	public var htmlContent : SText;

}

class CommentManager extends neko.db.Manager<Comment> {

	public function browse( pos : Int, count : Int ) {
		return objects("SELECT * FROM Comment ORDER BY date DESC LIMIT "+pos+","+count,false);
	}

}