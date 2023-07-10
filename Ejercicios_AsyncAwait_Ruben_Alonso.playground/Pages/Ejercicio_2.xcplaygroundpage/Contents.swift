import UIKit

/*
 Ejercicio 2:
 Crea una función que devuelva la imagen destacada de un artículo, pasando por el JSON de medios y bajando la imagen.
 */

func getArticleImage() async throws -> UIImage? {
    guard let url = urlJSON else { throw NetworkError.urlNil }
    
    do {
        let posts = try await getJSON(url: url, type: [Posts].self)
        let randomPost = posts.randomElement()
        guard let urlMedia = randomPost?._links.wpfeaturedmedia.first?.href else { throw NetworkError.urlNil }
        
        let media = try await getJSON(url: urlMedia, type: Media.self).guid.rendered.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)//para cdo tenemos una url q tiene un carácter con ? y el construc de url se lía y no nos lleva, y esté método permite esto
        if let media = media,//el método nos da opc, desempaq
           let imageURl = URL(string: media) {
            let mediaData = try Data(contentsOf: imageURl)
            
            return UIImage(data: mediaData)//uiimage tiene construc(init) q dev mediadata
        }
    } catch let error as NetworkError {
        print(error.description)
    } catch {
        print(error)
    }
    return nil
}

Task {
    try await getArticleImage()
}
