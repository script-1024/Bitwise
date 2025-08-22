# 位运算库 Bitwise
一个能在 Minecraft 中进行按位操作 (bitwise operation) 的数据包。<br/>
你可以随意将其添加到自己的项目当中。

A datapack that enables bitwise operations in Minecraft.<br/>
You can add this datapack to your own projects.

## 使用方式 Usage
- 使用记分板传参 Passing parameters via scoreboard
    ```
    # 传递参数
    scoreboard players set #a param <value>
    scoreboard players set #b param <value>

    # 获取结果 - 方式 1
    execute store result ... run function bitwise:<operation>
    
    # 获取结果 - 方式 2
    function bitwise:<operation>
    execute store result ... run scoreboard players get #result local
    ```

- 使用宏传参 Passing parameters using macros
    ```
    # 传递参数 - 方式 1
    ... function bitwise:macro/<operation> { a: <value>, b: <value> }

    # 传递参数 - 方式 2
    data modify storage args "bitwise:macro/<operation>" set ...
    ... function bitwise:macro/<operation> with storage args "bitwise:macro/<operation>"

    # 获取计算结果可参考上方
    ```

## 调用约定
- 函数
    | function      | description                                                                     |
    | :------------ | :------------------------------------------------------------------------------ |
    | `__load__`    | 数据包进入点，在加载世界或使用 `/reload` 命令时被调用。                               |
    | `macro/...`   | 宏参数版本的同名函数，具体使用方式请见对应文件。                                       |
    | `private/...` | **仅供内部使用** 的私有工具函数，你不应该以任何方式访问它，随意调用可能导致预期之外的结果。 |

- 记分板
    | objective | description                                                                |
    | :-------- | :------------------------------------------------------------------------- |
    | `const`   | 运行时常量，你不应该在 `__load__` 函数之外的地方修改它！                         |
    | `local`   | 区域变量，仅在当前上下文中可用，离开作用域后保存的数值不可靠，如要使用请先备份。<br/>不需要时使用 `scoreboard players reset <name> local` 清理是个好习惯。|
    | `param`   | 传入参数，函数内部不会修改这个值，可重复读取。 |

## 可用操作
| operation             | description                                          |
| :-------------------- | :--------------------------------------------------- |
| `bitwise:not`         | 接受一个参数 `a`，进行 **取反** 操作，返回 `~a`           |
| `bitwise:xor`         | 接受两个参数 `a` `b`，进行 **异或** 操作，返回 `a ^ b`    |
| `bitwise:and`         | 接受两个参数 `a` `b`，进行 **按位与** 操作，返回 `a & b`  |
| `bitwise:or`          | 接受两个参数 `a` `b`，进行 **按位或** 操作，返回 `a \| b` |
| `bitwise:left_shift`  | 接受两个参数 `a` `b`，进行 **左移** 操作，返回 `a << b` <br/>( 注：当位移量 `b` 为负数时结果未定义，不做任何处理。 ) |
| `bitwise:right_shift` | 接受两个参数 `a` `b`，进行 **右移** 操作，返回 `a >> b` <br/>( 注：当位移量 `b` 为负数时结果未定义，不做任何处理。 ) |
