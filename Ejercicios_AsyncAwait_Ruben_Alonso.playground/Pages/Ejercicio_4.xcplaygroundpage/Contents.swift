import SwiftUI
                
/*
 Ejercicio 4:
 Crea una función que devuelva la imagen del avatar de un autor, que tenemos en el campo _96 del struct Author.
 */

func getAuthor96Avatar() async throws -> UIImage? {
    guard let url = urlJSON else { throw NetworkError.urlNil }
    
    do {
        let posts = try await getJSON(url: url, type: [Posts].self)
        let randomPost = posts.randomElement()
        guard let urlMedia = randomPost?._links.author.first?.href else { throw NetworkError.urlNil }
        
         let imageMedia = try await getJSON(url: urlMedia, type: Author.self).avatar_urls._96
        let imageData = try Data(contentsOf: imageMedia)
        
            return UIImage(data: imageData)
    }
}

Task {
    try await getAuthor96Avatar()
}
