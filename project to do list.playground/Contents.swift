import UIKit


enum TaskStatus {
    case completed
    case pending
}

struct Item {
    var taskTitle: String
    var taskStatus: TaskStatus
}

struct List {
    var listTitle: String = ""
    var items: [Item] = []
    
    mutating func addTask(item: Item) {
        self.items.append(item)
        
        
    }
    mutating func deleteAtask(index: Int){
        self.items.remove(at: index)
    }
    mutating func updateAtask(index: Int, task: String){
//        self.items[item].update(with: String )
        self.items[index].taskTitle = task
    }
}


class ToDo {
    var lists: [List] = []
    
    init(list: List){
        self.lists.append(list)
        }
    func readAll(){
        for list in lists {
            print("List Title * \(list.listTitle) \(list.items.count))")
//            for item in list.items {
//                print("------- Item \(item.taskTitle), status: \(item.taskStatus)")
//            }
        }
        }
   
    }
    
    
    
    
        
var task1 = Item.init(taskTitle: "shopping", taskStatus:.completed)
var task2 = Item.init(taskTitle: "cleen myroom", taskStatus:.pending)
var task3 = Item.init(taskTitle: "meeting", taskStatus: .completed)
var task4 = Item.init(taskTitle: "visit my uncle", taskStatus: .completed)

var myLists = ToDo(list: List(listTitle: "my work list", items:[task1 , task2, task3]))
// Create New List
myLists.lists.append(List(listTitle: "tuaiwq list", items: [Item(taskTitle: "Finish Project", taskStatus: .pending)]))
// Create an item for 1st List
myLists.lists[0].addTask(item: task4)
//myLists.lists[0].deleteAtask(index: 0)
// Update Item in List, Change Title
myLists.lists[0].updateAtask(index: 0, task: "Buy water")
// Start Nested For Loop in all lists and print items in each list
myLists.readAll()



               

               
            




