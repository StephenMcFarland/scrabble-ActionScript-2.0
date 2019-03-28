stop();

var tNum:Number = 0;
var myListener:Object = new Object();



/*function(){
	var tNum:String = "";
	tNum = this.valueOf();//_name;//.substr(1, this._parent._name.length - 1); 
	//myTileNum = int(tNum);
	//scoreTile(tNum);
	_root.name_txt.text = tNum;
	//scoreTile(myTileNum);
	}*/


Mouse.addListener(myListener);


this.onPress = function(){
	this.startDrag();
	}
this.onRelease = function(){
	stopDrag();
	//tNum = this._name.substr(1,this._name.length - 1); 
	//scoreTile(tNum);
	myListener.onMouseUp = scoreTile(this._name.substr(1,this._name.length - 1));
	}
