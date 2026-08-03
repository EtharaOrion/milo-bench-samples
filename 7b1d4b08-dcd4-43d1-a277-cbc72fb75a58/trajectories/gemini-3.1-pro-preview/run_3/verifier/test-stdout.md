error: tests/test_console.py: does not match index
error: tests/test_inspect.py: does not match index
error: tests/test_logging.py: does not match index
error: tests/test_progress.py: does not match index
error: tests/test_style.py: does not match index
error: tests/test_tabulate.py: does not match index
error: tests/test_traceback.py: does not match index
Checking patch tests/test_console.py...
Checking patch tests/test_inspect.py...
Checking patch tests/test_logging.py...
Checking patch tests/test_progress.py...
Checking patch tests/test_style.py...
Checking patch tests/test_tabulate.py...
Checking patch tests/test_traceback.py...
Applied patch tests/test_console.py cleanly.
Applied patch tests/test_inspect.py cleanly.
Applied patch tests/test_logging.py cleanly.
Applied patch tests/test_progress.py cleanly.
Applied patch tests/test_style.py cleanly.
Applied patch tests/test_tabulate.py cleanly.
Applied patch tests/test_traceback.py cleanly.
Checking patch rich/table.py...
Checking patch rich/tabulate.py...
Checking patch rich/traceback.py...
Checking patch test_empty_exc.py...
Checking patch tests/test_logging.py...
error: while searching for:
    level="NOTSET", format="%(message)s", datefmt="[DATE]", handlers=[handler]
)
log = logging.getLogger("rich")


def make_log():

error: patch failed: tests/test_logging.py:14
Checking patch tests/test_traceback.py...
Applied patch rich/table.py cleanly.
Applied patch rich/tabulate.py cleanly.
Applied patch rich/traceback.py cleanly.
Applied patch test_empty_exc.py cleanly.
Applying patch tests/test_logging.py with 1 reject...
Rejected hunk #1.
Applied patch tests/test_traceback.py cleanly.
git apply test+fix patch failed (continuing)
============================= test session starts ==============================
platform linux -- Python 3.12.13, pytest-9.1.1, pluggy-1.6.0 -- /usr/local/bin/python
rootdir: /home/rich/tests
configfile: pytest.ini
plugins: anyio-4.6.2.post1, asyncio-1.4.0, mock-3.15.1, timeout-2.4.0
asyncio: mode=Mode.STRICT, debug=False, asyncio_default_fixture_loop_scope=None, asyncio_default_test_loop_scope=function
timeout: 30.0s
timeout method: signal
timeout func_only: False
collecting ... collected 55 items / 1 error

tests/test_inspect.py::test_render PASSED                                [  1%]
tests/test_inspect.py::test_inspect_text FAILED                          [  3%]
tests/test_inspect.py::test_inspect_empty_dict FAILED                    [  5%]
tests/test_inspect.py::test_inspect_builtin_function FAILED              [  7%]
tests/test_inspect.py::test_inspect_integer PASSED                       [  9%]
tests/test_inspect.py::test_inspect_integer_with_methods FAILED          [ 10%]
tests/test_logging.py::test_log FAILED                                   [ 12%]
tests/test_logging.py::test_exception FAILED                             [ 14%]
tests/test_logging.py::test_exception_with_extra_lines FAILED            [ 16%]
tests/test_progress.py::test_bar_columns PASSED                          [ 18%]
tests/test_progress.py::test_text_column PASSED                          [ 20%]
tests/test_progress.py::test_time_remaining_column PASSED                [ 21%]
tests/test_progress.py::test_task_ids PASSED                             [ 23%]
tests/test_progress.py::test_finished PASSED                             [ 25%]
tests/test_progress.py::test_expand_bar PASSED                           [ 27%]
tests/test_progress.py::test_render PASSED                               [ 29%]
tests/test_progress.py::test_track PASSED                                [ 30%]
tests/test_progress.py::test_progress_track PASSED                       [ 32%]
tests/test_progress.py::test_columns PASSED                              [ 34%]
tests/test_progress.py::test_task_create PASSED                          [ 36%]
tests/test_progress.py::test_task_start PASSED                           [ 38%]
tests/test_progress.py::test_task_zero_total PASSED                      [ 40%]
tests/test_progress.py::test_progress_create PASSED                      [ 41%]
tests/test_progress.py::test_refresh_thread PASSED                       [ 43%]
tests/test_progress.py::test_track_thread PASSED                         [ 45%]
tests/test_style.py::test_str PASSED                                     [ 47%]
tests/test_style.py::test_ansi_codes PASSED                              [ 49%]
tests/test_style.py::test_repr PASSED                                    [ 50%]
tests/test_style.py::test_eq PASSED                                      [ 52%]
tests/test_style.py::test_hash PASSED                                    [ 54%]
tests/test_style.py::test_empty FAILED                                   [ 56%]
tests/test_style.py::test_bool PASSED                                    [ 58%]
tests/test_style.py::test_color_property PASSED                          [ 60%]
tests/test_style.py::test_bgcolor_property PASSED                        [ 61%]
tests/test_style.py::test_parse PASSED                                   [ 63%]
tests/test_style.py::test_link_id PASSED                                 [ 65%]
tests/test_style.py::test_get_html_style PASSED                          [ 67%]
tests/test_style.py::test_chain PASSED                                   [ 69%]
tests/test_style.py::test_copy PASSED                                    [ 70%]
tests/test_style.py::test_render PASSED                                  [ 72%]
tests/test_style.py::test_test PASSED                                    [ 74%]
tests/test_style.py::test_add PASSED                                     [ 76%]
tests/test_style.py::test_iadd PASSED                                    [ 78%]
tests/test_style.py::test_style_stack PASSED                             [ 80%]
tests/test_style.py::test_pick_first PASSED                              [ 81%]
tests/test_tabulate.py::test_tabulate_mapping FAILED                     [ 83%]
tests/test_traceback.py::test_handler PASSED                             [ 85%]
tests/test_traceback.py::test_exception_render FAILED                    [ 87%]
tests/test_traceback.py::test_capture PASSED                             [ 89%]
tests/test_traceback.py::test_no_exception PASSED                        [ 90%]
tests/test_traceback.py::test_print_exception PASSED                     [ 92%]
tests/test_traceback.py::test_syntax_error PASSED                        [ 94%]
tests/test_traceback.py::test_nested_exception PASSED                    [ 96%]
tests/test_traceback.py::test_filename_with_bracket PASSED               [ 98%]
tests/test_traceback.py::test_filename_not_a_file PASSED                 [100%]

==================================== ERRORS ====================================
_______________________ ERROR collecting test_console.py _______________________
ImportError while importing test module '/home/rich/tests/test_console.py'.
Hint: make sure your test modules/packages have valid Python names.
Traceback:
/usr/local/lib/python3.12/importlib/__init__.py:90: in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
tests/test_console.py:9: in <module>
    from rich.console import CaptureError, Console, ConsoleOptions
E   ImportError: cannot import name 'CaptureError' from 'rich.console' (/home/rich/rich/console.py)
=================================== FAILURES ===================================
______________________________ test_inspect_text _______________________________

    def test_inspect_text():
    
        expected = (
            "╭──────────────── <class 'str'> ─────────────────╮\n"
            "│ str(object='') -> str                          │\n"
            "│ str(bytes_or_buffer[, encoding[, errors]]) ->  │\n"
            "│ str                                            │\n"
            "│                                                │\n"
            "│ 33 attribute(s) not shown. Use                 │\n"
            "│ inspect(<OBJECT>, all=True) to see all         │\n"
            "│ attributes.                                    │\n"
            "╰────────────────────────────────────────────────╯\n"
        )
>       assert expected == render("Hello")
E       AssertionError: assert '╭───────────...──────────╯\n' == '╭───────────...──────────╯\n'
E         
E           ╭──────────────── <class 'str'> ─────────────────╮
E           │ str(object='') -> str                          │
E           │ str(bytes_or_buffer[, encoding[, errors]]) ->  │
E           │ str                                            │
E           │                                                │
E         - │ 34 attribute(s) not shown. Use                 │
E         ?    ^
E         + │ 33 attribute(s) not shown. Use                 │
E         ?    ^
E           │ inspect(<OBJECT>, all=True) to see all         │
E           │ attributes.                                    │
E           ╰────────────────────────────────────────────────╯

tests/test_inspect.py:83: AssertionError
___________________________ test_inspect_empty_dict ____________________________

    @skip_py36
    @skip_py37
    def test_inspect_empty_dict():
    
        expected = (
            "╭──────────────── <class 'dict'> ────────────────╮\n"
            "│ dict() -> new empty dictionary                 │\n"
            "│ dict(mapping) -> new dictionary initialized    │\n"
            "│ from a mapping object's                        │\n"
            "│     (key, value) pairs                         │\n"
            "│ dict(iterable) -> new dictionary initialized   │\n"
            "│ as if via:                                     │\n"
            "│     d = {}                                     │\n"
            "│     for k, v in iterable:                      │\n"
            "│         d[k] = v                               │\n"
            "│ dict(**kwargs) -> new dictionary initialized   │\n"
            "│ with the name=value pairs                      │\n"
            "│     in the keyword argument list.  For         │\n"
            "│ example:  dict(one=1, two=2)                   │\n"
            "│                                                │\n"
            "│ 30 attribute(s) not shown. Use                 │\n"
            "│ inspect(<OBJECT>, all=True) to see all         │\n"
            "│ attributes.                                    │\n"
            "╰────────────────────────────────────────────────╯\n"
        )
>       assert expected == render({})
E       AssertionError: assert '╭───────────...──────────╯\n' == '╭───────────...──────────╯\n'
E         
E           ╭──────────────── <class 'dict'> ────────────────╮
E           │ dict() -> new empty dictionary                 │
E           │ dict(mapping) -> new dictionary initialized    │
E           │ from a mapping object's                        │
E           │     (key, value) pairs                         │
E           │ dict(iterable) -> new dictionary initialized   │
E           │ as if via:                                     │
E           │     d = {}                                     │
E           │     for k, v in iterable:                      │
E           │         d[k] = v                               │
E           │ dict(**kwargs) -> new dictionary initialized   │
E           │ with the name=value pairs                      │
E           │     in the keyword argument list.  For         │
E           │ example:  dict(one=1, two=2)                   │
E           │                                                │
E         - │ 35 attribute(s) not shown. Use                 │
E         ?    ^
E         + │ 30 attribute(s) not shown. Use                 │
E         ?    ^
E           │ inspect(<OBJECT>, all=True) to see all         │
E           │ attributes.                                    │
E           ╰────────────────────────────────────────────────╯

tests/test_inspect.py:111: AssertionError
________________________ test_inspect_builtin_function _________________________

    def test_inspect_builtin_function():
    
        expected = (
            "╭────────── <built-in function print> ───────────╮\n"
            "│ def print(...)                                 │\n"
            "│                                                │\n"
            "│ print(value, ..., sep=' ', end='\\n',           │\n"
            "│ file=sys.stdout, flush=False)                  │\n"
            "│                                                │\n"
            "│ 29 attribute(s) not shown. Use                 │\n"
            "│ inspect(<OBJECT>, all=True) to see all         │\n"
            "│ attributes.                                    │\n"
            "╰────────────────────────────────────────────────╯\n"
        )
>       assert expected == render(print)
E       AssertionError: assert '╭────────── ...──────────╯\n' == '╭────────── ...──────────╯\n'
E         
E           ╭────────── <built-in function print> ───────────╮
E         - │ def print(*args, sep=' ', end='\n', file=None, │
E         - │ flush=False):                                  │
E         ?    ^^^^^^^^^^ --
E         + │ def print(...)                                 │
E         ?   ++ ^^^^^^^^^^
E           │                                                │
E         - │ Prints the values to a stream, or to           │
E         - │ sys.stdout by default.                         │
E         + │ print(value, ..., sep=' ', end='\n',           │
E         + │ file=sys.stdout, flush=False)                  │
E           │                                                │
E         - │ 30 attribute(s) not shown. Use                 │
E         ?   ^^
E         + │ 29 attribute(s) not shown. Use                 │
E         ?   ^^
E           │ inspect(<OBJECT>, all=True) to see all         │
E           │ attributes.                                    │
E           ╰────────────────────────────────────────────────╯

tests/test_inspect.py:128: AssertionError
______________________ test_inspect_integer_with_methods _______________________

    @skip_py36
    @skip_py37
    def test_inspect_integer_with_methods():
    
        expected = (
            "╭──────────────── <class 'int'> ─────────────────╮\n"
            "│ int([x]) -> integer                            │\n"
            "│ int(x, base=10) -> integer                     │\n"
            "│                                                │\n"
            "│      denominator = 1                           │\n"
            "│             imag = 0                           │\n"
            "│        numerator = 1                           │\n"
            "│             real = 1                           │\n"
            "│ as_integer_ratio = def as_integer_ratio():     │\n"
            "│                    Return integer ratio.       │\n"
            "│       bit_length = def bit_length(): Number of │\n"
            "│                    bits necessary to represent │\n"
            "│                    self in binary.             │\n"
            "│        conjugate = def conjugate(...) Returns  │\n"
            "│                    self, the complex conjugate │\n"
            "│                    of any int.                 │\n"
            "│       from_bytes = def from_bytes(bytes,       │\n"
            "│                    byteorder, *,               │\n"
            "│                    signed=False): Return the   │\n"
            "│                    integer represented by the  │\n"
            "│                    given array of bytes.       │\n"
            "│         to_bytes = def to_bytes(length,        │\n"
            "│                    byteorder, *,               │\n"
            "│                    signed=False): Return an    │\n"
            "│                    array of bytes representing │\n"
            "│                    an integer.                 │\n"
            "╰────────────────────────────────────────────────╯\n"
        )
>       assert expected == render(1, methods=True)
E       AssertionError: assert '╭───────────...──────────╯\n' == '╭───────────...──────────╯\n'
E         
E           ╭──────────────── <class 'int'> ─────────────────╮
E           │ int([x]) -> integer                            │
E           │ int(x, base=10) -> integer                     │
E           │                                                │
E           │      denominator = 1                           │
E           │             imag = 0                           │
E           │        numerator = 1                           │
E           │             real = 1                           │
E           │ as_integer_ratio = def as_integer_ratio():     │
E         - │                    Return a pair of integers,  │
E         ?                            ----------        ^^
E         + │                    Return integer ratio.       │
E         ?                                    ^^^^^^^^^^^^
E         - │                    whose ratio is equal to the │
E         - │                    original int.               │
E         - │        bit_count = def bit_count(): Number of  │
E         - │                    ones in the binary          │
E         - │                    representation of the       │
E         - │                    absolute value of self.     │
E           │       bit_length = def bit_length(): Number of │
E           │                    bits necessary to represent │
E           │                    self in binary.             │
E           │        conjugate = def conjugate(...) Returns  │
E           │                    self, the complex conjugate │
E           │                    of any int.                 │
E           │       from_bytes = def from_bytes(bytes,       │
E         - │                    byteorder='big', *,         │
E         ?                               ------
E         + │                    byteorder, *,               │
E         ?                                            ++++++
E           │                    signed=False): Return the   │
E           │                    integer represented by the  │
E           │                    given array of bytes.       │
E         - │       is_integer = def is_integer(): Returns   │
E         - │                    True. Exists for duck type  │
E         - │                    compatibility with          │
E         - │                    float.is_integer.           │
E         - │         to_bytes = def to_bytes(length=1,      │
E         ?                                         --
E         + │         to_bytes = def to_bytes(length,        │
E         ?                                          ++
E         - │                    byteorder='big', *,         │
E         ?                               ------
E         + │                    byteorder, *,               │
E         ?                                            ++++++
E           │                    signed=False): Return an    │
E           │                    array of bytes representing │
E           │                    an integer.                 │
E           ╰────────────────────────────────────────────────╯

tests/test_inspect.py:181: AssertionError
___________________________________ test_log ___________________________________

    def test_log():
        render = make_log()
        print(repr(render))
        expected = "\x1b[2;36m[DATE]\x1b[0m\x1b[2;36m \x1b[0m\x1b[32mDEBUG\x1b[0m    foo                                           \x1b[2mtest_logging.py\x1b[0m\x1b[2m:29\x1b[0m\n"
>       assert render == expected
E       AssertionError: assert '' == '\x1b[2;36m[D...m:29\x1b[0m\n'
E         
E         - [2;36m[DATE][0m[2;36m [0m[32mDEBUG[0m    foo                                           [2mtest_logging.py[0m[2m:29[0m

tests/test_logging.py:38: AssertionError
----------------------------- Captured stdout call -----------------------------
''
________________________________ test_exception ________________________________

    @skip_win
    def test_exception():
        console = Console(
            file=io.StringIO(), force_terminal=True, width=140, color_system="truecolor"
        )
>       handler_with_tracebacks = RichHandler(
            console=console, enable_link_path=False, rich_tracebacks=True
        )
E       TypeError: RichHandler.__init__() got an unexpected keyword argument 'rich_tracebacks'

tests/test_logging.py:46: TypeError
_______________________ test_exception_with_extra_lines ________________________

    def test_exception_with_extra_lines():
        console = Console(
            file=io.StringIO(), force_terminal=True, width=140, color_system="truecolor"
        )
>       handler_extra_lines = RichHandler(
            console=console,
            enable_link_path=False,
            markup=True,
            rich_tracebacks=True,
            tracebacks_extra_lines=5,
        )
E       TypeError: RichHandler.__init__() got an unexpected keyword argument 'rich_tracebacks'

tests/test_logging.py:68: TypeError
__________________________________ test_empty __________________________________

    def test_empty():
>       assert Style.empty() == Style()
               ^^^^^^^^^^^
E       AttributeError: type object 'Style' has no attribute 'empty'

tests/test_style.py:75: AttributeError
____________________________ test_tabulate_mapping _____________________________

    def test_tabulate_mapping():
        # TODO: tabulate_mapping may not be needed shortly
        table = tabulate_mapping({"foo": "1", "bar": "2"})
        assert len(table.columns) == 2
        assert len(table.columns[0]._cells) == 2
        assert len(table.columns[1]._cells) == 2
    
        # add tests for title and caption justification
        test_title = "Foo v. Bar"
        test_caption = "approximate results"
        for title_justify, caption_justify in itertools.product(
            [None, "left", "center", "right"], repeat=2
        ):
            table = tabulate_mapping(
                {"foo": "1", "bar": "2"},
                title=test_title,
                caption=test_caption,
                title_justify=title_justify,
                caption_justify=caption_justify,
            )
            expected_title_justify = (
                title_justify if title_justify is not None else "center"
            )
            expected_caption_justify = (
                caption_justify if caption_justify is not None else "center"
            )
>           assert expected_title_justify == table.title_justify
E           AssertionError: assert 'center' == None
E            +  where None = <rich.table.Table object at 0xffffbc9b93a0>.title_justify

tests/test_tabulate.py:33: AssertionError
____________________________ test_exception_render _____________________________

    def test_exception_render():
>       exc_render = render(get_exception())
                     ^^^^^^
E       NameError: name 'render' is not defined

tests/test_traceback.py:40: NameError
==================================== PASSES ====================================
_________________________________ test_render __________________________________
----------------------------- Captured stdout call -----------------------------
"╭────────────── <class 'tests.test_inspect.Foo'> ──────────────╮\n│ Foo test                                                     │\n│                                                              │\n│   broken = InspectError()                                    │\n│ __init__ = def __init__(foo: int) -> None: constructor docs. │\n│   method = def method(a, b) -> str: Multi line               │\n╰──────────────────────────────────────────────────────────────╯\n"
_______________________________ test_expand_bar ________________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[?25l\x1b[38;5;237m━━━━━━━━━━\x1b[0m\r\x1b[2K\x1b[38;5;237m━━━━━━━━━━\x1b[0m\n\x1b[?25h'
_________________________________ test_render __________________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[?25lfoo  \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\nbar  \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 53%\x1b[0m \x1b[36m-:--:--\x1b[0m\nfoo2 \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2Kfoo  \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\nbar  \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 53%\x1b[0m \x1b[36m-:--:--\x1b[0m\nfoo2 \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h'
__________________________________ test_track __________________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[?25ltest \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 33%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;2;249;38;114m╸\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━\x1b[0m \x1b[35m 67%\x1b[0m \x1b[36m0:00:06\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h'
_____________________________ test_progress_track ______________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[?25ltest \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 33%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;2;249;38;114m╸\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━\x1b[0m \x1b[35m 67%\x1b[0m \x1b[36m0:00:06\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h'
_________________________________ test_columns _________________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[?25ltest foo \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m0/10 bytes\x1b[0m \x1b[31m?\x1b[0m\ntest bar \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m0/7 bytes \x1b[0m \x1b[31m?\x1b[0m\r\x1b[2K\x1b[1A\x1b[2Kfoo\ntest foo \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m0/10 bytes\x1b[0m \x1b[31m?\x1b[0m\ntest bar \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m0/7 bytes \x1b[0m \x1b[31m?\x1b[0m\r\x1b[2K\x1b[1A\x1b[2K\x1b[2;36m[TIME]\x1b[0m\x1b[2;36m \x1b[0mhello                                                                    \ntest foo \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m0/10 bytes\x1b[0m \x1b[31m?\x1b[0m\ntest bar \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m0/7 bytes \x1b[0m \x1b[31m?\x1b[0m\r\x1b[2K\x1b[1A\x1b[2Kworld\ntest foo \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m0/10 bytes\x1b[0m \x1b[31m?\x1b[0m\ntest bar \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m0/7 bytes \x1b[0m \x1b[31m?\x1b[0m\r\x1b[2K\x1b[1A\x1b[2Ktest foo \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m0:00:00\x1b[0m \x1b[32m12 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m12/10 bytes\x1b[0m \x1b[31m1 byte/s \x1b[0m\ntest bar \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m0:00:00\x1b[0m \x1b[32m16 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m16/7 bytes \x1b[0m \x1b[31m2 bytes/s\x1b[0m\r\x1b[2K\x1b[1A\x1b[2Ktest foo \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m0:00:00\x1b[0m \x1b[32m12 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m12/10 bytes\x1b[0m \x1b[31m1 byte/s \x1b[0m\ntest bar \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m0:00:00\x1b[0m \x1b[32m16 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m16/7 bytes \x1b[0m \x1b[31m2 bytes/s\x1b[0m\n\x1b[?25h\r\x1b[1A\x1b[2K\x1b[1A\x1b[2K'
__________________________________ test_test ___________________________________
----------------------------- Captured stdout call -----------------------------
[31mhello[0m
_________________________________ test_handler _________________________________
----------------------------- Captured stdout call -----------------------------
'Traceback (most recent call last):\n╭──────────────────────────────────────────────────────────────────────────────────────────────────╮\n│ File "/home/rich/tests/test_traceback.py", line 26, in test_handler                              │\n│     23     try:                                                                                  │\n│     24         old_handler = install(console=console)                                            │\n│     25         try:                                                                              │\n│  ❱  26             1 / 0                                                                         │\n│     27         except Exception:                                                                 │\n│     28             exc_type, exc_value, traceback = sys.exc_info()                               │\n│     29             sys.excepthook(exc_type, exc_value, traceback)                                │\n╰──────────────────────────────────────────────────────────────────────────────────────────────────╯\nZeroDivisionError: division by zero\n'
=========================== short test summary info ============================
PASSED tests/test_inspect.py::test_render
PASSED tests/test_inspect.py::test_inspect_integer
PASSED tests/test_progress.py::test_bar_columns
PASSED tests/test_progress.py::test_text_column
PASSED tests/test_progress.py::test_time_remaining_column
PASSED tests/test_progress.py::test_task_ids
PASSED tests/test_progress.py::test_finished
PASSED tests/test_progress.py::test_expand_bar
PASSED tests/test_progress.py::test_render
PASSED tests/test_progress.py::test_track
PASSED tests/test_progress.py::test_progress_track
PASSED tests/test_progress.py::test_columns
PASSED tests/test_progress.py::test_task_create
PASSED tests/test_progress.py::test_task_start
PASSED tests/test_progress.py::test_task_zero_total
PASSED tests/test_progress.py::test_progress_create
PASSED tests/test_progress.py::test_refresh_thread
PASSED tests/test_progress.py::test_track_thread
PASSED tests/test_style.py::test_str
PASSED tests/test_style.py::test_ansi_codes
PASSED tests/test_style.py::test_repr
PASSED tests/test_style.py::test_eq
PASSED tests/test_style.py::test_hash
PASSED tests/test_style.py::test_bool
PASSED tests/test_style.py::test_color_property
PASSED tests/test_style.py::test_bgcolor_property
PASSED tests/test_style.py::test_parse
PASSED tests/test_style.py::test_link_id
PASSED tests/test_style.py::test_get_html_style
PASSED tests/test_style.py::test_chain
PASSED tests/test_style.py::test_copy
PASSED tests/test_style.py::test_render
PASSED tests/test_style.py::test_test
PASSED tests/test_style.py::test_add
PASSED tests/test_style.py::test_iadd
PASSED tests/test_style.py::test_style_stack
PASSED tests/test_style.py::test_pick_first
PASSED tests/test_traceback.py::test_handler
PASSED tests/test_traceback.py::test_capture
PASSED tests/test_traceback.py::test_no_exception
PASSED tests/test_traceback.py::test_print_exception
PASSED tests/test_traceback.py::test_syntax_error
PASSED tests/test_traceback.py::test_nested_exception
PASSED tests/test_traceback.py::test_filename_with_bracket
PASSED tests/test_traceback.py::test_filename_not_a_file
ERROR tests/test_console.py
FAILED tests/test_inspect.py::test_inspect_text - AssertionError: assert '╭───────────...──────────╯\n' == '╭───────────...──────────╯\n'
  
    ╭──────────────── <class 'str'> ─────────────────╮
    │ str(object='') -> str                          │
    │ str(bytes_or_buffer[, encoding[, errors]]) ->  │
    │ str                                            │
    │                                                │
  - │ 34 attribute(s) not shown. Use                 │
  ?    ^
  + │ 33 attribute(s) not shown. Use                 │
  ?    ^
    │ inspect(<OBJECT>, all=True) to see all         │
    │ attributes.                                    │
    ╰────────────────────────────────────────────────╯
FAILED tests/test_inspect.py::test_inspect_empty_dict - AssertionError: assert '╭───────────...──────────╯\n' == '╭───────────...──────────╯\n'
  
    ╭──────────────── <class 'dict'> ────────────────╮
    │ dict() -> new empty dictionary                 │
    │ dict(mapping) -> new dictionary initialized    │
    │ from a mapping object's                        │
    │     (key, value) pairs                         │
    │ dict(iterable) -> new dictionary initialized   │
    │ as if via:                                     │
    │     d = {}                                     │
    │     for k, v in iterable:                      │
    │         d[k] = v                               │
    │ dict(**kwargs) -> new dictionary initialized   │
    │ with the name=value pairs                      │
    │     in the keyword argument list.  For         │
    │ example:  dict(one=1, two=2)                   │
    │                                                │
  - │ 35 attribute(s) not shown. Use                 │
  ?    ^
  + │ 30 attribute(s) not shown. Use                 │
  ?    ^
    │ inspect(<OBJECT>, all=True) to see all         │
    │ attributes.                                    │
    ╰────────────────────────────────────────────────╯
FAILED tests/test_inspect.py::test_inspect_builtin_function - AssertionError: assert '╭────────── ...──────────╯\n' == '╭────────── ...──────────╯\n'
  
    ╭────────── <built-in function print> ───────────╮
  - │ def print(*args, sep=' ', end='\n', file=None, │
  - │ flush=False):                                  │
  ?    ^^^^^^^^^^ --
  + │ def print(...)                                 │
  ?   ++ ^^^^^^^^^^
    │                                                │
  - │ Prints the values to a stream, or to           │
  - │ sys.stdout by default.                         │
  + │ print(value, ..., sep=' ', end='\n',           │
  + │ file=sys.stdout, flush=False)                  │
    │                                                │
  - │ 30 attribute(s) not shown. Use                 │
  ?   ^^
  + │ 29 attribute(s) not shown. Use                 │
  ?   ^^
    │ inspect(<OBJECT>, all=True) to see all         │
    │ attributes.                                    │
    ╰────────────────────────────────────────────────╯
FAILED tests/test_inspect.py::test_inspect_integer_with_methods - AssertionError: assert '╭───────────...──────────╯\n' == '╭───────────...──────────╯\n'
  
    ╭──────────────── <class 'int'> ─────────────────╮
    │ int([x]) -> integer                            │
    │ int(x, base=10) -> integer                     │
    │                                                │
    │      denominator = 1                           │
    │             imag = 0                           │
    │        numerator = 1                           │
    │             real = 1                           │
    │ as_integer_ratio = def as_integer_ratio():     │
  - │                    Return a pair of integers,  │
  ?                            ----------        ^^
  + │                    Return integer ratio.       │
  ?                                    ^^^^^^^^^^^^
  - │                    whose ratio is equal to the │
  - │                    original int.               │
  - │        bit_count = def bit_count(): Number of  │
  - │                    ones in the binary          │
  - │                    representation of the       │
  - │                    absolute value of self.     │
    │       bit_length = def bit_length(): Number of │
    │                    bits necessary to represent │
    │                    self in binary.             │
    │        conjugate = def conjugate(...) Returns  │
    │                    self, the complex conjugate │
    │                    of any int.                 │
    │       from_bytes = def from_bytes(bytes,       │
  - │                    byteorder='big', *,         │
  ?                               ------
  + │                    byteorder, *,               │
  ?                                            ++++++
    │                    signed=False): Return the   │
    │                    integer represented by the  │
    │                    given array of bytes.       │
  - │       is_integer = def is_integer(): Returns   │
  - │                    True. Exists for duck type  │
  - │                    compatibility with          │
  - │                    float.is_integer.           │
  - │         to_bytes = def to_bytes(length=1,      │
  ?                                         --
  + │         to_bytes = def to_bytes(length,        │
  ?                                          ++
  - │                    byteorder='big', *,         │
  ?                               ------
  + │                    byteorder, *,               │
  ?                                            ++++++
    │                    signed=False): Return an    │
    │                    array of bytes representing │
    │                    an integer.                 │
    ╰────────────────────────────────────────────────╯
FAILED tests/test_logging.py::test_log - AssertionError: assert '' == '\x1b[2;36m[D...m:29\x1b[0m\n'
  
  - [2;36m[DATE][0m[2;36m [0m[32mDEBUG[0m    foo                                           [2mtest_logging.py[0m[2m:29[0m
FAILED tests/test_logging.py::test_exception - TypeError: RichHandler.__init__() got an unexpected keyword argument 'rich_tracebacks'
FAILED tests/test_logging.py::test_exception_with_extra_lines - TypeError: RichHandler.__init__() got an unexpected keyword argument 'rich_tracebacks'
FAILED tests/test_style.py::test_empty - AttributeError: type object 'Style' has no attribute 'empty'
FAILED tests/test_tabulate.py::test_tabulate_mapping - AssertionError: assert 'center' == None
 +  where None = <rich.table.Table object at 0xffffbc9b93a0>.title_justify
FAILED tests/test_traceback.py::test_exception_render - NameError: name 'render' is not defined
==================== 10 failed, 45 passed, 1 error in 0.72s ====================
