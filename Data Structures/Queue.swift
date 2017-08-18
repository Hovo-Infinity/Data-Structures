//
//  Queue.swift
//  Data Structures
//
//  Created by Hovhannes Stepanyan on 8/16/17.
//  Copyright © 2017 Hovhannes Stepanyan. All rights reserved.
//

import Foundation

class Queue<T> {
    private class node<T> {
        var next:node<T>?;
        var info:T?;
        init(info:T) {
            next = nil;
            self.info = info;
        }
        init() {
            next = nil;
            info = nil;
        }
    }
    
    private var front:node<T>?
    private var back:node<T>?
    
    public func count() -> Int {
        var count:Int = 0;
        var item = back;
        while item != nil {
            count += 1;
            item = item?.next;
        }
        return count;
    }
    
    public func push(_ item:T) {
        let newItem = node.init(info: item);
        if count() == 0 {
            back?.next = newItem;
            back = newItem;
            front = back;
        } else {
            back?.next = newItem;
            back = newItem;
        }
    }
    
    public func pop() throws -> Void {
        if count() > 0 {
            let item = front?.next;
            front = nil;
            front = item;
        } else {
            let exception = NSException(name: NSExceptionName(rawValue: "Underflow exception"), reason: "Queue is empty", userInfo: nil);
            exception.raise();
        }
    }
    
    public func log() {
        if count() > 0 {
            var item = front;
            while item != nil {
                print(item?.info ?? "no");
                item = item?.next;
            }
            print("end");
        } else {
            print("No Items");
        }
    }
    
    public func isEmpty() -> Bool {
        return count() == 0;
    }
    
    public func getFront() -> T? {
        return front?.info;
    }
    
    public func getBack() -> T? {
        return back?.info;
    }
}
