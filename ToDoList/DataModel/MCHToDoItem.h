//
//  MCHToDoItem.h
//  ToDoList
//
//  Created by wangjiay on 4/22/14.
//  Copyright (c) 2014 zhaohengtech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MCHToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
