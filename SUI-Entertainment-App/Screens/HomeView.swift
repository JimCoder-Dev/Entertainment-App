import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var items: EntertrainViewModel
    
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                Section{
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 10){
                            ForEach(items.filterTrending){ trending in
                                    EntertainmentRow(item: trending)
                            }
                        }
                    }
                    
                }header:{
                    Text("Trending")
                        .font(.title)
                        .fontWeight(.bold)
                }.padding(.leading, 5)
                    .padding(.top, 20)
                
                
                
                List(items.items){ item in
                    EntertainmentRow(item: item)
                        .frame(maxWidth: .infinity)
                       
                        
                   
                }
                .listRowBackground(Color("backgroundColor"))
                .listRowInsets(.none)
                .listStyle(PlainListStyle())
                    
            }
            .navigationBarTitle("Entertainment App")
           
        }
        
        
        
    }
    
   
    
  
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(EntertrainViewModel())
    }
}


//                            HStack(spacing: 20){
//                                ForEach(0..<10) {
//                                            Text("Item \($0)")
//                                                .foregroundColor(.white)
//                                                .font(.largeTitle)
//                                                .frame(width: 200, height: 200)
//                                                .background(.red)
//                                        }
//                            }
