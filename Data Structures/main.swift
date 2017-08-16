//
//  main.swift
//  Data Structures
//
//  Created by Hovhannes Stepanyan on 7/19/17.
//  Copyright © 2017 Hovhannes Stepanyan. All rights reserved.
//

import Foundation

var q = Queue<Int>();
q.log();
q.push(item: 5);
q.push(item: 8);
q.push(item: 12);
q.push(item: 2);
q.log();
do {
    try q.pop()
} catch {
    print(error.localizedDescription);
}
q.log();

print("Hello, World!")

