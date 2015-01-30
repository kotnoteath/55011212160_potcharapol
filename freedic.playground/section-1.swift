// Playground - noun: a place where people can play

class depart {
    let name :[String:String] = ["CAG":"computer animations and game", "IS":"information science", "IT":"information technology","Gis":"geo-informatics","CS":"computer science","MC":"mass communication"]
    
    let n:String
    init(nn:String){
        self.n=nn
    }
    func show() {
        var out:String = ""
        out = name[n]
    }
}
let answer = depart(nn: "CS")

