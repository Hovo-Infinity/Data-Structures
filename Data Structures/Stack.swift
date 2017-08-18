//
//  Stack.swift
//  Data Structures
//
//  Created by Hovhannes Stepanyan on 8/18/17.
//  Copyright © 2017 Hovhannes Stepanyan. All rights reserved.
//

import Foundation

class Stack<T> {
    private class node<T> {
        var next:node<T>?;
        var info:T;
        init(info:T) {
            self.info = info;
            self.next = nil;
        }
    }
    
    private var _top:node<T>? = nil;
    
    public func size() -> Int {
        var count:Int = 0;
        var newNode = _top;
        while newNode != nil {
            count += 1;
            newNode = newNode?.next;
        }
        return count;
    }
    
    public func empty() -> Bool {
        return size() == 0;
    }
    
    public func push(_ element:T) {
        let newNode = node<T>(info: element);
        newNode.next = _top;
        _top = newNode;
    }
    
    public func pop() throws {
        if size() != 0 {
            let newNode = _top?.next;
            _top = nil;
            _top = newNode;
        } else {
            let exception = NSException.init(name: NSExceptionName(rawValue: "Underflow Exceptiom"), reason: "Stack in empty", userInfo: nil);
            exception.raise();
        }
    }
    
    public func top() -> T {
        return (_top?.info)!;
    }
    
}
