Þ    7      Ô                      ¤  i   »     %     -  Ó   ½       Ä      Ù   e     ?  ë   Ò     ¾  â   Î  
   ±	  ,   ¼	  %  é	       :        Q     h  j   m  Q   Ø  3   *  C   ^  Z   ¢  B   ý  	   @  F   J       :   ¡  	   Ü  (   æ       4   ,  k   a  ¤   Í  Ì   r  #   ?     c      s       @   ¨     é    ü  A     Ý   ]  ò   ;  í   .  Á     =  Þ  2        O  &   k  \     C  ï  (   3  (   \  w        ý  Ç       Í  #   Ô  Ó   ø  Ý   Ì  ¢   ª  B  M           
      9   ¤     Þ      h"  A   o"     ±"     Ë"  ¡   Ð"  i   r#  /   Ü#  P   $  l   ]$  \   Ê$  	   '%  P   1%     %  C   %     Í%  >   Þ%     &  6   6&  e   m&  ½   Ó&  Ù   '     k(     (  (   (     ¾(  K   Ü(     ()  )  H)  C   r*    ¶*    ¹+    É,  Ð   Ð-    ¡.  2   Á/     ô/  &   0  \   70   **Use Python 2 if...** **Use Python 3 if...** All versions of the Python language are implemented in C because CPython is the reference implementation. CPython Check out `Can I Use Python 3? <https://caniusepython3.com/>`_ to see if any software you're depending on will block your adoption of Python 3. Given such, only use Python 2 if you have a strong reason to, such as a Python 2 exclusive library which has no adequate Python 3 ready alternative, or you (like me) absolutely love and are inspired by Python 2. I'll be blunt: If you are looking to increase performance of your Python code, it's worth giving PyPy a try. On a suite of benchmarks, it's currently `over 5 times faster than CPython <http://speed.pypy.org/>`_. If you are writing open-source Python code and want to reach the widest possible audience, targeting CPython is best. To use packages which rely on C extensions to function, CPython is your only implementation option. If you need to interface with an existing Java codebase or have other reasons to need to write Python code for the JVM, Jython is the best choice. If you're choosing a Python interpreter to use, and aren't opinionated, then I recommend you use the newest Python 3.x, since every version brings new and improved standard library modules, security and bug fixes. Progress is progress. Implementations In conjunction with Mono, PythonNet enables native Python installations on non-Windows operating systems, such as OS X and Linux, to operate within the .NET framework.  It can be run in addition to IronPython without conflict. IronPython IronPython supports Python 2.7. [#iron_ver]_ It is possible to `write code that works on Python 2.6, 2.7, and 3.3 <http://lucumr.pocoo.org/2013/5/21/porting-to-python-3-redux/>`_. This ranges from trivial to hard depending upon the kind of software you are writing; if you're a beginner there are far more important things to worry about. Jython Jython currently supports up to Python 2.5. [#jython_ver]_ Picking an Interpreter PyPy PyPy aims for maximum compatibility with the reference CPython implementation while improving performance. PyPy supports Python 2.7. PyPy3 [#pypy_ver]_, released in beta, targets Python 3. Python 2.7 has been the standard for a *long* time. Python 2.7 will receive necessary security updates for a few years. Python 3 introduced major changes to the language, which many developers are unhappy with. Python 3 is continually evolving, like Python 2 did in years past. PythonNet PythonNet supports from Python 2.3 up to Python 2.7. [#pythonnet_ver]_ Recommendations So, you can now see why this is not such an easy decision. So.... 3? Software that you depend on requires it. The State of Python (2 vs 3) The basic gist of the state of things is as follows: The stability requirements of your software would be improved by a language and runtime that never changes. When choosing a Python interpreter, one looming question is always present: "Should I choose Python 2 or Python 3"? The answer is not as obvious as one might think. When people speak of *Python* they often mean not just the language but also the CPython implementation. *Python* is actually a specification for a language that can be implemented in many different ways. You are indifferent towards 2 vs 3. You don't care. You don't know which one to use. You embrace change. You love Python 2 and are saddened by the future being Python 3. You love Python 3. `CPython <http://www.python.org>`_ is the reference implementation of Python, written in C. It compiles Python code to intermediate bytecode which is then interpreted by a virtual machine. CPython provides the highest level of compatibility with Python packages and C extension modules. `Further Reading <http://wiki.python.org/moin/Python2orPython3>`_ `IronPython <http://ironpython.net/>`_  is an implementation of Python for the .NET framework. It can use both Python and .NET framework libraries, and can also expose Python code to other languages in the .NET framework. `Jython <http://www.jython.org/>`_ is a Python implementation that compiles Python code to Java bytecode which is then executed by the JVM (Java Virtual Machine). Additionally, it is able to import and use any Java class like a Python module. `PyPy <http://pypy.org/>`_ is a Python interpreter implemented in a restricted statically-typed subset of the Python language called RPython. The interpreter features a just-in-time compiler and supports multiple back-ends (C, CLI, JVM). `Python Tools for Visual Studio <http://ironpython.net/tools/>`_ integrates IronPython directly into the Visual Studio development environment, making it an ideal choice for Windows developers. `Python for .NET <http://pythonnet.github.io/>`_ is a package which provides near seamless integration of a natively installed Python installation with the .NET Common Language Runtime (CLR).  This is the inverse approach to that taken by IronPython (see above), to which it is more complementary than competing with. http://ironpython.codeplex.com/releases/view/81726 http://pypy.org/compat.html http://pythonnet.github.io/readme.html http://wiki.python.org/jython/JythonFaq/GeneralInfo#Is_Jython_the_same_language_as_Python.3F Project-Id-Version: pythonguide 0.0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-11-30 22:28
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: YoungSeon.Ahn <lovemewithoutall@gmail.com>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 **ì´ë° ê²½ì°ìë íì´ì¬2ë¥¼...** **ì´ë° ê²½ì°ìë íì´ì¬3ë¥¼...** íì´ì  ì¸ì´ì ëª¨ë  ë²ì ¼ì Cì¸ì´ë¡ êµ¬íëë¤. CPythonì´ íì´ì¬ êµ¬íì ë¦¬í¼ë°ì¤ë¼ ê·¸ë ë¤. CPython `Can I Use Python 3? <https://caniusepython3.com/>`_ ìì ë¹ì ì´ ì¬ì© ì¤ì¸ìíí¸ì¨ì´ìì íì´ì¬3ë¥¼ ì¬ì©í  ì ìê² ë§ëë ì¥ì ë¬¼ì´ ìì§ ììê° íì¸í´ë³´ìë¼. íì§ë§ íì´ì¬3ììë ì ì í ì¸ ì ìë ë¤ë¥¸ ëìì´ ìê³  ì¤ë¡ì§ íì´ì¬2ììë§ ëìê°ëë¼ì´ë¸ë¬ë¦¬ë¼ë ê° ìëë©´ íì´ì¬ 2ë¥¼ ëë¬´ëë ì¬ëíë¤ë©´(ëì²ë¼) íì´ì¬2ë¥¼ ì¬ì©í  ìë°ì ìì ê²ì´ë¤. ë¨ëì§ìì ì¼ë¡ ë§íê² ë¤. ë§ì½ ë¹ì ì íì´ì¬ ì½ëì ì±ë¥ì í¥ììí¤ê³ ì íë¤ë©´, PyPyì í ë² ì¨ë³¼ë§í ê°ì¹ê° ìë¤. ë²¤ì¹ë§í¬ìì PyPyë CPythonë³´ë¤ `5ë°°ë ë¹¨ëë¤ <http://speed.pypy.org/>`_. ì¤í ìì¤ íì´ì¬ ì½ëë¥¼ ìì± ì¤ì´ê³  í­ëì ì¬ì©ì ê¸°ë°ì ê°ê³  ì¶ë¤ë©´ CPythonì´ ìµê³ ë¤.Cì¸ì´ íì¥ ê¸°ë¥ì ì°ë í¨í¤ì§ë¥¼ ì¬ì©íë ¤ë©´ CPythonì´ ì ì¼í êµ¬í ë°©ë²ì´ë¤. ìë° ì½ëë² ì´ì¤ë¥¼ ëì´ë¤ ì¸ íìê° ìê±°ë íì´ì¬ ì½ëë¥¼ JVMìì ëë¦´ íìê° ìë¤ë©´, Jythonì ìµê³ ì ì íì´ ë  ê²ì´ë¤. íì´ì¬ ì¸í°íë¦¬í°ë¥¼ ê³ ë¥´ë ì¤ì´ë¼ë©´, ê·¸ë¦¬ê³  ë°ë¡ ìê°ì´ ìëê² ìëë¼ë©´,ìµì  ë²ì ¼ì íì´ì¬3.x ì¬ì©ì ì¶ì²íë¤. ëª¨ë  ë²ì ¼ì´ ìë¡­ê³  í¥ìë íì¤ ë¼ì´ë¸ë¬ë¦¬ ëª¨ëê³¼ë³´ì, ê·¸ë¦¬ê³  ë²ê·¸ ìì ì ì ê³µíê³  ìê¸° ëë¬¸ì´ë¤. ê°ì ì´ ì§í ì¤ì´ë¤. êµ¬í Monoì í¨ê» ì¬ì©íë©´ PythonNetì OS Xì ë¦¬ëì¤ì²ë¼ ë¹Windows ì´ìì²´ì ì ì¤ì¹ë ìì  ë²ì ¼ì íì´ì¬ì ë·ë· íë ììí¬ ììì ìíë  ì ìëë¡ í´ì¤ë¤. IronPythonê³¼ ê°ì´ ì¬ì©í´ë ì¶©ëíì§ ìëë¤. IronPython IronPythonì íì´ì¬ 2.7ì ì§ìíë¤. [#iron_ver]_ íì´ì¬ 2.6, 2.7, 3.3ìì ëª¨ë ëìê°ë ì½ëë¥¼ ìì±íë ê²ë  `ê°ë¥íë¤ <http://lucumr.pocoo.org/2013/5/21/porting-to-python-3-redux/>`_. ì´ ê°ì´ëë ì¬ìí ê²ë¤ë¡ë¶í° ììí´ ë¹ì ì´ ìì±íê³  ìë ìíí¸ì¨ì´ì ì¢ë¥ì ë°ë¥¸ ì´ë ¤ì´ ë¬¸ì ê¹ì§ ë¤ë£¨ê³  ìë¤. ì´ë³´ìë¼ë©´ ì ê²½ì¨ì¼í  ëë¨í ì¤ìí ì¬í­ë¤ë ìë¤. Jython Jythonì íì¬ íì´ì¬ 2.5ê¹ì§ ì§ìíë¤. [#jython_ver]_ ì¸í°íë¦¬í° ê³ ë¥´ê¸° PyPy PyPyì ëª©íë íì´ì¬ì ë¦¬í¼ë°ì¤ êµ¬í ë°©ë²ì¸ CPythonê³¼ ìµëíì í¸íì±ì ì ì§íë ëìì ê·¸ ì±ë¥ì í¥ììí¤ë ê²ì´ë¤. PyPyë íì´ì¬2.7ì ì§ìíë¤. ë² íë¡ ëì¨ PyPy3 [#pypy_ver]_,ë íì´ì¬3ë¥¼ ì§ìíë¤. íì´ì¬2.7ì´ *ì¤ë«ëì* íì¤ì´ìë¤. íì´ì¬2.7ì í¥í ëªëì íì ë³´ì ìë°ì´í¸ë¥¼ ë°ì ê²ì´ë¤. íì´ì¬3ì ììë ìë¹í ë³í ëë¬¸ì íì´ì¬3ë¥¼ ì¢ìíì§ ìë ê°ë°ìë¤ì´ ë§ë¤. íì´ì¬3ë íì´ì¬2ê° ì§ë ëªëê° ê·¸ë¬ë ê²ì²ë¼ ê³ì ì§ííê³  ìë¤. PythonNet PythonNetì íì´ì¬ 2.3ë¶í° 2.7ë²ì ¼ê¹ì§ ì§ìíë¤. [#pythonnet_ver]_ ì¶ì² ì´ì  ì ì´ ë¬¸ì ê° ì½ì§ ììì§ ì ì ìì ê²ì´ë¤. ê·¸ë¬ë©´.... 3? ì¬ì©íë ìíí¸ì¨ì´ê° íì´ì¬2ë¥¼ ì¬ì©íë¤ë©´. íì´ì¬ íí©(2 vs 3) ì´ ë¬¸ì ì ê¸°ë³¸ì ì¸ ìì§ë ë¤ìê³¼ ê°ë¤. ì ë ë³íì§ ìë ì¸ì´ì ë°íìì¼ë¡ ìíí¸ì¨ì´ì ìì ì±ì í¥ììí¤ê² ë¤. íì´ì¬ ì¸í°íë¦¬í°ë¥¼ ê³ ë¥¼ ëë©´ í­ì íê°ì§ ë¬¸ì ê° ë ì¤ë¥¸ë¤."íì´ì¬2ë¥¼ ì¨ì¼í ê¹ ìëë©´ íì´ì¬3ë¥¼ ì¨ì¼í ê¹?"ëµì ìê°ì²ë¼ ê°ë¨íì§ ìë¤. ì¬ëë¤ì´ íì´ì¬ì ì´ì¼ê¸°í  ëë *íì´ì¬* ë¿ë§ ìëë¼ CPython êµ¬íììë¯¸í  ëê° ë§ë¤. *íì´ì¬* ì ì¤ì ë¡ ë¤ìí ë°©ë²ì¼ë¡ êµ¬íë  ì ìë ì¸ì´ë¥¼ ìí ëªì¸ì´ë¤. 2ê±´ 3ê±´ ìê´ìë¤. ìë¬´ë ´ ì´ë. ì´ë¤ ê²ì ì¨ì¼í ì§ ëª¨ë¥´ê² ë¤. ë³íë¥¼ ë°ìë¤ì´ê² ë¤. íì´ì¬2ë¥¼ ì¬ëíê³  íì´ì¬3ì ë¯¸ëì ëí´ ë¹ê´ì ì¼ ë. ëë íì´ì¬3ë¥¼ ì¬ëí´. `CPython <http://www.python.org>`_ ì Cë¡ ìì±ë íì´ì¬ êµ¬íì ë¦¬í¼ë°ì¤ë¤.íì´ì¬ ì½ëë¥¼ ê°ì ë¨¸ì ì ìí´ í´ìëë ì¤ê° ë°ì´í¸ì½ëë¡ ì»´íì¼íë¤. CPythonì íì´ì¬í¨í¤ì§ì Cì¸ì´ì íì¥ ëª¨ëê°ì ìµê³  ë ë²¨ì í¸íì±ì ì ê³µíë¤. `ë ì½ì ê±°ë¦¬ <http://wiki.python.org/moin/Python2orPython3>`_ `IronPython <http://ironpython.net/>`_  ì ë·ë· íë ììí¬ë¥¼ ìí íì´ì¬ êµ¬íì´ë¤. íì´ì¬ê³¼ ë·ë· íë ììí¬ ë¼ì´ë¸ë¬ë¦¬ ë ë¤ ì¸ ì ìê³ , íì´ì¬ ì½ëë¥¼ ë·ë· íë ììí¬ì ë¤ë¥¸ ì¸ì´ë¡ ë°ê¿ ì ìë¤. `Jython <http://www.jython.org/>`_ ì íì´ì¬ ì½ëë¥¼ ìë° ë°ì´í¸ì½ëë¡ ë§ë¤ì´ JVM(ìë° ê°ì ë¨¸ì )ìì ì¤íìí¤ë íì´ì¬ êµ¬íì´ë¤. ë¿ë§ ìëë¼ Jythonì ìë° í´ëì¤ë¥¼ íì´ì¬ ëª¨ëì²ë¼ ë¶ë¬ìì ì¬ì©í  ì ìë¤. `PyPy <http://pypy.org/>`_ ë RPythonì´ë¼ ë¶ë¦¬ë íì´ì¬ ì¸ì´ì ì ì  íìì¼ë¡ë§ êµ¬íë íì´ì¬ ì¸í°íë¦¬í°ë¤. ì´ ì¸í°íë¦¬í°ì í¹ì§ì just-in-time ì»´íì¼ë¬ì ë³µìì ë°±ìë(C, CLI, JVM)ë¥¼ ì§ìíë¤ë ê²ì´ë¤. `Python Tools for Visual Studio <http://ironpython.net/tools/>`_ ëIronPythonì ì§ì  ë¹ì¥¬ì¼ ì¤íëì¤ ê°ë° íê²½ì¼ë¡ íµí©í  ì ìë¤. ì´ë Windows ê°ë°ìë¤ìê² ì¢ì ì íì´ë¤. `Python for .NET <http://pythonnet.github.io/>`_ ì ìì  ë²ì ¼ì íì´ì¬ ì¤ì¹ë³¸ê³¼ ë·ë· ê³µíµ ì¸ì´ ë°íì(CLR)ì ë§ëíê² íµí©ìì¼ì£¼ë í¨í¤ì§ì´ë¤. ì´ë ìì IronPythonì´ ì·¨í ë°©ìì ì­ì¼ë¡ ì ê·¼í ê²ì¼ë¡, ë³´ë¤ ìí¸ ë³´ìì ì´ë¤. http://ironpython.codeplex.com/releases/view/81726 http://pypy.org/compat.html http://pythonnet.github.io/readme.html http://wiki.python.org/jython/JythonFaq/GeneralInfo#Is_Jython_the_same_language_as_Python.3F 