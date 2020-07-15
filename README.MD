ffmpeg-php 容器 1121

##### // 查看tag，列出所有tag，列出的tag是按字母排序的，和创建时间没关系。
    $ git tag
    v0.1
    v1.3

##### //查看指定版本的tag，git tag -l “v1.4.2.**”
    $ git tag -l 'v1.4.2.*'
    v1.4.2.1
    v1.4.2.2
    v1.4.2.3
    v1.4.2.4

##### //显示指定tag的信息
    $ git show v1.4
    tag v1.4
    Tagger: Scott Chacon <schacon@gee-mail.com>
    Date:   Mon Feb 9 14:45:11 2009 -0800

    my version 1.4

    commit 15027957951b64cf874c3557a0f3547bd83b3ff6
    Merge: 4a447f7... a6b4c97...
    Author: Scott Chacon <schacon@gee-mail.com>
    Date:   Sun Feb 8 19:02:46 2009 -0800

        Merge branch 'experiment'


##### //创建轻量级tag：这样创建的tag没有附带其他信息
    git tag v1.0
    //带信息的tag：-m后面带的就是注释信息，这样在日后查看的时候会很有用
    git tag -a v1.0 -m 'first version'


##### //我们在执行 git push 的时候，tag是不会上传到服务器的，比如现在的github，创建 tag 后 git push ，在github网页上是看不到tag 的，为了共享这些tag，你必须这样：
    git push origin v1.0
    或者
    //将所有tag 一次全部push到github上。
    git push origin --tags

##### //删除本地tag
    git tag -d v1.0
##### //删除github远端的指定tag
    git push origin :refs/tags/v1.0.0


##### 创建一个基于指定tag的分支
    git checkout -b tset v0.1.0
