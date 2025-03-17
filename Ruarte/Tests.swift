import SwiftUI

struct Tests: View {
    @State private var selectedTab = 0
    let tabs = ["Para você", "Seguindo"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                VStack {
                    Spacer()
                    
                    if selectedTab == 0 {
                        Text("Feed Para Você")
                    } else {
                        Text("Feed Seguindo")
                    }
                    
                    Spacer()
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack {
                            Image(systemName: "at")
                            HStack {
                                ForEach(0..<tabs.count, id: \.self) { index in
                                    Text(tabs[index])
                                        .font(.system(size: 18, weight: .bold))
                                        .foregroundColor(selectedTab == index ? .white : .gray)
                                        .padding(.vertical, 6)
                                        .padding(.horizontal, 10)
                                        .background(
                                            selectedTab == index ? Color.white.opacity(0.2) : Color.clear
                                        )
                                        .clipShape(RoundedRectangle(cornerRadius: 8))
                                        .onTapGesture {
                                            withAnimation {
                                                selectedTab = index
                                            }
                                        }
                                }
                            }
                            .background(Color.black.opacity(0.2)) // Simula um efeito de botão pressionado
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Tests()
}
