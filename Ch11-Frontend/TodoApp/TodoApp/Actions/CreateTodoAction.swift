import Delta

struct CreateTodoAction: ActionType {
    let id: Int
    let name: String
    let description: String
    let notes: String

    var todo: Todo {
        return Todo(id: id,
                  name: name,
           description: description,
                 notes: notes,
             completed: false,
                synced: false,
              selected: false)
    }

    func reduce(state: State) -> State {
        state.todos.value = state.todos.value + [todo]

        return state
    }
}
