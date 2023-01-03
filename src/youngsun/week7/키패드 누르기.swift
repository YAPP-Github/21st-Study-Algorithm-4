import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var answer: String = ""
    var leftIndex = 10
    var rightIndex = 12
    for number in numbers {
        var number = number
        if number == 0 {
            number = 11
        }
        switch number {
        
        case 1, 4, 7:
            answer += "L"
            leftIndex = number
            
        case 3, 6, 9:
            answer += "R"
            rightIndex = number
            
        case 2, 5, 8, 11:
            let leftTemp = (number - leftIndex).magnitude
            let rightTemp = (number - rightIndex).magnitude
            let leftDistance = (leftTemp / 3) + (leftTemp % 3)
            let rightDistance = (rightTemp / 3) + (rightTemp % 3)
            
            if leftDistance == rightDistance {
                if hand == "left" {
                    answer += "L"
                    leftIndex = number
                }
                else {
                    answer += "R"
                    rightIndex = number
                }
            }
            else if leftDistance > rightDistance {
                answer += "R"
                rightIndex = number
            }
            else {
                answer += "L"
                leftIndex = number
            }
            
        default:
            break
        }
        
   
    }
    return answer
}
