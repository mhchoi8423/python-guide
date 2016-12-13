Þ    8      Ü                ª     µ   H     þ  R     «   q  ú    J     N   c  ¤   ²     W	  G  _	  f  §
  +        :  Ú   X    3  @   ;  }   |  e   ú  É   `  G   *     r     w       $   ¨  »   Í  
     ×     ¾   l  ä   +       ×       î  	   ÷  è    ©   ê  f       û  2     0   ²  &   ã  '   
  `   2  4     &   È  b   ï     R  -   W  Ü        b  M   j     ¸  p   ¼  p   -       ¬  =  Ä   ê   á   ¯!  3   "     Å"  ÷   T#    L$  b   ë&  |   N'    Ë'     Þ(  ¡  æ(  å  *  =   n,  !   ¬,  5  Î,  Ê   .  c   Ï.  ¸   3/  ³   ì/  /   0  S   Ð1     $2  &   )2     P2  +   g2  ê   2     ~3  <  3  Û   Â4  *  5     É6  Ð  Ð6     ¡9  	   ª9  ¥  ´9  Ì   Z<  "  '=  ¥   J>  2   ð>  0   #?  &   T?  '   {?  [   £?  4   ÿ?  @   4@  o   u@     å@  J   ê@    5A     LB  \   TB     ±B     µB     KC  ±   ÎC   :mod:`unittest.mock` is a library for testing in Python. As of Python 3.3, it is available in the `standard library <https://docs.python.org/dev/library/unittest.mock>`_. :mod:`unittest` is the batteries-included test module in the Python standard library. Its API will be familiar to anyone who has used any of the JUnit/nUnit/CppUnit series of tools. A simple doctest in a function: A testing unit should focus on one tiny bit of functionality and prove it correct. Always run the full test suite before a coding session, and run it again after. This will give you more confidence that you did not break anything in the rest of the code. Another use of the testing code is as an introduction to new developers. When someone will have to work on the code base, running and reading the related testing code is often the best thing that they can do to start. They will or should discover the hot spots, where most difficulties arise, and the corner cases. If they have to add some functionality, the first step should be to add a test to ensure that the new functionality is not already a working path that has not been plugged into the interface. As of Python 2.7 unittest also includes its own test discovery mechanisms. Creating test cases is accomplished by subclassing :class:`unittest.TestCase`. Despite being a fully-featured and extensible test tool, it boasts a simple syntax. Creating a test suite is as easy as writing a module with a couple of functions: Doctest Doctests have a different use case than proper unit tests: they are usually less detailed and don't catch special cases or obscure regression bugs. They are useful as an expressive documentation of the main use cases of a module and its components. However, doctests should run automatically each time the full test suite runs. Each test unit must be fully independent. Each test must be able to run alone, and also within the test suite, regardless of the order that they are called. The implication of this rule is that each test must be loaded with a fresh dataset and may have to do some cleanup afterwards. This is usually handled by :meth:`setUp()` and :meth:`tearDown()` methods. For example, you can monkey-patch a method: For older versions of Python: Getting used to writing testing code and running this code in parallel is now considered a good habit. Used wisely, this method helps you define more precisely your code's intent and have a more decoupled architecture. If you are in the middle of a development session and have to interrupt your work, it is a good idea to write a broken unit test about what you want to develop next. When coming back to work, you will have a pointer to where you were and get back on track faster. If you're using Python 2.6 or below, you can install it with pip It allows you to replace parts of your system under test with mock objects and make assertions about how they have been used. It is a good idea to implement a hook that runs all tests before pushing code to a shared repository. Learn your tools and learn how to run a single test or a test case. Then, when developing a function inside a module, run this function's tests frequently, ideally automatically when you save the code. Mock has many other ways you can configure it and control its behavior. Nose Some general rules of testing: Testing Your Code Testing your code is very important. The :mod:`doctest` module searches for pieces of text that look like interactive Python sessions in docstrings, and then executes those sessions to verify that they work exactly as shown. The Basics The first step when you are debugging your code is to write a new test pinpointing the bug. While it is not always possible to do, those bug catching tests are among the most valuable pieces of code in your project. This way if you ever switch to a newer Python version and no longer need the unittest2 module, you can simply change the import in your test module without the need to change any other code. To mock classes or objects in a module under test, use the ``patch`` decorator. In the example below, an external search system is replaced with a mock that always returns the same result (but only for the duration of the test). Tools Try hard to make tests that run fast. If one single test needs more than a few milliseconds to run, development will be slowed down or the tests will not be run as often as is desirable. In some cases, tests can't be fast because they need a complex data structure to work on, and this data structure must be loaded every time the test runs. Keep these heavier tests in a separate test suite that is run by some scheduled task, and run all other tests as often as needed. Unittest Unittest2 Use long and descriptive names for testing functions. The style guide here is slightly different than that of running code, where short names are often preferred. The reason is testing functions are never called explicitly. ``square()`` or even ``sqr()`` is ok in running code, but in testing code you would have names such as ``test_square_of_number_2()``, ``test_square_negative_number()``. These function names are displayed when a test fails, and should be as descriptive as possible. When running this module from the command line as in ``python module.py``, the doctests will run and complain if anything is not behaving as described in the docstrings. When something goes wrong or has to be changed, and if your code has a good set of tests, you or other maintainers will rely largely on the testing suite to fix the problem or modify a given behavior. Therefore the testing code will be read as much as or even more than the running code. A unit test whose purpose is unclear is not very helpful in this case. You may want to import the module under the name unittest to make porting code to newer versions of the module easier in the future `mock <http://www.voidspace.org.uk/python/mock/>`_ `nose <https://nose.readthedocs.io/en/latest/>`_ `py.test <http://pytest.org/latest/>`_ `tox <http://testrun.org/tox/latest/>`_ `unittest in the standard library documentation <http://docs.python.org/library/unittest.html>`_ `unittest2 <http://pypi.python.org/pypi/unittest2>`_ and then running the `py.test` command is far less work than would be required for the equivalent functionality with the unittest module! mock nose extends unittest to make testing easier. nose provides automatic test discovery to save you the hassle of manually creating test suites. It also provides numerous plugins for features such as xUnit-compatible test output, coverage reporting, and test selection. py.test py.test is a no-boilerplate alternative to Python's standard unittest module. tox tox allows you to configure complicated multi-parameter test matrices via a simple ini-style configuration file. tox is a tool for automating test environment management and testing against multiple interpreter configurations unittest2 is a backport of Python 2.7's unittest module which has an improved API and better assertions over the one available in previous versions of Python. Project-Id-Version: pythonguide 0.0.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-10-11 08:03+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: AHN YOUNG SEON <ys.ahn@outlook.com>
Language: ko
Language-Team: KOREAN <https://github.com/winterishere/python-guide>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 :mod:`unittest.mock` ì íì´ì¬ì íì¤í¸ ë¼ì´ë¸ë¬ë¦¬ìëë¤. íì´ì¬ 3.3ë¶í°ë `íì¤ ë¼ì´ë¸ë¬ë¦¬ <https://docs.python.org/dev/library/unittest.mock>`_ ê° ëììµëë¤.  :mod:`unittest` ë íì´ì¬ íì¤ ë¼ì´ë¸ë¬ë¦¬ ì¤ ìì£¼ ì ì©í íì¤í¸ ëª¨ëìëë¤. JUnit/nUnit/CppUnit ìë¦¬ì¦ì ê°ì í´ì ì¨ë³¸ ì¬ëì´ë¼ë©´ :mod:`unittest` ì APIìë ìµìí  ê²ìëë¤.  í¨ììì doctestë¥¼ ëë¦¬ë ê°ë¨í ìì: íì¤í¸ ì ëì ê° ê¸°ë¥ì ê°ì¥ ìì ë¨ìì ì§ì¤íì¬, í´ë¹ ê¸°ë¥ì´ ì íí ëìíëì§ë¥¼ ì¦ëªí´ì¼ í©ëë¤.  ê·¸ë ì ì½ë©ì ììíê¸° ì ì í­ì í íì¤í¸ ìí¸ë¥¼ ëë ¤ì¼ í©ëë¤. ëë íìë ë§ì°¬ê°ì§ìëë¤. ì´ ììì ë¹ì ì´ ë¤ë¥¸ ì½ëë¥¼ ë§ê°ë¨ë¦¬ì§ ììë¤ë ë í° ìì ê°ì ì¬ì´ì¤ ê²ìëë¤.  íì¤í¸ ì½ëì ëë¤ë¥¸ ì¬ì© ë°©ë²ì ìë¡ì´ ê°ë°ìë¤ì ìí ìë´ìë¡ ì°ë ë°©ë²ìëë¤. ì´ë¯¸ ë§ë¤ì´ì ¸ ìë ì½ëìì ììí´ì¼í  ê²½ì°, ê´ë ¨ íì¤í¸ ì½ëë¥¼ ëë ¤ë³´ê³  ì½ì´ë³´ë ê²ì´ì¼ë§ë¡ ê°ì¥ ì¢ì ììì ì¼ ê²½ì°ê° ë§ìµëë¤. ì´ë ê² íì¤í¸ ì½ëë¥¼ ëë ¤ë³´ë©´ ì´ë ì§ì ì´ ë¬¸ì ì¸ì§, ìì íê¸° ì´ë ¤ì´ ê³³ì ì´ëì¼ì§, ë§ë¤ë¥¸ ê³¨ëª©ì ì´ëì¼ì§ë¥¼ ë°ê²¬íê² ë©ëë¤. ëª ê°ì§ ê¸°ë¥ì ì¶ê°í´ì¼ íë¤ë©´ ê°ì¥ ë¨¼ì  í´ì¼í  ì¼ì, ê·¸ ìë¡ì´ ê¸°ë¥ì´ ìì§ ëìê°ì§ ììì íì¸í  ì ìë íì¤í¸ë¥¼ ë¶ì¬ë£ë ê²ìëë¤.  íì´ì¬ 2.7ë¶í°ë unittestë ìì²´ì ì¸ íì¤í¸ íì ë§¤ì»¤ëì¦ì´ ìê²¼ìµëë¤.  íì¤í¸ ì¼ì´ì¤ë¥¼ ë§ëë ¤ë©´ :class:`unittest.TestCase` ë¥¼ ììë°ë íì í´ëì¤ë¥¼ ë§ë¤ì´ì¼ í©ëë¤.  ëª¨ë  ê¸°ë¥ì ê°ì¶ì§ë ìììµëë¤. íì¥ ê°ë¥í íì¤í¸ ëêµ¬ë ìëëë¤. íì§ë§ ë¨ìí ì íì¤ë¥¼ ìëí©ëë¤. íì¤í¸ ìí¸ë¥¼ ë§ëë ê²ì í¨ì ëª ê°ê° ìë ëª¨ë íëë¥¼ ìì±íë ê² ë§í¼ì´ë ê°ë¨í©ëë¤.  Doctest doctestë ë¤ë¥¸ ë¨ì íì¤í¸ìë ì¬ì© ë°©ë²ì´ ë¤ë¦ëë¤: doctestë ì¼ë°ì ì¼ë¡ ìì¸íì§ ìê³  í¹ì´í ì¼ì´ì¤ë íê· íì¤í¸ììì ë²ê·¸ë¥¼ ì¡ìë´ì§ë ëª»í©ëë¤. íì§ë§ ê° ëª¨ëê³¼ ê·¸ ì»´í¬ëí¸ì ì£¼ë ì¬ì©ë²ì ìë ¤ì£¼ë ë¬¸ìë¡ì¨ë ìì£¼ ì ì©í©ëë¤. doctestë ì ì²´ íì¤í¸ ìí¸ë¥¼ ì¤íí  ëë§ë¤ ìëì¼ë¡ ëë ¤ì¼ í©ëë¤.  ê° íì¤í¸ ì ëì ë°ëì ëë¦½ì ì´ì´ì¼ í©ëë¤. ê° íì¤í¸ë í¼ììë ì¤í ê°ë¥í´ì¼íê³ , íì¤í¸ ìí¸ë¡ë ì¤í ê°ë¥í´ì¼ í©ëë¤. ì´ ë, í¸ì¶ëë ììì ë¬´ê´íê² ì ëìí´ì¼ í©ëë¤. ì´ ê·ì¹ì´ ë»íë ë°, ìë¡ì´ ë°ì´í°ìì¼ë¡ ê°ê°ì íì¤í¸ë¥¼ ë¡ë©í´ì¼ íê³ , ê·¸ ì¤í ê²°ê³¼ë ê¼­ ì­ì í´ì¼í©ëë¤. ë³´íµ :meth:`setUp()` ê³¼ :meth:`tearDown()` ë©ìëë¡ ì´ë° ììì í©ëë¤.  ì´ë ê² ë©ìëë¥¼ ëª½í¤ í¨ì¹í  ìë ììµëë¤:  ìì  ë²ì ì íì´ì¬ìì: íì¤í¸ ì½ëë¥¼ ë¥ìíê² ìì±íê³  ì´ ì½ëë¥¼ í¨ë¬ë íê² ëë¦¬ë ê²ì ì´ì  ì¢ì ìµê´ì¼ë¡ ì¸ì ë°ê³  ììµëë¤. ì´ ë°©ë²ì íëªíê² ì¬ì©íë©´ ì½ëì ìëë¥¼ ë³´ë¤ ëªíííëë° ì¢ì ë¿ ìëë¼, ìí¤íì²ì ê²°í©ëë¥¼ ë®ì¶ ì ììµëë¤.  ì§ê¸ íì°½ ê°ë° ì¤ì¸ë° ê·¸ë§ëê³  ì ì ë¤ë¥¸ ì¼ì í´ì¼íë¤ë©´, ë¤ìì ê°ë°í  ë¶ë¶ìë¤ê° ì¼ë¶ë¬ ê³ ì¥ë ì ë íì¤í¸ë¥¼ ìì±íë ê²ë ì¢ì ìê°ìëë¤.  íì´ì¬ 2.6ì´ë ê·¸ ì´ì  ë²ì ì ì¬ì©íê³  ìë¤ë©´ pipë¡ ì¤ì¹í  ì ììµëë¤.  ë¥¼ íë©´ mock ì¤ë¸ì í¸ë¡ ìì¤íì íì¤í¸ íí¸ë¥¼ ë³ê²½í  ì ììµëë¤. ê·¸ë¦¬ê³  íì¤í¸ê° ì´ë»ê² ì°ì¼ì§ì ëí ë¨ì ë¬¸ì ë§ë¤ ì ììµëë¤.  ëª¨ëê° ê³µì íë ì ì¥ììë¤ê° ì½ëë¥¼ ì§ì´ë£ê¸° ì ì ìëì¼ë¡ ëª¨ë  íì¤í¸ë¥¼ ìííëë¡ íë íì êµ¬ííë ê²ë ì¢ì ìê°ìëë¤.  ì§ê¸ ì¬ì©íê³  ìë í´ì´ ê°ë³ íì¤í¸ë íì¤í¸ ì¼ì´ì¤ë¥¼ ì´ë»ê² ìííëì§ ë°°ì°ìì¼ í©ëë¤. ëª¨ë ìì ë¤ì´ìë í¨ìë¥¼ ê°ë°íê³  ìë¤ë©´, ê·¸ í¨ìì íì¤í¸ë¥¼ ìì£¼, ê°ë¥íë¤ë©´ ì½ëë¥¼ ì ì¥í  ëë§ë¤ ìëì¼ë¡ ëë ¤ì¼ í©ëë¤.  mockì ë¤ìíê² ì¤ì íì¬ ëì ë°©ë²ì ì»¨í¸ë¡¤ í  ì ììµëë¤.  Nose íì¤í¸ì ì¼ë° ìì¹ ëª ê°ì§: ì½ë íì¤í¸íê¸° ì½ë íì¤í¸ë ìì£¼ ì¤ìí©ëë¤. :mod:`doctest` ëª¨ëì ëì¤í¸ë§ ìì ëíí íì´ì¬ ì¸ìì²ë¼ ë³´ì´ë íì¤í¸ê° ìëì§ë¥¼ ê²ìí í, í´ë¹ ì¸ìë¤ì ì¤ííì¬ íì¤í¸ì ì¨ì§ëë¡ ì íí ëìíëì§ë¥¼ íì¸í©ëë¤.  ê¸°ë³¸ ì½ëë¥¼ ëë²ê¹í  ë ê°ì¥ ë¨¼ì  ììí  ì¼ì ë²ê·¸ë¥¼ ì°ì´ë´ë ìë¡ì´ íì¤í¸ë¥¼ ìì±íë ê²ìëë¤. ì´ë° ì¼ì´ ì¸ì ë ê°ë¥í ê²ì ìëì§ë§, ì´ë° ë²ê·¸ ì¡ì´ íì¤í¸ë¤ì´ì¼ë§ë¡ ë¹ì ì íë¡ì í¸ìì ê°ì¥ ê°ì¹ìë ì½ë ì¡°ê°ì´ ë  ê²ìëë¤.  ì´ ë°©ë²ì ì°ë©´ ëì¤ì ìë¡ì´ ë²ì ì íì´ì¬ì¼ë¡ ë°ê¾¸ê±°ë unittest2 ëª¨ëì´ ëì´ì íìíì§ ìëë¼ë, ì½ë ìì  ìì´ íì¤í¸ ëª¨ëì ìí¬í¸ë¥¼ ë³ê²½í  ì ììµëë¤.  íì¤í¸íë ëª¨ëìì ëª¨ì í´ëì¤ë ëª¨ì ê°ì²´ë¥¼ ë§ë¤ ê²½ì°ìë ``patch`` ë°ì½ë ì´í°ë¥¼ ì¬ì©íì¸ì. ìëì ììììë ì¸ì ë ê°ì ê²°ê³¼ê°ì ë´ë(ìë¬´í¼ íì¤í¸ ì¤ìë) ëª¨ì ê°ì²´ê° ì¸ë¶ ê²ì ìì¤í íë ëì  ì°ììµëë¤.  ëêµ¬ íì¤í¸ê° ë¹ ë¥´ê² ë ì ìëë¡ ë§ë¤ê¸° ìí´ ë¸ë ¥í´ì¼ í©ëë¤.  íì¤í¸ íëê° ì¤ííëë° ëª ë°ë¦¬ì¸ì»¨ë ì´ìì ìê°ì´ ê±¸ë¦°ë¤ë©´, ê°ë° ìëê° ëë ¤ì§ê±°ë íì¤í¸ê° ì¶©ë¶í ìì£¼ ìíëì§ ëª»í  ê²ìëë¤. íì¤í¸ì íìí ë°ì´í° êµ¬ì¡°ê° ëë¬´ ë³µì¡íê³ , íì¤í¸ë¥¼ íë ¤ë©´ ë§¤ë² ì´ ë³µì¡í ë°ì´í°ë¥¼ ë¶ë¬ìì¼ í´ì íì¤í¸ë¥¼ ë¹ ë¥´ê² ë§ë¤ ì ìë ê²½ì°ë ììµëë¤. ì´ë´ ëë ë¬´ê±°ì´ íì¤í¸ë ë°ë¡ ë¶ë¦¬íì¬ ë³ëì íì¤í¸ ìí¸ë¥¼ ë§ë¤ì´ ëê³  ì¤ì¼ì¥´ ììì ê±¸ì´ëë©´ ë©ëë¤. ê·¸ë¦¬ê³  ê·¸ ì¸ì ë¤ë¥¸ ëª¨ë  íì¤í¸ë íìí ë§í¼ ìì£¼ ìííë©´ ë©ëë¤.  Unittest Unittest2 íì¤í¸ í¨ììë ê¸¸ê³  ìì ì ì¸ ì´ë¦ì ì¬ì©íìì¼ í©ëë¤. íì¤í¸ììì ì¤íì¼ ìë´ìë ì§§ì ì´ë¦ì ë³´ë¤ ì í¸íë ë¤ë¥¸ ì¼ë°ì ì¸ ì½ëìë ì¡°ê¸ ë¤ë¦ëë¤. íì¤í¸ í¨ìë ì ë ì§ì  í¸ì¶ëì§ ìê¸° ëë¬¸ìëë¤. ì¤ì ë¡ ëìê°ë ì½ëììë ``square()`` ë¼ë ê° ì¬ì§ì´ ``sqr()`` ì¡°ì°¨ë ê´ì°®ìµëë¤. íì§ë§ íì¤í¸ ì½ëììë ``test_square_of_number_2()``, ``test_square_negative_number()`` ê°ì ì´ë¦ì ë¶ì¬ì¼ í©ëë¤. ì´ë° í¨ìëªë¤ì íì¤í¸ê° ì¤í¨í  ëë ë³´ìëë¤. ê·¸ë¬ë ë°ëì ê°ë¥í í ìì ì ì¸ ì´ë¦ì ë¶ì¬ì¼ í©ëë¤.  ì»¤ë§¨ë ë¼ì¸ìì ``python module.py`` ë¥¼ ì³ì í´ë¹ ëª¨ëì ì¤ííë©´ doctestê° ì¤íëê³ , ë¬´ì¸ê° doctestì ê¸°ì íëë¡ ëìíì§ ìë ê²½ì°ìë ê²½ê³ ë¥¼ í´ì¤ëë¤.  ë¬´ì¸ê° ìëª»ëìê±°ë ë¯ì´ê³ ì³ì¼ë§ í  ê²½ì°, ê´ì°®ì ì½ëì íì¤í¸ ìì´ ìë¤ë©´ ë¹ì ì´ë ë¤ë¥¸ ì ì§ë³´ì ë´ë¹ìë¤ì ì¤ë¥ë¥¼ ìì íê±°ë íë¡ê·¸ë¨ì ëìì ìì í  ë íì ê·¸ íì¤í¸ ìí¸ì ì ì ì¼ë¡ ìì§í  ê²ìëë¤.  unittestë¼ë ì´ë¦ì¼ë¡ ëª¨ëì ìí¬í¸íì¬ ëì¤ì ìë¡ì´ íì´ì¬ ë²ì ì ëª¨ëë¡ í¬ííê¸° ì½ëë¡ ë§ë¤ê³  ì¶ì ìë ììµëë¤.  `mock <http://www.voidspace.org.uk/python/mock/>`_ `nose <https://nose.readthedocs.io/en/latest/>`_ `py.test <http://pytest.org/latest/>`_ `tox <http://testrun.org/tox/latest/>`_ `íì¤ ë¼ì´ë¸ë¬ë¦¬ ë¬¸ìì unittest <http://docs.python.org/library/unittest.html>`_ `unittest2 <http://pypi.python.org/pypi/unittest2>`_ ê·¸ë¦¬ê³  ëªë ¹ì°½ìì `py.test` ë¥¼ ì¤ííë©´ ë©ëë¤.  unittest ëª¨ëë¡ ê°ì ê¸°ë¥ì êµ¬ííê¸° ìí´ íìí ê²ë³´ë¤ í¨ì¬ ë ììí´ë ë©ëë¤!  mock noseë íì¤í¸ë¥¼ ì½ê² íëë¡ unittestë¥¼ íì¥í ê²ìëë¤.  noseë ìëì¼ë¡ íì¤í¸ë¥¼ ë°ê²¬í©ëë¤. ëë¶ì ìììì¼ë¡ íì¤í¸ ìí¸ë¥¼ ë§ëë ìê³ ë¥¼ ë ì ììµëë¤. ëí xUnit í¸í íì¤í¸ ê²°ê³¼, ì½ë ì»¤ë²ë¦¬ì§ ë³´ê³ ì, ì í íì¤í¸ì ê°ì´ ë¤ìí íë¬ê·¸ì¸ë ì ê³µí©ëë¤.  py.test py.testë ë³´ì¼ë¬íë ì´í¸ê° ìë íì´ì¬ íì¤ unittestì ëì²´íìëë¤.  tox toxë ê°ë¨í ini ì¤íì¼ì ì¤ì  íì¼ì íµí´ ë³µì¡í ë©í° íë¼ë¯¸í° íì¤í¸ ë©í¸ë¦­ì ì¤ì í  ì ìëë¡ í´ì¤ëë¤.  toxë ìëíë íì¤í¸ íê²½ ê´ë¦¬ì ë¤ìí ì¸í°íë¦¬í° ì¤ì  íììì íì¤í¸ë¥¼ ìí ëêµ¬ìëë¤.  unittest2ë í¥ìë APIì ë¨ì ë¬¸ì ê°ì§ê³  ìë íì´ì¬ 2.7ì unittestì ë°±í¬í¸ ë²ì ìëë¤. 2.7 ì´ì  ë²ì ì íì´ì¬ìì ì¬ì© ê°ë¥í©ëë¤.  