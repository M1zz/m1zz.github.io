import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct MyWebsite: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://m1zz.github.io/")!
    var name = "Leeo's Dev Daily"
    var description = "Storage of apple platform knowledge."
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try MyWebsite()
    .publish(using: [.deploy(using: .gitHub("M1zz/m1zz.github.io")),
                     .generateHTML(withTheme: .foundation)])
