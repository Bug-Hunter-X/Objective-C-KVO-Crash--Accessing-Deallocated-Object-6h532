//In MyObject.h
@property (nonatomic, strong) NSString *myValue;

//In MyObject.m
- (void)dealloc {
    [self removeObserver:self forKeyPath:@"myValue"];
    NSLog(@"MyObject Dealloc");
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    if ([keyPath isEqualToString:@