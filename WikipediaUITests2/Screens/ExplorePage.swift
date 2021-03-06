import XCTest

class ExplorePage: BasePage {
    
    private lazy var searchWikipedia = app.searchFields["Search Wikipedia"]
    private lazy var settingsButton = app.toolbars.otherElements.buttons["Settings"]
    
    
    func setTextOnSearchWikipedia(_ text: String) {
        XCTContext.runActivity(named: "Вводит \(text) в поисковую строку") {_ in
            searchWikipedia.tapElement()
            searchWikipedia.typeIn(text)
        }
    }
    
    func pressSettingsButton() {
        XCTContext.runActivity(named: "Нажимает на кнопку настройки") {_ in
            settingsButton.tapElement()
        }
    }    
}

