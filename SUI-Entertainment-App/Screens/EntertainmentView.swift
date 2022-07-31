import SwiftUI

struct EntertainmentView: View {

    @EnvironmentObject var viewModel: EntertrainViewModel
    @State private var searchText = ""
    var columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    let categoy: String
    
    var body: some View {
        NavigationView {
            
                ScrollView{
                    LazyVGrid(columns: columns){
                        ForEach(searchResults){ item in
                            EntertainmentRow(item: item)
                                
                        }
                    }
                }
           
                
            .navigationTitle(categoy == "Movie" ? "Movies" : categoy)
            .searchable(text: $searchText)
        }
        
        
    }
    
    var searchResults: [Entertainment]{
        if searchText.isEmpty{
            return viewModel.filterEntertainment(category: categoy)
        }else{
            return viewModel.searchTVandFilms(name: searchText)
        }
    }
}

struct FilmView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        
            EntertainmentView(categoy: "TV Series")
                .environmentObject(EntertrainViewModel())
        
        
    }
}
