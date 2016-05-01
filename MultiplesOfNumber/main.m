//
//  main.m
//  MultiplesOfNumber


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *testString = [[NSString alloc]initWithFormat:@"%@,%@", @(111), @(32)];
        NSArray *seperatedString = [testString componentsSeparatedByString:@","];
        
        NSInteger x = [[seperatedString objectAtIndex:0] integerValue];
        NSInteger n = [[seperatedString objectAtIndex:1] integerValue];
        NSInteger answer = 0;
        NSInteger multiplier = 1;
        
        NSLog(@"\nn before multiplier: %ld\n\nx before multiplier: %ld\n\n", n, x);

        while (n * multiplier < x) {
            multiplier ++;
            answer = n * multiplier;
        }
        
        NSString *answerString = [NSString stringWithFormat:@"%ld", answer];
        
        NSLog(@"\nanswerString: %@\n\n", answerString);
        
    }
    return 0;
}
