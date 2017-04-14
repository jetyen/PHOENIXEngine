-- language.lua

function b_AddLanguage()
	PX2_LM_APP:Clear()
	PX2_LM_APP:AddItem1("Project", "项目")
	PX2_LM_APP:AddItem1("Setting", "设置")
	PX2_LM_APP:AddItem1("ProjectTree", "项目树")
	PX2_LM_APP:AddItem1("Bluetooth", "蓝牙")
	PX2_LM_APP:AddItem1("Scan", "扫描")
	PX2_LM_APP:AddItem1("Connect", "连接")
	PX2_LM_APP:AddItem1("Stage", "舞台")
	PX2_LM_APP:AddItem1("Create", "创建")
	PX2_LM_APP:AddItem1("ScreenActors", "角色")
	PX2_LM_APP:AddItem1("Clone", "克隆")
	PX2_LM_APP:AddItem1("Run", "运行")
	PX2_LM_APP:AddItem1("Close", "关闭")
	PX2_LM_APP:AddItem1("Ctrl", "控制")
	PX2_LM_APP:AddItem1("Event", "事件")
	PX2_LM_APP:AddItem1("Test", "检测")
	PX2_LM_APP:AddItem1("Math", "数学")
	PX2_LM_APP:AddItem1("Param", "变量")
	PX2_LM_APP:AddItem1("Function", "函数")
	PX2_LM_APP:AddItem1("View", "造型")
	PX2_LM_APP:AddItem1("Transform", "方位")
	PX2_LM_APP:AddItem1("Func", "功能")
	PX2_LM_APP:AddItem1("Media", "多媒体")
	PX2_LM_APP:AddItem1("Music", "音乐")
	PX2_LM_APP:AddItem1("Programming", "编程")
	PX2_LM_APP:AddItem1("Model", "造型")
	PX2_LM_APP:AddItem1("I", "我")
	PX2_LM_APP:AddItem1("Asset", "资源")
	PX2_LM_APP:AddItem1("Find", "发现")
	PX2_LM_APP:AddItem1("Stage", "舞台")
	PX2_LM_APP:AddItem1("Actor", "角色")
	PX2_LM_APP:AddItem1("Script", "脚本")
	PX2_LM_APP:AddItem1("Sound", "声音")
	PX2_LM_APP:AddItem1("CreateVariable", "创建变量")
	PX2_LM_APP:AddItem1("DeleteVariable", "删除")
	PX2_LM_APP:AddItem1("ReNameVariable", "重命名")
	PX2_LM_APP:AddItem1("InputVariableName", "输入要创建变量的名称")
	PX2_LM_APP:AddItem1("AddMusic", "添加音乐")
	PX2_LM_APP:AddItem1("AddParam", "添加变量")
	PX2_LM_APP:AddItem1("DeleteParam", "删除变量")
	PX2_LM_APP:AddItem1("OK", "确定")
	PX2_LM_APP:AddItem1("Cancel", "取消")
	
	PX2_LM_APP:AddItem1("Graphic", "图形")
	PX2_LM_APP:AddItem1("Phoenix", "Phoenix")
	PX2_LM_APP:AddItem1("Arduino", "Arduino")
	PX2_LM_APP:AddItem1("NodeMCU", "NodeMCU")
	PX2_LM_APP:AddItem1("Raspberry", "树莓派")
	
	PX2_LM_APP:AddItem1("PlayMusic", "播放音乐")
	PX2_LM_APP:AddItem1("StopMusic", "停止音乐")
	PX2_LM_APP:AddItem1("MoveForward", "前进")
	PX2_LM_APP:AddItem1("MoveBackword", "后退")
	PX2_LM_APP:AddItem1("MoveLeft", "左转")
	PX2_LM_APP:AddItem1("MoveRight", "右转")
	PX2_LM_APP:AddItem1("MoveForwardFull", "全速前进")
	PX2_LM_APP:AddItem1("MoveBackwordFull", "全速后退")
	PX2_LM_APP:AddItem1("MoveLeftFull", "全速左转")
	PX2_LM_APP:AddItem1("MoveRightFull", "全速右转")
	PX2_LM_APP:AddItem1("MoveStop", "停止")
	
	PX2_LM_APP:AddItem1("Screen", "屏幕")
	
	PX2_LM_APP:AddItem1("Home", "主页")
	PX2_LM_APP:AddItem1("File", "文件")
	PX2_LM_APP:AddItem1("Save", "保存")
	PX2_LM_APP:AddItem1("Lesson", "上课")
	
	PX2_LM_APP:AddItem1("Resources", "资源")
	
	PX2_LM_APP:AddItem1("Category", "目录")
	PX2_LM_APP:AddItem1("All", "全部")
	PX2_LM_APP:AddItem1("Board", "芯片")
	PX2_LM_APP:AddItem1("Product", "产品")
	PX2_LM_APP:AddItem1("UI", "界面")
	PX2_LM_APP:AddItem1("Animals", "动物")
	PX2_LM_APP:AddItem1("Fantasy", "玄幻")
	PX2_LM_APP:AddItem1("People", "人")
	PX2_LM_APP:AddItem1("Things", "物品")
	PX2_LM_APP:AddItem1("Transportation", "交通工具")
	
	PX2_LM_APP:AddItem1("Theme", "主题")
	PX2_LM_APP:AddItem1("Caslte", "城堡")
	PX2_LM_APP:AddItem1("City", "城市")
	PX2_LM_APP:AddItem1("Flying", "飞行")
	PX2_LM_APP:AddItem1("Holiday", "假日")
	PX2_LM_APP:AddItem1("Music and Dance", "音乐和舞蹈")
	PX2_LM_APP:AddItem1("Space", "太空")
	PX2_LM_APP:AddItem1("Sports", "体育")
	PX2_LM_APP:AddItem1("Underwater", "水下")
	PX2_LM_APP:AddItem1("Walking", "行走")
	
	PX2_LM_APP:AddItem1("Publish", "发布")
	
	PX2_LM_APP:AddItem1("Update", "更新")
	
	PX2_LM_APP:AddItem1("StrangeThing", "奇怪的事")
end

function b_AddLanguageProgram()
	PX2_LM_APP1:AddItem1("Program", "程序")
	PX2_LM_APP1:AddItem1("If", "如果")
	PX2_LM_APP1:AddItem1("IfElse", "如果否则")
	PX2_LM_APP1:AddItem1("While", "循环")
	PX2_LM_APP1:AddItem1("Coroutine", "协程")
	PX2_LM_APP1:AddItem1("sendEvent", "广播消息")
	PX2_LM_APP1:AddItem1("onEvent", "收到消息执行")
	PX2_LM_APP1:AddItem1("EventS", "消息列表")
	PX2_LM_APP1:AddItem1("getEventObjectName", "获得消息对象名称")
	PX2_LM_APP1:AddItem1("getEventDataInt", "获得消息整形")
	PX2_LM_APP1:AddItem1("getEventDataString", "获得消息字符串")
	
	PX2_LM_APP1:AddItem1("+", "加")
	PX2_LM_APP1:AddItem1("-", "减")
	PX2_LM_APP1:AddItem1("*", "乘")
	PX2_LM_APP1:AddItem1("/", "除")
	PX2_LM_APP1:AddItem1("!", "取反")
	PX2_LM_APP1:AddItem1("||", "或者")
	PX2_LM_APP1:AddItem1("abs", "绝对值")
	PX2_LM_APP1:AddItem1("sin", "正玄")
	PX2_LM_APP1:AddItem1("cos", "余玄")
	
	PX2_LM_APP1:AddItem1(">_float", "大于")
	PX2_LM_APP1:AddItem1(">=_float", "大于等于")
	PX2_LM_APP1:AddItem1("<_float", "小于")
	PX2_LM_APP1:AddItem1("<=_float", "小于等于")
	PX2_LM_APP1:AddItem1("==_float", "等于")
	PX2_LM_APP1:AddItem1("!=_float", "不等于")
	
	PX2_LM_APP1:AddItem1(">_int", "大于")
	PX2_LM_APP1:AddItem1(">=_int", "大于等于")
	PX2_LM_APP1:AddItem1("<_int", "小于")
	PX2_LM_APP1:AddItem1("<=_int", "小于等于")
	PX2_LM_APP1:AddItem1("==_int", "等于")
	PX2_LM_APP1:AddItem1("!=_int", "不等于")
	
	PX2_LM_APP1:AddItem1("==_string", "等于")
	PX2_LM_APP1:AddItem1("!=_string", "不等于")
	
	PX2_LM_APP1:AddItem1("getDragingDirX", "获得方向盘方向X")
	PX2_LM_APP1:AddItem1("getDragingDirY", "获得方向盘方向Y")
	PX2_LM_APP1:AddItem1("getDragingDirSimple", "获得方向盘方向01234")
	PX2_LM_APP1:AddItem1("getDragingPercent", "获得方向盘强度")
	PX2_LM_APP1:AddItem1("addChooseString", "增加选择项")
	PX2_LM_APP1:AddItem1("chooseString", "选择字符串")
	PX2_LM_APP1:AddItem1("chooseIndex", "选择索引")
	PX2_LM_APP1:AddItem1("getChooseString", "获得选择的字符串")
	PX2_LM_APP1:AddItem1("getChooseIndex", "获得选择的索引")
	
	PX2_LM_APP1:AddItem1("getActorByName", "根据名称获得对象")
	PX2_LM_APP1:AddItem1("log", "打印日志")
	PX2_LM_APP1:AddItem1("print", "打印")
	PX2_LM_APP1:AddItem1("sleep", "睡眠")
	PX2_LM_APP1:AddItem1("systemSleep", "系统睡眠")
	PX2_LM_APP1:AddItem1("seconds", "秒")
	PX2_LM_APP1:AddItem1("stringToInt", "字符串->整数")
	PX2_LM_APP1:AddItem1("stringToFloat", "字符串->浮点形")
	PX2_LM_APP1:AddItem1("intToString", "整数->字符串")
	PX2_LM_APP1:AddItem1("floatToString", "浮点形->字符串")
	PX2_LM_APP1:AddItem1("getStringParam", "获得字符串Token参数")
	PX2_LM_APP1:AddItem1("netSendString", "网络发送字符串")
	PX2_LM_APP1:AddItem1("bluetoothSendString", "蓝牙发送字符串")
	PX2_LM_APP1:AddItem1("voiceStart", "开始语音识别")
	PX2_LM_APP1:AddItem1("voiceEnd", "结束语音识别")
	
	PX2_LM_APP1:AddItem1("setName", "设置名称")
	PX2_LM_APP1:AddItem1("getName", "获得名称")
	PX2_LM_APP1:AddItem1("show", "显示")
	PX2_LM_APP1:AddItem1("isShow", "是否显示")
	PX2_LM_APP1:AddItem1("playLook", "播放造型")
	PX2_LM_APP1:AddItem1("isPlayingLook", "是否正在播放造型")
	PX2_LM_APP1:AddItem1("setLookPlaySpeed", "设置造型播放速度")
	PX2_LM_APP1:AddItem1("say", "说")
	PX2_LM_APP1:AddItem1("setText", "设置文本")
	PX2_LM_APP1:AddItem1("getText", "获得文本")
	
	PX2_LM_APP1:AddItem1("playMusic", "播放音乐")
	PX2_LM_APP1:AddItem1("stopMusic", "停止音乐")
	PX2_LM_APP1:AddItem1("Musics", "音乐")
	
	PX2_LM_APP1:AddItem1("setPostion", "设置位置")
	PX2_LM_APP1:AddItem1("setAnchorHor", "设置布局Hor")
	PX2_LM_APP1:AddItem1("setAnchorParamHor", "设置布局ParamHor")
	PX2_LM_APP1:AddItem1("setAnchorVer", "设置布局Ver")
	PX2_LM_APP1:AddItem1("setAnchorParamVer", "设置布局ParamVer")
	PX2_LM_APP1:AddItem1("setPvoit", "设置锚点")
	PX2_LM_APP1:AddItem1("setSize", "设置大小")
	PX2_LM_APP1:AddItem1("setSizeWidthHeight", "设置宽高")
	
	PX2_LM_APP1:AddItem1("setRotateXYZ", "设置旋转XYZ")
	PX2_LM_APP1:AddItem1("setRotateX", "设置旋转X")
	PX2_LM_APP1:AddItem1("setRotateY", "设置旋转Y")
	PX2_LM_APP1:AddItem1("setRotateZ", "设置旋转Z")
	PX2_LM_APP1:AddItem1("getRotateX", "获得旋转X")
	PX2_LM_APP1:AddItem1("getRotateY", "获得旋转Y")
	PX2_LM_APP1:AddItem1("getRotateZ", "获得旋转Z")
	
	PX2_LM_APP1:AddItem1("setScale", "设置缩放")
	PX2_LM_APP1:AddItem1("getScale", "获得缩放")
	PX2_LM_APP1:AddItem1("setScaleXZ", "设置缩放XZ")
	PX2_LM_APP1:AddItem1("getScaleXZ", "获得缩放XZ")
	PX2_LM_APP1:AddItem1("setScaleX", "设置缩放X")
	PX2_LM_APP1:AddItem1("setScaleZ", "设置缩放Z")
	PX2_LM_APP1:AddItem1("getScaleX", "获得缩放X")
	PX2_LM_APP1:AddItem1("getScaleZ", "获得缩放Z")
	
	PX2_LM_APP1:AddItem1("move", "移动")
	PX2_LM_APP1:AddItem1("addRotate", "增加旋转")
	PX2_LM_APP1:AddItem1("addScale", "增加缩放")
	
	PX2_LM_APP1:AddItem1("setLayer", "设置层级")
	PX2_LM_APP1:AddItem1("getLayer", "获得层级")
	
	PX2_LM_APP1:AddItem1("TRUE", "是")
	PX2_LM_APP1:AddItem1("FALSE", "否")
	
	PX2_LM_APP1:AddItem1("setInt", "设置整数")		
	PX2_LM_APP1:AddItem1("setFloat", "设置浮点数")	
	PX2_LM_APP1:AddItem1("setChar", "设置字符")
	PX2_LM_APP1:AddItem1("setString", "设置字符串")
	PX2_LM_APP1:AddItem1("setBool", "设置布尔")
	PX2_LM_APP1:AddItem1("setObject", "设置对象")	
	
	PX2_LM_APP1:AddItem1("ParamsInt", "整数变量选择")
	PX2_LM_APP1:AddItem1("ParamsFloat", "浮点变量选择")
	PX2_LM_APP1:AddItem1("ParamsChar", "布尔变量选择")
	PX2_LM_APP1:AddItem1("ParamsBool", "字符变量选择")
	PX2_LM_APP1:AddItem1("ParamsString", "字符串变量选择")
	
	PX2_LM_APP1:AddItem1("iVariable", "整数变量")
	PX2_LM_APP1:AddItem1("fVariable", "浮点变量")
	PX2_LM_APP1:AddItem1("strVariable", "字符串变量")
	PX2_LM_APP1:AddItem1("cVariable", "字符变量")
	PX2_LM_APP1:AddItem1("objVariable", "对象变量")
	
	-- param
	PX2_LM_APP1:AddItem1("Start", "开始")
	PX2_LM_APP1:AddItem1("Update", "更新")
	
	PX2_LM_APP1:AddItem1("If", "如果")
	PX2_LM_APP1:AddItem1("IfDo", "执行")
	PX2_LM_APP1:AddItem1("ElseDo", "否则执行")	
	PX2_LM_APP1:AddItem1("While", "当")
	PX2_LM_APP1:AddItem1("WhileDo", "执行")
	
	PX2_LM_APP1:AddItem1("HIGH", "高")
	PX2_LM_APP1:AddItem1("LOW", "低")

	PX2_LM_APP1:AddItem1("a", "参数a")
	PX2_LM_APP1:AddItem1("b", "参数b")	
	PX2_LM_APP1:AddItem1("val", "数值")	
	PX2_LM_APP1:AddItem1("variable", "变量")
	PX2_LM_APP1:AddItem1("degree", "角度")	
	
	PX2_LM_APP1:AddItem1("str", "字符串")
	PX2_LM_APP1:AddItem1("musicStr", "音乐字符串")
	
	PX2_LM_APP1:AddItem1("CorDo", "执行")
	
	PX2_LM_APP1:AddItem1("Event", "事件")
	PX2_LM_APP1:AddItem1("EventDo", "事件")
	
	PX2_LM_APP1:AddItem1("size", "大小")
	
	PX2_LM_APP1:AddItem1("width", "宽度")
	PX2_LM_APP1:AddItem1("height", "高度")
	
	PX2_LM_APP1:AddItem1("name", "名称")
end