import SwiftUI

struct ContentView: View {
    let numberOfButtonsPerLine = 4
    let numberOfLines = 5

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)

            VStack(spacing: 20) {
                HStack {
                    Spacer()
                    Text("0")
                        .bold()
                        .font(.system(size: 75))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                Spacer()
            }

            VStack(spacing: 20) {
                Spacer() // Push content to the top
                ForEach(0..<numberOfLines, id: \.self) { rowIndex in
                    HStack(spacing: 20) {
                        ForEach(0..<numberOfButtonsPerLine, id: \.self) { colIndex in
                            ZStack {
                                Circle()
                                    .fill(rowShouldBeOrange(col: colIndex) ? Color.orange : Color.gray)
                                    .frame(width: 83, height: 83)
                                
                                Text("")
                                    .font(.system(size: 24))
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
            }
            .padding()
        }
        .foregroundColor(.orange)
    }
    
    // Function to determine if a column should be orange
    func rowShouldBeOrange(col: Int) -> Bool {
        return col == numberOfButtonsPerLine - 1 // Make the last column orange
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
