//
//  EmojiStringTests.m
//  EmojiStringTests
//
//  Created by Gabriel Massana on 23/1/16.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSString+EMOEmoji.h"

@interface EmojiStringTests : XCTestCase

@property (nonatomic, strong) NSString *ios91;
@property (nonatomic, strong) NSString *abc;
@property (nonatomic, strong) NSString *weird;
@property (nonatomic, strong) NSString *ios91New;

@end

@implementation EmojiStringTests

- (void)setUp
{
    [super setUp];

    self.ios91 = @"🙂🤗🤔🙄🤐🤓☹🙁🙃🤒🤕🤑⛑🕵🗣🤘🖕🖐✍👁🕶🦁🦄🐿🦃🕊🦀🕷🕸🦂☘🌡⛈🌤🌥🌦🌧🌨🌩🌪🌫🌬☄☂️⛱🏖🌶🧀🌭🌮🌯🍿🍾🍽🏌⛸⛷⛹🏋🏎🏍🏅🏏🏐🏑🏒🏓🏸🗺🏔⛰🏕🏖🏜🏝🏞🏟🏛🏗🏘🏙🏚🕋🕌🕍⛩📿🕎✝️☦✡️☸☪🕉🛐🛣🛤🛳⛴🛥🛩🛫🛬🛰🛢🛎🛌🛏🛋⏱⏲🕰🎖🎗🖼🎞🎟🏷🕹🎙🎚🎛*⃣🖥🖨⌨🖱🖲📽📸🛍🕯🗞🗳🖋🖊🖌🖍🗂🗒🗓🖇🗃🗄🗑🗝⛏⚒🛠⚙🗜⚗⚖⛓🗡⚔🛡🏹⚰⚱🏳🏴🕳⚜⚛☯️☮☢☣⏭⏯⏮⏸⏹⏺🗯👁‍🗨🇦🇫🇦🇱🇩🇿🇦🇸🇦🇩🇦🇴🇦🇮🇦🇬🇦🇷🇦🇲🇦🇼🇦🇿🇧🇸🇧🇭🇧🇩🇧🇧🇧🇾🇧🇿🇧🇯🇧🇲🇧🇹🇧🇴🇧🇦🇧🇼🇻🇬🇧🇳🇧🇬🇧🇫🇧🇮🇰🇭🇨🇲🇨🇻🇰🇾🇨🇫🇹🇩🇰🇲🇨🇬🇨🇩🇨🇰🇨🇷🇨🇮🇭🇷🇨🇺🇨🇼🇨🇾🇨🇿🇩🇯🇩🇲🇩🇴🇪🇨🇪🇬🇸🇻🇬🇶🇪🇷🇪🇪🇪🇹🇫🇴🇫🇯🇬🇫🇹🇫🇬🇦🇬🇲🇬🇪🇬🇭🇬🇮🇬🇷🇬🇱🇬🇩🇬🇺🇬🇹🇬🇬🇬🇳🇬🇼🇬🇾🇭🇹🇭🇳🇭🇺🇮🇸🇮🇷🇮🇶🇯🇲🇯🇴🇰🇿🇰🇪🇰🇮🇽🇰🇰🇼🇰🇬🇱🇦🇱🇻🇱🇧🇱🇸🇱🇷🇱🇾🇱🇮🇱🇹🇱🇺🇲🇰🇲🇬🇲🇼🇲🇻🇲🇱🇲🇹🇲🇷🇾🇹🇲🇩🇲🇳🇲🇪🇲🇸🇲🇦🇲🇿🇲🇲🇳🇦🇳🇵🇳🇨🇳🇮🇳🇪🇳🇬🇳🇺🇲🇵🇰🇵🇴🇲🇵🇰🇵🇼🇵🇸🇵🇦🇵🇬🇵🇾🇵🇪🇶🇦🇷🇴🇷🇼🇼🇸🇸🇲🇸🇹🇸🇳🇷🇸🇸🇨🇸🇱🇸🇽🇸🇰🇸🇮🇸🇧🇸🇴🇸🇸🇱🇰🇰🇳🇱🇨🇲🇫🇵🇲🇻🇨🇸🇩🇸🇷🇸🇿🇸🇾🇹🇯🇹🇿🇹🇭🇹🇱🇹🇬🇹🇴🇹🇹🇹🇳🇹🇲🇹🇨🇹🇻🇺🇬🇺🇦🇺🇾🇻🇮🇺🇿🇻🇺🇻🇪🇾🇪🇿🇲🇿🇼";
    self.abc = @"abcdefghijklmnopqrstuvwxyz";
    self.weird = @"✍☘☦☸☪⌨⚒⚙⚗⚖⚔⚰⚱⚜⚛☮☢☣";
    self.ios91New = @"🤐🤑🤒🤓🤔🤕🤖🤗🤘🦀🦁🦂🦃🦄🧀☂️✝️✡️☯️";
}

- (void)tearDown
{
    self.ios91 = nil;
    self.abc = nil;
    self.weird = nil;
    self.ios91New = nil;
    
    [super tearDown];
}

#pragma mark - containsEmoji

- (void)test_emo_containsEmoji_ios91
{
    BOOL ios91 = [self.ios91 emo_containsEmoji];
    
    XCTAssert(ios91 == YES, @"fail_test_emo_containsEmoji");
}

- (void)test_emo_containsEmoji_abc
{
    BOOL abc = [self.abc emo_containsEmoji];
    
    XCTAssert(abc == NO, @"fail_test_emo_containsEmoji");
}

- (void)test_emo_containsEmoji_weird
{
    BOOL weird = [self.weird emo_containsEmoji];
    
    XCTAssert(weird == YES, @"fail_test_emo_containsEmoji");
}

- (void)test_emo_containsEmoji_ios91New
{
    BOOL ios91New = [self.ios91New emo_containsEmoji];

    XCTAssert(ios91New == YES, @"fail_test_emo_containsEmoji");
}

#pragma mark - emojiRanges

- (void)test_emo_emojiRanges_ios91
{
    NSArray *ios91 = [self.ios91 emo_emojiRanges];
    
    XCTAssert(ios91.count > 0, @"fail_test_emo_emojiRanges");
}

- (void)test_emo_emojiRanges_abc
{
    NSArray *abc = [self.abc emo_emojiRanges];

    XCTAssert(abc.count == 0, @"fail_test_emo_emojiRanges");
}

- (void)test_emo_emojiRanges_weird
{
    NSArray *weird = [self.weird emo_emojiRanges];

    XCTAssert(weird.count == 18, @"fail_test_emo_emojiRanges");
}

- (void)test_emo_emojiRanges_ios91New
{
    NSArray *ios91New = [self.ios91New emo_emojiRanges];

    XCTAssert(ios91New.count == 19, @"fail_test_emo_emojiRanges");
}

#pragma mark - emojiCount

- (void)test_emo_emojiCount_ios91
{
    NSInteger ios91 = [self.ios91 emo_emojiCount];
    
    XCTAssert(ios91 > 0, @"fail_test_emo_emojiCount");
}

- (void)test_emo_emojiCount_abc
{
    NSInteger abc = [self.abc emo_emojiCount];

    XCTAssert(abc == 0, @"fail_test_emo_emojiCount");
}

- (void)test_emo_emojiCount_weird
{
    NSInteger weird = [self.weird emo_emojiCount];

    XCTAssert(weird == 18, @"fail_test_emo_emojiCount");
}

- (void)test_emo_emojiCount_ios91New
{
    NSInteger ios91New = [self.ios91New emo_emojiCount];

    XCTAssert(ios91New == 19, @"fail_test_emo_emojiCount");
}

#pragma mark - PureEmojiString

- (void)test_emo_isPureEmojiString_emoji
{
    NSString *emoji = self.ios91;
    
    if (NSClassFromString(@"UIStackView")) {
        emoji = [NSString stringWithFormat:@"%@%@", self.ios91, self.ios91New];
    }
    
    BOOL isPureEmojiString = [emoji emo_isPureEmojiString];
    
    XCTAssert(isPureEmojiString == YES, @"fail_test_emo_isPureEmojiString");
}

- (void)test_emo_isPureEmojiString_wired
{
    BOOL isPureEmojiString = [self.weird emo_isPureEmojiString];
    
    XCTAssert(isPureEmojiString == YES, @"fail_test_emo_isPureEmojiString");
}

- (void)test_emo_isPureEmojiString_abc
{
    BOOL isPureEmojiString = [self.abc emo_isPureEmojiString];
    
    XCTAssert(isPureEmojiString == NO, @"fail_test_emo_isPureEmojiString");
}

- (void)test_emo_isPureEmojiString_abc_emoji
{
    NSString *text = [NSString stringWithFormat:@"%@%@%@%@", self.abc, self.ios91, self.ios91New, self.weird];
    BOOL isPureEmojiString = [text emo_isPureEmojiString];
    
    XCTAssert(isPureEmojiString == NO, @"fail_test_emo_isPureEmojiString");
}

@end
