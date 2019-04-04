## VSCode IDE

### demo 测试方法
* 安装 test/app-debug.apk
* 执行 script/start_lldb_server_remote_android.sh，需要配置 Android SDK 路径。也可以通过 vscode 的 task 执行。
* F5 开始调试，进入 native-lib.cpp 在 addpengfei 打断点，点击 app 中的文字即可进入断点。

### extensions
 cmake highlight [twxs.cmake](https://marketplace.visualstudio.com/items?itemName=twxs.cmake)

### keybindings
将 keybindings 拷贝到 # ~/Library/Application Support/Code/User/keybindings.json


[config](https://github.com/glonerr/masteringCmake/tree/master/.vscode)
