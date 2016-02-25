<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
  </head>
   <jsp:include page="Header.jsp"></jsp:include>
  <body>
  <table>
  <tr>
   <td><h2>Java (software platform)</h2> 
   </td></tr>
  
  <tr><td>
   <font size="4">
   Java is a   <hai> <a href="./Planguage.jsp">programming language </a> </hai>originally developed by <hai><a href="./JamesGosling.jsp">James Gosling at Sun Microsystems </a></hai>(which is now a subsidiary of Oracle Corporation) and released in 1995 as a core component of Sun Microsystems' Java platform. The language derives much of its syntax from  <hai><a href="./C.jsp"> C </a> </hai>and  <hai><a href="./Cpp.jsp"> C++</a> </hai> but has a simpler object model and fewer low-level facilities. Java applications are typically compiled to bytecode (class file) that can run on any <hai> <a href="./JVM.jsp">Java Virtual Machine (JVM) </a> </hai>regardless of computer architecture. Java is a general-purpose, concurrent, class-based,
    <hai><a href="./Oops.jsp"> object-oriented language</a> </hai> that is specifically designed to have as few implementation dependencies as possible. It is intended to let application developers "write once, run anywhere." Java is currently one of the most popular programming languages in use, particularly for <hai><a href="./Clientserver.jsp"> client-server web applications</a> </hai>.
</font>
</td></tr>
<tr><td>
<b>Versions</b></td></tr>
<tr><td>
Main article: Java version history</td>
</tr>
<tr><td>Major release versions of Java, along with their release dates:</td></tr>
<tr><td>JDK 1.0 (January 23, 1996)</td></tr>
<tr><td>JDK 1.1 (February 19, 1997)</td></tr>
<tr><td>J2SE 1.2 (December 8, 1998)</td></tr>
<tr><td>J2SE 1.3 (May 8, 2000)</td></tr>
<tr><td>J2SE 1.4 (February 6, 2002)</td></tr>
<tr><td>J2SE 5.0 (September 30, 2004)</td></tr>
<tr><td>Java SE 6 (December 11, 2006)</td></tr>
<tr><td> Java SE 7 (July 28, 2011)</td></tr>

  
  <tr>
   <td><h2>Java Virtual Machine</h2> 
   </td></tr>
    <tr>
   <td>
   
The heart of the Java platform is the concept of a <hai> <a href="./JVM.jsp">Java Virtual Machine (JVM) </a> </hai> that executes Java byte code programs. This byte code is the same no matter what hardware or operating system the program is running under. There is a JIT(Just In Time) compiler within the <hai> <a href="./JVM.jsp">Java Virtual Machine (JVM) </a> </hai>, or JVM. The JIT compiler translates the Java bytecode into native processor instructions at run-time and caches the native code in memory during execution.

The use of bytecode as an intermediate  <hai> <a href="./Planguage.jsp">programming language </a> </hai> permits Java programs to run on any platform that has a virtual machine available. The use of a JIT compiler means that Java applications, after a short delay during loading and once they have "warmed up" by being all or mostly JIT-compiled, tend to run about as fast as native programs.[citation needed] Since <hai><a href="./jre.jsp">Java Runtime Environment (JRE)</a> </hai> version 1.2, Sun's JVM implementation has included a just-in-time compiler instead of an interpreter.

Although Java programs are cross-platform or platform independent, the code of the <hai> <a href="./JVM.jsp">Java Virtual Machine (JVM) </a> </hai>  that execute these <hai> <a href="./Program.jsp">programs</a></hai> is not. Every supported operating platform has its own <hai> <a href="./JVM.jsp">Java Virtual Machine (JVM) </a> </hai>.
   
   </td>
   
   </tr>
  
  
  
  
  <tr>
   <td><h2>Instruction set architecture</h2> 
   </td></tr>
  <tr>
   <td>
    An instruction set, or instruction set architecture (ISA), is the part of the computer architecture related to programming, including the native data types, instructions, registers, addressing modes, memory architecture, interrupt and <hai><a href="./Exception.jsp">exception handling</a> </hai>, and external I/O.
    An ISA includes a specification of the set of opcodes (machine language), and the native commands implemented by a particular processor.

     Instruction set architecture is distinguished from the micro architecture, which is the set of processor design techniques used to implement the instruction set. <hai><a href="./Computer.jsp"> computer</a> </hai> with different microarchitectures can share a common instruction set. 
     For example, the Intel Pentium and the AMD Athlon implement nearly identical versions of the x86 instruction set, but have radically different internal designs.   
     In computer science, <hai><a href="./Functional.jsp"> functional programming</a> </hai> is a programming paradigm that treats computation
     as the evaluation of mathematical functions and avoids state and mutable data.
     It emphasizes the application of functions, in contrast to the imperative programming style, 
     which emphasizes changes in state. <hai><a href="./Functional.jsp"> functional programming</a> </hai> has its roots in lambda calculus, 
     a formal system developed in the 1930s to investigate function definition, function application, 
     and recursion.
   
   </td>
   
   </tr>
   
   </table>
   
   
   <table>
   <tr>
   <td><h2>History</h2>
   </td></tr>
   <tr>
   <td>
   
                The Java platform and language began as an internal project at Sun Microsystems in December 1990, providing an alternative to the C++/C programming languages. Engineer Patrick Naughton had become increasingly frustrated with the state of Sun's C++ and C application programming interfaces (APIs) and tools. While considering moving to NeXT, Naughton was offered a chance to work on new technology and thus the Stealth Project was started.

The Stealth Project was soon renamed to the Green Project with <hai><a href="./JamesGosling.jsp">James Gosling at Sun Microsystems </a></hai> and Mike Sheridan joining Naughton. Together with other engineers, they began work in a small office on Sand Hill Road in Menlo Park, California. They were attempting to develop a new technology for programming next generation smart appliances, which Sun expected to be a major new opportunity.

The team originally considered using C++, but it was rejected for several reasons. Because they were developing an embedded system with limited resources, they decided that C++ needed too much memory and that its complexity led to developer errors. The language's lack of garbage collection meant that programmers had to manually manage system memory, a challenging and error-prone task. The team was also troubled by the <hai><a href="./Language.jsp">language</a></hai> lack of portable facilities for security, distributed programming, and threading. Finally, they wanted a platform that could be easily ported to all types of devices.

Bill Joy had envisioned a new  <hai> <a href="./Planguage.jsp">programming language </a> </hai> combining Mesa and C. In a paper called Further, he proposed to Sun that its engineers should produce an <hai><a href="./Oops.jsp"> object-oriented language</a> </hai> environment based on C++. Initially, Gosling attempted to modify and extend C++ (that he referred to as "C++ ++ --") but soon abandoned that in favor of creating a new <hai><a href="./Language.jsp">language</a></hai>, which he called Oak, after the tree that stood just outside his office.

By the summer of 1992, they were able to demonstrate portions of the new platform including the Green OS, the Oak <hai><a href="./Language.jsp">language</a></hai>, the libraries, and the hardware. Their first attempt, demonstrated on September 3, 1992, focused on building a personal digital assistant (PDA) device named Star7 that had a graphical interface and a smart agent called "Duke" to assist the user. In November of that year, the Green Project was spun off to become firstperson, a wholly owned subsidiary of Sun Microsystems, and the team relocated to Palo Alto, California. 
The first person team was interested in building highly interactive devices, and when Time Warner issued a request for proposal (RFP) for a set-top box, firstperson changed their target and responded with a proposal for a set-top box platform. However, the cable industry felt that their platform gave too much control to the user and firstperson lost their bid to SGI. An additional deal with The 3DO Company for a set-top box also failed to materialize. Unable to generate interest within the TV industry, the company was rolled back into Sun.
   </td>
   </tr>
   </table>
   
   
   <table>
   <tr>
   <td><h2>Information technology</h2>
   </td></tr>
   <tr>
   <td>
     Information technology (IT) is the acquisition, processing, storage and dissemination of vocal, pictorial, textual and numerical information by a microelectronics-based combination of computing and telecommunications.
     The term in its modern sense first appeared in a 1958 article published in the Harvard Business Review, in which authors Leavitt and Whisler commented that "the new technology does not yet have a single established name.
     We shall call it information technology (IT).". Some of the modern and emerging fields of Information technology are next generation web technologies, bioinformatics, cloud computing, global information systems, 
     large scale knowledge bases, etc.  
   </td>
   </tr>
   </table>
   
   <table>
   <tr>
   <td><h2>Java meets the Internet</h2>
   </td></tr>
   <tr>
   <td>
   In June and July 1994, after three days of brainstorming with John Gage, the Director of Science for Sun, <hai><a href="./JamesGosling.jsp">James Gosling at Sun Microsystems </a></hai>, Joy, Naughton, Wayne Rosing, and Eric Schmidt, the team re-targeted the platform for the World Wide Web. They felt that with the advent of graphical web browsers like Mosaic, the Internet was on its way to evolving into the same highly interactive medium that they had envisioned for cable TV. As a prototype, Naughton wrote a small browser, WebRunner (named after the movie Blade Runner), later renamed HotJava.

             That year, the  <hai> <a href="./Planguage.jsp">programming language </a> </hai> was renamed Java after a trademark search revealed that Oak was used by Oak Technology.[13] Although Java 1.0a was available for download in 1994, the first public release of Java was 1.0a2 with the HotJava browser on May 23, 1995, announced by Gage at the SunWorld conference. His announcement was accompanied by a surprise announcement by Marc Andreessen, Executive Vice President of Netscape Communications Corporation, that Netscape browsers would be including Java support. On January 9, 1996, the JavaSoft group was formed by Sun Microsystems to develop the technology
   
   </td>
   
   
   </tr>
   
   
   </table>
   
   <table>
  
   
   <tr><td>
   
   A Java Virtual Machine is a piece of software that is implemented on non-virtual hardware and on standard operating systems. A <hai> <a href="./JVM.jsp">Java Virtual Machine (JVM) </a> </hai> provides an environment in which Java bytecode can be executed, enabling such features as automated  <hai><a href="./Exception.jsp">exception handling</a> </hai>, which provides "root-cause" debugging information for every software error (exception), independent of the source code. A <hai> <a href="./JVM.jsp">Java Virtual Machine (JVM) </a> </hai> is distributed along with a set of standard class libraries that implement the Java application programming interface (API). Appropriate APIs bundled together form the  <hai><a href="./jre.jsp">Java Runtime Environment (JRE)</a> </hai>.
   </td></tr>
   
   
   
   </table>
   
    <table>
    <tr>
    <td>
    <b>A programming language</b> is an artificial <hai><a href="./Language.jsp">language</a></hai>designed to communicate <hai> <a href="./instruction.jsp"> instructions</a></hai> to a machine, 
    particularly a <hai><a href="./Computer.jsp"><br> computer</a> </hai>. Programming languages can be used to create<hai> <a href="./Program.jsp">programs</a></hai> that control the behavior of a machine and/or to express  <hai><a href="./Algorithm.jsp">algorithms</a> </hai> precisely.
    
    </td>
    </tr>
    <tr><td>
    
    The earliest programming languages predate the invention of the computer, and were used to direct the behavior of machines such as Jacquard looms and player pianos. Thousands of different programming languages have been created, mainly in the computer field, with many more being created every year. Most programming languages describe computation in an imperative style, i.e., as a sequence of commands, although some languages, such as those that support <hai><a href="./Functional.jsp"> functional programming</a> </hai> or  <hai><a href="./LogicProgram.jsp">logical programming</a> </hai>, use alternative forms of description.
    
    </td></tr>
    <tr><td>
    A programming language is usually split into the two components of syntax (form) and semantics (meaning). Some languages are defined by a specification document (for example, the C programming language is specified by an ISO Standard), while other languages, such as Perl, have a dominant implementation that is used as a reference.
    
    </td></tr>
    
    
   
   </table>
   <br/>
   <br/>
   <a href="./GetLinksAction?page=search1.jsp">Check the No of Citations</a>
   
   <br/>
  
		  <jsp:include page="./Footer.jsp"></jsp:include>
  </body>
</html>
