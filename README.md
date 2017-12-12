# Target
iOS应用程序创建target

> 有两种类型的`target`
> 测试工程：[TargetWorkSpace](https://github.com/tangdaoyong/Target)

### 1：复用一套代码的*target*

> 如果使用通配符ID上架App，则不能使用`推送`功能。

1. 选中一个现有的target，点击右键，选择Duplicate，此时创建了一个copy。
2. 修改target的名字。
3. 修改plist的名字。
4. 修改scheme的名字。(2.3.4的名字需要一样)
5. 选择新的plist文件，并修改项目名称和version及team。
6. 设置宏定义以区分新旧target。build Settings -> Preprocessing -> Preprocessor Macros 添加宏定义
7. build Settings -> Other Swift Flags ->Debug添加宏定义：
```
$(inherited)
-D
SWIFTTWO
```

### 2：拷贝一份代码的*target*

> 方法一：

1. 进入工程
2. 点击`File` -> `New` -> `Target` 创建一份代码拷贝`taget`。

> 方法二：

1. 工程中选中`target`点击左下角的`+`。
