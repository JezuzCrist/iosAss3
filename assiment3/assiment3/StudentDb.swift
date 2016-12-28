//
//  StudentsDb.swift
//  assignment1
//
//  Created by macOS Sierra on 28/11/2016.
//  Copyright © 2016 macOS Sierra. All rights reserved.
//

import Foundation

class StudentsDB {
    static let instance = StudentsDB()
    var students : [Student] = []
    
    func addStudent(studentToAdd: Student) -> Void {
        self.students.append(studentToAdd)
    }
    
    func getStudent(studentId: NSString) -> Student? {
        for student in self.students{
            if(student.id == studentId){
                return student
            }
        }
        return nil
        
    }
    
    func deleteStudent(studentToRemove: NSString) -> Void {
        var removeIndex = 0
        for index in 0 ... (self.students.count - 1){
            if(self.students[index].id == studentToRemove){
                removeIndex = index
            }
        }
        self.students.remove(at: removeIndex )
    }
    
    func updateStudent(studentToUpdate: Student) -> Void {
        var changeIndex = 0
        for index in 0 ... (self.students.count - 1){
            if(self.students[index].id == studentToUpdate.id){
                changeIndex = index
            }
        }
        self.students[changeIndex] = studentToUpdate
    }
}
