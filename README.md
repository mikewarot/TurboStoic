TurboStoic is an experimental FreePascal implementation of a modern STOIC environment inspired by Forth, Lisp, and MSTOICAL

I've always been interested in Forth, and later, STOIC.

This is a new implementation of STOIC, with some modifications to try to make it as powerful, in expressive terms, as LISP.  It seems that something was lost when Forth was created, there's not really an ability to treat code as data, and vice-versa. I intend to fix that, and since STOIC really is effectively a dead language, I've got lost of freedom right now. ;-)

Initial ideas
- The stack won't just be integers, every stack entry will have a type, and there will be some form of automatic type conversion
- There won't be a special compile mode, rather normal words will do compiling.  Mostly, this will be the result of making it easy to do string connstants, which can then be fed into : definitions
- There will be some sort of list, or quoting as it's called in lisp.  I'm tempted to use (), but I think there might be trouble with that later...  we'll see in time
- To make things useful, I strongly suspect everything is going to be an object, with .method type access to its properties
- I'm going to borrow heavily from the ideas present in MSTOICAL

I'm starting this using Lazarus, mostly because of it's almost magically handling of strings. *Seriously, check out Strings in FreePascal if you get the chance*

I intend to code this by hand, which is *artisinal code* if you want to be fancy about it.
