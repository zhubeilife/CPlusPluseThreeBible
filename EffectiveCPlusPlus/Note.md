# Note

## Introduction 导读

所谓声明式（declaration）是告诉编译器某个东西的名称和类型（type），但略去细节.

```c++
external int x;                     // object
std::size_t numDigits(int num);     // function
class Widget;                       // class
template<typename T>
class GraphNode;                    // class template
```

定义式（definition）的任务是提供编译器一些声明式所遗漏的细节。对对象而言，定义式是编译器为此对象拨发内存的地点。对function或function template而言，定义式提供了代码本体。对class或class template而言，定义式列出它们的成员：

```c++
int x;      // object, 分配内存

std::size_t numDigits(int num)          // function 函数本体
{
    return 0;
}

template<typename T>
class GraphNode {
public:
    GraphNode();
    ~GraphNode();
}
```

初始化（Initialization）是“给予对象初值”的过程。对用户自定义类型的对象而言，初始化由构造函数执行。所谓default构造函数是一个可被调用而不带任何实参者。这样的构造函数要不没有参数，要不就是每个参数都有缺省值：
