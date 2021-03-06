//
//  Speci.m
//  genera
//
//  Created by Simon Sherrin on 8/01/12.
/*
 Copyright (c) 2011 Museum Victoria
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
//


#import "Speci.h"
#import "Audio.h"
#import "Group.h"
#import "Image.h"
#import "Template.h"


@implementation Speci

@dynamic details;
@dynamic identifier;
@dynamic label;
@dynamic labelStyle;
@dynamic searchText;
@dynamic squareThumbnail;
@dynamic subgroup;
@dynamic sublabel;
@dynamic sublabelStyle;
@dynamic audios;
@dynamic group;
@dynamic images;
@dynamic template;


-(NSArray *) orderedImages{
    NSSortDescriptor *imageOrder = [NSSortDescriptor sortDescriptorWithKey:@"order" ascending:YES];
   return [self.images sortedArrayUsingDescriptors:[NSArray arrayWithObjects:imageOrder, nil]];

}

-(NSArray *) orderedAudios{
        NSSortDescriptor *audioOrder = [NSSortDescriptor sortDescriptorWithKey:@"order" ascending:YES];
       return [self.audios sortedArrayUsingDescriptors:[NSArray arrayWithObjects:audioOrder, nil]];
}

@end
