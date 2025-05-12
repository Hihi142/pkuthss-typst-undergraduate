#import "template.typ": *

#show: doc => UndergraduateThesis(
  // ctitle必填
  ctitle: "一种基于幽灵变量的存在量词消除方法",
  doc,
)

// 封面修改后位本科生版本
// TitlePage参数全部必填
#TitlePage(
  chinese_title: [ 一种基于幽灵变量的存在量词消除方法 ],
  english_title: [ Removing Existentials with Ghost Variables ],
  name : "智旭生",
  studentid : "2100013006",
  department : "信息科学与技术学院",
  major : "信息与计算科学",
  supervisor_name : "王迪",
  year_and_month : "二〇二五年五月"
) <title-page>

// 导师评价
// CheckSheet参数全部必填
#CheckSheet(
  name : "智旭生",
  studentid : "2100013006",
  school : "信息科学与技术学院",
  major : "信息与计算科学",
  supervisor : "王迪",
  department : "计算机学院",
  grade : "中等",
  title : "助理教授",
  chinese_title : "一种基于幽灵变量的存在量词消除方法",
  english_title : "Removing Existentials with Ghost Variables",
  sign_pic : image("./images/老师签名.png"),
  year : 2024,
  month : 5,
  day : 15,
)[
这篇文章写得还行
] // end of check comment

// Copyright
#CopyrightClaim <copy-right>

// 中文摘要
#ChineseAbstract(
  keywords : ("Typst", "排版")
)[
Typst 是一款新兴的排版工具，旨在提供简单、高效、且强大的排版功能。它结合了传统排版系统的优点，同时简化了用户的操作流程，使得用户可以更加专注于内容创作而不是排版细节。

Typst 的核心优势在于其直观的语法和强大的排版引擎。用户可以使用类似编程的方式来定义文档结构、样式和内容，这使得复杂文档的排版变得更加简便。此外，Typst 支持实时预览功能，用户可以在编辑过程中即时看到排版效果，从而提高了工作效率。

Typst 还具备高度的可扩展性和灵活性。通过插件和模板系统，用户可以自定义排版规则，满足不同的需求。不论是学术论文、商业报告还是个人项目，Typst 都能提供专业级的排版效果。

总的来说，Typst 是一款兼具易用性和专业性的排版工具，适合各种类型的文档创作需求。它的出现，为用户提供了一种全新的排版体验，让排版过程变得更加愉快和高效。

这篇文章提供了一个北大本科生毕业论文模板。
  
]

// English Abstract
#EnglishAbstract(
  keywords : ("Typst", "Formatting")
)[ 

Typst is an emerging typesetting tool designed to offer simple, efficient, and powerful typesetting capabilities. It combines the strengths of traditional typesetting systems while simplifying user operations, allowing users to focus more on content creation rather than typesetting details.

The core advantage of Typst lies in its intuitive syntax and powerful typesetting engine. Users can define document structures, styles, and content using a programming-like approach, making the typesetting of complex documents more straightforward. Additionally, Typst supports real-time preview functionality, enabling users to see the typesetting effects immediately during the editing process, thereby improving work efficiency.

Typst also boasts high extensibility and flexibility. Through a system of plugins and templates, users can customize typesetting rules to meet various needs. Whether it’s academic papers, business reports, or personal projects, Typst can deliver professional-grade typesetting results.

In summary, Typst is a user-friendly yet professional typesetting tool suitable for a wide range of document creation needs. Its introduction provides users with a new typesetting experience, making the typesetting process more enjoyable and efficient.

This paper offers a template for undergraduate thesis in Peking University.
]


// 目录
#TableOfContent


// DOCUMENT START: 更改状态，标记了文档的开始
#doc_start()


#include "1 intro.typ"
#include "2 background.typ"
#include "3 theory.typ"
#include "4 impl.typ"
#include "5 discussion.typ"

= 总结 <conclusion>

= 教程 <turorial>

== 标题

Typst 中的标题使用 `=` 表示，其后跟着标题的内容。`=` 的数量对应于标题的级别。

除了这一简略方式，也可以通过 `heading` 函数自定义标题的更多属性。具体可以参考#link("https://typst.app/docs/reference/meta/heading/", [文档中的有关内容])。

下面是一个示例：

#table(
  columns: (1fr, 1fr),
  [
    #set align(center)
    代码
  ],
  [
    #set align(center)
    渲染结果
  ],
  ```typ
#heading(level: 2, numbering: none, outlined: false, "二级标题")
#heading(level: 3, numbering: none, outlined: false, "三级标题")
#heading(level: 4, numbering: none, outlined: false, "四级标题")
#heading(level: 5, numbering: none, outlined: false, "五级标题")
  ```,
  [
    #heading(level: 2, numbering: none, outlined: false, "二级标题")
    #heading(level: 3, numbering: none, outlined: false, "三级标题")
    #heading(level: 4, numbering: none, outlined: false, "四级标题")
    #heading(level: 5, numbering: none, outlined: false, "五级标题")
  ]
)\

需要注意的是，这里的样式经过了本模板的一些定制，并非 Typst 的默认样式。


== 表格

在 Typst 中，定义表格的默认方式是 `table` 函数。但如果需要给表格增加标题，或者在文章中引用表格，则需要将其放置在 `figure` 中，就像下面这样：

#table(
  columns: (1fr, 1fr),
  [
    #set align(center)
    代码
  ],
  [
    #set align(center)
    渲染结果
  ],
  codeblock(
  ```typ
#figure(
  table(
    columns: (auto, auto, auto, auto),
    inset: 10pt,
    align: horizon,
      [*姓名*],[*职称*],[*工作单位*],[*职责*],
      [李四],[教授],[北京大学],[主席],
      [王五],[教授],[北京大学],[成员],
      [赵六],[教授],[北京大学],[成员],
      [钱七],[教授],[北京大学],[成员],
      [孙八],[教授],[北京大学],[成员],
  ),
  caption: "答辩委员会名单",
) <table>
```,
    caption: "默认表格",
  ),
  [
    #figure(
      table(
        columns: (auto, auto, auto, auto),
        inset: 10pt,
        align: horizon,
          [*姓名*],[*职称*],[*工作单位*],[*职责*],
          [李四],[教授],[北京大学],[主席],
          [王五],[教授],[北京大学],[成员],
          [赵六],[教授],[北京大学],[成员],
          [钱七],[教授],[北京大学],[成员],
          [孙八],[教授],[北京大学],[成员],
      ),
      caption: "答辩委员会名单",
    ) <table>
  ]
)

对应的渲染结果如 @table 所示。代码中的 `<table>` 是这一表格的标签，可以在文中通过 `@table` 来引用。

默认的表格不是特别美观，本模板中提供了 `booktab` 函数用于生成三线表， @booktab 是一个示例。代码中的 `<booktab>` 是这一表格的标签，可以在文中通过 `@booktab` 来引用。

#table(
  columns: (1fr, 1fr),
  [
    #set align(center)
    代码
  ],
  [
    #set align(center)
    渲染结果
  ],
  ```typ
  #booktab(
    width: 100%,
    aligns: (left, center, right),
    columns: (1fr, 1fr, 1fr),
    caption: [`booktab` 示例],
    [左对齐], [居中], [右对齐],
    [4], [5], [6],
    [7], [8], [9],
    [10], [], [11],
  ) <booktab>
  ```,
  [
    #booktab(
      width: 100%,
      aligns: (left, center, right),
      columns: (1fr, 1fr, 1fr),
      caption: [`booktab` 示例],
      [左对齐], [居中], [右对齐],
      [4], [5], [6],
      [7], [8], [9],
      [10], [], [11],
    ) <booktab>
  ]
)

== 公式

@eq 是一个公式。代码中的 `<eq>` 是这一公式的标签，可以在文中通过 `@eq` 来引用。

#table(
  columns: (1fr, 1fr),
  [
    #set align(center)
    代码
  ],
  [
    #set align(center)
    渲染结果
  ],
  ```typ
$ E = m c^2 $ <eq>
  ```,
  [
    $ E = m c^2 $ <eq>
  ]
)\

@eq2 是一个多行公式。

#table(
  columns: (1fr, 1fr),
  [
    #set align(center)
    代码
  ],
  [
    #set align(center)
    渲染结果
  ],
  ```typ
$ sum_(k=0)^n k
    &= 1 + ... + n \
    &= (n(n+1)) / 2 $ <eq2>  ```,
  [
$ sum_(k=0)^n k
    &= 1 + ... + n \
    &= (n(n+1)) / 2 $ <eq2>
  ]
)\

@eq3 到 @eq6 中给出了更多的示例。

#table(
  columns: (1fr, 1fr),
  [
    #set align(center)
    代码
  ],
  [
    #set align(center)
    渲染结果
  ],
  ```typ
$ frac(a^2, 2) $ <eq3>
$ vec(1, 2, delim: "[") $
$ mat(1, 2; 3, 4) $
$ lim_x =
    op("lim", limits: #true)_x $ <eq6>
  ```,
  [
$ frac(a^2, 2) $ <eq3>
$ vec(1, 2, delim: "[") $
$ mat(1, 2; 3, 4) $
$ lim_x =
    op("lim", limits: #true)_x $ <eq6>
  ]
)

// 这之后的章节都是附录，如无附录可以删掉
#change_appendix()


= 参考文献 <reference>

// 参考文献之前需要更改一下语言，因为文章中图表格的中文名称是设置typst为中文得到的
// 如果就是需要中文参考文献格式可以不更改
#set text(lang: "en")
#bibliography(title:none, "ref.bib")


= 致谢 <thanks>

感谢我的导师胡振江老师和王迪老师。作为我在科研路上的引路人，两位老师给予了我耐心的指导，让我逐步参与到科研工作中，并且戒掉了参与科研过程中的急躁与鲁莽， 学会了从容、冷静的解决问题。相信这对我的未来意义重大。

感谢熊英飞老师，通过《软件科学基础》和《软件科学技术》两门课程的精彩讲解，引领我进入了编程语言的研究领域；也非常感谢您给予我担任课程助教的宝贵机会，使我在教学与科研中双重成长。

感谢张昕老师，在我大一懵懂的时候，为我解释清楚了一些学业、学术上的问题。

I am deeply grateful to Prof. Thomas W. Reps for warmly welcoming me to the University of Wisconsin–Madison, for guiding me through the process of writing my first academic paper, and for introducing me to the American academic system through job talks and some other activities.

感谢曹奕远学长和王治奕学长，感谢你们在科研上的细致指导与无私帮助。

感谢我的父母，感谢你们始终如一的支持与培养，让我无后顾之忧地追求学术梦想。

感谢王本宇、叶峥、朱峰、佟祥正、周子锐、陈厚锦等好友，在我最失意时给予陪伴，在我最得意时与我同庆。有了你们的支持与分享，我的人生更加丰富与完整。

最后，我要感谢自己。正是一路以来的不懈坚持与努力，造就了今天更好的自己。

// DOCUMENT END:标记文章结束，页面计数停止
#doc_end()


// 原创性与版权声明
#Statement(2024, 5, 15, teacher_sign : image("./images/老师签名.png"), my_sign: image("./images/本人签名.png")) <claim>
