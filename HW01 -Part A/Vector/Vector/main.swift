
//  main.swift
// Authors : Darshan Masti Prakash(SU ID :223909540) & Manjunath Babu(SU ID : 515114647).
// Course Number : CSE 651
// Assignment Number : 01
import Foundation

print("Testing started")
var vec = SimpleVector<Int>()

// show initial size and capacity of SimpleVector vec
print("Size of SimpleVector vec:")
print (vec.Size()!)

// add 10 items to SimpleVector vec (add at the end of the list)
vec.add(50)
print("Added 50, Size of SimpleVector \(vec.Size()!)")
vec.add(30)
print("Added 30, Size of SimpleVector \(vec.Size()!)")
vec.add(40)
print("Added 40, Size of SimpleVector \(vec.Size()!)")
vec.add(50)
print("Added 50, Size of SimpleVector \(vec.Size()!)")
vec.add(60)
print("Added 60, Size of SimpleVector \(vec.Size()!)")
vec.add(70)
print("Added 70, Size of SimpleVector \(vec.Size()!)")
vec.add(80)
print("Added 80, Size of SimpleVector \(vec.Size()!)")
vec.add(90)
print("Added 90, Size of SimpleVector \(vec.Size()!)")
vec.add(100)
print("Added 100, Size of SimpleVector \(vec.Size()!)")
vec.add(110)
print("Added 110, Size of SimpleVector \(vec.Size()!)")

for var i = 0;  i < vec.Size();  ++i
{
print("Item at index \(i) = \(vec.get(i)!)")
}

 // remove an item from SimpleVector vec
let item :Int  = vec.get(5)!
let stat :Bool = vec.remove(item)
if stat == true
{
print("Removed")
}
else
{
print("Failed to remove")
}
print("item \(item) at index 5 removed, Size of SimpleVector \(vec.Size()!)");

for var i = 0;  i < vec.Size();  ++i
{
    print("Item at index \(i) = \(vec.get(i)!)")
}

// insert an item at a particular position in SimpleVector vec
vec.add(999);
print( "Added 999 at index \(vec.indexOf(999)), Size of SimpleVector vec: \(vec.Size()!)" );
for var i = 0;  i < vec.Size();  ++i
{
    print("Item at index \(i) = \(vec.get(i)!)")
}

print("")
print("Printing the description stringization of the vector items")
vec.description() //Printing the stringization of the vector items

print("Printing descriptionPrint Elements of array: ")
vec.descriptionPrint() // Printing each of the individual items


// clear out SimpleVector vec
while vec.Size() != 0
{
vec.remove(vec.get(vec.Size()!-1)!)
}

// check clear
if vec.isEmpty()
{
print( "SimpleVector vec is now empty" )
}
else
{
print( "SimpleVector vec now contains \(vec.Size()) items")
}

print("Testing Ended" )









