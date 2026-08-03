error: tests/test_console.py: does not match index
error: tests/test_pretty.py: does not match index
Checking patch tests/test_console.py...
Checking patch tests/test_pretty.py...
Applied patch tests/test_console.py cleanly.
Applied patch tests/test_pretty.py cleanly.
Checking patch fix_imports.py...
Checking patch out.html...
Checking patch out.txt...
Checking patch reproduce.py...
Checking patch reproduce_12.py...
Checking patch reproduce_14.py...
Checking patch reproduce_15.py...
Checking patch rich/__init__.py...
Checking patch rich/__main__.py...
Checking patch rich/_emoji_replace.py...
Checking patch rich/color.py...
Checking patch rich/columns.py...
Checking patch rich/console.py...
Checking patch rich/containers.py...
Checking patch rich/control.py...
Checking patch rich/json.py...
Checking patch rich/logging.py...
Checking patch rich/pretty.py...
Checking patch rich/progress.py...
Checking patch rich/protocol.py...
Checking patch rich/screen.py...
Checking patch rich/table.py...
Applied patch fix_imports.py cleanly.
Applied patch out.html cleanly.
Applied patch out.txt cleanly.
Applied patch reproduce.py cleanly.
Applied patch reproduce_12.py cleanly.
Applied patch reproduce_14.py cleanly.
Applied patch reproduce_15.py cleanly.
Applied patch rich/__init__.py cleanly.
Applied patch rich/__main__.py cleanly.
Applied patch rich/_emoji_replace.py cleanly.
Applied patch rich/color.py cleanly.
Applied patch rich/columns.py cleanly.
Applied patch rich/console.py cleanly.
Applied patch rich/containers.py cleanly.
Applied patch rich/control.py cleanly.
Applied patch rich/json.py cleanly.
Applied patch rich/logging.py cleanly.
Applied patch rich/pretty.py cleanly.
Applied patch rich/progress.py cleanly.
Applied patch rich/protocol.py cleanly.
Applied patch rich/screen.py cleanly.
Applied patch rich/table.py cleanly.
============================= test session starts ==============================
platform linux -- Python 3.12.13, pytest-9.1.1, pluggy-1.6.0 -- /usr/local/bin/python
rootdir: /home/rich/tests
configfile: pytest.ini
plugins: anyio-4.14.0, asyncio-1.4.0, mock-3.15.1, timeout-2.4.0
asyncio: mode=Mode.STRICT, debug=False, asyncio_default_fixture_loop_scope=None, asyncio_default_test_loop_scope=function
timeout: 30.0s
timeout method: signal
timeout func_only: False
collecting ... collected 92 items

tests/test_console.py::test_dumb_terminal PASSED                         [  1%]
tests/test_console.py::test_soft_wrap PASSED                             [  2%]
tests/test_console.py::test_16color_terminal PASSED                      [  3%]
tests/test_console.py::test_truecolor_terminal PASSED                    [  4%]
tests/test_console.py::test_console_options_update PASSED                [  5%]
tests/test_console.py::test_init PASSED                                  [  6%]
tests/test_console.py::test_size PASSED                                  [  7%]
tests/test_console.py::test_repr PASSED                                  [  8%]
tests/test_console.py::test_print PASSED                                 [  9%]
tests/test_console.py::test_print_json PASSED                            [ 10%]
tests/test_console.py::test_print_json_error PASSED                      [ 11%]
tests/test_console.py::test_print_json_data PASSED                       [ 13%]
tests/test_console.py::test_log PASSED                                   [ 14%]
tests/test_console.py::test_log_milliseconds PASSED                      [ 15%]
tests/test_console.py::test_print_empty PASSED                           [ 16%]
tests/test_console.py::test_markup_highlight PASSED                      [ 17%]
tests/test_console.py::test_print_style PASSED                           [ 18%]
tests/test_console.py::test_show_cursor PASSED                           [ 19%]
tests/test_console.py::test_clear PASSED                                 [ 20%]
tests/test_console.py::test_clear_no_terminal PASSED                     [ 21%]
tests/test_console.py::test_get_style PASSED                             [ 22%]
tests/test_console.py::test_get_style_default PASSED                     [ 23%]
tests/test_console.py::test_get_style_error PASSED                       [ 25%]
tests/test_console.py::test_render_error PASSED                          [ 26%]
tests/test_console.py::test_control PASSED                               [ 27%]
tests/test_console.py::test_capture PASSED                               [ 28%]
tests/test_console.py::test_input PASSED                                 [ 29%]
tests/test_console.py::test_input_legacy_windows PASSED                  [ 30%]
tests/test_console.py::test_input_password PASSED                        [ 31%]
tests/test_console.py::test_status PASSED                                [ 32%]
tests/test_console.py::test_justify_none PASSED                          [ 33%]
tests/test_console.py::test_justify_left PASSED                          [ 34%]
tests/test_console.py::test_justify_center PASSED                        [ 35%]
tests/test_console.py::test_justify_right PASSED                         [ 36%]
tests/test_console.py::test_justify_renderable_none PASSED               [ 38%]
tests/test_console.py::test_justify_renderable_left PASSED               [ 39%]
tests/test_console.py::test_justify_renderable_center PASSED             [ 40%]
tests/test_console.py::test_justify_renderable_right PASSED              [ 41%]
tests/test_console.py::test_render_broken_renderable PASSED              [ 42%]
tests/test_console.py::test_export_text PASSED                           [ 43%]
tests/test_console.py::test_export_html FAILED                           [ 44%]
tests/test_console.py::test_export_html_inline PASSED                    [ 45%]
tests/test_console.py::test_save_text PASSED                             [ 46%]
tests/test_console.py::test_save_html PASSED                             [ 47%]
tests/test_console.py::test_no_wrap PASSED                               [ 48%]
tests/test_console.py::test_unicode_error PASSED                         [ 50%]
tests/test_console.py::test_bell PASSED                                  [ 51%]
tests/test_console.py::test_pager PASSED                                 [ 52%]
tests/test_console.py::test_out PASSED                                   [ 53%]
tests/test_console.py::test_render_group PASSED                          [ 54%]
tests/test_console.py::test_render_group_fit PASSED                      [ 55%]
tests/test_console.py::test_get_time PASSED                              [ 56%]
tests/test_console.py::test_console_style PASSED                         [ 57%]
tests/test_console.py::test_no_color PASSED                              [ 58%]
tests/test_console.py::test_quiet PASSED                                 [ 59%]
tests/test_console.py::test_no_nested_live PASSED                        [ 60%]
tests/test_console.py::test_screen PASSED                                [ 61%]
tests/test_console.py::test_screen_update PASSED                         [ 63%]
tests/test_console.py::test_height PASSED                                [ 64%]
tests/test_console.py::test_columns_env PASSED                           [ 65%]
tests/test_console.py::test_lines_env PASSED                             [ 66%]
tests/test_console.py::test_screen_update_class PASSED                   [ 67%]
tests/test_console.py::test_is_alt_screen PASSED                         [ 68%]
tests/test_console.py::test_update_screen PASSED                         [ 69%]
tests/test_console.py::test_update_screen_lines PASSED                   [ 70%]
tests/test_console.py::test_update_options_markup PASSED                 [ 71%]
tests/test_console.py::test_print_width_zero PASSED                      [ 72%]
tests/test_console.py::test_size_properties PASSED                       [ 73%]
tests/test_console.py::test_print_newline_start PASSED                   [ 75%]
tests/test_pretty.py::test_install PASSED                                [ 76%]
tests/test_pretty.py::test_pretty PASSED                                 [ 77%]
tests/test_pretty.py::test_pretty_dataclass FAILED                       [ 78%]
tests/test_pretty.py::test_small_width PASSED                            [ 79%]
tests/test_pretty.py::test_broken_repr PASSED                            [ 80%]
tests/test_pretty.py::test_recursive PASSED                              [ 81%]
tests/test_pretty.py::test_defaultdict PASSED                            [ 82%]
tests/test_pretty.py::test_array PASSED                                  [ 83%]
tests/test_pretty.py::test_tuple_of_one PASSED                           [ 84%]
tests/test_pretty.py::test_node PASSED                                   [ 85%]
tests/test_pretty.py::test_indent_lines PASSED                           [ 86%]
tests/test_pretty.py::test_pprint PASSED                                 [ 88%]
tests/test_pretty.py::test_pprint_max_values PASSED                      [ 89%]
tests/test_pretty.py::test_pprint_max_items PASSED                       [ 90%]
tests/test_pretty.py::test_pprint_max_string PASSED                      [ 91%]
tests/test_pretty.py::test_tuples PASSED                                 [ 92%]
tests/test_pretty.py::test_newline PASSED                                [ 93%]
tests/test_pretty.py::test_empty_repr PASSED                             [ 94%]
tests/test_pretty.py::test_attrs PASSED                                  [ 95%]
tests/test_pretty.py::test_attrs_empty PASSED                            [ 96%]
tests/test_pretty.py::test_attrs_broken FAILED                           [ 97%]
tests/test_pretty.py::test_user_dict PASSED                              [ 98%]
tests/test_pretty.py::test_lying_attribute PASSED                        [100%]

=================================== FAILURES ===================================
_______________________________ test_export_html _______________________________

    def test_export_html():
        console = Console(record=True, width=100)
        console.print("[b]foo <script> 'test' [link=https://example.org]Click[/link]")
        html = console.export_html()
        expected = '<!DOCTYPE html>\n<head>\n<meta charset="UTF-8">\n<style>\n.r1 {font-weight: bold}\n.r2 {color: #ff00ff; text-decoration-color: #ff00ff; font-weight: bold}\n.r3 {color: #008000; text-decoration-color: #008000; font-weight: bold}\nbody {\n    color: #000000;\n    background-color: #ffffff;\n}\n</style>\n</head>\n<html>\n<body>\n    <code>\n        <pre style="font-family:Menlo,\'DejaVu Sans Mono\',consolas,\'Courier New\',monospace"><span class="r1">foo &lt;</span><span class="r2">script</span><span class="r1">&gt; </span><span class="r3">&#x27;test&#x27;</span><span class="r1"> </span><a class="r1" href="https://example.org">Click</a>\n</pre>\n    </code>\n</body>\n</html>\n'
>       assert html == expected
E       assert '<!DOCTYPE ht...y>\n</html>\n' == '<!DOCTYPE ht...y>\n</html>\n'
E         
E           <!DOCTYPE html>
E           <head>
E           <meta charset="UTF-8">
E           <style>
E           .r1 {font-weight: bold}
E           .r2 {color: #ff00ff; text-decoration-color: #ff00ff; font-weight: bold}
E           .r3 {color: #008000; text-decoration-color: #008000; font-weight: bold}
E           body {
E               color: #000000;
E               background-color: #ffffff;
E           }
E           </style>
E           </head>
E           <html>
E           <body>
E               <code>
E         -         <pre style="font-family:Menlo,'DejaVu Sans Mono',consolas,'Courier New',monospace"><span class="r1">foo &lt;</span><span class="r2">script</span><span class="r1">&gt; </span><span class="r3">&#x27;test&#x27;</span><span class="r1"> </span><a class="r1" href="https://example.org">Click</a>
E         ?                                                                                                                                                                                                        ^^ ---------------------------------------------------------------------------
E         +         <pre style="font-family:Menlo,'DejaVu Sans Mono',consolas,'Courier New',monospace"><span class="r1">foo &lt;</span><span class="r2">script</span><span class="r1">&gt; </span><span class="r3">'test'</span><span class="r1"> </span><a class="r1" href="https://example.org">Click</a>
E         ?                                                                                                                                                                                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
E           </pre>
E               </code>
E           </body>
E           </html>

tests/test_console.py:401: AssertionError
----------------------------- Captured stdout call -----------------------------
foo <script> 'test' Click
____________________________ test_pretty_dataclass _____________________________

    def test_pretty_dataclass():
        dc = ExampleDataclass(1000, "Hello, World", 999, ["foo", "bar", "baz"])
        result = pretty_repr(dc, max_width=80)
        print(repr(result))
        assert (
            result
            == "ExampleDataclass(foo=1000, bar='Hello, World', baz=['foo', 'bar', 'baz'])"
        )
        result = pretty_repr(dc, max_width=16)
        print(repr(result))
>       assert (
            result
            == "ExampleDataclass(\n    foo=1000,\n    bar='Hello, World',\n    baz=[\n        'foo',\n        'bar',\n        'baz'\n    ]\n)"
        )
E       assert "ExampleDatac...bar', 'baz'])" == "ExampleDatac...az'\n    ]\n)"
E         
E         + ExampleDataclass(foo=1000, bar='Hello, World', baz=['foo', 'bar', 'baz'])
E         - ExampleDataclass(
E         -     foo=1000,
E         -     bar='Hello, World',
E         -     baz=[
E         -         'foo',
E         -         'bar',
E         -         'baz'
E         -     ]
E         - )

tests/test_pretty.py:65: AssertionError
----------------------------- Captured stdout call -----------------------------
"ExampleDataclass(foo=1000, bar='Hello, World', baz=['foo', 'bar', 'baz'])"
"ExampleDataclass(foo=1000, bar='Hello, World', baz=['foo', 'bar', 'baz'])"
______________________________ test_attrs_broken _______________________________

    @skip_py36
    def test_attrs_broken():
        @attr.define
        class Foo:
            bar: int
    
        foo = Foo(1)
        del foo.bar
        result = pretty_repr(foo)
        print(repr(result))
        expected = "Foo(bar=AttributeError('bar'))"
>       assert result == expected
E       assert 'Foo(bar=Attr...te \'bar\'"))' == "Foo(bar=Attr...Error('bar'))"
E         
E         - Foo(bar=AttributeError('bar'))
E         + Foo(bar=AttributeError("'Foo' object has no attribute 'bar'"))

tests/test_pretty.py:234: AssertionError
----------------------------- Captured stdout call -----------------------------
'Foo(bar=AttributeError("\'Foo\' object has no attribute \'bar\'"))'
==================================== PASSES ====================================
_______________________________ test_print_json ________________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[1m[\x1b[0m\n    \x1b[3;91mfalse\x1b[0m,\n    \x1b[3;92mtrue\x1b[0m,\n    \x1b[3;35mnull\x1b[0m,\n    \x1b[32m"foo"\x1b[0m\n\x1b[1m]\x1b[0m\n'
_____________________________ test_print_json_data _____________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[1m[\x1b[0m\n    \x1b[3;91mfalse\x1b[0m,\n    \x1b[3;92mtrue\x1b[0m,\n    \x1b[3;35mnull\x1b[0m,\n    \x1b[32m"foo"\x1b[0m\n\x1b[1m]\x1b[0m\n'
___________________________________ test_log ___________________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[2;36mTIME\x1b[0m\x1b[2;36m \x1b[0m\x1b[31mfoo                                                                        \x1b[0m\n'
_______________________________ test_export_text _______________________________
----------------------------- Captured stdout call -----------------------------
foo
___________________________ test_export_html_inline ____________________________
----------------------------- Captured stdout call -----------------------------
foo Click
________________________________ test_save_text ________________________________
----------------------------- Captured stdout call -----------------------------
foo
________________________________ test_save_html ________________________________
----------------------------- Captured stdout call -----------------------------
foo
________________________________ test_no_color _________________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[1mFOO\x1b[0m\n'
_________________________________ test_screen __________________________________
----------------------------- Captured stdout call -----------------------------
"\x1b[?1049h\x1b[H\x1b[?25lDon't panic\n\x1b[?1049l\x1b[?25h"
______________________________ test_screen_update ______________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[?1049h\x1b[H\x1b[?25l\x1b[34mfoo\x1b[0m\x1b[34m                 \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\x1b[34mbar\x1b[0m\x1b[34m                 \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\x1b[34mbar\x1b[0m\x1b[34m                 \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\n\x1b[34m                    \x1b[0m\x1b[?1049l\x1b[?25h'
___________________________ test_screen_update_class ___________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[11;6Hfoo\x1b[12;6Hbar'
______________________________ test_is_alt_screen ______________________________
----------------------------- Captured stdout call -----------------------------
[?1049h[H[?25l[?1049l[?25h
______________________________ test_update_screen ______________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[?1049h\x1b[H\x1b[?25l\x1b[1;1Hfoo                 \x1b[2;1H                    \x1b[3;1H                    \x1b[4;1H                    \x1b[5;1H                    \x1b[4;3Hbar     \x1b[5;3H        \x1b[6;3H        \x1b[7;3H        \x1b[?1049l\x1b[?25h'
_________________________________ test_pretty __________________________________
----------------------------- Captured stdout call -----------------------------
{
    'foo': [1, 2, 3, (4, 5, {6}, 7, 8, {9}), {}],
    'bar': {
        'egg': 'baz',
        'words': [
            'Hello World',
            'Hello World',
            'Hello World',
            'Hello World',
            'Hello World',
            'Hello World',
            'Hello World',
            'Hello World',
            'Hello World',
            'Hello World'
        ]
    },
    False: 'foo',
    True: '',
    'text': ('Hello World', 'foo bar baz egg')
}
{
    'foo': [1, 2, 3, (4, 5, {6}, 7, 8, {9}), {}],
    'bar': {
        'egg': 'baz',
        'words': [
            'Hello World',
            'Hello World',
            'Hello World',
            'Hello World',
            'Hello World',
            'Hello World',
            'Hello World',
            'Hello World',
            'Hello World',
            'Hello World'
        ]
    },
    False: 'foo',
    True: '',
    'text': ('Hello World', 'foo bar baz egg')
}
______________________________ test_indent_lines _______________________________
----------------------------- Captured stdout call -----------------------------
'[\n│   100,\n│   200\n]\n'
[
│   100,
│   200
]

_________________________________ test_tuples __________________________________
----------------------------- Captured stdout call -----------------------------
'(1,)\n(\n│   1,\n)\n(\n│   (\n│   │   1,\n│   ),\n)\n'
(1,)
(
│   1,
)
(
│   (
│   │   1,
│   ),
)

--
(1,)
(
│   1,
)
(
│   (
│   │   1,
│   ),
)

__________________________________ test_attrs __________________________________
----------------------------- Captured stdout call -----------------------------
'Point(x=1, y=2, foo=BAR, z=0)'
_______________________________ test_attrs_empty _______________________________
----------------------------- Captured stdout call -----------------------------
'Nada()'
________________________________ test_user_dict ________________________________
----------------------------- Captured stdout call -----------------------------
"{\n    'foo': 'bar'\n}"
'FOO'
=========================== short test summary info ============================
PASSED tests/test_console.py::test_dumb_terminal
PASSED tests/test_console.py::test_soft_wrap
PASSED tests/test_console.py::test_16color_terminal
PASSED tests/test_console.py::test_truecolor_terminal
PASSED tests/test_console.py::test_console_options_update
PASSED tests/test_console.py::test_init
PASSED tests/test_console.py::test_size
PASSED tests/test_console.py::test_repr
PASSED tests/test_console.py::test_print
PASSED tests/test_console.py::test_print_json
PASSED tests/test_console.py::test_print_json_error
PASSED tests/test_console.py::test_print_json_data
PASSED tests/test_console.py::test_log
PASSED tests/test_console.py::test_log_milliseconds
PASSED tests/test_console.py::test_print_empty
PASSED tests/test_console.py::test_markup_highlight
PASSED tests/test_console.py::test_print_style
PASSED tests/test_console.py::test_show_cursor
PASSED tests/test_console.py::test_clear
PASSED tests/test_console.py::test_clear_no_terminal
PASSED tests/test_console.py::test_get_style
PASSED tests/test_console.py::test_get_style_default
PASSED tests/test_console.py::test_get_style_error
PASSED tests/test_console.py::test_render_error
PASSED tests/test_console.py::test_control
PASSED tests/test_console.py::test_capture
PASSED tests/test_console.py::test_input
PASSED tests/test_console.py::test_input_legacy_windows
PASSED tests/test_console.py::test_input_password
PASSED tests/test_console.py::test_status
PASSED tests/test_console.py::test_justify_none
PASSED tests/test_console.py::test_justify_left
PASSED tests/test_console.py::test_justify_center
PASSED tests/test_console.py::test_justify_right
PASSED tests/test_console.py::test_justify_renderable_none
PASSED tests/test_console.py::test_justify_renderable_left
PASSED tests/test_console.py::test_justify_renderable_center
PASSED tests/test_console.py::test_justify_renderable_right
PASSED tests/test_console.py::test_render_broken_renderable
PASSED tests/test_console.py::test_export_text
PASSED tests/test_console.py::test_export_html_inline
PASSED tests/test_console.py::test_save_text
PASSED tests/test_console.py::test_save_html
PASSED tests/test_console.py::test_no_wrap
PASSED tests/test_console.py::test_unicode_error
PASSED tests/test_console.py::test_bell
PASSED tests/test_console.py::test_pager
PASSED tests/test_console.py::test_out
PASSED tests/test_console.py::test_render_group
PASSED tests/test_console.py::test_render_group_fit
PASSED tests/test_console.py::test_get_time
PASSED tests/test_console.py::test_console_style
PASSED tests/test_console.py::test_no_color
PASSED tests/test_console.py::test_quiet
PASSED tests/test_console.py::test_no_nested_live
PASSED tests/test_console.py::test_screen
PASSED tests/test_console.py::test_screen_update
PASSED tests/test_console.py::test_height
PASSED tests/test_console.py::test_columns_env
PASSED tests/test_console.py::test_lines_env
PASSED tests/test_console.py::test_screen_update_class
PASSED tests/test_console.py::test_is_alt_screen
PASSED tests/test_console.py::test_update_screen
PASSED tests/test_console.py::test_update_screen_lines
PASSED tests/test_console.py::test_update_options_markup
PASSED tests/test_console.py::test_print_width_zero
PASSED tests/test_console.py::test_size_properties
PASSED tests/test_console.py::test_print_newline_start
PASSED tests/test_pretty.py::test_install
PASSED tests/test_pretty.py::test_pretty
PASSED tests/test_pretty.py::test_small_width
PASSED tests/test_pretty.py::test_broken_repr
PASSED tests/test_pretty.py::test_recursive
PASSED tests/test_pretty.py::test_defaultdict
PASSED tests/test_pretty.py::test_array
PASSED tests/test_pretty.py::test_tuple_of_one
PASSED tests/test_pretty.py::test_node
PASSED tests/test_pretty.py::test_indent_lines
PASSED tests/test_pretty.py::test_pprint
PASSED tests/test_pretty.py::test_pprint_max_values
PASSED tests/test_pretty.py::test_pprint_max_items
PASSED tests/test_pretty.py::test_pprint_max_string
PASSED tests/test_pretty.py::test_tuples
PASSED tests/test_pretty.py::test_newline
PASSED tests/test_pretty.py::test_empty_repr
PASSED tests/test_pretty.py::test_attrs
PASSED tests/test_pretty.py::test_attrs_empty
PASSED tests/test_pretty.py::test_user_dict
PASSED tests/test_pretty.py::test_lying_attribute
FAILED tests/test_console.py::test_export_html - assert '<!DOCTYPE ht...y>\n</html>\n' == '<!DOCTYPE ht...y>\n</html>\n'
  
    <!DOCTYPE html>
    <head>
    <meta charset="UTF-8">
    <style>
    .r1 {font-weight: bold}
    .r2 {color: #ff00ff; text-decoration-color: #ff00ff; font-weight: bold}
    .r3 {color: #008000; text-decoration-color: #008000; font-weight: bold}
    body {
        color: #000000;
        background-color: #ffffff;
    }
    </style>
    </head>
    <html>
    <body>
        <code>
  -         <pre style="font-family:Menlo,'DejaVu Sans Mono',consolas,'Courier New',monospace"><span class="r1">foo &lt;</span><span class="r2">script</span><span class="r1">&gt; </span><span class="r3">&#x27;test&#x27;</span><span class="r1"> </span><a class="r1" href="https://example.org">Click</a>
  ?                                                                                                                                                                                                        ^^ ---------------------------------------------------------------------------
  +         <pre style="font-family:Menlo,'DejaVu Sans Mono',consolas,'Courier New',monospace"><span class="r1">foo &lt;</span><span class="r2">script</span><span class="r1">&gt; </span><span class="r3">'test'</span><span class="r1"> </span><a class="r1" href="https://example.org">Click</a>
  ?                                                                                                                                                                                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    </pre>
        </code>
    </body>
    </html>
FAILED tests/test_pretty.py::test_pretty_dataclass - assert "ExampleDatac...bar', 'baz'])" == "ExampleDatac...az'\n    ]\n)"
  
  + ExampleDataclass(foo=1000, bar='Hello, World', baz=['foo', 'bar', 'baz'])
  - ExampleDataclass(
  -     foo=1000,
  -     bar='Hello, World',
  -     baz=[
  -         'foo',
  -         'bar',
  -         'baz'
  -     ]
  - )
FAILED tests/test_pretty.py::test_attrs_broken - assert 'Foo(bar=Attr...te \'bar\'"))' == "Foo(bar=Attr...Error('bar'))"
  
  - Foo(bar=AttributeError('bar'))
  + Foo(bar=AttributeError("'Foo' object has no attribute 'bar'"))
========================= 3 failed, 89 passed in 0.29s =========================
