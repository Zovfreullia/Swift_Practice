//: [Previous](@previous)

//: ## Avoiding Strong Reference Cycles

//: ### Classes

/*
    Because swift classes are reference types, and thus a single class instance can have 
    multiple references to it, a situation can occur where two class instances can hold a 
    reference to each other, such that neither will ever be deallocated. This is called a 
    strong reference cycle
*/

import Foundation


/*
    The teacher class has a students property, that is an array of student instances
*/

class Teacher {
    
    var students = [Student]()
    
    deinit {
        print("Teacher will be deallocated")
    }
    
}

/*
    The student class has a teacher constant which holds a teacher instance.
*/

class Student {
    
    unowned let teacher: Teacher
    
    init(teacher: Teacher) {
        self.teacher = teacher
    }
    
    deinit {
        print("Student will be deallocated")
    }
    
}

/*
    We have optional instances of teacher, Mrs. Donovan, and student, Charlie Brown. 
    Mrs. Donovan is assigned to Charlie Brown's teacher property and 
    Charlie Brown is appended to Mrs. Donovan's students array. Strong reference.
*/

var mrsDonovan: Teacher? = Teacher()

var charlieBrown: Student? = Student(teacher: mrsDonovan!)

mrsDonovan?.students.append(charlieBrown!)


charlieBrown = nil
mrsDonovan = nil

/*
    Use a weak reference when it is possible that a property might be nill at some point in 
    the life of the class instance. And use unowned when the property will 
    always have a value
*/

var teacher2: Teacher? = Teacher()
teacher2 = nil

class Band {
    
    var drummer: Drummer
    
    init(drummer: Drummer) {
        self.drummer = drummer
    }
    
    deinit {
        print("Band will be deallocated")
    }
    
}

class Drummer {
    
    weak var band: Band?
    
    deinit {
        print("Drummer will be deallocated")
    }
    
}

var neilPeart: Drummer? = Drummer()

var rush: Band? = Band(drummer: neilPeart!)

neilPeart?.band = rush

neilPeart = nil
rush = nil


//: ### Closures

/*
    We're accessing self in both of these closures. A closure captures any values 
    from its surrounding scope for the life of the closure. So our closures are 
    capturing self, which will cause a strong reference cycle.
*/

class Alpha {
    
    deinit {
        print("Alpha will be deallocated")
    }
    
}

/* 
    To prevent a strong reference cycle in closures, closures can define a capture list, 
    which is a comma-separated list enclosed in square brackets on the first line 
    of the closure.
*/

class Bravo {
    
    let alpha = Alpha()
    
    lazy var printOutValues: () -> () = {
        [unowned self] in
        print("\(self), \(self.alpha)")
    }
    
    lazy var printOutAlphaValue: () -> () = {
        [weak alpha = self.alpha] in
        print("\(alpha)")
    }
    
    deinit {
        print("Bravo will be deallocated")
    }
    
}

var bravo: Bravo? = Bravo()
bravo?.printOutValues()
bravo?.printOutAlphaValue()
bravo = nil




//: [Next](@next)
