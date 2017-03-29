//: Playground - noun: a place where people can play

import UIKit

/////////1

let testString = "1. Создать строку произвольного текста, минимум 200 символов. Используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов.                       2. Создайте свитч который принимает возраст человека и выводит описание жизненного этапа                        3. У вас есть имя отчество и фамилия студента (русские буквы). Имя начинается с А или О, то обращайтесь к студенту по имени, если же нет, то если у него отчество начинается на В или Д, то обращайтесь к нему по имени и отчеству, если же опять нет, то в случае если фамилия начинается с Е или З, то обращайтесь к нему только по фамилии. В противном случае обращайтесь к нему по полному имени.                                                                                4. Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры, а можно только цифры). Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил."

func statistics (input: String) -> (count: Int, vowel: Int, cons: Int, num: Int, spec: Int) {
  let charCount = input.characters.count
  var vowelCount = 0
  var consonantCount = 0
  var numberCount = 0
  var specSymCount = 0
  
  let vowelsArray: [Character] = ["а", "о", "э", "и", "у", "ы", "е", "ю", "я"]
  let consArray: [Character] = ["б", "в", "г", "д", "ж", "з", "й", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ц", "ч", "ш", "щ"]
  let numberArray: [Character] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  let specArray: [Character] = [".", ",", "!", "?", "@", "#", "$", "%", "^", "*", "/", ":"]
  
  
  for i in testString.lowercased().characters {
    for vowel in vowelsArray {
      if vowel == i {
        vowelCount += 1
      }
    }
  }
  
  for i in testString.lowercased().characters {
    for cons in consArray {
      if cons == i {
        consonantCount += 1
      }
    }
  }
  
  for i in testString.characters {
    for num in numberArray {
      if num == i {
        numberCount += 1
      }
    }
  }
  
  for i in testString.characters {
    for spec in specArray {
      if spec == i {
        specSymCount += 1
      }
    }
  }
  
  
  return (charCount, vowelCount, consonantCount, numberCount, specSymCount)
}

let out = statistics(input: testString)
print("Text analysis:\nsymbols: \(out.count)\nvowels: \(out.vowel)\nconsonants: \(out.cons)\nnumber: \(out.num)\nspec: \(out.spec)")

/////////////2
print()
let age = 80

switch age {
  case 0..<20:
    print("just a kid")
  case 20..<60:
    print("full power")
  case 60..<80:
    print("rest")
  case 80...120:
    print("you're lucky old man")
  default:
    break
}
/////////////3
print()
let name = (last: "Иванов", first: "Ярослав", second: "Дмитриевич")

switch name {
case let (_, f, _) where f.hasPrefix("А") || f.hasPrefix("О"):
  print("\(name.first)")
case let (_, _, s) where s.hasPrefix("В") || s.hasPrefix("Д"):
  print("\(name.first) \(name.second)")
case let (l, _, _) where l.hasPrefix("Е") || l.hasPrefix("З"):
  print("\(name.last)")
default:
  print("\(name.last) \(name.first) \(name.second)")
}


/////////////4
print()
