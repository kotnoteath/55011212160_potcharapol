// Playground - noun: a place where people can play

class cal {
    func sum(x:Double,y:Double)->Double{
        var ans=x+y
        return ans
    }
    func mi(x:Double,y:Double)->Double{
        var ans=x-y
        return ans
    }
    func mu(x:Double,y:Double)->Double{
        var ans=x*y
        return ans
    }
    func di(x:Double,y:Double)->Double{
        var ans=x/y
        return ans
    }
    func mod(x:Double,y:Double)->Double{
        var ans=x%y
        return ans
    }
    func fac(x:Double)->Double{
        if(x==0){
        return 1
        }
        else{
            var ans:Double=1
            for(var i=x;i>0;i--){
            ans=ans*i
            }
            return ans
        }
        
    }

}
let process = cal()
process.sum(0, y: 7)
process.mi(6, y: 12)
process.mu(4, y: 2)
process.di(55, y: 5)
process.mod(9, y: 4)
process.fac(17)