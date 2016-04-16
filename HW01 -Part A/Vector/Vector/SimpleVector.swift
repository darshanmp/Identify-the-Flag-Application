
// SimpleVector.swift
// Authors : Darshan Masti Prakash(SU ID :223909540) & Manjunath Babu(SU ID : 515114647).
// Course Number : CSE 651
// Assignment Number : 01

import Foundation

public class SimpleVector<E : Equatable> {
   private var ra : [E]
   private var capacity: Int = 0
   private var size: Int = 0
   init () {
        ra  = [E]()
        capacity = 10
        size = 0
    }
    
    public func add(item:E) -> Bool {
        ra.append(item)
        return true
    }
    
    public func get(index: Int) -> E? {
        if(index >= 0 && index < ra.count)
        {
            return ra[index]
        }
        return nil
    }
    
    public func indexOf(item: E) -> Int {
        for var index = 0; index < ra.count; index++ {
            if item == ra[index]
            {
                    return index
            }
        }
        return -1
    }
    
    public func Size() ->Int? {
        return ra.count
    }
    
    public func isEmpty() -> Bool {
        if(ra.count == 0) {
            return true
        }
        else {
            return false
        }
    }
    
    public func remove(item:E) -> Bool {
        let index = indexOf(item)
        if index >= 0 {
            ra.removeAtIndex(index)
            return true
        }
       return false
    }
    
    public func description() -> String {
        print(ra.description);
        return ra.description
    }
    
    public func descriptionPrint() {
        for element in ra {
            print(element)
        }
    }
}



