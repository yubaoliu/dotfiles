" 尽管网上有很多人都在推荐nerdcommenter这款注释插件，但我断言caw.vim比nerdcommenter更加优秀。
" nredcommenter是根据文件类型来进行注释的，也就是说它无法做到单文件多语言的注释风格切换。
" 而caw.vim则是根据当前光标所在区域内容来自动切换语言注释风格，这依赖于context_filetype插件。
" 举一个简单的例子，在编写vim时我们会出现<template>、<script>、以及<style>等标签，这种情况下nredcommenter的注释总是//，而使用caw.vim，你在不同的标签区域内能就获得不同的注释方式，这是我选择它最关键的一点：
" Refer https://www.cnblogs.com/YunyaSir/p/15495912.html#_caption_6

" 它的使用方式也非常简单，gcc即是注释、取消注释的快捷键。 
" 由于我平常喜欢使用ctrl+/进行注释

":help caw-keybindings
"
" Type "gci" (toggle: "gcc", uncomment: "gcui")
"   before:
"          <- inserted here"
"   after:
"          # <- inserted here"
" 
" Type "gcI" (uncomment: "gcuI")
"   before:
"       "   inserted the first column"
"   after:
"       "#    inserted the first column"
" 
" Type "gca" (uncomment: "gcua")
"   before:
"       "inserted after this"
"   after:
"       "inserted after this    # "
" 
" Type "gcw" (uncomment: "gcuw")
"   before:
"       "  wrap!"
"   after:
"       "  /* wrap! */"
" 
" Type "gcb"
"   before:
"       "  box!"
"   after:
"       "  /********/"
"       "  /* box! */"
"       "  /********/"
" 
" Type "gco"及
"   before:
"       "   func1();"
"   after:
"       "   func1()"
"       "   // "  (now cursor is at the end and entered insert-mode)
" 
" Type "gcO"
"   before:
"       "   func1();"
"   after:
"       "   // "  (now cursor is at the end and entered insert-mode)
"       "   func1();"
