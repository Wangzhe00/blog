import { NavItem } from "vuepress/config";

export default <Array<NavItem>>[
    {
        text: '速查', 
        link: '/quickLook/',
        items: [
            { 
                text: '知识',
                items: [
                    { text:'Markdown语法', link: '/pages/00e673/' },
                    { text:'ASCII', link: 'https://wangzhe.blog.csdn.net/article/details/86634230' },
                    { text:'缩略语', link: '/pages/c55759/' },
                ]
            }
        ]
    },
    {
        text: '笔记',
        link: '/notee/', //目录页链接，此处link是vdoing主题新增的配置项，有二级导航时，可以点击一级导航跳到目录页
        items: [
            // 说明：以下所有link的值只是在相应md文件头部定义的永久链接（不是什么特殊编码）。另外，注意结尾是有斜杠的
            { 
                text: '语言篇', 
                items: [
                    { text: 'C', link: '/pages/e0563f9ce5/' },
                    { text: 'C++', link: '/pages/1f03f7c5c5/' },
                    { text: 'C#', link: '/pages/a226d2479/' },
                    { text: 'Python', link: '/pages/4b8412da01/' },
                    { text: 'Verilog', link: '/pages/e786683a/' },
                ]
            },
            { 
                text: '必备篇', 
                items: [
                    { text: 'Git', link: '/pages/6bc44363f/' },
                    { text: 'Linux', link: '/pages/4966108b8/' },
                    { text: '环境搭建', link: '/pages/3e24c999a4/' },
                ]
            },
            { 
                text: '工作专项', 
                items: [
                    { text: 'WLAN从入门到精通 Wi-Fi 6', link: '/pages/4d1833/' },
                    { text: '企业WLAN架构与技术', link: '/pages/4d1833/' }
                ]
            },
            { 
                text: 'Games', 
                items: [
                    { text: 'CSGO', link: '/pages/124206/' },
                ]
            },
            { 
                text: 'Evan\'s', 
                items: [
                    { text: 'OtherBlog', link: '/EvanBlog/' }
                ]
            },
        ],
    },
    {
        text: '技术',
        link: '/technology/',
        items: [
            { text: '技术文档', link: '/pages/9a7ee40fc232253e/' },
            { text: 'GitHub技巧', link: '/pages/4c778760be26d8b3/' },
            { text: 'Nodejs', link: '/pages/117708e0af7f0bd9/' },
            { text: '博客搭建', link: '/pages/41f87d890d0a02af/' },
        ],
    },
    {
        text: '更多',
        link: '/more/',
        items: [
            { text: '学习', link: '/pages/f2a556/' },
            { text: '摘抄', link: '/pages/72e427/' },
            { text: '友情链接', link: '/friends/' },
        ],
    },
    { text: '关于', link: '/about/' },
    { text: '收藏', link: '/pages/beb6c0bd8a66cea6/' },
    {
        text: '索引',
        link: '/archives/',
        items: [
            { text: '分类', link: '/categories/' },
            { text: '标签', link: '/tags/' },
            { text: '归档', link: '/archives/' },
        ],
    },
];