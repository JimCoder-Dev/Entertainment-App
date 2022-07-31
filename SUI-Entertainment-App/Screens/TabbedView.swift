import SwiftUI

struct TabbedView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            
            EntertainmentView(categoy: "TV Series")
                .tabItem{
                    Label("TV", systemImage: "tv")
                }
            
            EntertainmentView(categoy: "Movie")
                .tabItem{
                    Label("Film", systemImage: "film")
                }
            BookmarkView()
                .tabItem{
                    Label("Bookmark", systemImage: "bookmark")
                }
        }
        .accentColor(.red)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}
