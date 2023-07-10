
import Foundation


/*
 Ejercicio 1:
 Crea una función que devuelva un array que contenga el nombre y autor/es del artículo.
 */

func getPostsTitleAndAuthor() async throws -> [(title: String, author: String)] {
//    nos aseguramos de que la url principal esté bien, sin poner forceunwrapp
    guard let url = urlJSON else { throw NetworkError.urlNil }
    var result = [(title: String, author: String)]()
//creamos ámbitos do/catch para la gestión de errores
    do {
        let posts = try await getJSON(url: url, type: [Posts].self)
        
        for post in posts {
            var refs = [URL]()
            
            post._links.author.forEach { ref in
                refs.append(ref.href)
            }
            var authorsNames = [String]()
            for ref in refs {
                let authorName = try await getJSON(url: ref, type: Author.self).name
                authorsNames.append(authorName)
            }
            let title = post.title.rendered
//            con joined convertimos a string
            result.append((title, authorsNames.joined(separator:", ")))
        }
    } catch let error as NetworkError {
        print(error.description)
    } catch {
        print(error)
    }
    
    return result
}
//MARK: Printamos por consola más bonito sin que salga como tupla
//Task {
//    let titleAndAuthor = try await getPostsTitleAndAuthor()
//    titleAndAuthor.forEach { print($0.title,$0.author) }
//}
Task {
    let titleAndAuthor = try await getPostsTitleAndAuthor()
    titleAndAuthor.forEach { post in
        print("Title:", post.title)
        print("Author:", post.author)
    }
}




