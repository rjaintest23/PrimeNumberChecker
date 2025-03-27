import SwiftUI

struct PrimeCheckerView: View {
    @State var numberInput: String = ""
    @State var result: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Prime Number Checker")
                .font(.largeTitle)
                .bold()
            
            TextField("Enter a number", text: $numberInput)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Check") {
                if let number = Int(numberInput) {
                    result = isPrime(number) ? "\(number) is a Prime Number" : "\(number) is not a Prime Number"
                } else {
                    result = "Please enter a valid number"
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Text(result)
                .font(.title2)
                .foregroundColor(.primary)
        }
        .padding()
    }
    
    func isPrime(_ n: Int) -> Bool {
        guard n > 1 else { return false }
        if n == 2 { return true }
        if n % 2 == 0 { return false }
        for i in stride(from: 3, through: Int(Double(n).squareRoot()), by: 2) {
            if n % i == 0 {
                return false
            }
        }
        return true
    }
}

struct ContentView: View {
    var body: some View {
        PrimeCheckerView()
    }
}

#Preview {
    ContentView()
}


