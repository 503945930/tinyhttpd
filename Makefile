all: httpd client
LIBS = -lpthread #-lsocket
httpd: httpd.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

client: simpleclient.c
	gcc -W -Wall -o $@ $<
clean:
	rm httpd



# $@指代当前目标
# $<  指代第一个前置条件
