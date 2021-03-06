 x * x Welcome to the CodeView debugger. To start, let's make
 x * x room for some dialog. The command to do this is CONTROL-U.
 x * x The session enters CONTROL-U automatically . . .	     xYOU PRESS SPACEBAR  x 	;"
 y y y y y y y y y y y y y
 x * x The window we enlarged is called the dialog window
 x * x because we enter dialog commands there. The window
 x * x above is called the display window, because the source
 x * x code is displayed in it. CONTROL-U (for up) and CONTROL-D
 x * x (for down) can be used to change the sizes of these
 x * x windows--or even to close either one completely.		 xPRESS SPACEBAR  ;" x

 x * x Before we begin debugging, let's take a brief tour around
 x * x the rest of the CodeView screen and keyboard. As we do,
 x * x note that there are three ways to enter commands:

 x * x     - Press command keys
 x * x     - Select from menus
 x * x     - Enter dialog command lines

 x * x In addition, there are two ways to open and select from
 x * x menus:

 x * x     - Use the mouse
 x * x     - Press command keys

 x * x This session does not use the mouse. All commands are executed
 x * x from the keyboard. See the CODEVIEW.DOC file for information
 x * x on executing commands with the mouse.			 xPRESS SPACEBAR  ;" x

 x * x We'll use each of the command methods as we handle a few
 x * x preliminary chores. Note that the cursor is now in the dialog
 x * x window at the bottom of the screen. During the session we'll
 x * x need the cursor to be in the display window. We can use the F6
 x * x function key to put it there . . .				 xPRESS SPACEBAR  ;" x
 @
 x * x Another task that can make debugging more pleasant is to
 x * x turn off screen swapping or flipping (swapping in this
 x * x case, since we started with the /S option). When swapping is
 x * x on, program execution occurs on a separate screen, causing a
 x * x flicker every time we execute code. We can minimize this
 x * x flicker by turning swapping off when the program is not doing
 x * x any I/O. We'll use the Flip/Swap selection from the Options
 x * x menu to turn swapping off.					 xPRESS SPACEBAR  x ;"

 x * x Look at the row of titles at the top of the screen. Most of
 x * x them are menu titles. You can open a menu by pressing the
 x * x ALT key and the first letter of the menu title. When the menu
 x * x opens, the selections will be listed in a box below the title.
 x * x Press the UP ARROW and DOWN ARROW keys to move the highlight
 x * x to the selection you want. Then press the ENTER key.

 x * x We'll try it now. We press ALT-O to open the Options menu,
 x * x then press the DOWN ARROW key until the highlight is on the
 x * x Flip/Swap selection. Finally we press the ENTER key to make
 x * x the selection . . .						 xPRESS SPACEBAR  x ;"
  y y P y y

 x * x The display window now shows the first few lines of the COUNT.C
 x * x source code. These lines contain preprocessor directives that
 x * x are instructions to the compiler but don't actually correspond
 x * x to program code.

 x * x At this point we're not actually in the program, but at the
 x * x beginning of the C start-up code. The compiler puts this
 x * x code at the beginning of every program. The first step in
 x * x most debugging sessions is to execute through the start-up
 x * x code to the beginning of a program. Program variables aren't
 x * x known to the debugger until you do this. In C programs, the
 x * x start of the program is always the `main' function.

 x * x We'll use a dialog command line to execute to `main'. The
 x * x command is `G' (for Go) and the argument is `main' . . .	 xPRESS SPACEBAR  ;" x

 xG main x

 x * x Before we go further, let's move the separator line down,
 x * x so we can see more code. The command is CONTROL-D . . .	 xPRESS SPACEBAR  ;" x
 y y y
 x * x The source code in the display window now shows the first few
 x * x source lines that correspond to code. The reverse-video line
 x * x (blue on color monitors) marks the current location--the line
 x * x about to be executed. Let's execute a little more code. There
 x * x are lots of ways to execute code, but the simplest is to
 x * x execute one source line at a time. The Trace command does
 x * x this. We can enter `T' (for Trace) as a dialog command . . .	 xPRESS SPACEBAR  ;" x

 xT x

 x * x That first trace executed into `main'. Now the argument
 x * x variables declared for `main' are available and we're ready
 x * x to execute the first line of code. This time let's use the
 x * x F8 key. It has the same effect as the `T' command . . .	 xPRESS SPACEBAR  ;" x
 B
 x * x Note that sometimes several lines of source code are
 x * x executed for one Trace command. This happens because the
 x * x debugger skips over comments, data declarations, and other
 x * x source lines that do not correspond to executable code.

 x * x The next few statements get the name of the file we're
 x * x going to process and use that name to open the file.
 x * x We're not concerned with the details, so let's execute
 x * x to the source line where the program calls the function
 x * x `countwords'. We can go there by pressing the DOWN ARROW
 x * x key until the cursor is on the desired line . . .		 xPRESS SPACEBAR  ;" x
 P y P y P y P y P y P y P y P y P y P y P y P y P y P y P y P y P y
 x * x Then we press the F7 key. F7 is like a `goto' command. It
 x * x executes to the source line containing the cursor . . .	 xPRESS SPACEBAR  ;" x
 A
 x * x Before we go further, let's take a look at some variables.
 x * x First we'll use the PGUP key to scroll back a few screens
 x * x so we can see the arguments to `main'. . .			 xPRESS SPACEBAR  ;" x
 I y I y I y I y
 x * x In Microsoft C programs, the `main' function can have
 x * x the argument `argc'. This variable contains the number
 x * x of arguments passed to the program on the start-up command
 x * x line. When we started the debugger we passed the argument
 x * x COUNT.TXT to the program COUNT. This is equivalent to
 x * x starting COUNT with the following line:

 x * x 	COUNT COUNT.TXT						 xPRESS SPACEBAR  ;" x

 x * x We passed two arguments: the program name is considered the
 x * x first argument, and the file to be processed, `COUNT.TXT',
 x * x is the second. Therefore `argc' should contain the value 2.
 x * x Let's see if it does. We'll select Evaluate from the View menu.
 x * x We press ALT-V, press the DOWN ARROW key to move the highlight
 x * x to Evaluate, and press ENTER. A dialog box will appear asking
 x * x for an expression. We'll type the variable name `argc' and
 x * x press ENTER. Let's try it . . .				 xPRESS SPACEBAR  ;" x
 / P y P y P y P y P y
argc y y

 x * x Sure enough, in the dialog window, the debugger displays the
 x * x expression followed by the value 2.

 x * x In C programs, the variable `argv[1]' shows the first argument
 x * x passed on the command line. In this case, that should be
 x * x `COUNT.TXT'. We'll have to examine `argv[1]' indirectly, since
 x * x it is declared as a pointer. That means that the variable contains
 x * x the address of the argument, not the argument itself.	 xPRESS SPACEBAR  ;" x

 x * x Anytime you examine an expression, you can specify the format
 x * x of the output by adding `printf' type specifiers. Since
 x * x addresses are usually shown in hexadecimal, we'll specify that
 x * x format by typing a comma and the `X' type specifier after
 x * x the variable. This time we'll use the dialog command-line
 x * x version of the command. The command character is a `?' and
 x * x it is followed by an argument consisting of the expression
 x * x being evaluated . . .					 xPRESS SPACEBAR  ;" x

 x? argv[1],X x

 x * x The pointer address is displayed in the dialog window following
 x * x the command. To see the argument, we can use the Dump Bytes
 x * x command to dump memory starting at the address pointed to by
 x * x `argv[1]'. Note that although C expressions can be evaluated
 x * x using either menu selections or dialog commands, memory can only
 x * x be examined using dialog commands.				 xPRESS SPACEBAR  ;" x

 x * x The command syntax is DB (for Dump Bytes) followed by a range
 x * x of memory. A range can be specified by giving the starting
 x * x address as the first argument and the ending address as the
 x * x second. However, in this case we'll use an object range, which
 x * x is specified by giving the starting address `*argv[1]' followed
 x * x by the letter `L' (for length) and the number of objects in the
 x * x range. We'll specify a few extra bytes (16 total) since we're
 x * x not sure how many we need to see . . .			 xPRESS SPACEBAR  ;" x

 xDB *argv[1] L 16 x

 x * x There it is--the first argument. The starting address is
 x * x shown on the left, followed by the bytes in hexadecimal.
 x * x The characters are shown on the right. The string
 x * x `COUNT.TXT' is there, followed by a null and a few extra
 x * x bytes.

 x * x Actually, there's an easier way to look at strings. We'll
 x * x choose Evaluate from the View menu, but when we type the
 x * x expression, we'll append the `s' printf type specifier to
 x * x display the argument as a null-terminated string . . .	 xPRESS SPACEBAR  ;" x
 / P y P y P y P y P y
argv[1],s y y

 x * x Before we go further, let's use the Current Location
 x * x command to put the highlighted current location line
 x * x back in the display window. The command character is
 x * x a period . . .						 xPRESS SPACEBAR  ;" x

 x. x

 x * x We could use the Trace command (T or F8) to trace into the
 x * x function `countwords', but at this point we want an overall
 x * x view of what the program does. We'll use the Program Step
 x * x command to execute the entire `countwords' function. The
 x * x command character is `P' . . .				 xPRESS SPACEBAR  ;" x

 xP x

 x * x We just read in an entire buffer (up to 512 bytes) of data
 x * x and counted the words in it. Let's step a few more times.
 x * x We'll use the F10 key this time . . .			 xPRESS SPACEBAR  ;" x
 D y D y
 x * x One more time . . .						 xPRESS SPACEBAR  ;" x
 D
 x * x Since the last step took us out of the `while' loop, there
 x * x must have been only two buffers of data. The next few
 x * x `printf' statements are pretty clear, so let's run the rest
 x * x of the program. The output should tell us if we have any
 x * x bugs. Since the rest of the program does I/O, we'll have
 x * x to turn screen swapping back on. This makes the output
 x * x appear on the program screen . . .				 xPRESS SPACEBAR  ;" x
  y P y y

 x * x Now we can execute the rest of the program with the Go
 x * x command (F5). A message box will appear when the program
 x * x finishes, and you'll need to press another key to make
 x * x it disappear . . .						 xPRESS SPACEBAR  ;" x
 ?
 x * x The program executed to the end, then returned control to
 x * x the debugger. You probably didn't have time to read the output.
 x * x We'll use the Screen Exchange command (F4 key) to view the
 x * x program screen again. When we do, note the totals counted by
 x * x the program and compare them to the totals we read in the
 x * x COUNT.TXT file. In particular, note the number of characters
 x * x counted. After we press F4, you'll have to press the SPACEBAR
 x * x again to return to the debugging screen . . .		 xPRESS SPACEBAR  ;" x
 >
 x * x In case you don't remember the totals from the COUNT.TXT
 x * x screen, we'll look at them again using the Dump ASCII
 x * x command (DA). During processing, the characters of
 x * x COUNT.TXT were read into an array called `buffer'. The
 x * x last ones read should still be there. Let's look . . .	 xPRESS SPACEBAR  ;" x

 xDA buffer L 300 x

 x * x Ignoring the extra data and the dots representing carriage
 x * x returns and line feeds, we can see that the COUNT.TXT file
 x * x says it contains 630 characters. But our program claimed
 x * x there were more. (The number may vary, depending on what's
 x * x in memory.) Some of the other totals don't match either,
 x * x but let's worry about the characters first.			 xPRESS SPACEBAR  ;" x

 x * x A good rule for debugging is that most bugs occur at the
 x * x boundaries. In this case, the miscounting of characters
 x * x probably happens when the program reads in either the first
 x * x characters of a buffer, or when it reads the last characters.
 x * x There are other possibilities, such as incorrectly defining
 x * x a character, but let's start by checking the boundaries.	 xPRESS SPACEBAR  ;" x

 x * x First we turn screen swapping off again . . .		 xPRESS SPACEBAR  ;" x
  y P y y

 x * x Next we restart the program. We press ALT-R to select the
 x * x Run menu, then move the highlight down to Restart . . .	 xPRESS SPACEBAR  ;" x
  y P y P y

 x * x The current location line disappears, indicating that we
 x * x are at the beginning of the program before executing any
 x * x code. Rather than go through the preliminary part of the
 x * x `main' function again, let's assume for the moment that
 x * x the program correctly initializes and reads in a buffer
 x * x full of characters. We'll go directly to the function
 x * x `countwords', which processes the characters in the
 x * x buffer . . .							 xPRESS SPACEBAR  ;" x

 xG countwords x

 x * x The current location line now rests on the first line of
 x * x code in the `countwords' function. Normally when you enter
 x * x a function in this manner, you'll want to trace the first
 x * x line of code so that internal variables will be available.
 x * x For example, we'll try to look at the variable `inword'
 x * x using the Evaluate selection from the View menu. We'll see
 x * x an error message . . .					 xPRESS SPACEBAR  ;" x
 / P y P y P y P y P y
inword y y

 x * x The variable is not known to the debugger. Now we'll trace
 x * x through a line of code using the F8 key . . .		 xPRESS SPACEBAR  ;" x
 B y
 x * x Then we'll look at the variable again . . .			 xPRESS SPACEBAR  ;" x
 / y P y P y P y P y P y
inword y y

 x * x Now the variable is known and has its initialized value,
 x * x 0 for FALSE. The reason variables aren't known at the start
 x * x of a function is that the function prolog hasn't been executed.
 x * x After the first Trace or Program Step command, all local
 x * x variables are available.

 x * x Let's trace through a few more lines of code. First we update
 x * x the number of bytes by adding in the number read into the
 x * x buffer . . .							 xPRESS SPACEBAR  ;" x
 B
 x * x Then we start the `for' loop that will analyze each byte in
 x * x the buffer . . .						 xPRESS SPACEBAR  ;" x
 B
 x * x Next we set `code' to the first byte in the array. . .	 xPRESS SPACEBAR  ;" x
 B
 x * x Now let's set up a few watch statements so we can see
 x * x what's happening as it happens. There are three watch
 x * x statement commands:

 x * x     - Watch
 x * x     - Watchpoint
 x * x     - Tracepoint

 x * x When you use any of them, a watch window is opened and
 x * x the value specified by the statement is displayed in it.	 xPRESS SPACEBAR  ;" x

 x * x The Watch and Tracepoint commands have two forms:

 x * x     - Memory
 x * x     - Expression

 x * x The memory form is followed by a letter indicating the size
 x * x to be watched--for example, WA (Watch ASCII), WI (Watch
 x * x Integers), or WS (Watch Short Real). The expression form
 x * x is followed by a question mark (W?). The question mark
 x * x always indicates a C expression.				 xPRESS SPACEBAR  ;" x

 x * x You can specify the expression form of watch-statement
 x * x commands using menus, but the memory form of these
 x * x commands can only be entered with dialog command lines.

 x * x The first watch-statement command we'll use is the memory
 x * x version of the Watch (W) command. We'll specify Byte (B)
 x * x as the size of memory objects we want to watch. We want to
 x * x start at the beginning of the `buffer' array and display 16
 x * x bytes . . .							 xPRESS SPACEBAR  ;" x

 xWB buffer L 16 x

 x * x The command creates a watch window at the top of the
 x * x screen and displays the specified memory range.

 x * x Next we'll use the expression form of the Watch command
 x * x to watch the variable `code'. We'll do this with a dialog
 x * x command, and we'll append the `c' type specifier (from
 x * x `printf') to display the value as a character . . .		 xPRESS SPACEBAR  ;" x

 xW? code,c x

 x * x The variable `code' appears in the window, but it seems
 x * x to have no value. A look at the characters in the buffer
 x * x tells us why. The first two characters in the buffer
 x * x are 20 hex--the space character. It's there. We just
 x * x don't see it.						 xPRESS SPACEBAR  ;" x

 x * x Finally we set a tracepoint on the variable `characters',
 x * x which will contain the number of characters counted.
 x * x A tracepoint expression describes a memory location that
 x * x will be checked for changes. When the value at that
 x * x location changes, program execution stops. The value will
 x * x change and the break will be taken every time we count a
 x * x new character. This time we'll enter the command by
 x * x selecting Tracepoint from the Watch menu . . .		 xPRESS SPACEBAR  ;" x
  y P y P y P y
characters y y

 x * x Note that tracepoint expressions are highlighted in the
 x * x watch window to distinguish them from watch expressions.
 x * x Watchpoint expressions (not used in this session) are
 x * x also highlighted.						 xPRESS SPACEBAR  ;" x

 x * x So far we haven't counted any characters, so the value
 x * x of `characters' is 0. At this point, we don't care how
 x * x the `countwords' function does its job. We just want to
 x * x see if it comes up with the right amounts. So instead of
 x * x tracing through step by step, we'll use the Go command (F5)
 x * x to execute until we count a new character . . .		 xPRESS SPACEBAR  ;" x
 ?
 x * x The break occurs as soon as the value of `characters'
 x * x changes from 0 to 1. Note that the value of `code' is C,
 x * x the first letter in the buffer. Looking at the display, you
 x * x can see that we skipped over the two spaces and started
 x * x counting at C. Let's count a few more. We press F5 (for
 x * x Go) . . .							 xPRESS SPACEBAR  ;" x
 ?
 x * x `O' is the second character . . .				 xPRESS SPACEBAR  ;" x
 ?
 x * x `U' is the third . . .					 xPRESS SPACEBAR  ;" x
 ?
 x * x `N' is the fourth . . .					 xPRESS SPACEBAR  ;" x
 ?
 x * x And `T' is the fifth. We can see that the next byte
 x * x is a space. Will it be counted? . . .			 xPRESS SPACEBAR  ;" x
 ?
 x * x No, the program skips to `i'. Just what we wanted. We
 x * x could continue like this, but if the first few letters
 x * x are right, the rest will probably be OK too.

 x * x Now let's check the end of the buffer. To do this, we'll
 x * x start over from the beginning, but first we'll clear the
 x * x watch window using the Delete Watch command. The command
 x * x character is `Y', a mnemonic for Yank. We supply an
 x * x asterisk as a wild-card argument representing all watch
 x * x statements . . .						 xPRESS SPACEBAR  ;" x

 xY * x

 x * x Now we'll restart using the Restart selection from the
 x * x Run menu . . .						 xPRESS SPACEBAR  ;" x
  y P y P y

 x * x Since the buffer is 512 bytes long, we need to do about 511
 x * x iterations of the counting loop. The best way to do this
 x * x is to set a breakpoint with a pass count of 511. In other
 x * x words, we'll execute through the breakpoint 511 times before
 x * x stopping. Let's scroll up to find a good location for setting
 x * x the breakpoint. We press the PGUP and UP ARROW keys . . .	 xPRESS SPACEBAR  ;" x
 I y H y H y H y H y H y H y H y H y H y
 x * x Line 87--just after a new character is read--looks like a
 x * x good place to set the breakpoint. The command characters are
 x * x `BP'. We supply `.87' as the first argument. The dot indicates
 x * x that we want line 87, not address 87. The second argument is
 x * x the pass count, 511 . . .					 xPRESS SPACEBAR  ;" x

 xBP .87 511 x

 x * x As soon as we enter the command, line 87 becomes highlighted
 x * x to indicate that it has a breakpoint. Now all we have to do
 x * x is Go (F5). This could take a few seconds, since breakpoints
 x * x slow program execution . . .					 xPRESS SPACEBAR  ;" x
 ?
 x * x We're on the breakpoint line. Now let's put some new watch
 x * x statements in the watch window. We'll watch `count' . . .	 xPRESS SPACEBAR  ;" x
  y P y
count y

 x * x Sure enough, the value of `count' indicates we've finished
 x * x the 510th iteration, about to start the 511th.

 x * x We'll also watch memory at the end of the buffer. We have
 x * x to use the dialog version of the command to watch memory.
 x * x We'll start the memory display a few bytes before the ones
 x * x we want to see . . .						 xPRESS SPACEBAR  ;" x

 xWB buffer[499] L 16 x

 x * x There are the last few bytes of the buffer, followed
 x * x by whatever happened to be in the memory just beyond
 x * x the array. Now let's watch `code'--in hex notation this
 x * x time--and `characters'. . .					 xPRESS SPACEBAR  ;" x
  y P y
code,X y

  y P y
characters y

 x * x The display window is getting rather small, so let's open
 x * x it a bit. We press CONTROL-D several times . . .		 xPRESS SPACEBAR  ;" x
 y y
 x * x We're at the next to the last character of the buffer:
 x * x ASCII 20, the space character. The character count is 412.
 x * x Let's execute to the breakpoint again (F5) . . .		 xPRESS SPACEBAR  ;" x
 ?
 x * x Now we're at the last character, ASCII 73 (an `s'). The
 x * x space wasn't counted as a character, so the character total
 x * x is unchanged. When we execute again, a new buffer should be
 x * x loaded and we'll be ready to start counting from the
 x * x beginning . . .						 xPRESS SPACEBAR  ;" x
 ?
 x * x The `s' was counted, bringing the character total to 413.
 x * x Now we're about to count the next character.

 x * x Wait a minute!  We're not starting a new buffer. We're
 x * x trying to count the first byte beyond the buffer. Something
 x * x is wrong here, and by now you probably see what it is.
 x * x Look at the `for' statement in line 85. If we start at
 x * x 0 and go to 512, we've counted 513 bytes.			 xPRESS SPACEBAR  ;" x

 x * x The following source-code statement

 x * x 	count <= numread

 x * x should read

 x * x 	count < numread						 xPRESS SPACEBAR  ;" x

 x * x This would prevent reading beyond the end of the buffer.
 x * x However, since the extra byte will have a random value,
 x * x it may not be counted as a character. In other words,
 x * x this bug may not be the one causing the problem. To find
 x * x out for sure, let's have a look at the second buffer.
 x * x First we Go (F5) to the next breakpoint . . .		 xPRESS SPACEBAR  ;" x
 ?
 x * x The value of `count' is back to 0, indicating we're at the
 x * x start of the second buffer. Let's set a breakpoint one
 x * x character before the end of the buffer. We can do this by
 x * x specifying the breakpoint pass count as `numread-1'.
 x * x Remember, `numread' is a variable containing the number of
 x * x bytes read into the buffer . . .				 xPRESS SPACEBAR  ;" x

 xBP .87 numread-1 x

 x * x Now we Go (F6) to the breakpoint. This may take a few
 x * x seconds . . .						 xPRESS SPACEBAR  ;" x
 ?
 x * x Let's remove the old watch-memory statement and put in
 x * x a new one showing our current location near the end of
 x * x the buffer . . .						 xPRESS SPACEBAR  ;" x

 xY 1 x
 xWB buffer[272] L 16 x

 x * x Currently, we're at the end-of-file marker (ASCII 1A).
 x * x When we execute again, we'll count the next character,
 x * x which is `garbage' left over from the first buffer we
 x * x read. Our total will be off by one.

 x * x Rather than watch the error occur, let's trick the
 x * x program. We'll increment `count' so the program will
 x * x think it is finished. We'll do that by evaluating the
 x * x C expression `++count'. Note that `count' is now 283 . . .	 xPRESS SPACEBAR  ;" x
 / y P y P y P y P y P y
++count y y

 x * x Now check the value of `count'. Evaluating C expressions
 x * x to change the value of variables is a useful technique.
 x * x You can set variables or even execute functions, but
 x * x watch out for the side effects.

 x * x Now we turn screen swapping back on . . .			 xPRESS SPACEBAR  ;" x
  y P y y

 x * x Then we can Go again (F5) to execute the rest of the
 x * x program. When it finishes, you'll have to press the
 x * x SPACEBAR to make the message box disappear . . .		 xPRESS SPACEBAR  ;" x
 ?
 x * x Let's check the output again with F4. Don't forget to press
 x * x the SPACEBAR to return to the debugging screen . . .		 xPRESS SPACEBAR  ;" x
 >
 x * x Skipping that last loop made most of the totals, not just
 x * x the character total, come out right. All that's left to do
 x * x is modify the incorrect `for' statement, recompile, and
 x * x relink.

 x * x That wraps up our part of the session, but we'll restart the
 x * x program and leave you in the debugger to experiment.		 xPRESS SPACEBAR  ;" x
  y P y P y

 x * x There are two other commands you may need. The first is Help.
 x * x You can open the on-line help with the F1 key, or with the
 x * x Help selection from the View menu. The final command you'll
 x * x need is Quit. You can either enter `Q' or select Quit from
 x * x the File menu.

 x * x Good luck!

