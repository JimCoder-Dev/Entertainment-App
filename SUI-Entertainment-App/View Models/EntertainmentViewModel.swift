import Foundation

class EntertrainViewModel: ObservableObject{
    @Published var items: [Entertainment] = []
    @Published var bookmarked: [Entertainment] = []
    
    init(){
        items = Bundle.main.decode("data.json")
    }
    
    var filterTrending: [Entertainment]{
        return items.filter { $0.isTrending == true }
        
    }
    
    func searchTVandFilms(name: String)-> [Entertainment]{
        items.filter { $0.title.localizedCaseInsensitiveContains(name) }
    }
    
    func toggleBookmark(item: Entertainment){
        if let i = items.firstIndex(where: { $0.id == item.id }){
            
            items[i].isBookmarked.toggle()
            print("\(items[i].title)")
            print("\(items[i].isBookmarked)")
            if(items[i].isBookmarked){
                bookmarked.append(item)
            }
            else{
                bookmarked.remove(at: i)
            }
            
           
        }
    }
    
    func filterEntertainment(category: String) ->[Entertainment]{
        return items.filter { $0.category == category}
    }
    
}
