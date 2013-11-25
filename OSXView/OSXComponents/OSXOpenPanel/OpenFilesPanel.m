#import "OpenFilesPanel.h"

@implementation OpenFilesPanel

- (id)init
{
    self = [super init];
    if (self) {
        [self setAllowsMultipleSelection: YES];
        [self setCanChooseDirectories: NO];
        [self setCanChooseFiles: YES];
        [self setFloatingPanel: YES];
    }
    return self;
}

-(NSMutableArray*) filesPaths {
    NSArray* urls = [self URLs];
    NSUInteger count = urls.count;
    NSMutableArray* paths = [NSMutableArray arrayWithCapacity:count];
    for( int i = 0;i < count; i++){
        NSURL* fileURL = [urls objectAtIndex: i] ;
        NSString* path = fileURL.path;
        [paths addObject: path];
    }
    return paths;
}

@end
