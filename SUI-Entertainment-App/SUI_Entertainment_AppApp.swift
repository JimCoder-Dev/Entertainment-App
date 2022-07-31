import SwiftUI

@main
struct SUI_Entertainment_AppApp: App {
    
    @StateObject var viewModel = EntertrainViewModel()
    var body: some Scene {
        WindowGroup {
            TabbedView()
                .environmentObject(viewModel)
                
        }
    }
}
