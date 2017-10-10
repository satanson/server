#include <my_sys.h>
#include <tap.h>

int main(int argc __attribute__((unused)), char *argv[] __attribute__((unused)))
{
	plan(3);
	diag("a dummy test just for playing fun");
	ok(1==1, "1==1");
	ok(1!=2, "1!=2");
	ok(2==2, "1 is 1");
	return exit_status();
}
