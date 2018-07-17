# API

###用户登录

```
POST /authentication/form
```

参数


```
username: "xxx"
password: "123456"
```

返回

```
{
	code: 0,
	msg: "成功",
	data: {
		accessToken: "1gvg12wjrgv3jg1vgjrv3r1vj1"
	}
}
```


###管理系统主页

```
GET /signIn
```

参数

```
accessToken: "1gvg12wjrgv3jg1vgjrv3r1vj1"
```

返回

```
一个html页面
```


###部门管理页面

```
GET /departmentManagement
```

参数

```
accessToken: "1gvg12wjrgv3jg1vgjrv3r1vj1"
```

返回

```
一个html页面
```


###取得当前用户信息

```
POST /me
```

参数

```
accessToken: "1gvg12wjrgv3jg1vgjrv3r1vj1"
```

返回

```
{
	code: 0,
	msg: "成功",
	data: {
		uid: 45,
		username: "xxx",
		password: "",
		departmentId: 1,
		sex: "0",
		phoneNumber: "13812345678",
		charactor: "employee",
		status: 0
	}
}
```


###增加一个员工

```
POST /addEmployee
```

参数

```
accessToken: "1gvg12wjrgv3jg1vgjrv3r1vj1"
user: {
		uid: null,
		username: "xxx",
		password: "",
		departmentId: 1,
		sex: "0",
		phoneNumber: "13812345678",
		charactor: "employee",
		status: 0
}
```

返回

```
{
	code: 0,
	msg: "成功",
	data: null
}
```


###批量增加员工

```
POST /addEmployee/batch
```

参数

```
accessToken: "1gvg12wjrgv3jg1vgjrv3r1vj1"
users: [
	{
			uid: null,
			username: "xxx",
			password: "",
			departmentId: 1,
			sex: "0",
			phoneNumber: "13812345678",
			charactor: "employee",
			status: 0
	},
	{
			uid: null,
			username: "xxy",
			password: "",
			departmentId: 3,
			sex: "1",
			phoneNumber: "17052533642",
			charactor: "employee",
			status: 0
	},
	...
]

```

返回

```
{
	code: 0,
	msg: "成功",
	data: null
}
```


###删除一个员工

```
POST /deleteEmployee
```

参数

```
accessToken: "1gvg12wjrgv3jg1vgjrv3r1vj1"
uid: 45
```

返回

```
{
	code: 0,
	msg: "成功",
	data: null
}
```


###批量删除员工

```
POST /deleteEmployee/batch
```

参数

```
accessToken: "1gvg12wjrgv3jg1vgjrv3r1vj1"
uids: [45,46,47,48,49,...]
```

返回

```
{
	code: 0,
	msg: "成功",
	data: null
}
```


###修改一个员工的信息

```
POST /updateEmployee
```

参数

```
accessToken: "1gvg12wjrgv3jg1vgjrv3r1vj1"
user: {
		uid: null,
		username: "xxx",
		password: "",
		departmentId: 1,
		sex: "0",
		phoneNumber: "13812345678",
		charactor: "employee",
		status: 0
}
```

返回

```
{
	code: 0,
	msg: "成功",
	data: null
}
```

###批量修改员工信息

```
POST /updateEmployee/batch
```

参数

```
accessToken: "1gvg12wjrgv3jg1vgjrv3r1vj1"
users: [
	{
		uid: null,
		username: "xxx",
		password: "",
		departmentId: 1,
		sex: "0",
		phoneNumber: "13812345678",
		charactor: "employee",
		status: 0
	},
	{
		uid: null,
		username: "xxx",
		password: "",
		departmentId: 1,
		sex: "0",
		phoneNumber: "13812345678",
		charactor: "employee",
		status: 0
	},
	...
]
```

返回

```
{
	code: 0,
	msg: "成功",
	data: null
}
```


###查找符合条件的员工

```
POST /findEmployee
```

参数

```
accessToken: "1gvg12wjrgv3jg1vgjrv3r1vj1"
role: {
	id: -1, //-1表示该项为空
	username: "-", //"-"表示该项为空
	departmentId: 3,
	sex: "0",
	phoneNumber: "138",
	charactor: "-",
	status: 0
}
```

返回

```
{
	code: 0,
	msg: "成功",
	data: [
		{
			uid: 52,
			username: "abc",
			password: "",
			departmentId: 3,
			sex: "0",
			phoneNumber: "13888121928",
			charactor: "employee",
			status: 0
		},
		{
			uid: 3,
			username: "dex",
			password: "",
			departmentId: 3,
			sex: "0",
			phoneNumber: "13842452154",
			charactor: "testing_manager",
			status: 0
		},
		...
	]
}
```

###获取部门列表

```
GET /departmentList
```

参数

```
accessToken: "1gvg12wjrgv3jg1vgjrv3r1vj1"
```

返回

```
{
    code: 0,
    msg: "成功",
    data: [
        "部门1",
        "部门2",
        ...
    ]
}
```


###获取首页统计信息(TODO)

```
GET /getStockAchievement
```

参数

```
accessToken: "1gvg12wjrgv3jg1vgjrv3r1vj1"
```

返回

```
{
    code: 0,
    msg: "成功",
    data: {
        xpos: ["Jan","Feb","March"],
        ypos: [5221,5234,5246],
    }
}
```