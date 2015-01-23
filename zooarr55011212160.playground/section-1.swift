

class zooTest {
    
    let animal :[String] = ["ant", "bat", "cat","dragon"]
    let food:[String] = ["sugar", "blood", "fish","human"]
    
    let zoo: String
    
    init(aname : String) {
        self.zoo = aname
    }
    func zooTesting() -> String {
        var out:String = ""
        for (var i=0 ; i<animal.count ; i++){
            if(animal[i]==zoo){
                out = food[i]
            }
        }
        return out
    }
}
let answer = zooTest(aname: "ant")
answer.zooTesting()