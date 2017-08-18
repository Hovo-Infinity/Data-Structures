//
//  main.swift
//  Data Structures
//
//  Created by Hovhannes Stepanyan on 7/19/17.
//  Copyright © 2017 Hovhannes Stepanyan. All rights reserved.
//

import Foundation

var s = Stack<Int>();

s.push(5);
s.push(6);
s.push(12);
s.push(26);
print(s.top());
do {
 try s.pop();
} catch {
    print(error.localizedDescription);
}
print(s.top());
try? s.pop();
try? s.pop();
print(s.top());
try? s.pop();
do {
    try s.pop();
} catch {
    print(error.localizedDescription);
}

print("Hello, World!")

