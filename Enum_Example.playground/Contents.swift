import UIKit

// Enum 열거형
// 1. 도서관 -> 항목 -> 소설, 만화책, 문제집

enum BookType {
    case fiction //소설
    case comics //만화책
    case workbook //문제집
}

var bookStyle: BookType? // BookStyle -> BookType? 으로 선언
var books = [BookType]() // Array로 저장되어 있다.

// saveBook 함수 선언 -> 변수 book이 북타입 enum에 있으면 BookType배열에 추가.
func saveBook(book: BookType) {
    books.append(book)
}

// loadBook 함수 선언 -> BookType인 book이 BookType 배열에 해당하면
func loadBook(book: BookType) -> [BookType] {
    var tempBooks = [BookType]()
    for item in books {
        if item == book {
            tempBooks.append(item) //tempBooks에 item을 추가한다.
        }
    }
    return tempBooks //추가된 item만 가져온다.
}

saveBook(book: .comics)
saveBook(book: .fiction)
saveBook(book: .workbook)

books // [comics, fiction, workbook]의 값을 가지고 있다.

loadBook(book: .workbook) // workbook만 가지고 온다.
loadBook(book: .comics) // comics만 가지고 온다.


// 2. 영어시험 종류로 enum 연습

enum DetailBookType {
    case TOEIC(title: String, price: Int, year: Int)
    case TOEFL(title: String, price: Int, year: Int)
    case OPIC(title: String, price: Int, year: Int)
}

// TypeName을 추가로 정의 (Extension 사용) = DetailBookType이랑 종속되는 상황!!
extension DetailBookType {
    var typeName: String {
        switch self {
        case .TOEIC:
            return "토익입니다."
        case .TOEFL:
            return "토플입니다."
        case .OPIC:
            return "오픽입니다."
        }
    }
}


var EnglishBookType: DetailBookType?
var English = [DetailBookType]()

func EnglishBook(book: DetailBookType) {
    English.append(book)
}
// 튜플을 이용해서 title, price, year 추가.
EnglishBook(book: .TOEIC(title: "토익", price: 10000, year: 2021))
EnglishBook(book: .TOEFL(title: "토플", price: 12000, year: 2022))
EnglishBook(book: .OPIC(title: "오픽", price: 14000, year: 2020))

// items이 DetailBookType 배열을 한바퀴 돈다.
for items in English {
    // DetailBookType안에 TOEIC의 타이틀이 items 와 같으면, Title 출력.
    if case let DetailBookType.TOEIC(title, _ /*price*/, _ /*year*/) = items {
        print("TOEIC", title)
    }
    // 위에 extension을 이용해 선언한 typeName도 불러올 수 있다.
    if case let DetailBookType.TOEFL(title, _ /*price*/, _ /*year*/) = items {
        print(title, items.typeName)
    }
    
    switch items { // 튜플로도 가능.
    case let .TOEIC(_ /*title*/, price, _ /*year*/): print(price)
    
    case let .TOEFL(title, price, year): print(title, price, year)
        
    default: break
    }
    
    //switch case를 이용해서 표현할 수도 있다
    
//    switch item {
//    case .TOEIC(title: "토익마스터", price: 12000, year: 2021): "토익"
//    case .TOEFL(title: "토플마스터", price: 14000, year: 2022): "토플"
//    case .OPIC(title: "오픽마스터", price: 16000, year: 2022): "오픽"
//    default: "Nothing"
//    }
}
