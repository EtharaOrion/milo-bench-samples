Applied patch to 'tests/test_console.py' cleanly.
Applied patch to 'tests/test_segment.py' cleanly.
Applied patch to 'tests/test_style.py' cleanly.
Falling back to direct application...
Applied patch to 'CHANGELOG.md' cleanly.
Applied patch to 'docs/requirements.txt' cleanly.
Applied patch to 'docs/source/index.rst' cleanly.
Applied patch to 'docs/source/progress.rst' cleanly.
Applied patch to 'docs/source/reference.rst' cleanly.
Falling back to direct application...
Falling back to direct application...
Applied patch to 'rich/default_styles.py' cleanly.
Falling back to direct application...
============================= test session starts ==============================
platform linux -- Python 3.12.13, pytest-9.1.1, pluggy-1.6.0 -- /usr/local/bin/python
rootdir: /home/rich/tests
configfile: pytest.ini
plugins: anyio-4.6.2.post1, asyncio-1.4.0, mock-3.15.1, timeout-2.4.0
asyncio: mode=Mode.STRICT, debug=False, asyncio_default_fixture_loop_scope=None, asyncio_default_test_loop_scope=function
timeout: 30.0s
timeout method: signal
timeout func_only: False
collecting ... collected 91 items

tests/test_console.py::test_dumb_terminal PASSED                         [  1%]
tests/test_console.py::test_soft_wrap PASSED                             [  2%]
tests/test_console.py::test_16color_terminal PASSED                      [  3%]
tests/test_console.py::test_truecolor_terminal PASSED                    [  4%]
tests/test_console.py::test_console_options_update PASSED                [  5%]
tests/test_console.py::test_init PASSED                                  [  6%]
tests/test_console.py::test_size PASSED                                  [  7%]
tests/test_console.py::test_repr PASSED                                  [  8%]
tests/test_console.py::test_print PASSED                                 [  9%]
tests/test_console.py::test_log PASSED                                   [ 10%]
tests/test_console.py::test_print_empty PASSED                           [ 12%]
tests/test_console.py::test_markup_highlight PASSED                      [ 13%]
tests/test_console.py::test_print_style PASSED                           [ 14%]
tests/test_console.py::test_show_cursor PASSED                           [ 15%]
tests/test_console.py::test_clear PASSED                                 [ 16%]
tests/test_console.py::test_clear_no_terminal PASSED                     [ 17%]
tests/test_console.py::test_get_style PASSED                             [ 18%]
tests/test_console.py::test_get_style_default PASSED                     [ 19%]
tests/test_console.py::test_get_style_error PASSED                       [ 20%]
tests/test_console.py::test_render_error PASSED                          [ 21%]
tests/test_console.py::test_control PASSED                               [ 23%]
tests/test_console.py::test_capture PASSED                               [ 24%]
tests/test_console.py::test_input PASSED                                 [ 25%]
tests/test_console.py::test_input_legacy_windows PASSED                  [ 26%]
tests/test_console.py::test_input_password PASSED                        [ 27%]
tests/test_console.py::test_status PASSED                                [ 28%]
tests/test_console.py::test_justify_none PASSED                          [ 29%]
tests/test_console.py::test_justify_left PASSED                          [ 30%]
tests/test_console.py::test_justify_center PASSED                        [ 31%]
tests/test_console.py::test_justify_right PASSED                         [ 32%]
tests/test_console.py::test_justify_renderable_none PASSED               [ 34%]
tests/test_console.py::test_justify_renderable_left PASSED               [ 35%]
tests/test_console.py::test_justify_renderable_center PASSED             [ 36%]
tests/test_console.py::test_justify_renderable_right PASSED              [ 37%]
tests/test_console.py::test_render_broken_renderable PASSED              [ 38%]
tests/test_console.py::test_export_text PASSED                           [ 39%]
tests/test_console.py::test_export_html PASSED                           [ 40%]
tests/test_console.py::test_export_html_inline PASSED                    [ 41%]
tests/test_console.py::test_save_text PASSED                             [ 42%]
tests/test_console.py::test_save_html PASSED                             [ 43%]
tests/test_console.py::test_no_wrap PASSED                               [ 45%]
tests/test_console.py::test_unicode_error PASSED                         [ 46%]
tests/test_console.py::test_bell PASSED                                  [ 47%]
tests/test_console.py::test_pager PASSED                                 [ 48%]
tests/test_console.py::test_out PASSED                                   [ 49%]
tests/test_console.py::test_render_group PASSED                          [ 50%]
tests/test_console.py::test_render_group_fit PASSED                      [ 51%]
tests/test_console.py::test_get_time PASSED                              [ 52%]
tests/test_console.py::test_console_style PASSED                         [ 53%]
tests/test_console.py::test_no_color FAILED                              [ 54%]
tests/test_segment.py::test_repr PASSED                                  [ 56%]
tests/test_segment.py::test_line PASSED                                  [ 57%]
tests/test_segment.py::test_apply_style PASSED                           [ 58%]
tests/test_segment.py::test_split_lines PASSED                           [ 59%]
tests/test_segment.py::test_split_and_crop_lines PASSED                  [ 60%]
tests/test_segment.py::test_adjust_line_length PASSED                    [ 61%]
tests/test_segment.py::test_get_line_length PASSED                       [ 62%]
tests/test_segment.py::test_get_shape PASSED                             [ 63%]
tests/test_segment.py::test_set_shape PASSED                             [ 64%]
tests/test_segment.py::test_simplify PASSED                              [ 65%]
tests/test_segment.py::test_filter_control PASSED                        [ 67%]
tests/test_segment.py::test_strip_styles PASSED                          [ 68%]
tests/test_segment.py::test_strip_links PASSED                           [ 69%]
tests/test_segment.py::test_remove_color FAILED                          [ 70%]
tests/test_style.py::test_str PASSED                                     [ 71%]
tests/test_style.py::test_ansi_codes PASSED                              [ 72%]
tests/test_style.py::test_repr PASSED                                    [ 73%]
tests/test_style.py::test_eq PASSED                                      [ 74%]
tests/test_style.py::test_hash PASSED                                    [ 75%]
tests/test_style.py::test_empty PASSED                                   [ 76%]
tests/test_style.py::test_bool PASSED                                    [ 78%]
tests/test_style.py::test_color_property PASSED                          [ 79%]
tests/test_style.py::test_bgcolor_property PASSED                        [ 80%]
tests/test_style.py::test_parse PASSED                                   [ 81%]
tests/test_style.py::test_link_id PASSED                                 [ 82%]
tests/test_style.py::test_get_html_style PASSED                          [ 83%]
tests/test_style.py::test_chain PASSED                                   [ 84%]
tests/test_style.py::test_copy PASSED                                    [ 85%]
tests/test_style.py::test_render PASSED                                  [ 86%]
tests/test_style.py::test_test PASSED                                    [ 87%]
tests/test_style.py::test_add PASSED                                     [ 89%]
tests/test_style.py::test_iadd PASSED                                    [ 90%]
tests/test_style.py::test_style_stack PASSED                             [ 91%]
tests/test_style.py::test_pick_first PASSED                              [ 92%]
tests/test_style.py::test_background_style PASSED                        [ 93%]
tests/test_style.py::test_without_color FAILED                           [ 94%]
tests/test_tree.py::test_render_single_node PASSED                       [ 95%]
tests/test_tree.py::test_render_single_branch PASSED                     [ 96%]
tests/test_tree.py::test_render_double_branch PASSED                     [ 97%]
tests/test_tree.py::test_render_ascii PASSED                             [ 98%]
tests/test_tree.py::test_render PASSED                                   [100%]

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
__________________________ test_render_single_branch ___________________________
----------------------------- Captured stdout call -----------------------------
'foo                 \n└── bar             \n'
__________________________ test_render_double_branch ___________________________
----------------------------- Captured stdout call -----------------------------
'foo                 \n├── bar             \n└── baz             \n'
_________________________________ test_render __________________________________
----------------------------- Captured stdout call -----------------------------
'foo                 \n├── \x1b[3mbar\x1b[0m\x1b[3m             \x1b[0m\n\x1b[44m├── \x1b[0m\x1b[44mbaz\x1b[0m\x1b[44m             \x1b[0m\n\x1b[44m│   \x1b[0m\x1b[1;31;44m┣━━ \x1b[0m\x1b[44m1\x1b[0m\x1b[44m           \x1b[0m\n\x1b[44m│   \x1b[0m\x1b[1;31;44m┗━━ \x1b[0m\x1b[44m2\x1b[0m\x1b[44m           \x1b[0m\n└── egg             \n'
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
PASSED tests/test_tree.py::test_render_single_node
PASSED tests/test_tree.py::test_render_single_branch
PASSED tests/test_tree.py::test_render_double_branch
PASSED tests/test_tree.py::test_render_ascii
PASSED tests/test_tree.py::test_render
FAILED tests/test_console.py::test_no_color - TypeError: Console.__init__() got an unexpected keyword argument 'no_color'
FAILED tests/test_segment.py::test_remove_color - AttributeError: type object 'Segment' has no attribute 'remove_color'
FAILED tests/test_style.py::test_without_color - AttributeError: 'Style' object has no attribute 'without_color'
========================= 3 failed, 88 passed in 0.29s =========================
