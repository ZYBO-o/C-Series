# 谈谈C++中的右值引用

## 一.左值与右值

### 1.C语言继承

在 C 语言，或者继承版本中是这样解释的

- 左值是可以位于赋值运算符 `=` 左侧的表达式（当然，左值也可以位于 `=` 的右侧）
- 右值是不可以位于赋值运算符 `=` 左侧的表达式。

 示例如下：

```c++
int foo(42);
int bar(43);

// foo, bar 都是左值
foo = bar;
bar = foo;
foo = foo * bar;

// foo * bar 是右值
int baz;
baz = foo * bar;  // OK: 右值在赋值运算符右侧
foo * bar = 42;   // Err: 右值在赋值运算符左侧
```

这个解释很经典，也容易懂。不过在 C++ 里面，左值和右值不能这样定义。

### 2.C++阐述

根据《C++ Primer》的说法，左值和右值可以这样区分：

 **<font color = red>一个表达式是左值还是右值，取决于我们使用的是它的值还是它在内存中的位置（作为对象的身份）。也就是说一个表达式具体是左值还是右值，要根据实际在语句中的含义来确定。</font>**例如

```c++
int foo(42);
int bar;

// 将 foo 的值赋给 bar，保存在 bar 对应的内存中
// foo 在这里作为表达式是右值；bar 在这里作为表达式是左值
// 但是 foo 作为对象，既可以充当左值又可以充当右值
bar = foo;
```

因为 C++ 中的对象本身可以是一个表达式，所以这里有一个重要的原则，即

- **在大多数情况下，需要右值的地方可以用左值来替代，但**
- **需要左值的地方，一定不能用右值来替代。**

又有一个重要的特点，即

- **<font color = red>左值存放在对象中，有持久的状态</font>；而**
- **<font color = red>右值要么是字面常量，要么是在表达式求值过程中创建的临时对象，没有持久的状态。</font>**



## 二.左值引用与右值引用

左值引用是常见的引用，所以一般在提到「对象的引用」的时候，指得就是左值引用。如果我们将一个对象的内存空间绑定到另一个变量上，那么这个变量就是左值引用。

在建立引用的时候，我们是「将内存空间绑定」，因此我们使用的是一个对象在内存中的位置，这是一个左值，左值引用在汇编层面其实和普通的指针是一样的。

因此，我们不能将一个右值绑定到左值引用上。另一方面，**由于常量左值引用保证了我们不能通过引用改变对应内存空间的值，因此我们<font color = red>可以将右值绑定在常量引用上</font>**。

```c++
int foo(42);
int& bar = foo;  // OK: foo 在此是左值，将它的内存空间与 bar 绑定在一起
int& baz = 42;   // Err: 42 是右值，不能将它绑定在左值引用上，42无法进行取地址操作，无法对一个立即数取地址，因为立即数并没有在内存中存储，而是存储在寄存器中
const int& qux = 42;  // OK: 42 是右值，但是编译器可以为它开辟一块临时内存空间，绑定在 qux 上，这个临时变量是可以进行取地址操作的，相当于下面的操作：
const int temp = 42; 
const int &var = temp;
```

右值引用也是引用，但是它**<font color = red>只能且必须</font>**绑定在右值上。

C++对于左值和右值没有标准定义，但是有一个被广泛认同的说法：

- 可以取地址的，有名字的，非临时的就是左值；
- 不能取地址的，没有名字的，临时的就是右值；

```c++
int foo(42);
int& bar = foo;        // OK: 将 foo 绑定在左值引用上
int&& baz = foo;       // Err: foo 可以是左值，所以不能将它绑定在右值引用上
int&& qux = 42;        // OK: 将右值 42 绑定在右值引用上
int&& quux = foo * 1;  // OK: foo * 1 的结果是一个右值，将它绑定在右值引用上
int& garply = foo++;   // Err: 后置自增运算符返回的是右值，不能将它绑定在左值引用上
int&& waldo = foo--;   // OK: 后置自减运算符返回的是右值，将它绑定在右值引用上
```

由于右值引用只能绑定在右值上，而右值要么是字面常量，要么是临时对象，所以：

- 右值引用的对象，是临时的，即将被销毁；并且
- 右值引用的对象，不会在其它地方使用。

右值引用是C++ 11新增的特性，所以C++ 98的引用为左值引用。**右值引用用来绑定到右值，绑定到右值以后本来会被销毁的右值的生存期会延长至与绑定到它的右值引用的生存期。**

```c++
int &&var = 10;
```

在汇编层面右值引用做的事情和常引用是相同的，即产生临时量来存储常量。但是，唯一一点的区别是，**右值引用可以进行读写操作，而常引用只能进行读操作。**

> 敲黑板：这是重点！

这两个特性意味着：**<font color = red>接受和使用右值引用的代码，可以自由地接管所引用的对象的资源，而无需担心对其他代码逻辑造成数据破坏</font>**。**右值引用的存在并不是为了取代左值引用，而是<font color = red>充分利用右值(特别是临时对象)的构造来减少对象构造和析构操作以达到提高效率的目的。</font>**



## 三.引用的值类型与引用叠加
