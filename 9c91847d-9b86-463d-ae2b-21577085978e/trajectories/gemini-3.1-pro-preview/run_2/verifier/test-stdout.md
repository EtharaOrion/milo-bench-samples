error: tests/test_console.py: does not match index
error: tests/test_segment.py: does not match index
error: tests/test_style.py: does not match index
Falling back to direct application...
Checking patch tests/test_console.py...
Checking patch tests/test_segment.py...
Checking patch tests/test_style.py...
Checking patch tests/test_tree.py...
Applied patch tests/test_console.py cleanly.
Applied patch tests/test_segment.py cleanly.
Applied patch tests/test_style.py cleanly.
Applied patch tests/test_tree.py cleanly.
Checking patch docs/requirements.txt...
Checking patch docs/source/progress.rst...
Checking patch poetry.lock...
Checking patch rich/console.py...
Applied patch docs/requirements.txt cleanly.
Applied patch docs/source/progress.rst cleanly.
Applied patch poetry.lock cleanly.
Applied patch rich/console.py cleanly.
============================= test session starts ==============================
platform linux -- Python 3.12.13, pytest-9.1.1, pluggy-1.6.0 -- /usr/local/bin/python
rootdir: /home/rich/tests
configfile: pytest.ini
plugins: anyio-4.6.2.post1, asyncio-1.4.0, mock-3.15.1, timeout-2.4.0
asyncio: mode=Mode.STRICT, debug=False, asyncio_default_fixture_loop_scope=None, asyncio_default_test_loop_scope=function
timeout: 30.0s
timeout method: signal
timeout func_only: False
collecting ... collected 86 items / 1 error

tests/test_console.py::test_dumb_terminal PASSED                         [  1%]
tests/test_console.py::test_soft_wrap PASSED                             [  2%]
tests/test_console.py::test_16color_terminal PASSED                      [  3%]
tests/test_console.py::test_truecolor_terminal PASSED                    [  4%]
tests/test_console.py::test_console_options_update PASSED                [  5%]
tests/test_console.py::test_init PASSED                                  [  6%]
tests/test_console.py::test_size PASSED                                  [  8%]
tests/test_console.py::test_repr PASSED                                  [  9%]
tests/test_console.py::test_print PASSED                                 [ 10%]
tests/test_console.py::test_log PASSED                                   [ 11%]
tests/test_console.py::test_print_empty PASSED                           [ 12%]
tests/test_console.py::test_markup_highlight PASSED                      [ 13%]
tests/test_console.py::test_print_style PASSED                           [ 15%]
tests/test_console.py::test_show_cursor PASSED                           [ 16%]
tests/test_console.py::test_clear PASSED                                 [ 17%]
tests/test_console.py::test_clear_no_terminal PASSED                     [ 18%]
tests/test_console.py::test_get_style PASSED                             [ 19%]
tests/test_console.py::test_get_style_default PASSED                     [ 20%]
tests/test_console.py::test_get_style_error PASSED                       [ 22%]
tests/test_console.py::test_render_error PASSED                          [ 23%]
tests/test_console.py::test_control PASSED                               [ 24%]
tests/test_console.py::test_capture PASSED                               [ 25%]
tests/test_console.py::test_input PASSED                                 [ 26%]
tests/test_console.py::test_input_legacy_windows PASSED                  [ 27%]
tests/test_console.py::test_input_password PASSED                        [ 29%]
tests/test_console.py::test_status PASSED                                [ 30%]
tests/test_console.py::test_justify_none PASSED                          [ 31%]
tests/test_console.py::test_justify_left PASSED                          [ 32%]
tests/test_console.py::test_justify_center PASSED                        [ 33%]
tests/test_console.py::test_justify_right PASSED                         [ 34%]
tests/test_console.py::test_justify_renderable_none PASSED               [ 36%]
tests/test_console.py::test_justify_renderable_left PASSED               [ 37%]
tests/test_console.py::test_justify_renderable_center PASSED             [ 38%]
tests/test_console.py::test_justify_renderable_right PASSED              [ 39%]
tests/test_console.py::test_render_broken_renderable PASSED              [ 40%]
tests/test_console.py::test_export_text PASSED                           [ 41%]
tests/test_console.py::test_export_html PASSED                           [ 43%]
tests/test_console.py::test_export_html_inline PASSED                    [ 44%]
tests/test_console.py::test_save_text PASSED                             [ 45%]
tests/test_console.py::test_save_html PASSED                             [ 46%]
tests/test_console.py::test_no_wrap PASSED                               [ 47%]
tests/test_console.py::test_unicode_error PASSED                         [ 48%]
tests/test_console.py::test_bell PASSED                                  [ 50%]
tests/test_console.py::test_pager PASSED                                 [ 51%]
tests/test_console.py::test_out PASSED                                   [ 52%]
tests/test_console.py::test_render_group PASSED                          [ 53%]
tests/test_console.py::test_render_group_fit PASSED                      [ 54%]
tests/test_console.py::test_get_time PASSED                              [ 55%]
tests/test_console.py::test_console_style PASSED                         [ 56%]
tests/test_console.py::test_no_color FAILED                              [ 58%]
tests/test_segment.py::test_repr PASSED                                  [ 59%]
tests/test_segment.py::test_line PASSED                                  [ 60%]
tests/test_segment.py::test_apply_style PASSED                           [ 61%]
tests/test_segment.py::test_split_lines PASSED                           [ 62%]
tests/test_segment.py::test_split_and_crop_lines PASSED                  [ 63%]
tests/test_segment.py::test_adjust_line_length PASSED                    [ 65%]
tests/test_segment.py::test_get_line_length PASSED                       [ 66%]
tests/test_segment.py::test_get_shape PASSED                             [ 67%]
tests/test_segment.py::test_set_shape PASSED                             [ 68%]
tests/test_segment.py::test_simplify PASSED                              [ 69%]
tests/test_segment.py::test_filter_control PASSED                        [ 70%]
tests/test_segment.py::test_strip_styles PASSED                          [ 72%]
tests/test_segment.py::test_strip_links PASSED                           [ 73%]
tests/test_segment.py::test_remove_color FAILED                          [ 74%]
tests/test_style.py::test_str PASSED                                     [ 75%]
tests/test_style.py::test_ansi_codes PASSED                              [ 76%]
tests/test_style.py::test_repr PASSED                                    [ 77%]
tests/test_style.py::test_eq PASSED                                      [ 79%]
tests/test_style.py::test_hash PASSED                                    [ 80%]
tests/test_style.py::test_empty PASSED                                   [ 81%]
tests/test_style.py::test_bool PASSED                                    [ 82%]
tests/test_style.py::test_color_property PASSED                          [ 83%]
tests/test_style.py::test_bgcolor_property PASSED                        [ 84%]
tests/test_style.py::test_parse PASSED                                   [ 86%]
tests/test_style.py::test_link_id PASSED                                 [ 87%]
tests/test_style.py::test_get_html_style PASSED                          [ 88%]
tests/test_style.py::test_chain PASSED                                   [ 89%]
tests/test_style.py::test_copy PASSED                                    [ 90%]
tests/test_style.py::test_render PASSED                                  [ 91%]
tests/test_style.py::test_test PASSED                                    [ 93%]
tests/test_style.py::test_add PASSED                                     [ 94%]
tests/test_style.py::test_iadd PASSED                                    [ 95%]
tests/test_style.py::test_style_stack PASSED                             [ 96%]
tests/test_style.py::test_pick_first PASSED                              [ 97%]
tests/test_style.py::test_background_style PASSED                        [ 98%]
tests/test_style.py::test_without_color FAILED                           [100%]

==================================== ERRORS ====================================
________________________ ERROR collecting test_tree.py _________________________
ImportError while importing test module '/home/rich/tests/test_tree.py'.
Hint: make sure your test modules/packages have valid Python names.
Traceback:
/usr/local/lib/python3.12/importlib/__init__.py:90: in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
tests/test_tree.py:2: in <module>
    from rich.tree import Tree
E   ModuleNotFoundError: No module named 'rich.tree'
=================================== FAILURES ===================================
________________________________ test_no_color _________________________________

    def test_no_color():
>       console = Console(
            file=io.StringIO(), color_system="truecolor", force_terminal=True, no_color=True
        )
E       TypeError: Console.__init__() got an unexpected keyword argument 'no_color'

tests/test_console.py:473: TypeError
______________________________ test_remove_color _______________________________

    def test_remove_color():
        segments = [
            Segment("foo", Style(bold=True, color="red")),
            Segment("bar", None),
        ]
>       assert list(Segment.remove_color(segments)) == [
                    ^^^^^^^^^^^^^^^^^^^^
            Segment("foo", Style(bold=True)),
            Segment("bar", None),
        ]
E       AttributeError: type object 'Segment' has no attribute 'remove_color'

tests/test_segment.py:106: AttributeError
______________________________ test_without_color ______________________________

    def test_without_color():
        style = Style(bold=True, color="red", bgcolor="blue")
>       colorless_style = style.without_color
                          ^^^^^^^^^^^^^^^^^^^
E       AttributeError: 'Style' object has no attribute 'without_color'

tests/test_style.py:203: AttributeError
==================================== PASSES ====================================
___________________________________ test_log ___________________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[2;36mTIME\x1b[0m\x1b[2;36m \x1b[0m\x1b[31mfoo\x1b[0m\x1b[31m                                                                        \x1b[0m\n'
_______________________________ test_export_text _______________________________
----------------------------- Captured stdout call -----------------------------
foo
_______________________________ test_export_html _______________________________
----------------------------- Captured stdout call -----------------------------
foo Click
___________________________ test_export_html_inline ____________________________
----------------------------- Captured stdout call -----------------------------
foo Click
________________________________ test_save_text ________________________________
----------------------------- Captured stdout call -----------------------------
foo
________________________________ test_save_html ________________________________
----------------------------- Captured stdout call -----------------------------
foo
__________________________________ test_test ___________________________________
----------------------------- Captured stdout call -----------------------------
[31mhello[0m
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
PASSED tests/test_console.py::test_log
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
PASSED tests/test_console.py::test_export_html
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
PASSED tests/test_segment.py::test_repr
PASSED tests/test_segment.py::test_line
PASSED tests/test_segment.py::test_apply_style
PASSED tests/test_segment.py::test_split_lines
PASSED tests/test_segment.py::test_split_and_crop_lines
PASSED tests/test_segment.py::test_adjust_line_length
PASSED tests/test_segment.py::test_get_line_length
PASSED tests/test_segment.py::test_get_shape
PASSED tests/test_segment.py::test_set_shape
PASSED tests/test_segment.py::test_simplify
PASSED tests/test_segment.py::test_filter_control
PASSED tests/test_segment.py::test_strip_styles
PASSED tests/test_segment.py::test_strip_links
PASSED tests/test_style.py::test_str
PASSED tests/test_style.py::test_ansi_codes
PASSED tests/test_style.py::test_repr
PASSED tests/test_style.py::test_eq
PASSED tests/test_style.py::test_hash
PASSED tests/test_style.py::test_empty
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
PASSED tests/test_style.py::test_background_style
ERROR tests/test_tree.py
FAILED tests/test_console.py::test_no_color - TypeError: Console.__init__() got an unexpected keyword argument 'no_color'
FAILED tests/test_segment.py::test_remove_color - AttributeError: type object 'Segment' has no attribute 'remove_color'
FAILED tests/test_style.py::test_without_color - AttributeError: 'Style' object has no attribute 'without_color'
==================== 3 failed, 83 passed, 1 error in 0.31s =====================
