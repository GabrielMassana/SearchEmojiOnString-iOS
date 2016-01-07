//
//  NSString+EMOEmoji.h
//  EmojiString
//
//  Created by GabrielMassana on 07/01/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//


#import <Foundation/Foundation.h>

/**
 source https://gist.github.com/dezinezync/6622593
 source http://stackoverflow.com/a/22956420/1381708
 */
@interface NSString (EMOEmoji)

 /**
 Calculate the NSRange for every emoji in the string.
 
 @return array with the range for every emoji.
 */
- (NSArray *)emo_emojiRanges;

/**
 Calculate if the string has any emoji.
 
 @return YES if the string has emojis, No otherwise.
 */
- (BOOL)emo_containsEmoji;

/**
 Calculate number og emojis on the string.
 
 @return the total number of emojis.
 */
- (NSInteger)emo_emojiCount;

@end
