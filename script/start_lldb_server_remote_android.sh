
#!/bin/sh

sdk="/Users/pengfei/Library/Android/sdk"
pkg="com.example.pengfei.ndkdebug"
port=9527

adb shell 'pkill lldb-server'
adb shell "run-as ${pkg} sh -c 'pkill lldb-server'"
adb forward tcp:${port} tcp:${port}
adb push "${sdk}/lldb/3.1/android/armeabi/lldb-server" /data/local/tmp/lldb-server
adb shell "cat /data/local/tmp/lldb-server | run-as ${pkg} sh -c 'cat > /data/data/${pkg}/lldb/bin/lldb-server && chmod 700 /data/data/${pkg}/lldb/bin/lldb-server'"
adb shell "run-as ${pkg} sh -c '/data/data/${pkg}/lldb/bin/lldb-server platform --server --listen *:${port}'"
