" 1. Expand an Abbreviation
"
"   Type the abbreviation as 'div>p#foo$*3>a' and type '<c-y>,'.
"   ---------------------
"   <div>
"       <p id="foo1">
"           <a href=""></a>
"       </p>
"       <p id="foo2">
"           <a href=""></a>
"       </p>
"       <p id="foo3">
"           <a href=""></a>
"       </p>
"   </div>
"   ---------------------
"
" 2. Wrap with an Abbreviation
"
"   Write as below.
"   ---------------------
"   test1
"   test2
"   test3
"   ---------------------
"   Then do visual select(line wise) and type '<c-y>,'.
"   Once you get to the 'Tag:' prompt, type 'ul>li*'.
"   ---------------------
"   <ul>
"       <li>test1</li>
"       <li>test2</li>
"       <li>test3</li>
"   </ul>
"   ---------------------
"
"   If you type a tag, such as 'blockquote', then you'll see the following:
"   ---------------------
"   <blockquote>
"       test1
"       test2
"       test3
"   </blockquote>
" 9. Remove a Tag
"
"   Move cursor in block
"   ---------------------
"   <div class="foo">
"   	<a>cursor is here</a>
"   </div>
"   ---------------------
"   Type '<c-y>k' in insert mode.
"   ---------------------
"   <div class="foo">
"
"   </div>
"   ---------------------
"
"   And type '<c-y>k' in there again.
" 11. Toggle Comment
"
"   Move cursor inside the block
"   ---------------------
"   <div>
"   	hello world
"   </div>
"   ---------------------
"   Type '<c-y>/' in insert mode.
"   ---------------------
"   <!-- <div>
"   	hello world
"   </div> -->
"   ---------------------
"   Type '<c-y>/' in there again.
"   ---------------------
"   <div>
"   	hello world
"   </div>
