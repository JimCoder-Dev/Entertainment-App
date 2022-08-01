import SwiftUI

struct EntertainmentRow: View {
    @EnvironmentObject var viewModel: EntertrainViewModel
    let item: Entertainment
    
    var body: some View {
     
        ZStack {

            VStack(alignment: .leading){
                  
                
                ZStack{
                    Image(item.thumbnail)
                            .clipShape(RoundedRectangle(cornerRadius: 12))

                    BookmarkButton(bookMarked: item.isBookmarked)
                        .offset(x: 70, y: -35)
                        .onTapGesture {
                            viewModel.toggleBookmark(item: item)
                        }
                        
                }
                        
                
                  
                    
                    VStack(alignment: .leading, spacing: 10){
                        
                        HStack{
                         
                            Text(String(item.year))
                                .font(.caption)
                         
                            if(item.category == "TV Series"){
                                Image(systemName: "tv.circle")
                                Text("TV Series")
                                    .font(.caption)
                                   
                            }
                            else{
                                Image(systemName: "film.circle")
                                    .font(.title3)
                                Text("Movie")
                                    .font(.caption)
                            }
                        }
                        
                        Text(item.title)
                            .fontWeight(.bold)
                        
                        
                        
                    }.padding(.horizontal, 2)
                    
                
                    
                }.frame(alignment: .leading)
           
        }
      
    }
    
    
}

struct EntertainmentRow_Previews: PreviewProvider {
    static var previews: some View {
        EntertainmentRow(item: Entertainment(id: "5fa955fd-4818-462b-82d7-811de67d254a", title: "Beyond Earth", thumbnail: "beyond-earth", year: 2019, category: "Movie", rating: "PG", isBookmarked: false, isTrending: true))
            .environmentObject(EntertrainViewModel())
    }
}
