//
//  TranslateView.swift
//  TranslateMe
//
//  Created by Semen Kolesnykov on 3/16/25.
//
//

import SwiftUI

struct TranslateView: View {
    @State private var inputText = ""
    @State private var outputText = ""
    @State private var translationHistory: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter text to translate", text: $inputText)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Translate") {
                    translate(input: inputText)
                }
                .padding()
                
                TextField("Translated Text", text: $outputText)
                    .padding()
                
                Spacer()
                
                
                ScrollView {
                    VStack(alignment: .leading) {
                        Text("Translation History")
                            .font(.title)
                            .padding(.bottom, 8)
                                
                        ForEach(translationHistory, id: \.self) { translation in
                            Text(translation)
                                .padding(.vertical, 4)
                        }
                    }
                }
                
                
                Button("Erase History") {
                    eraseHistory()
                }
                .padding()
            }
            .navigationTitle("TranslateMe")
        }
    }
    
    private func translate(input: String) {
        let encodedInputText = input.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        let urlString = "https://api.mymemory.translated.net/get?q=\(encodedInputText)&langpair=en|it"
        
        Task {
            if let url = URL(string: urlString) {
                do {
                    let (data, _) = try await URLSession.shared.data(from: url)
                    let translateResponse = try JSONDecoder().decode(ResponseTranslate.self, from: data)
                    outputText = translateResponse.responseData.translatedText
                    
                    
                    translationHistory.append("\(input) -> \(outputText)")
                } catch {
                    print(error.localizedDescription)
                    outputText = "Translation failed"
                }
            } else {
                outputText = "Invalid URL"
            }
        }
    }
    
    private func eraseHistory() {
        // Clear translation history
        translationHistory.removeAll()
    }
}

struct TranslateView_Previews: PreviewProvider {
    static var previews: some View {
        TranslateView()
    }
}



