error: tests/test_cells.py: does not match index
error: tests/test_console.py: does not match index
error: tests/test_live.py: does not match index
error: tests/test_protocol.py: does not match index
error: tests/test_screen.py: does not match index
Checking patch tests/test_cells.py...
Checking patch tests/test_console.py...
Checking patch tests/test_live.py...
Checking patch tests/test_protocol.py...
Checking patch tests/test_screen.py...
Applied patch tests/test_cells.py cleanly.
Applied patch tests/test_console.py cleanly.
Applied patch tests/test_live.py cleanly.
Applied patch tests/test_protocol.py cleanly.
Applied patch tests/test_screen.py cleanly.
Checking patch CHANGELOG.md...
Checking patch README.cn.md...
Checking patch README.de-ch.md...
Checking patch README.de.md...
Checking patch README.es.md...
Checking patch README.fr.md...
Checking patch README.it.md...
Checking patch README.ja.md...
Checking patch README.kr.md...
Checking patch README.md...
Checking patch README.pt-br.md...
Checking patch README.sv.md...
Checking patch bug2.py...
Checking patch docs/requirements.txt...
Checking patch docs/source/introduction.rst...
Checking patch issue1.py...
Checking patch issue6.py...
Checking patch issue6_172.py...
Checking patch out.txt...
Checking patch out2.txt...
Checking patch out3.txt...
Checking patch output.txt...
Checking patch patch_collect.py...
Checking patch patch_style.py...
Checking patch pyproject.toml...
Checking patch rich/cells.py...
Checking patch rich/console.py...
Checking patch rich/highlighter.py...
Checking patch rich/json.py...
Checking patch rich/live.py...
Checking patch rich/style.py...
Checking patch test_binary_search.py...
Checking patch test_binary_search2.py...
Checking patch test_end.py...
Checking patch test_end2.py...
Checking patch test_end3.py...
Checking patch test_inf_loop.py...
Checking patch test_inf_loop2.py...
Checking patch test_live.py...
Checking patch test_live2.py...
Checking patch test_print.out...
Checking patch test_print.py...
Checking patch test_print2.py...
Checking patch test_prog.py...
Checking patch test_prog2.py...
Checking patch test_span.py...
Checking patch test_span2.py...
Checking patch test_style.py...
Checking patch test_term.py...
Checking patch test_text.py...
Checking patch test_text2.py...
Checking patch trace.out...
Checking patch trace.py...
Checking patch trace_live.py...
Applied patch CHANGELOG.md cleanly.
Applied patch README.cn.md cleanly.
Applied patch README.de-ch.md cleanly.
Applied patch README.de.md cleanly.
Applied patch README.es.md cleanly.
Applied patch README.fr.md cleanly.
Applied patch README.it.md cleanly.
Applied patch README.ja.md cleanly.
Applied patch README.kr.md cleanly.
Applied patch README.md cleanly.
Applied patch README.pt-br.md cleanly.
Applied patch README.sv.md cleanly.
Applied patch bug2.py cleanly.
Applied patch docs/requirements.txt cleanly.
Applied patch docs/source/introduction.rst cleanly.
Applied patch issue1.py cleanly.
Applied patch issue6.py cleanly.
Applied patch issue6_172.py cleanly.
Applied patch out.txt cleanly.
Applied patch out2.txt cleanly.
Applied patch out3.txt cleanly.
Applied patch output.txt cleanly.
Applied patch patch_collect.py cleanly.
Applied patch patch_style.py cleanly.
Applied patch pyproject.toml cleanly.
Applied patch rich/cells.py cleanly.
Applied patch rich/console.py cleanly.
Applied patch rich/highlighter.py cleanly.
Applied patch rich/json.py cleanly.
Applied patch rich/live.py cleanly.
Applied patch rich/style.py cleanly.
Applied patch test_binary_search.py cleanly.
Applied patch test_binary_search2.py cleanly.
Applied patch test_end.py cleanly.
Applied patch test_end2.py cleanly.
Applied patch test_end3.py cleanly.
Applied patch test_inf_loop.py cleanly.
Applied patch test_inf_loop2.py cleanly.
Applied patch test_live.py cleanly.
Applied patch test_live2.py cleanly.
Applied patch test_print.out cleanly.
Applied patch test_print.py cleanly.
Applied patch test_print2.py cleanly.
Applied patch test_prog.py cleanly.
Applied patch test_prog2.py cleanly.
Applied patch test_span.py cleanly.
Applied patch test_span2.py cleanly.
Applied patch test_style.py cleanly.
Applied patch test_term.py cleanly.
Applied patch test_text.py cleanly.
Applied patch test_text2.py cleanly.
Applied patch trace.out cleanly.
Applied patch trace.py cleanly.
Applied patch trace_live.py cleanly.
============================= test session starts ==============================
platform linux -- Python 3.12.13, pytest-9.1.1, pluggy-1.6.0 -- /usr/local/bin/python
rootdir: /home/rich/tests
configfile: pytest.ini
plugins: anyio-4.14.0, asyncio-1.4.0, mock-3.15.1, timeout-2.4.0
asyncio: mode=Mode.STRICT, debug=False, asyncio_default_fixture_loop_scope=None, asyncio_default_test_loop_scope=function
timeout: 30.0s
timeout method: signal
timeout func_only: False
collecting ... collected 93 items

tests/test_cells.py::test_set_cell_size PASSED                           [  1%]
tests/test_cells.py::test_set_cell_size_infinite PASSED                  [  2%]
tests/test_console.py::test_dumb_terminal PASSED                         [  3%]
tests/test_console.py::test_soft_wrap PASSED                             [  4%]
tests/test_console.py::test_16color_terminal PASSED                      [  5%]
tests/test_console.py::test_truecolor_terminal PASSED                    [  6%]
tests/test_console.py::test_console_options_update PASSED                [  7%]
tests/test_console.py::test_init PASSED                                  [  8%]
tests/test_console.py::test_size PASSED                                  [  9%]
tests/test_console.py::test_repr PASSED                                  [ 10%]
tests/test_console.py::test_print PASSED                                 [ 11%]
tests/test_console.py::test_print_multiple PASSED                        [ 12%]
tests/test_console.py::test_print_text PASSED                            [ 13%]
tests/test_console.py::test_print_text_multiple PASSED                   [ 15%]
tests/test_console.py::test_print_json PASSED                            [ 16%]
tests/test_console.py::test_print_json_error PASSED                      [ 17%]
tests/test_console.py::test_print_json_data PASSED                       [ 18%]
tests/test_console.py::test_print_json_ensure_ascii PASSED               [ 19%]
tests/test_console.py::test_log PASSED                                   [ 20%]
tests/test_console.py::test_log_milliseconds PASSED                      [ 21%]
tests/test_console.py::test_print_empty PASSED                           [ 22%]
tests/test_console.py::test_markup_highlight PASSED                      [ 23%]
tests/test_console.py::test_print_style PASSED                           [ 24%]
tests/test_console.py::test_show_cursor PASSED                           [ 25%]
tests/test_console.py::test_clear PASSED                                 [ 26%]
tests/test_console.py::test_clear_no_terminal PASSED                     [ 27%]
tests/test_console.py::test_get_style PASSED                             [ 29%]
tests/test_console.py::test_get_style_default PASSED                     [ 30%]
tests/test_console.py::test_get_style_error PASSED                       [ 31%]
tests/test_console.py::test_render_error PASSED                          [ 32%]
tests/test_console.py::test_control PASSED                               [ 33%]
tests/test_console.py::test_capture PASSED                               [ 34%]
tests/test_console.py::test_input PASSED                                 [ 35%]
tests/test_console.py::test_input_legacy_windows PASSED                  [ 36%]
tests/test_console.py::test_input_password PASSED                        [ 37%]
tests/test_console.py::test_status PASSED                                [ 38%]
tests/test_console.py::test_justify_none PASSED                          [ 39%]
tests/test_console.py::test_justify_left PASSED                          [ 40%]
tests/test_console.py::test_justify_center PASSED                        [ 41%]
tests/test_console.py::test_justify_right PASSED                         [ 43%]
tests/test_console.py::test_justify_renderable_none PASSED               [ 44%]
tests/test_console.py::test_justify_renderable_left PASSED               [ 45%]
tests/test_console.py::test_justify_renderable_center PASSED             [ 46%]
tests/test_console.py::test_justify_renderable_right PASSED              [ 47%]
tests/test_console.py::test_render_broken_renderable PASSED              [ 48%]
tests/test_console.py::test_export_text PASSED                           [ 49%]
tests/test_console.py::test_export_html PASSED                           [ 50%]
tests/test_console.py::test_export_html_inline PASSED                    [ 51%]
tests/test_console.py::test_save_text PASSED                             [ 52%]
tests/test_console.py::test_save_html PASSED                             [ 53%]
tests/test_console.py::test_no_wrap PASSED                               [ 54%]
tests/test_console.py::test_unicode_error PASSED                         [ 55%]
tests/test_console.py::test_bell PASSED                                  [ 56%]
tests/test_console.py::test_pager PASSED                                 [ 58%]
tests/test_console.py::test_out PASSED                                   [ 59%]
tests/test_console.py::test_render_group PASSED                          [ 60%]
tests/test_console.py::test_render_group_fit PASSED                      [ 61%]
tests/test_console.py::test_get_time PASSED                              [ 62%]
tests/test_console.py::test_console_style PASSED                         [ 63%]
tests/test_console.py::test_no_color PASSED                              [ 64%]
tests/test_console.py::test_quiet PASSED                                 [ 65%]
tests/test_console.py::test_no_nested_live PASSED                        [ 66%]
tests/test_console.py::test_screen PASSED                                [ 67%]
tests/test_console.py::test_screen_update PASSED                         [ 68%]
tests/test_console.py::test_height PASSED                                [ 69%]
tests/test_console.py::test_columns_env PASSED                           [ 70%]
tests/test_console.py::test_lines_env PASSED                             [ 72%]
tests/test_console.py::test_screen_update_class PASSED                   [ 73%]
tests/test_console.py::test_is_alt_screen PASSED                         [ 74%]
tests/test_console.py::test_update_screen PASSED                         [ 75%]
tests/test_console.py::test_update_screen_lines PASSED                   [ 76%]
tests/test_console.py::test_update_options_markup PASSED                 [ 77%]
tests/test_console.py::test_print_width_zero PASSED                      [ 78%]
tests/test_console.py::test_size_properties PASSED                       [ 79%]
tests/test_console.py::test_print_newline_start PASSED                   [ 80%]
tests/test_console.py::test_is_terminal_broken_file PASSED               [ 81%]
tests/test_console.py::test_detect_color_system PASSED                   [ 82%]
tests/test_live.py::test_live_state PASSED                               [ 83%]
tests/test_live.py::test_growing_display PASSED                          [ 84%]
tests/test_live.py::test_growing_display_transient PASSED                [ 86%]
tests/test_live.py::test_growing_display_overflow_ellipsis PASSED        [ 87%]
tests/test_live.py::test_growing_display_overflow_crop PASSED            [ 88%]
tests/test_live.py::test_growing_display_overflow_visible PASSED         [ 89%]
tests/test_live.py::test_growing_display_autorefresh PASSED              [ 90%]
tests/test_live.py::test_growing_display_console_redirect PASSED         [ 91%]
tests/test_live.py::test_growing_display_file_console FAILED             [ 92%]
tests/test_live.py::test_live_screen PASSED                              [ 93%]
tests/test_protocol.py::test_rich_cast PASSED                            [ 94%]
tests/test_protocol.py::test_rich_cast_container PASSED                  [ 95%]
tests/test_protocol.py::test_abc PASSED                                  [ 96%]
tests/test_protocol.py::test_cast_deep FAILED                            [ 97%]
tests/test_protocol.py::test_cast_recursive PASSED                       [ 98%]
tests/test_screen.py::test_screen PASSED                                 [100%]

=================================== FAILURES ===================================
______________________ test_growing_display_file_console _______________________

    def test_growing_display_file_console() -> None:
        console = create_capture_console(force_terminal=False)
        console.begin_capture()
        with Live(console=console, auto_refresh=False) as live:
            display = ""
            for step in range(10):
                display += f"Step {step}\n"
                live.update(display, refresh=True)
        output = console.end_capture()
>       assert (
            output
            == "Step 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\nStep 9\n"
        )
E       AssertionError: assert 'Step 0\nStep...8\nStep 9\n\n' == 'Step 0\nStep...p 8\nStep 9\n'
E         
E           Step 0
E           Step 1
E           Step 2
E           Step 3
E           Step 4
E           Step 5
E           Step 6
E           Step 7
E           Step 8
E           Step 9
E         +

tests/test_live.py:159: AssertionError
________________________________ test_cast_deep ________________________________

    def test_cast_deep():
        class B:
            def __rich__(self) -> Foo:
                return Foo()
    
        class A:
            def __rich__(self) -> B:
                return B()
    
        console = Console(file=io.StringIO())
        console.print(A())
>       assert console.file.getvalue() == "Foo\n"
E       AssertionError: assert '<tests.test_...ff91684890>\n' == 'Foo\n'
E         
E         - Foo
E         + <tests.test_protocol.test_cast_deep.<locals>.B object at 0xffff91684890>

tests/test_protocol.py:49: AssertionError
==================================== PASSES ====================================
_______________________________ test_print_json ________________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[1m[\x1b[0m\n    \x1b[3;91mfalse\x1b[0m,\n    \x1b[3;92mtrue\x1b[0m,\n    \x1b[3;35mnull\x1b[0m,\n    \x1b[32m"foo"\x1b[0m\n\x1b[1m]\x1b[0m\n'
_____________________________ test_print_json_data _____________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[1m[\x1b[0m\n    \x1b[3;91mfalse\x1b[0m,\n    \x1b[3;92mtrue\x1b[0m,\n    \x1b[3;35mnull\x1b[0m,\n    \x1b[32m"foo"\x1b[0m\n\x1b[1m]\x1b[0m\n'
_________________________ test_print_json_ensure_ascii _________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[1m{\x1b[0m\n  \x1b[1;34m"foo"\x1b[0m: \x1b[32m"💩"\x1b[0m\n\x1b[1m}\x1b[0m\n'
___________________________________ test_log ___________________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[2;36mTIME\x1b[0m\x1b[2;36m \x1b[0m\x1b[31mfoo                                                                        \x1b[0m\n'
_______________________________ test_export_text _______________________________
----------------------------- Captured stdout call -----------------------------
foo
_______________________________ test_export_html _______________________________
----------------------------- Captured stdout call -----------------------------
foo <script> 'test' Click
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
_______________________________ test_live_state ________________________________
----------------------------- Captured stdout call -----------------------------

_____________________________ test_growing_display _____________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[?25lStep 0\n\r\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\nStep 9\n\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2KStep 0\nStep 1\nStep 2\nStep 3\nStep 4\nStep 5\nStep 6\nStep 7\nStep 8\nStep 9\n\n\x1b[?25h'
_______________________ test_growing_display_autorefresh _______________________
----------------------------- Captured stdout call -----------------------------
Step 0
Step 1

[2K[1A[2K[1A[2KStep 0
Step 1
Step 2

[2K[1A[2K[1A[2K[1A[2KStep 0
Step 1
Step 2
Step 3

[2K[1A[2K[1A[2K[1A[2K[1A[2KStep 0
Step 1
Step 2
Step 3
Step 4
Step 5

[2K[1A[2K[1A[2K[1A[2K[1A[2K[1A[2K[1A[2KStep 0
Step 1
Step 2
Step 3
Step 4
Step 5
Step 6

[2K[1A[2K[1A[2K[1A[2K[1A[2K[1A[2K[1A[2K[1A[2KStep 0
Step 1
Step 2
Step 3
Step 4
Step 5
Step 6
Step 7

[2K[1A[2K[1A[2K[1A[2K[1A[2K[1A[2K[1A[2K[1A[2K[1A[2KStep 0
Step 1
Step 2
Step 3
Step 4
Step 5
Step 6
Step 7
Step 8
_______________________________ test_live_screen _______________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[?1049h\x1b[H\x1b[?25l\x1b[Hfoo                 \n                    \n                    \n                    \n                    \x1b[Hfoo                 \n                    \n                    \n                    \n                    \x1b[?25h\x1b[?1049l'
_________________________________ test_screen __________________________________
----------------------------- Captured stdout call -----------------------------
'foo                 \nbar                 \nbaz                 \nfoo                 \nbar                 '
=========================== short test summary info ============================
PASSED tests/test_cells.py::test_set_cell_size
PASSED tests/test_cells.py::test_set_cell_size_infinite
PASSED tests/test_console.py::test_dumb_terminal
PASSED tests/test_console.py::test_soft_wrap
PASSED tests/test_console.py::test_16color_terminal
PASSED tests/test_console.py::test_truecolor_terminal
PASSED tests/test_console.py::test_console_options_update
PASSED tests/test_console.py::test_init
PASSED tests/test_console.py::test_size
PASSED tests/test_console.py::test_repr
PASSED tests/test_console.py::test_print
PASSED tests/test_console.py::test_print_multiple
PASSED tests/test_console.py::test_print_text
PASSED tests/test_console.py::test_print_text_multiple
PASSED tests/test_console.py::test_print_json
PASSED tests/test_console.py::test_print_json_error
PASSED tests/test_console.py::test_print_json_data
PASSED tests/test_console.py::test_print_json_ensure_ascii
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
PASSED tests/test_console.py::test_is_terminal_broken_file
PASSED tests/test_console.py::test_detect_color_system
PASSED tests/test_live.py::test_live_state
PASSED tests/test_live.py::test_growing_display
PASSED tests/test_live.py::test_growing_display_transient
PASSED tests/test_live.py::test_growing_display_overflow_ellipsis
PASSED tests/test_live.py::test_growing_display_overflow_crop
PASSED tests/test_live.py::test_growing_display_overflow_visible
PASSED tests/test_live.py::test_growing_display_autorefresh
PASSED tests/test_live.py::test_growing_display_console_redirect
PASSED tests/test_live.py::test_live_screen
PASSED tests/test_protocol.py::test_rich_cast
PASSED tests/test_protocol.py::test_rich_cast_container
PASSED tests/test_protocol.py::test_abc
PASSED tests/test_protocol.py::test_cast_recursive
PASSED tests/test_screen.py::test_screen
FAILED tests/test_live.py::test_growing_display_file_console - AssertionError: assert 'Step 0\nStep...8\nStep 9\n\n' == 'Step 0\nStep...p 8\nStep 9\n'
  
    Step 0
    Step 1
    Step 2
    Step 3
    Step 4
    Step 5
    Step 6
    Step 7
    Step 8
    Step 9
  +
FAILED tests/test_protocol.py::test_cast_deep - AssertionError: assert '<tests.test_...ff91684890>\n' == 'Foo\n'
  
  - Foo
  + <tests.test_protocol.test_cast_deep.<locals>.B object at 0xffff91684890>
========================= 2 failed, 91 passed in 2.32s =========================
