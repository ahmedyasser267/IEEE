Dart also provides the user to manipulate a collection of data in the form of a queue. A queue is a FIFO (First In First Out) data structure where the element that is added first will be deleted first. It takes the data from one end and removes it from the other end. Queues are useful when you want to build a first-in, first-out collection of data. It is the special case of list implementation of data in Dart.

Creating a Queue in Dart:
Using Constructor:

Queue variable_name = new Queue();
Through Existing List:

// With type notation(E)
Queue<E> variable_name = new Queue<E>.from(list_name);

// Without type notation
var variable_name = new Queue.from(list_name);
It must be noted that to use a queue in a dart program you have to import ‘dart:collection’ module. If you don’t do so then you will see the following error:

Error compiling to JavaScript:
main.dart:6:3:
Error: 'Queue; isn't a type
  Queue<String> geek = new Queue<String>();
  ^^^^^
main.dart:6:28:
Error: Method not found: 'Queue'.
  Queue<String> geek = new Queue<String>();
                           ^^^^^
Error: Compilation failed.
Example 1: Creating a queue through a constructor and then inserting the elements in it.

import 'dart:collection';
 
void main()
{
  // Creating a Queue
  Queue<String> geek = new Queue<String>(); 
   
  // Printing default
  // value of queue
  print(geek);
   
  // Adding elements in a Queue
  geek.add("Geeks");
  geek.add("For");
  geek.add("Geeks");
   
  // Printing the
  // inserted elements
  print(geek);
}
Output:

{}
{Geeks, For, Geeks}
In the above code queue_name.add(element) is used to add the data in the queue.

Example 2: Creating a queue through a list.

import 'dart:collection';
 
void main()
{
  // Creating a List
  List<String> geek_list = ["Geeks","For","Geeks"];
   
  // Creating a Queue through a List
  Queue<String> geek_queue = new Queue<String>.from(geek_list); 
   
  // Printing the elements
  // in the queue
  print(geek_queue);
}
Output:

{Geeks, For, Geeks}
Functions of Queue in Dart:
Dart also provides functions to manipulate queue created in the dart. Some important functions are listed in the table below followed by the example to use them.

Sr.No.

Function Syntax

Description of the Function

1.

queue_name.add(element)	Adds the element inside the queue from the front.
2.

queue_name.addAll(collection_name)	
Adds all the element present in the collection_name (generally List).

3.

queue_name.addFirst(element)	Adds the element from front inside the queue.
4.

queue_name.addLast(element)	Adds the element from back in the queue.
5.

queue_name.clear()	Removes all the elements from the queue.
6.

queue_name.first()	Returns the first element from the queue.
7.

queue_name.forEach(f(element))	Returns all the element present in the queue.
8.

queue_name.isEmpty	Returns boolean true if the queue is empty else return false.
9.

queue_name.length	Returns the length of the queue.
10.

queue_name.removeFirst()	Removes the first element from the queue.
11.

queue_name.removeLast()	Removes the last element from the queue.
Example:  Using various functions on Queue in Dart.

import 'dart:collection';
 
void main()
{
  // Creating a Queue
  Queue<String> geek = new Queue<String>(); 
   
  // Printing default
  // value of queue
  print(geek);
   
  // Adding a element
  // and displaying it
  geek.add("Geeks");
  print(geek);
   
  // Adding multiple
  // element and displaying it
  List<String> geek_data = ["For","Geeks"];
  geek.addAll(geek_data);
  print(geek);
   
  // Deleting all the
  // data from queue
  geek.clear();
  print(geek);
   
  // Checking if the
  // queue is empty or not
  print(geek.isEmpty);
   
  // Adding first element
  geek.addFirst("Geeks");
  print(geek);
   
  //Adding Last element
  geek.addLast("For");
  geek.addLast("Geeks");
  print(geek);
     
  // Checking length of the queue
  print(geek.length);
   
  // Removing First
  // Element from queue
  geek.removeFirst();
  print(geek);
   
  // Removing Last
  // element from queue 
  geek.removeLast();
  print(geek);
   
  // Displaying all the
  // elements of the queue
  geek.forEach(print);
}
Output:

{}
{Geeks}
{Geeks, For, Geeks}
{}
true
{Geeks}
{Geeks, For, Geeks}
3
{For, Geeks}
{For}
For
