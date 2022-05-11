//
//  main.swift
//  codingExerciseStructures
//
//  Created by JUNGMIN KIM on 2022/05/11.
//

import Foundation

print("Hello, World!")

//
//  Structures.swift
//  codingExerciseStructures
//
//  Created by JUNGMIN KIM on 2022/05/11.
//

import Foundation


func exercise() {

    // Define the User struct here


    // Initialise a User struct here

    struct User{
          var name:String
          var email:String
          var followers:Int
          var isActive:Bool
          init(name: String, email: String?, followers: Int, isActive: Bool){
              self.name = name
              self.email = email ?? ""
              self.followers = followers
              self.isActive = isActive
              
          }
          func logStatus(){
              if self.isActive == true {
                  print("\(name) is working hard")
              } else{
                  print("\(name) has left earth")
              }
          }
         
      }

  func exercise() {

      // Diagnostic code - do not change this code
      let richard = User(name: "Richard", email:"", followers: 0, isActive: false)
      richard.logStatus()
      print("\nDiagnostic code (i.e., Challenge Hint):")
      var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
      musk.logStatus()
      
     
      print("Contacting \(musk.name) on \(musk.email) ...")
      print("\(musk.name) has \(musk.followers) followers")
      // sometime later
      musk.isActive = false
      musk.logStatus()
      

  }
