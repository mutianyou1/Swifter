//
//  ViewController.swift
//  SlideDrawerViewController
//
//  Created by 潘元荣(外包) on 16/8/18.
//  Copyright © 2016年 潘元荣(外包). All rights reserved.
//

import UIKit
import AudioToolbox
import HelloKit

@asmname("test") func c_test(a : Int32)->Int32

class ViewController: UIViewController ,MyDelegate{

    weak var delegate : MyDelegate?
    @IBOutlet weak var button: UIButton!
    private var block = {()->(Void)in}
    override func viewDidLoad() {
        super.viewDidLoad()

        //MARK:1、柯里化
        //_ = addTwoNumber(2)
        //print(addTwo)
        //let addFour = addTwo(add: 6)
        //print(addFour)
        
        
//        let btn = MUControl()
//        let a = 3
//        btn.setTarget(self, action:{bv in self.btntest(4)}, controlEvent: ControlEvent.TouchUpInSide)
//        btn.removeTargetOfAction(ControlEvent.TouchUpInSide)
//        btn.performAction(ControlEvent.TouchUpInSide)
        
        //MARK:2、sequence for in适用于所有实现了SequenceType的类
        //SequenceType的实现需要实现一个GeneratorType
//        let array = [1,2,3,5]
//        //for in 原理
//        var genertaor = array.generate()
//        while let obj = genertaor.next(){
//           print(obj)
//        }
//       let i =   array.map { (a) -> Int in
//           a + 3
//        }
//       let k =   array.filter { (b) -> Bool in
//            b > 2
//        }
//        let n = array.reduce(0) { (sum,total) -> Int in
//          print("array:",sum,total)
//          return  sum + total
//        }
//        
//        print("map",i,k,n)
//        for i in ReverseSequece(array: array){
//           print(array[i],"index:",i)
//            
//        }
        
//        let a =  swatpMe(input: 3, output: 4)
//        print(a)
        
        //MARK:3、元组的实际应用
//        let small :CGRect
//        let large :CGRect
//        let rect = CGRectMake(0, 0, 100, 100)
//        let (small,large) = rect.divide(20, fromEdge: .MinXEdge)
       // print(small,large)
        
        //MARK:4、闭包是最后一个参数用尾随闭包省略括号
        //logIfTrue{1>0}
        //logIfTrue(3, predicte: {1 > 0})
        //@autoclosure 自动转换为闭包 不带参数的闭包
        //logIfTrue(2>1)
        
        //MARK:5、??
//        var level  : Int?
//        let startLevel = 10
//        let currentLevel = level ?? startLevel
        //startLevle 自动封装为了一个()->int
        //level不为nil直接返回level解包的可选值为了节省内存所以才用闭包
        //print(currentLevel)
        
      //MARK:6、optional
        //let xiaoming = Child()
        //Optional Binding 可选值绑定
//        if let toyName = xiaoming.pet?.toy?.name {
//               print(toyName)
//        }
        //xiaoming.pet?.toy?.play()
        //()? --  void?
//        let playClosurce = {(child:Child)->()?in child.pet?.toy?.play()}
//        xiaoming.pet = Pet()
//        xiaoming.pet?.toy = Toy(name: "toy")
//        if let _ = playClosurce(xiaoming){
//           print("have fun ")
//        }else{
//           print("no toy no fun")
//        }
        
         //MARK:7、运算符重载
//        let left = Vector2D(x: 2,y: 3)
//        let right = Vector2D(x: 3,y: 5)
//        let total = left + right
//        print(left +* right)
        
        //MARK:8、function参数修饰
//        var a = 4
//        let increment = incrementor(&a)
//        print(a,increment)
//        
//        let b = makeIncrementor(3)
//        b(&a)
//        print(b,a)
        
        //MARK:9、字面量
        //extension 不能定义required的初始化方法 string－－》对象
        //但是有比较隐蔽不易读懂
//        let mytrue :MyBool = true
//        let myFalse :MyBool = false
      //MARK:10、array下标
//        
//        var array = [1,2,3,4]
//        let a = array[[0,2,3]]
//        array[[0,2]] = [0,2]
//        print(a,array)
        //MARK:11、 typealias
        //Operate.getDistance()
        
        //MARK:12、可变参数
        //print(sum(1,2,3))
        
        //MARK:13、初始化顺序
        //let tigger = Tigger()
        //print(classB.init(BigNum:false).numB)
        
        //MARK:14、可失败初始化器
        //let number = Int.init(fromString: "jiuajsi")
        //print(number)
        
        //MARK:15、组合协议
//        let protocalA = ProtocalArray()
//        ProtocalArray.checkPetLike(protocalA)
//        
//        print((protocalA as KittenLike).mewo())
//        print((protocalA as DogLike).mewo())
        
        //MARK:16、class static
//        print( staticStruct.foo())
//        print(ProtocalArray.foo())
        
        //MARK:17、容器和多类型
//        let mixed : [CustomStringConvertible] = [1,"2","ddd"]
//        
//        for a in mixed {
//          print(a.description)
//        }
        //MARK:18、默认参数
//        sayHello1(String2: "anno", String3: "too")
//        sayHello2("anno", String2: "fan")
        
        //MARK:19、正则表达式
//         let mailPattern = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
//        let pattern :RegexHelper
//       
//        do {
//            pattern = try RegexHelper.init(mailPattern)
//            if pattern.match("mutianyou1@126.com"){
//                print("有效邮箱")
//            }else{
//                print("无效邮箱")
//            }
//        }catch{
//            
//        }
//        if "mutianyou1@126.com" =~ "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$" {
//            print("有效邮箱")
//        }
        //MARK:20、模糊匹配
//        let contacts = ("http://www.baidu.com","mutianyou1@126.com")
//        
//        let mailRegual : NSRegularExpression
//        let siteRegular : NSRegularExpression
//        do {
//        mailRegual = try />"^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
//        siteRegular = try />"^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$"
//        switch contacts {
//        case (siteRegular,mailRegual):
//            print("web and mail")
//        case (_,mailRegual):
//            print("only mail")
//        case (siteRegular,_):
//            print("only web")
//        default:
//            print("nothing")
//            }
//        }catch{
//        
//        }
      
//      let hello = "helLo"
//       let interval = "a"..."z"
//       for c in hello.characters {
//        if !interval.contains(String(c)){
//           print("\(c)不是小写")
//        }
//    }
       //MARK:21、anyclass
//        let a :AnyClass = A.self
//        //强制转换
//        (a as! A.Type).methodForAClass()
//        元类型编程或者传递数据的时候有用
        
       
        
//        let usingVCTypes:[AnyClass] = [musicViewController.self,albumViewController.self]
//        setUpViewController(usingVCTypes)
        
        //MARK:22、protocal和class 中的self
//        类型获取采用动态类型初始化返回本身
//        let num = CopyClass.init()
//        num.num = 100
//        
//        let newNum = num.copy()
//        num.num = 1
//        
//        print(num.num,newNum.num)
 
        
        //MARK:23、动态类型多方法
        //swift不采用动态派发，只能在编译器决定方法调用
        //只能对此采用类型判断
        //printThem(Pet_D(),Cat_d())
        
        //MARK:24、will set 属性观察
//        初始化 或者在willset didset再设置不会被响应
        //let date = MyDate()
        //date.date = NSDate().dateByAddingTimeInterval(1200)
        
//        let sonValue = sonOfObserve()
//        sonValue.value = 200
//        print(sonValue.value)
        
        //MARK:25、final适用场景
        /*
        1、不能被继承的成熟工具类
        2、为了父类方法中某些方法必须被执行
        3、性能改善 但相比oc的动态派发相比还是拙荆见肘
        */
//        let subClass = subFinalClass()
//        subClass.method()
        
        //MARK:26、lazy懒加载
//        let lazy = LazyClass()
//        print(lazy.name)
//        print(lazy.name)
        //ps 另外对于提前退出而不需要完全运行的程序可以采用lazy
        //接受闭包运行的方法一起，延时
//        let data = 1...3
//        let result = data.lazy.map { (i : Int) -> Int in
//           print("正在处理\(i)")
//           return i * 2
//        }
//       
//        print("准备结果")
//        for i in result {
//          print("处理结果\(i)")
//        }
//        let data = [LazyClass(),LazyClass()]
//        let result = data.lazy.map { (i: LazyClass) -> LazyClass in
//            let new = LazyClass()
//            new.name = "dhue"
//            return new
//        }
  
//        for i in result {
//           print(i.name)
//        }
      
        
        //MARK:27、反射镜像
        //let lazy = LazyClass()
//        print(lazy.name)
//        let r = Mirror(reflecting: lazy)
//        print("r class is \(r.displayStyle)")
//        print("property count is \(r.children.count)")
//        for index in r.children.startIndex..<r.children.endIndex {
//         print("r property name \(r.children[index].0),value is \(r.children[index].1)")
//        }
       // dump(lazy)
    
        //MARK:28、隐式解包！
        //直接进行属性访问和方法调用，但前提是知道它的类型不为nil
//        var object : Toy!
//        
//        //编译器自动加上！
//        object.play()
//        object!.play()
        //不加检查都会导致崩溃
        //除了xib应该尽量少用隐式解包
        
        //MARK:29、多重optional
        //?实际只是语法糖 类型为enum
        //var toy : Toy?
        
        //strB 是 optional<optinal<String>>
//        var str : String? = "hello"
//        var strB : String?? = str
        
//        var aNil : String? = nil
//        var anotherNil : String?? = aNil
//        var literNil : String?? = nil
//        
//        if let a = anotherNil {
//          print("another nil")
//        }
//        if let b = literNil {
//          print("literal nil")
//        }
        //fr v -R 打印初始信息
        
        //MARK:30、 optional map
        //array map 方法应用规则
        
//        let toy : Toy? = Toy(name: "toni cat")
//        //map 方法自动optional binding 有则返回？无返回nil
//       let toy_b =  toy.map { ( t : Toy) -> Toy in
//            t.name = "cati casei"
//            return t
//        }
//        print(toy_b?.name)
        
        //MARK:30、protocal extension
        
//        struct my : ProtocalExtension {
//            private func method() {
//                print("my method have been executed")
//            }
//        }
//        my().method()
        
//        let a : ProtocalExample = ProtocalExample()
//        let a_ : A_ = ProtocalExample()
//        print(a.methodA(),a_.methodA())
        
//        let b : ProtocalExampleB = ProtocalExampleB()
//         print(b.methodA(),b.methodB())
//        let b_ = b as B_
//        print(b_.methodA(),b_.methodB())
        //结论：
        /*
         1、如果推断类型推断为实际类型那么要么实现接口，要么扩展接口
         2、如果推断类型为接口｛
            1、方法在接口中定义要么实现类的，如果类没有实现那么实现扩展的
            2、如果方法没有在接口中定义而在扩展中，那么实现扩展的默认方法
        ｝
        */
        //MARK:31、where和模式匹配
        //where 不仅可以用在enum中，还可以用在protocal中
        //swift库中大量运用了这种限定
//        
//        
//        let names = ["王二","李四","张三","王五","赵六"]
//        names.forEach{
//            switch $0 {
//            
//            case let x where x.hasPrefix("a"):
//                  print(x,"是本家")
//            default:
//                
//                print("你好\($0)")
//            }
//        }
//       
//      names.forEach { (str) -> () in
//        switch str {
//        case let x where x.hasPrefix("a"):
//            print(x,"是本家")
//        default:
//            
//            print("你好\(str)")
//        }
//        }
        
        
       // let scores : [Int?] = [99,60,40,32,nil]
        
        
//        scores.forEach{
        
//            switch $0 {
//            case let x   where x < 60:
//               print("不及格",x)
//            case let x where x > 90 :
//              print("高分通过",x)
//            case let x where x >= 60 &&  x < 70:
//              print("刚好及格",x)
//            default:
//                print("nil")
//            }
            
//            if let x = $0 where x >= 60 {
//                print("通过",x)
//            }else{
//               print("不及格",$0)
//            }
//        }
        
//            let scores = [88,33,34,99,193]
//            var result = scores.sort()
//            print(result)
//        
//        let strs : [AnyObject?]  = [55,22,333,nil]
        //编译不通过
//          result =   strs.sort {_,_ in
//             return true
//          }
        
        //MARK:32、indirect     enum
        //链表
//        let list = Node.init(value: 1, next: Node.init(value: 2, next: Node.init(value: 3, next: Node.init(value: 4, next: nil))))
        //借助nil表示空节点 人为约束数据类型 导致算法漏洞
//        print(list.value,list.next?.value)
        //借助enum 重新定义链表
        
//        let list = LinkedList.Node(1,.Node(2,.Node(3,.Node(4,.Empty))))
//        
//        list.linkedListByRemovingElement(2)
       // print(list.linkedListByRemovingElement(2))
        
        //MARK:33、 selector
        //含有外部参数的sel
//        let sel = Selector("selectorDemoWithExternal:")
//        self.button.addTarget(self, action: sel, forControlEvents: UIControlEvents.TouchUpInside)
        //只在swift中可见 oc类别需要调用时加上@objc
        
        //MARK:34、通过传递实例调用方法
       // let method = classMethod.printNum
//        let object = classMethod()
//        method(object)(22)
        //不适用范围：setter getter 重名的method
        
        //ps 重名：类和实例方法
//        let classf : Int ->() = classMethod.printNum
//        
//        classf(22)
//        
//        //柯里化
//        let instancef : classMethod ->Int ->() = classMethod.printNum
//        instancef(classMethod())(3333)
        
        
        //MARK:35、单例
//        let single = SingleClass.singleInstance
//        let another = SingleClass.getInstance()
        
        //MARK:36、条件编译
//        #if os(OSX)
//        typealias Color = NSColor
//            
//        #else
//        typealias Color = UIColor
//            print("IOS")
//        #endif
//        print(Color.blackColor())
//        
//        #if arch(x86_64)
//        print("64")
//        #else
//        print("32")
//        #endif
        
//        #if FREE_VERSION
//         print("JIOSJDIF")
//        #else
//        #endif
        //MARK:37、编译标注
         //FIXME:
        //TODO:
        
        //MARK:38、@UIApplicationMain
        //参加自定义的main文件
        
        //MARK:39、@objc @dynamic
        //oc 特点kvc 动态派发 swift追求性能在编译期决定成员、方法，运行时直接使用而不再查找
        //如果是单独对swift类需要引用@objc的，如果是oc继承的会默认加上@objc
        //添加了@objc依旧是静态调用而不会动态派发，添加动态调用为@dynamic
       //        
//        let greet = 我的类()
//        greet.打招呼("吃了吗")
        
        //MARK:40、optional protocal
        //swift协议是必须实现的除非采用oc的@objc optional 两个关键字
        //而struct enum 则因为在oc 中没有协议那么不能optional
        //当然可以使用extension默认实现的方式间接可选
        
        //MARK:41、循环引用
     
//        var b : CycleB? = CycleB()
//        b?.a = CycleA()
//        b = nil
//        print("nil b ")
        
        //weak  等同之前的weak unowned 等同之前unsafeunretain
        //对已经释放的对象仍然持有一个无效引用，所以不能是nil 或者optional
        //apple建议如果确定访问时不为nil 那么用unowned如果有释放可能weak
        
//        let person = PersonForCycle(name: "East never fail")
//       // person.printName()
//        person.printN()
        
        //MARK:41、兼容c的UnsafePointer
        
        
//        let a = 222
//        unsafeCIntMethod(UnsafePointer(bitPattern: a))
//        
//        let array = NSArray.init(array: ["unsafeCArray"])
        
         //unsafe原因，第二个参数没有类型检查，指针层面会导致错误。
        
//        let str = unsafeBitCast(CFArrayGetValueAtIndex(array, 0), CFStringRef.self)
//        
//        print(str)
        
        //MARK:42、c指针和内存管理
        
        
//       let object = MemoryClass()
//       object.a = 100
//       
//       var objectPointer : UnsafeMutablePointer<MemoryClass>!
//        
//       objectPointer = UnsafeMutablePointer<MemoryClass>.alloc(1)
//       objectPointer.initialize(object)
//        
//    
//       print(objectPointer.memory.a)
//       //objectPointer = nil
//       
//       objectPointer.destroy()
//       objectPointer.dealloc(1)
//       objectPointer = nil
        
       //print(objectPointer.memory.a)
        
//        var x : UnsafeMutablePointer<tm>!
//        var t = time_t()
//        
//        time(&t)
//        
//        
//        x = localtime(&t)
//        x = nil
        
        //MARK:43、COpaquePointer和C convention 
        //不透明指针 实现和表意对使用者来说是不透明的
        //对应透明指针 使用unsafePoint<t>
        
        //UnsafeMutablePointer
        
//        let callBack : @convention(c) (Int32, Int32) ->Int32 = {
//          (x ,y) -> Int32 in
//          return x + y
//        }
//        
//      print ("aaa",callBack(3, 4))
        
        
        //MARK:44、GCD
        
//        let queue = dispatch_queue_create("queuqe", nil)
//        
//        dispatch_async(queue) { () -> Void in
//            print("work hard")
//            NSThread.sleepForTimeInterval(2)
//            print("work will well paid")
//            
//            //延迟执行
//            let time = NSTimeInterval.init(2)
//            let delay = dispatch_time(DISPATCH_TIME_NOW, Int64.init(time * Double(NSEC_PER_SEC)))
//            dispatch_after(delay, dispatch_get_global_queue(0, 0), { () -> Void in
//                print("delay printer 2 ")
//            })
//            
//            dispatch_async(dispatch_get_main_queue(), { () -> Void in
//                self.button.setTitle("done", forState: .Normal)
//            })
//        }
        
        //自定义延时
        
//      let task =   GCDManager.delay(5) { () -> () in
//            print("晚两秒之行")
//        }
     // GCDManager.cancel(task)
     
        //MARK:45、获取对象类型
//        let date = NSDate()
//        
//        let dateClass : AnyClass! = object_getClass(date)
//        
//        print(dateClass)
//        
//        
//        let dateName = date.dynamicType
//        
//        print(dateName)
//        
//        let name = "name"
//        let stringType = name.dynamicType
//        print(stringType)
//        debugPrint(stringType,dateName,dateClass)
        //swift 1.2之前对内建的非AnyObject类型使用dynamicType会报错
        //现在统一使用daynamicType不会有什么问题了
        
        
        //MARK:46、自省
        //对一个对象询问是否属于某个类就叫自省
//        let classAObject : AnyObject = classB(num: 33)
//        
//        if  classAObject is classA {
//            print("belongs to a")
//        }
//        
//        if  classAObject is classB{
//           print("belongs to b")
//        }
        
        //MARK:47、KVO
        //let kvo = ObserveClass()
        //swift 中kvo属性必须添加dynamic 关键字
        //如果没有关键字 那么子类继承然后添加关键字
        
        //swift中没有kvo，可以使用属性观察，结合泛型和闭包
        
        //MARK:48、局部scope
        //隔离代码
//        let titleLabel : UILabel = {
//           let label = UILabel(frame: CGRectZero)
//           label.backgroundColor = UIColor.lightGrayColor()
//           return label
//        }()
//
//        
//        local{
//        let label = UILabel(frame: CGRectZero)
//        label.backgroundColor = UIColor.lightGrayColor()
//        self.view.addSubview(label)
//        }
        
//        do {
//            let label = UILabel(frame: CGRectZero)
//            label.backgroundColor = UIColor.lightGrayColor()
//            self.view.addSubview(label)
//            self.view.addSubview(titleLabel)
//        }
        
        //MARK:49、判断等于
        
//        let string1 = "kuaile"
//        let string2 = "kuaile"
//        let string3 = "kaixin"
//        
//        if string1 == string2 {
//           print(string1)
//        }
//        
//        if string1 == string3 {
//        
//        }else {
//           print("not the same")
//        }
        
         // === 判断引用也就是指针的地址是否相同
//        let a :classA = classA(num: 2)
//        let a2 = classA(num: 2)
//        
//        if a === a2 {
//          print("same address")
//        }else {
//          print("differ address")
//        }
        
        //MARK:50、哈希
        //Object-C 实现hashable hashvalue ｛isEqual ,and -hash｝
        //swift hashable接口即可
        
        //MARK:51、类簇
        //公开不同的方法 产生私有子类 如NSNumber 
        
        
//       let cokeClass = Drinking.drinking("Coke")
//       let beerClass = Drinking.drinking("Beer")
//        
//       print(NSStringFromClass(cokeClass.dynamicType))
//       print(NSStringFromClass(beerClass.dynamicType))
        
        //MARK:52、swizzle
        
       //self.button.addTarget(self, action: "click", forControlEvents: UIControlEvents.TouchUpInside)
        
        //MARK:53、调用C动态库
        
        //print("swifter.tips".MD5)
        
        //MARK:54、log
        
//        let a = 12
//        let f = 1.2
//        let c = "abc"
//        print("int:\(a),float:\(f),char:\(c)")
        
        
//         let a = 1.2
//         print(a.format(".3f"))
        
        //MARK:54、options ［］
//        UIView.animateKeyframesWithDuration(2, delay: 0, options: [UIViewKeyframeAnimationOptions.CalculationModeLinear,UIViewKeyframeAnimationOptions.CalculationModePaced], animations: { () -> Void in
//              self.button.frame.origin.x = 200
//            }, completion: nil)
        
//        print(MyOptions.Option3.rawValue)
//        print(MyOptions.Option4.rawValue)
        
        //MARK:55、数组 enumerate
        
//        let arra : NSArray = [1,2,3,4,5]
//        var result = 0
//        arra.enumerateObjectsUsingBlock { (num, index, stop) -> Void in
//            result += num as! Int
//            if index == 2 {
//               stop.memory = true
//            }
//        }
        //NSArray 的block性能太低 采用array的enumerate
//        let array = [1,2,3,4,5]
//        for (index,num) in array.enumerate() {
//            
//             result += num
//            if index  == 2 {
//               break
//            }
//        }
//        print(result)
        
        //MARK:56、类型编码  @encode
//        
//        let a : Int = 0
//        let f : Float = 0.0
//        let d : Double = 0.0
//        
//        let intNum : NSNumber = a
//        let floatNum : NSNumber = f
//        let doubleNum : NSNumber = d
//        
//        print(String.fromCString(intNum.objCType))
//        print(String.fromCString(floatNum.objCType))
//        print(String.fromCString(doubleNum.objCType))
//        
//        let p  = NSValue.init(CGPoint: CGPointZero)
//        let t = NSValue.init(CGAffineTransform: CGAffineTransformIdentity)
//        
//        print(String.fromCString(p.objCType))
//        print(String.fromCString(t.objCType))
        
        //MARK:57、C代码调用 @asmname
        
        //print(sin(M_PI_2))
        //单写文件调用c
       // testCOnSwift(33)
        
        //@asmname使用   @asmname还解决c同swift重命名类名和方法名的冲突
        //testCOnSwift2(33)
        
        //MARK:58、sizeOf sizeOfValue
        //sizeOf 类型大小
        //sizeOfValue 引用大小
        
       // let bytes : [String] = ["1","2","3","3333"]
        //print(sizeofValue(bytes))
//      
//        enum Mytest : NSInteger {
//           case  A = 0
//           case  B = 1
//           case  C = 65535
//           case  D = 4
//        }
        
       //print(sizeof(UInt16))
        
       //print(sizeof(Mytest),"枚举")//1
       //print(sizeofValue(Mytest.A),"枚举值")//1
       //print(sizeofValue(Mytest.D.rawValue),"枚举row value")//8
       
        //MARK:59、 delegate
        //delegate 在swift中可以被enmu struct class 遵守
        //所以如果想沿用oc weak 模式 那么要么@objc 要么：class
        //后者更安全
//        self.delegate = self
//        self.delegate?.protocolMethod()
        
        //MARK:60、AssociateObject
//        let object = AssociateObject()
//        printTitle(object)
//        object.title = "Monica"
//        printTitle(object)
        
        //MARK:61、lock
        //无并发 不编程
        //lockMethod("Minason")
        
//      
//        synchronized("MISNO") { () -> () in
//            print("Good morning MR.Handrow")
//        }
       
        //MARK:62、Toll-Free Bridging和Unmanaged
        //__bridge表示对CF开头的对象内存管理权限不变
        
        
//        let fileURL = NSURL.init(string: "google.com")
//        var theSoundID : SystemSoundID = 0
//        
//        AudioServicesCreateSystemSoundID(fileURL!, &theSoundID)
        //swift中CF类不需要手动retain release 了因为自动啦～～
        
        //但是非系统三方的CF API 需要手动管理内存，被标记为
        //Unmanaged<T>
        
        //MARK:63、Swift命令行工具
        //Read-Eval-Print Loop
        
        //MARK:64、随机数生成
//        let diceFaceCount = 6
//        let randomRoll = Int(arc4random()) % diceFaceCount + 1
//        print(randomRoll)
        
        //iphone5s 以下有时会崩溃跟cpu架构有关
        //Int在5s以下是Int32，以上是Int64
        //arc4random()全部是返回Int32所以有一半的几率转换为Int时候越界
//        print(UINT32_MAX)
//        print(UINT64_MAX)
//        print(INT_MAX)
//        print(INT32_MAX)
        
        //优化
//        let diceFaceCount : UInt32 = 6
//        let randomRoll =  Int(arc4random_uniform(diceFaceCount)) + 1
//        
//        print(randomRoll)
        
         //最佳实践实现range接口
//        for _ in 0...10{
//          print(randomInRange(1...6))
//        }
        
        //MARK:65、异常和错误
        
//        do {
//         try loginMethod("usr", passwd: "123")
//        }catch LoginError.UerNameNotFound{
//          print("user not found")
//        }catch LoginError.UerPasswordWrong {
//          print("psw not correct")
//        }catch {
//          print("other error")
//        }
        
        //自定义泛型enum 错误类
          //let requestResult = requestMethod("i do")
//        switch (requestResult){
//        case let .success(ok):
//            let response = ok
//            print(response)
//        case let  .Failure(error):
//            let response = error
//            print(response)
//        }
        
        //MARK:66、断言
        //断言在bug编译时有效，在发布时自动忽略所以用处很广
        //如果非要在release时候退出app那么fatalError
       //let kelvin = convertToKelvin(-100)
        
        //@noreturn 表示调用方法可以不需要返回值
        //let error = fatalError("hehe")
        //fatalError(<#T##message: String##String#>)
        
        //fatalError另一个用处 子类继承父类必须重写的方法可以默认实现fatalError
//        let object = SubFatalClass()
//        object.fatalMethod()
        
        //let array = [1,2,3]
       // array[100]
        
        //MARK:67、代码组织和framework
        //不允许动态链接到非系统框架，所以使用三方库都是要链接并打包最后的二进制可执行文件中的静态库
        
        ///Users/ex-panyuanrong001/Library/Developer/Xcode/DerivedData/Print-dgfkluumuexoxhcapzidtsmdgqcj/Build/Products/
        //导入后import
        //Hello.hello()
        
        //MARK:68、playground 每次更改代码都会重新编译，跟单元测试类似
        //比如异步操作就不会执行
        
        //MARK:69、JSON重载下标来安全划定范围
        //JSON里面用let Optional Binding 来检查是否解析回来的类型正确
        //所以比oc更安全
        
        //MARK:70、自动文档生成工具
        //属性 采用///
       // self.a
        
        //MARK:71、性能优化
        /*
         Swift 在方法调用上比OC优化，因为OC，任何类的方法调用都会被转化为NSObject的objc_msgSend方法然后再派发出去
        //Swift 类似于以下的，建立虚函数表
         methodToCall = class.vtable[methodIndex]
         final 等的定义直接固定方法的实现
         所以尽量使用swift的类别
        */
        
        //MARK:72、log输出
        //logMethod("雅蠛蝶")
        
        //MARK:73、溢出
        //溢出处理符号&+
        
//        var a = Int.max
//        
//        print("max a\(a)")
//        a = a &+ 2
//        print("max out a \(a)")
        
        //MARK:74、define
        //例如：M_PI
        
        //MARK:75、属性访问控制
        //private public internal(默认)
        
//        let property = PropertyClass()
//       // property.name = "KIT"
//        print(property.name)
        
        //MARK:76、coreData
//        let data = CoreData()
//        
//        data.title = "dsji"
        
        //MARK:77、闭包歧义
       // 对于可能存在歧义的闭包应该尽量明确闭包的参数类型
//        10.time { (a) -> () in
//            print("print\(a)")
//        }
//        
//        10.time{a in
//          print("print\(a)")
//        }
//        
//        10.times { (i:Void) -> ()in
//            print(i)
//        }
//        
//        10.times { (a:Int) -> () in
//            print(a)
//        }
       //Void = ()空的元祖
        
        //MARK:78、extension 泛型
        //在扩展中不能添加整个类型可用的新泛型符号，但对于特定方法来说是可以的
         //let array = ["abc","def","hij","klm","nop","qrs","tuv"]
//        print(array.random)
        //print(array.appendRandomDescription("字母"))
        
        
        //MARK:79、枚举列举
//        var num = 1
//        for suit in Suit.allValues {
//            for rank in Ranks.allValues {
//                
//               print("第\(num)张牌：",suit.rawValue+rank.description)
//                num += 1
//            }
//        }
        
        //MARK:80、尾递归
       //如果数额太大调用栈上保存的状态，栈空间将被消耗殆尽所以崩溃
        // print(100.sum(1000000))
       //解决办法尾递归，即函数最后一个动作调用是一个函数的调用的形式
       //这个调用函数的返回值被直接当前函数返回，避免了在栈上保存，这样程序就更新最后一个栈而不是新建栈，避免了栈溢出
        
        //Debug模式下Swift编译器不会对尾递归优化转为Release
        print(100.tailSum(1000000))
        
      
        
    }
    ///shuxing
    let a = "propert"
    
    func logMethod<T>(message : T){
        func logInnerMethod(message : T, file : String = __FILE__ , method : Selector = __FUNCTION__ ,line : Int = __COLUMN__){
            print("\((file as NSString).lastPathComponent)[\(line)],\(method):\(message)")
        }
       logInnerMethod(message)
    }
    func convertToKelvin(celesius : Double)->Double {
       let absoluteZeroInCelsius = -273.15
       assert(celesius > absoluteZeroInCelsius, "输入温度不能低于绝对零度")
       return celesius - absoluteZeroInCelsius
    }
    func requestMethod(paramers : String) -> MyResult<AnyObject> {
        if(paramers.containsString("yes")){
           return MyResult.success("success")
        }else{
          let error = NSError.init(domain: "errorDomain", code: 1, userInfo: nil)
          return MyResult.Failure(error)
        }
    }
    func loginMethod(user : String, passwd : String) throws {
        if !user.containsString("usr"){
            throw LoginError.UerNameNotFound
        }
        
        if !passwd.containsString("123"){
            throw LoginError.UerPasswordWrong
        }
        print("log in success")
    }
    func randomInRange(range: Range<Int>) ->Int{
       let count = UInt32(range.endIndex - range.startIndex)
       return Int(arc4random_uniform(count)) + range.startIndex
    }
    func synchronized(lock : AnyObject!, closure: ()->()){
        objc_sync_enter(lock)
        
        closure()
        
        objc_sync_exit(lock)
    }
    func lockMethod(any : AnyObject!) {
       objc_sync_enter(any)
       
       print(any.description)
        
       objc_sync_exit(any)
    }
    func protocolMethod() {
        print("protocal")
    }
    func testCOnSwift2(input : Int32){
       let result = c_test(input)
       print(result)
    }
    func printTitle(input : AssociateObject){
        if let title = input.title {
            print(title,"setted done")
        }else{
          print("none set action")
        }
    }
    func testCOnSwift(input : Int32){
       let result = test(input)
        print(result)
    }
    
    @objc
    private func click(){
       print("click button")
    }
    private func local(closure:()->Void){
       closure()
    }
    private func unsafeCIntMethod(c : UnsafePointer<
        CInt>){
       print(c.hashValue)
    }
    
    private func btntest(num:Int)(num2:Int){
      print("block",num2)
    }
  
    private func addTwoNumber(num:Int)(add:Int)->Int{
       return num+add
    }
    //元组交换
    func swatpMe<T>(var input a : T,var output b : T) -> T{
        (a,b) = (b,a)
        return a
        
    }
    
    //autoclosure
    func logIfTrue(@autoclosure predicte : ()->Bool){
        if predicte(){
           print("True")
        }
    }
    func setBlock( @autoclosure block:()->Void){
       //self.block = block
    }
    func incrementor(inout variable : Int) ->Int {
         return ++variable
    }
    func makeIncrementor(addNumber : Int) -> ((inout Int) -> ()){
        func incrementor_(inout variable : Int) -> () {
             variable += addNumber
        }
        return incrementor_
    }
    func sum(input:Int ...)->Int {
       return input.reduce(0, combine: +)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sayHello1(String1 : String = "hello",String2 : String ,String3 : String) {
       print(String1 + String2 + String3)
    }
    func sayHello2(String1 : String, String2 : String ,String3 : String = "momo") {
       print(String1 + String2 + String3)
    }
    func setUpViewController(vcTypes:[AnyClass]){
        for vcType in vcTypes {
            if vcType is UIViewController.Type{
             let vc = (vcType as! UIViewController.Type).init()
              print(vc)
            }
        }
    }
    
    
   @objc func selectorDemo(external name : UIButton){
          print(name)
    }

}
class musicViewController :UIViewController{
    
}
class albumViewController:UIViewController{
    
}


