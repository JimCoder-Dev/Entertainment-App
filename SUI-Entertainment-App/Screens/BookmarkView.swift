import SwiftUI

struct BookmarkView: View {
    
    @EnvironmentObject var viewModel: EntertrainViewModel
    
    var body: some View {
        NavigationView{
            VStack{
                if(viewModel.bookmarked.count < 1){
                    Text("You haven't saved any film or tv series.")
                        .font(.title3)
                        .padding()
                        .background(Color.secondary)
                        .cornerRadius(12)
                }else{
                    VStack(alignment: .leading){
                       
                        ForEach(viewModel.bookmarked){ item in
                            HStack{
                                Image(item.thumbnail)
                                    .frame(maxWidth: 100)
                                    .clipShape(Circle())
                                Spacer()
                                VStack(alignment: .trailing, spacing: 5){
                                    Text(item.title)
                                        .bold()
                                    
                                    
                                   EntertainmentIcon(item: item)
                                        
                                }
                                
                            }
                            
                        }
                    }
                    .padding()
                }
                Spacer()
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
