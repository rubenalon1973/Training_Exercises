import UIKit

struct Articulo {
    let nombre: String
    let extracto: String
    let imagenDestacada: UIImage
    let nombreAutor: String
    let avatar: UIImage
}

func getInfo(id: Int) async throws -> Articulo? {
    guard let url = urlJSON else { throw NetworkError.urlNil }
    
    let posts = try await getJSON(url: url, type: [Posts].self)
    guard let selectedPosts = posts.filter({ $0.id == id }).first,     let postImage = try await getArticleImage(post: selectedPosts ),
          let postAuthorUnwrapped = try await getPostAuthor(post: selectedPosts),
          let authorAvatar = try await getAuthorAvatar(post: selectedPosts) else { return nil }
    
    let postTitle = selectedPosts.title.rendered
    let postExtract = selectedPosts.excerpt.rendered
    let postImageResult = postImage
    let postAuthor = postAuthorUnwrapped
    let authorAv = authorAvatar
    
    return Articulo(nombre: postTitle, extracto: postExtract, imagenDestacada: postImage, nombreAutor: postAuthor, avatar: authorAv)
}

func getArticleImage(post: Posts) async throws -> UIImage? {
    do {
        guard let urlMedia = post._links.wpfeaturedmedia.first?.href else { throw NetworkError.urlNil }
        
        let media = try await getJSON(url: urlMedia, type: Media.self).guid.rendered.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        if let media = media,
           let imageURL = URL(string: media) {
            let mediaData = try Data(contentsOf: imageURL)
            
            return UIImage(data: mediaData)
        }
        
    } catch let error as NetworkError {
        print(error.description)
    } catch {
        print(error)
    }
    return nil
}

func getPostAuthor(post: Posts) async throws -> String? {
    var name = ""
    do {
        guard let href = post._links.author.first?.href else { return nil }
        name = try await getJSON(url: href, type: Author.self).name
        
    } catch let error as NetworkError {
        print(error.description)
    } catch {
        print(error)
    }
    return name
}

func getAuthorAvatar(post: Posts) async throws -> UIImage? {
    guard let urlMedia = urlJSON else { throw NetworkError.urlNil }
    
    let posts = try await getJSON(url: urlMedia, type: [Posts].self)
    let randomPost = posts.randomElement()
    guard let urlMedia = randomPost?._links.author.first?.href else { throw NetworkError.urlNil }
    
    let imageMediaURL = try await getJSON(url: urlMedia, type: Author.self).avatar_urls._96
    
    let imageData = try Data(contentsOf: imageMediaURL)
    
    return UIImage(data: imageData)
}

Task {
    guard let info = try await getInfo(id: 1665) else { return }
    info.nombre
    info.nombreAutor
    info.extracto
    info.imagenDestacada
    info.avatar
}

