//
//  ContentView.swift
//  ListApp-SwiftData
//
//  Created by Giray Şengönül on 31.12.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    // MARK: - Properties
    @Environment(\.modelContext) private var modelContext
    @Query private var tasks: [Task]
    @State var alert: Bool = false
    @State var textFieldText: String = ""
    
    // MARK: - Body
    var body: some View {
        NavigationStack{
            List{
                ForEach(tasks) { task in
                    Text(task.title)
                        .font(.title.weight(.light))
                        .padding(.vertical, 3)
                        .swipeActions {
                            Button("Delete",role: .destructive){
                                modelContext.delete(task)
                            }
                        }
                }
            }//: List
            .navigationTitle("Tasks")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        alert.toggle()
                    }, label: {
                        Image(systemName: "plus.circle")
                    })//: Button
                }//: ToolBarItem
            })//: toolBar
            
            .alert("Create a new task", isPresented: $alert, actions: {
                TextField("Enter a task", text: $textFieldText)
                Button {
                    modelContext.insert(Task(title: textFieldText))
                    textFieldText = ""
                } label: {
                    Text("Save")
                }
                
            })
            
            .overlay {
                if tasks.isEmpty{
                    ContentUnavailableView("My Tasks", systemImage: "heart.circle", description: Text("No tasks yet. Add one to get started."))
                }//: iF
            }//: overlay
        }//: NavigationStack
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Task.self, inMemory: true)
}
