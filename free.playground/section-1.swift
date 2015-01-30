// Playground - noun: a place where people can play


class depart {
    let sname :[String] = ["CAG", "IS", "IT","Gis","CS","MC"]
    let fname:[String] = ["computer animations and game", "information science", "information technology","geo-informatics","computer science","mass communication"]
    
    let n:String
    init(nn:String){
    self.n=nn
    }
    
    func search() ->String{
        var out:String = ""
        for(var i=0;i<sname.count;i++){
            if(sname[i]==n){
            out = fname[i]
            }
        }
        return out
    }
}
let answer = depart(nn: "CS")
answer.search()