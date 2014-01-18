# make_test

	git clone https://github.com/hmgle/make_test.git
	cd make_test
	make # 可以看到编译正常
	make clean
	git checkout -b develop origin/develop
	make # 编译正常
	make clean
	git checkout master
	make # 奇怪的事情发生了！

See [Git 下 C 项目的 Makefile 问题](http://hmgle.github.io/makefile/git/2014/01/16/Makefile-git.html)
