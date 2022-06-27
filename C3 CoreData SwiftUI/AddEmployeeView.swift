//
//  AddEmployeeView.swift
//  CoreData SwiftUI
//
//  Created by Muhammad Irfan on 27/06/22.
//

import SwiftUI

struct AddEmployeeView: View {
    //TODO: add environment property to store our managed object context:
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    @State private var name = ""
    @State private var age = 17
    
    //To make our textfield able to handle number (integer)
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
            return formatter
        }()
    
    var body: some View {
        NavigationView {
          Form {
            Section(header: Text("Name")) {
              TextField("Name", text: $name)
            }
              Section(header: Text("Age")) {
                  
                TextField("Age", value: $age, formatter: formatter)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                                   .padding()
            }
            Section {
              Button(action: addEmployee) {
                Text("Add Employee")
              }
            }
          }
        }
          .navigationBarTitle(Text("Add Employee"), displayMode: .inline)
    }
    
    private func addEmployee() {
        //TODO: handle save: save data to the core data
        
        dismiss()
    }
}

struct AddEmployeeView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmployeeView()
    }
}
