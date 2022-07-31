import SwiftUI

struct BookmarkView: View {
    
    @EnvironmentObject var viewModel: EntertrainViewModel
    
    var body: some View {
        NavigationView{
            VStack{
                Text("\(viewModel.bookmarked.count)")
                ForEach(viewModel.bookmarked){ item in
                    Text(item.title)
                }
            }
            .navigationTitle("Bookmarked")
        }
    }
}

struct BookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkView()
            .environmentObject(EntertrainViewModel())
    }
}
