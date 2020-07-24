# mydan vssh
```
root@feng-pc:~# mydan vssh
SYNOPSIS
     $0 [--range host] [--user foo] [--sudo sudoer ]
        [--timeout seconds (default 500)]
        [--max number (default 128)] \
```

> * 虚拟的ssh，同时操作多个机器

## 参数

> * range 操作对象
> * user 操作用户，默认是当前操作用户,这个用户只和远程日志有关，表面是哪个用户调用的，真正执行的用户要用sudo来指定
> * sudo 需要sudo到哪个用户下
> * timeout 操作超时时间
> * max 并发数，和rcall一样，如果是多个区域，这个并发在区域内生效，也就是如果你同时操作多个区域，每一个区域都是这样的并发数

## 例
```
root@feng-pc:~# mydan vssh -r 'localhost,127.0.0.1'
                        _
          __      _____| | ___ ___  _ __ ___   ___
          \ \ /\ / / _ \ |/ __/ _ \| '_ ` _ \ / _
           \ V  V /  __/ | (_| (_) | | | | | |  __/
            \_/\_/ \___|_|\___\___/|_| |_| |_|\___|
root (2)sh#echo ok
run .. 100% 2/2
############################## RESULT ##############################
====================================================================
127.0.0.1,localhost[2]:
ok
====================================================================
root (2)sh#

```

> * 每一次执行命令都是一次远程调用，所以不支持cd，vim等命令