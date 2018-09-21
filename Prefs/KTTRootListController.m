#include "KTTRootListController.h"

@implementation KTTRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

- (void)respring:(id)sender {
	pid_t pid;
    const char* args[] = {"killall", "backboardd", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
}

- (void)killkakaotalk:(id)sender {
	pid_t pid;
    const char* args[] = {"killall", "KakaoTalk", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
}

@end
