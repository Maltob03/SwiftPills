//
//  ContentView.swift
//  SwiftDataDemo
//
//  Created by Matteo Altobello on 10/07/23
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query var items: [StudentList]
    @State var isPresented: Bool = false
    @State var newSurname: String = ""
    @State var newName: String = ""
    @State var newAge: String = ""
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(items) { item in
                    NavigationLink {
                        Text("\(item.age)")
                    } label: {
                        Text("\(item.name + " " + item.surname)")
                    }
                }.onDelete(perform: deleteStudents)
            }
            .navigationTitle("SwiftData Demo")
            .toolbar(){
                ToolbarItem(placement: .topBarTrailing){
                    Button(action: {
                        isPresented.toggle()
                    }, label: {
                        Image(systemName: "plus.circle")
                    })
                    
                }
                
            }
        }.sheet(isPresented: $isPresented, content: {
            inputSheet
        })
        
    }
    
    var inputSheet : some View{
        VStack{
            Text("Insert new students").font(.title)
            TextField("name", text: $newName)
            TextField("surname", text: $newSurname)
            TextField("age", text: $newAge)
            Button("Save") {
                addStudent()
                isPresented.toggle()
            }.buttonStyle(.borderedProminent)
        }.textFieldStyle(.roundedBorder)
            .padding()
    }
    
    private func addStudent(){
        let newCard = StudentList(name: newName, surname: newSurname, age: Int(newAge) ?? 0)
        modelContext.insert(newCard)
    }
    
    private func deleteStudents(offsets: IndexSet) {
        withAnimation {
          for index in offsets {
            modelContext.delete(items[index])
          }
        }
      }
}

#Preview {
    ContentView()
}
