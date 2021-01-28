# C++ Primer笔记与归纳

> C++ Primer 第五版笔记与知识点整合

## 一.C++基础知识

+ [变量和基本类型](https://github.com/ZYBO-o/C-Series/tree/main/C%2B%2B%20Basics#%E4%B8%80%E5%8F%98%E9%87%8F%E5%92%8C%E5%9F%BA%E6%9C%AC%E7%B1%BB%E5%9E%8B)
+ [字符串,向量和数组](https://github.com/ZYBO-o/C-Series/tree/main/C%2B%2B%20Basics#%E4%BA%8C%E5%AD%97%E7%AC%A6%E4%B8%B2%E5%90%91%E9%87%8F%E5%92%8C%E6%95%B0%E7%BB%84)
+ [表达式](https://github.com/ZYBO-o/C-Series/tree/main/C%2B%2B%20Basics#%E4%B8%89%E8%A1%A8%E8%BE%BE%E5%BC%8F)

## 二.函数

+ [函数基础](https://github.com/ZYBO-o/C-plus-plus-Series/tree/main/Function#%E4%B8%80%E5%87%BD%E6%95%B0%E5%9F%BA%E7%A1%80)
+ [参数传递](https://github.com/ZYBO-o/C-plus-plus-Series/tree/main/Function#%E4%BA%8C%E5%8F%82%E6%95%B0%E4%BC%A0%E9%80%92)
  + [传值参数](https://github.com/ZYBO-o/C-plus-plus-Series/tree/main/Function#1%E4%BC%A0%E5%80%BC%E5%8F%82%E6%95%B0)
  + [传引用参数](https://github.com/ZYBO-o/C-plus-plus-Series/tree/main/Function#2%E4%BC%A0%E5%BC%95%E7%94%A8%E5%8F%82%E6%95%B0)
  + [const形参与实参](https://github.com/ZYBO-o/C-plus-plus-Series/tree/main/Function#3const%E5%BD%A2%E5%8F%82%E4%B8%8E%E5%AE%9E%E5%8F%82)
  + [数组形参](https://github.com/ZYBO-o/C-plus-plus-Series/tree/main/Function#4%E6%95%B0%E7%BB%84%E5%BD%A2%E5%8F%82)
  + []()
  + []()
+ [返回类型和return类型](https://github.com/ZYBO-o/C-plus-plus-Series/tree/main/Function#%E4%B8%89%E8%BF%94%E5%9B%9E%E7%B1%BB%E5%9E%8B%E5%92%8Creturn%E7%B1%BB%E5%9E%8B)
  + []()
  + []()
+ [函数重载](https://github.com/ZYBO-o/C-plus-plus-Series/tree/main/Function#%E5%9B%9B%E5%87%BD%E6%95%B0%E9%87%8D%E8%BD%BD)
+ [特殊用途语言特性](https://github.com/ZYBO-o/C-plus-plus-Series/tree/main/Function#%E4%BA%94%E7%89%B9%E6%AE%8A%E7%94%A8%E9%80%94%E8%AF%AD%E8%A8%80%E7%89%B9%E6%80%A7)
  + []()
  + []()
+ [函数匹配](https://github.com/ZYBO-o/C-plus-plus-Series/tree/main/Function#%E5%85%AD%E5%87%BD%E6%95%B0%E5%8C%B9%E9%85%8D)
+ [函数指针](https://github.com/ZYBO-o/C-plus-plus-Series/tree/main/Function#%E4%B8%83%E5%87%BD%E6%95%B0%E6%8C%87%E9%92%88)

## 三.类

+ 

## 四.IO库

+ 

##五.顺序容器

+ 

## 六.泛型编程

+ 

## 七.关联容器

+ 

## 八.动态内存

+ 

## 九.拷贝控制

+ 

## 十.重载运算与类型转换

+ 

## 十一.面向对象程序设计

+ 

## 十二.模板与泛型编程

+ 



# 重点与难点整理



<!-- GFM-TOC -->

[一.引用与指针](#一引用与指针)

[二.const](#一const)

[三.static](#static)

[四.this](四.this)



<!-- GFM-TOC -->

---

## 一.引用与指针

### 1.有关引用

- `引用`为对象起了另外一个名字。将声名符写为`&d`来定义变量`d`为引用。

- 初始化变量和定义引用的区别：初始化变量时，初始值会被`拷贝`到新建的对象中间；定义引用时，只是将引用和它的初始值对象`绑定`到一起，不发生拷贝。

- <font color = red>一旦引用被绑定到一个初始值对象，就不可重新绑定到另一个对象。**因此`引用必须初始化`。**</font>

  所谓的引用的重新赋值，应该是: 

  ```c++
  int x,y,z; 
  int &x=y; 
  &x=z; 
  ```

  这种是对引用x，改变了它的指定对象，一开始是y的引用，之后，又重新说明是z的引用，这种引用的重新赋值是不允许的。

- `引用不是对象`，只是为已有对象起的别名，所以不能定义引用的引用。
- 引用只能绑定到已有对象，不能绑定到字面值或表达式的计算结果。
- 引用类型要与其被绑定的对象类型严格匹配。两个例外：常量引用可绑定到非常量对象，基类引用可绑定到派生类对象。

### 2.有关指针

- `指针`是“指向”另一种类型的复合类型。将声名符写为`*d`来声明变量`d`为指针。
- 指针本身是对象
- 指针存放对象的地址。要获取对象的地址，要对此对象使用`取地址符&`
- 指针指向一个对象，则允许用`解引用符*`来访问该对象，即可读可写。
- 对无效指针的解引用不会报错，因此必须保证指针的有效性。
- 虽然指针是地址，但不能把int型变量直接赋给指针，int型的0也不行
- 最佳实践：尽量在定义对象之后再定义指针。如果实在不清楚指针指向何处，就初始化为nullptr
- 给指针赋值就是让它存放一个新的地址，即指向一个新的对象

#### (1).对于空指针

- `空指针`不指向任何对象。
- 得到空指针的方法：
  - 初始化为字面值`nullptr`，C++11引入
  - 初始化为字面值0
  - 初始化为`预处理变量NULL`，该变量在头文件`cstdlib`中定义，值为0
- 用到`预处理变量`时，预处理器自动将其替换为实际值。因此用NULL初始化指针和用0初始化指针是一样的。
- 尽量用nullptr，避免用0或NULL

#### (2).void指针

- `void *`是一种特殊的指针类型，可存放任意对象的地址，不管其类型
- `void *`指针指向的内存空间只是内存空间，不是对象，除非`类型转换`为特定类型的指针。
- `void *`指针不能用于访问对象，只能：
  - 与其他指针比较大小
  - 作为函数的输入输出传递
  - 赋值给另一个void *指针

### 3.比较

指针和引用区别：

- 指针本身是对象，允许对指针赋值或拷贝，引用不是对象
- 指针存放对象的地址，引用只是对象的别名
- 指针可更改指向的对象，引用不可
- 指针在定义时不需赋初值，引用需要

---



## 2.有关const

#### (1).基本概念

- `const关键字`：使变量的值不能被改变。而且const对象创建后其值不能改变，故必须初始化。

- 如果用一个对象初始化另一个对象，则它们是不是const都无所谓。右边即使是const也可拷贝其内容

  ```c++
  int value1 = 1;
  const int cv1 = value1;
  //错误，引用时需要注意
  int &value2 = cv1;
  ```

- `const对象仅在文件内有效`：在编译期将const变量都替换为其值。因为是 **编译期替换** ，所以必须在每个文件中都定义。 **不同文件中的同名const是不同的对象**。

- 如果要在`文件间共享const对象`，就必须 **在声明和定义中都用extern** ，即将所有该对象都声明为文件外可见。

#### (2).常量引用

- `对常量的引用`：将引用绑定到const对象上。对常量的引用不可修改其绑定的对象。

- 对常量的引用又称`常量引用`。严格来说不存在“常量引用”，因为引用不是对象，不存在“常量”一说。但引用不可重新绑定对象，所有引用其实都是“常量”。

- <font color = red>初始化常量引用时，只需要初始表达式能`类型转换`为常量引用的类型。而普通引用必须类型严格匹配。</font>原因是：类型不匹配时，编译器定义一个临时量用于类型转换。如果允许非常量引用的类型不匹配，就会产生`中间量`，修改引用时修改的是中间量而不是想要绑定的对象。常量对象不可修改，因此不存在这个问题。如下例：

  ```c++
  double dval = 3.14;
  const int temp = dval;
  //正确，相当于引入了临时变量：const int temp=dval; const int &value1=temp;
  const int &value1 = dval;
  //错误，要注意区分
  int &value2 = dval;
  
  //但是
  int dval2 = 3;
  int &value3 = dval2;
  //这是正确的，错误的是初始化
  value3 = dval;
  ```

- 可将常量引用绑定到非常量对象。此时对象仍可修改，只是不能被这个引用修改。

  ```c++
  int i = 0;
  const int &v = i;
  //正确
  i = 1;
  //错误
  v = 0;
  ```

#### (3).指针和const













