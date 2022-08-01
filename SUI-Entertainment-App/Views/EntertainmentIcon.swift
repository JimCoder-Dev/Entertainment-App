import SwiftUI

struct EntertainmentIcon: View {
    
    let item: Entertainment
    
    var body: some View {
        HStack{
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
        
    }
    
}

struct EntertainmentIcon_Previews: PreviewProvider {
    static var previews: some View {
        EntertainmentIcon(item: Entertainment.init(id: "123", title: "", thumbnail: "", year: 2020, category: "TV Series", rating: "", isBookmarked: false, isTrending: false))
            .previewLayout(.sizeThatFits)
    }
}
