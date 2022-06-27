//
//  ContentView.swift
//  C3 CoreData SwiftUI
//
//  Created by Muhammad Irfan on 27/06/22.
//

import SwiftUI

struct ContentView: View {
    //TODO: Add Managed object context
    
    //TODO: Add fetch request from the core data and added to an array
    
    
    @State var showingAddEmployee = false
    
    var body: some View {
        NavigationView {
            //TODO: add table based on employees data from the Core Data
            Text("This is table")
            .sheet(isPresented: $showingAddEmployee) {
              AddEmployeeView()
              }
            .navigationBarTitle(Text("Employee"))
            .navigationBarItems(leading: EditButton(), trailing:
              Button(action: { showingAddEmployee.toggle() }) {
                Image(systemName: "plus")
              }
            )
        }
    }
    
    func deleteEmployee(at offsets: IndexSet) {
      //TODO: Handle delete from table, and delete the item from the core data
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
