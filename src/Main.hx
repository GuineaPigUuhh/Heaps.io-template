import h2d.Text;
import hxd.res.DefaultFont;
import hxd.App;

class Main extends App {
	override function init() {
		var tf = new Text(DefaultFont.get(), s2d);
		tf.text = "Hello World !";
	}

	static function main() {
		new Main();
	}
}
