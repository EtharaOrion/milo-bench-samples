error: tests/test_cells.py: does not match index
error: tests/test_console.py: does not match index
error: tests/test_pretty.py: does not match index
error: tests/test_progress.py: does not match index
error: tests/test_protocol.py: does not match index
error: tests/test_repr.py: does not match index
error: tests/test_segment.py: does not match index
error: tests/test_text.py: does not match index
error: tools/stress_test_pretty.py: does not match index
Checking patch tests/test_cells.py...
Checking patch tests/test_console.py...
Checking patch tests/test_pretty.py...
Checking patch tests/test_progress.py...
Checking patch tests/test_protocol.py...
Checking patch tests/test_repr.py...
Checking patch tests/test_segment.py...
Checking patch tests/test_text.py...
Checking patch tools/stress_test_pretty.py...
Applied patch tests/test_cells.py cleanly.
Applied patch tests/test_console.py cleanly.
Applied patch tests/test_pretty.py cleanly.
Applied patch tests/test_progress.py cleanly.
Applied patch tests/test_protocol.py cleanly.
Applied patch tests/test_repr.py cleanly.
Applied patch tests/test_segment.py cleanly.
Applied patch tests/test_text.py cleanly.
Applied patch tools/stress_test_pretty.py cleanly.
Checking patch README.de-ch.md...
Checking patch README.pt-br.md...
Checking patch docs/source/live.rst...
Checking patch examples/dynamic_progress.py...
Checking patch pyproject.toml...
Checking patch read_gif.py...
Checking patch rich/console.py...
Checking patch rich/progress.py...
Checking patch rich/text.py...
Applied patch README.de-ch.md cleanly.
Applied patch README.pt-br.md cleanly.
Applied patch docs/source/live.rst cleanly.
Applied patch examples/dynamic_progress.py cleanly.
Applied patch pyproject.toml cleanly.
Applied patch read_gif.py cleanly.
Applied patch rich/console.py cleanly.
Applied patch rich/progress.py cleanly.
Applied patch rich/text.py cleanly.
============================= test session starts ==============================
platform linux -- Python 3.12.13, pytest-9.1.1, pluggy-1.6.0 -- /usr/local/bin/python
rootdir: /home/rich/tests
configfile: pytest.ini
plugins: anyio-4.14.0, asyncio-1.4.0, mock-3.15.1, timeout-2.4.0
asyncio: mode=Mode.STRICT, debug=False, asyncio_default_fixture_loop_scope=None, asyncio_default_test_loop_scope=function
timeout: 30.0s
timeout method: signal
timeout func_only: False
collecting ... collected 267 items

tests/test_cells.py::test_set_cell_size PASSED                           [  0%]
tests/test_cells.py::test_set_cell_size_infinite PASSED                  [  0%]
tests/test_console.py::test_dumb_terminal PASSED                         [  1%]
tests/test_console.py::test_soft_wrap PASSED                             [  1%]
tests/test_console.py::test_16color_terminal PASSED                      [  1%]
tests/test_console.py::test_truecolor_terminal PASSED                    [  2%]
tests/test_console.py::test_console_options_update PASSED                [  2%]
tests/test_console.py::test_console_options_update_height FAILED         [  2%]
tests/test_console.py::test_init PASSED                                  [  3%]
tests/test_console.py::test_size PASSED                                  [  3%]
tests/test_console.py::test_repr PASSED                                  [  4%]
tests/test_console.py::test_print PASSED                                 [  4%]
tests/test_console.py::test_print_multiple PASSED                        [  4%]
tests/test_console.py::test_print_text PASSED                            [  5%]
tests/test_console.py::test_print_text_multiple PASSED                   [  5%]
tests/test_console.py::test_print_json PASSED                            [  5%]
tests/test_console.py::test_print_json_error PASSED                      [  6%]
tests/test_console.py::test_print_json_data PASSED                       [  6%]
tests/test_console.py::test_print_json_ensure_ascii PASSED               [  7%]
tests/test_console.py::test_log PASSED                                   [  7%]
tests/test_console.py::test_log_milliseconds PASSED                      [  7%]
tests/test_console.py::test_print_empty PASSED                           [  8%]
tests/test_console.py::test_markup_highlight PASSED                      [  8%]
tests/test_console.py::test_print_style PASSED                           [  8%]
tests/test_console.py::test_show_cursor PASSED                           [  9%]
tests/test_console.py::test_clear PASSED                                 [  9%]
tests/test_console.py::test_clear_no_terminal PASSED                     [ 10%]
tests/test_console.py::test_get_style PASSED                             [ 10%]
tests/test_console.py::test_get_style_default PASSED                     [ 10%]
tests/test_console.py::test_get_style_error PASSED                       [ 11%]
tests/test_console.py::test_render_error PASSED                          [ 11%]
tests/test_console.py::test_control PASSED                               [ 11%]
tests/test_console.py::test_capture PASSED                               [ 12%]
tests/test_console.py::test_input PASSED                                 [ 12%]
tests/test_console.py::test_input_legacy_windows PASSED                  [ 13%]
tests/test_console.py::test_input_password PASSED                        [ 13%]
tests/test_console.py::test_status PASSED                                [ 13%]
tests/test_console.py::test_justify_none PASSED                          [ 14%]
tests/test_console.py::test_justify_left PASSED                          [ 14%]
tests/test_console.py::test_justify_center PASSED                        [ 14%]
tests/test_console.py::test_justify_right PASSED                         [ 15%]
tests/test_console.py::test_justify_renderable_none PASSED               [ 15%]
tests/test_console.py::test_justify_renderable_left PASSED               [ 16%]
tests/test_console.py::test_justify_renderable_center PASSED             [ 16%]
tests/test_console.py::test_justify_renderable_right PASSED              [ 16%]
tests/test_console.py::test_render_broken_renderable PASSED              [ 17%]
tests/test_console.py::test_export_text PASSED                           [ 17%]
tests/test_console.py::test_export_html PASSED                           [ 17%]
tests/test_console.py::test_export_html_inline PASSED                    [ 18%]
tests/test_console.py::test_save_text PASSED                             [ 18%]
tests/test_console.py::test_save_html PASSED                             [ 19%]
tests/test_console.py::test_no_wrap PASSED                               [ 19%]
tests/test_console.py::test_unicode_error PASSED                         [ 19%]
tests/test_console.py::test_bell PASSED                                  [ 20%]
tests/test_console.py::test_pager PASSED                                 [ 20%]
tests/test_console.py::test_out PASSED                                   [ 20%]
tests/test_console.py::test_render_group PASSED                          [ 21%]
tests/test_console.py::test_render_group_fit PASSED                      [ 21%]
tests/test_console.py::test_get_time PASSED                              [ 22%]
tests/test_console.py::test_console_style PASSED                         [ 22%]
tests/test_console.py::test_no_color PASSED                              [ 22%]
tests/test_console.py::test_quiet PASSED                                 [ 23%]
tests/test_console.py::test_no_nested_live PASSED                        [ 23%]
tests/test_console.py::test_screen PASSED                                [ 23%]
tests/test_console.py::test_screen_update PASSED                         [ 24%]
tests/test_console.py::test_height PASSED                                [ 24%]
tests/test_console.py::test_columns_env PASSED                           [ 25%]
tests/test_console.py::test_lines_env PASSED                             [ 25%]
tests/test_console.py::test_screen_update_class PASSED                   [ 25%]
tests/test_console.py::test_is_alt_screen PASSED                         [ 26%]
tests/test_console.py::test_update_screen PASSED                         [ 26%]
tests/test_console.py::test_update_screen_lines PASSED                   [ 26%]
tests/test_console.py::test_update_options_markup PASSED                 [ 27%]
tests/test_console.py::test_print_width_zero PASSED                      [ 27%]
tests/test_console.py::test_size_properties PASSED                       [ 28%]
tests/test_console.py::test_print_newline_start PASSED                   [ 28%]
tests/test_console.py::test_is_terminal_broken_file PASSED               [ 28%]
tests/test_console.py::test_detect_color_system PASSED                   [ 29%]
tests/test_pretty.py::test_install PASSED                                [ 29%]
tests/test_pretty.py::test_pretty PASSED                                 [ 29%]
tests/test_pretty.py::test_pretty_dataclass PASSED                       [ 30%]
tests/test_pretty.py::test_small_width PASSED                            [ 30%]
tests/test_pretty.py::test_broken_repr PASSED                            [ 31%]
tests/test_pretty.py::test_broken_getattr PASSED                         [ 31%]
tests/test_pretty.py::test_recursive PASSED                              [ 31%]
tests/test_pretty.py::test_defaultdict PASSED                            [ 32%]
tests/test_pretty.py::test_array PASSED                                  [ 32%]
tests/test_pretty.py::test_tuple_of_one PASSED                           [ 32%]
tests/test_pretty.py::test_node PASSED                                   [ 33%]
tests/test_pretty.py::test_indent_lines PASSED                           [ 33%]
tests/test_pretty.py::test_pprint PASSED                                 [ 34%]
tests/test_pretty.py::test_pprint_max_values PASSED                      [ 34%]
tests/test_pretty.py::test_pprint_max_items PASSED                       [ 34%]
tests/test_pretty.py::test_pprint_max_string PASSED                      [ 35%]
tests/test_pretty.py::test_tuples PASSED                                 [ 35%]
tests/test_pretty.py::test_newline PASSED                                [ 35%]
tests/test_pretty.py::test_empty_repr PASSED                             [ 36%]
tests/test_pretty.py::test_attrs PASSED                                  [ 36%]
tests/test_pretty.py::test_attrs_empty PASSED                            [ 37%]
tests/test_pretty.py::test_attrs_broken FAILED                           [ 37%]
tests/test_pretty.py::test_attrs_broken_310 PASSED                       [ 37%]
tests/test_pretty.py::test_user_dict PASSED                              [ 38%]
tests/test_pretty.py::test_lying_attribute PASSED                        [ 38%]
tests/test_progress.py::test_bar_columns PASSED                          [ 38%]
tests/test_progress.py::test_text_column PASSED                          [ 39%]
tests/test_progress.py::test_time_elapsed_column PASSED                  [ 39%]
tests/test_progress.py::test_time_remaining_column PASSED                [ 40%]
tests/test_progress.py::test_renderable_column PASSED                    [ 40%]
tests/test_progress.py::test_spinner_column PASSED                       [ 40%]
tests/test_progress.py::test_download_progress_uses_decimal_units PASSED [ 41%]
tests/test_progress.py::test_download_progress_uses_binary_units PASSED  [ 41%]
tests/test_progress.py::test_task_ids PASSED                             [ 41%]
tests/test_progress.py::test_finished PASSED                             [ 42%]
tests/test_progress.py::test_expand_bar PASSED                           [ 42%]
tests/test_progress.py::test_render FAILED                               [ 43%]
tests/test_progress.py::test_track PASSED                                [ 43%]
tests/test_progress.py::test_progress_track FAILED                       [ 43%]
tests/test_progress.py::test_columns PASSED                              [ 44%]
tests/test_progress.py::test_task_create PASSED                          [ 44%]
tests/test_progress.py::test_task_start PASSED                           [ 44%]
tests/test_progress.py::test_task_zero_total PASSED                      [ 45%]
tests/test_progress.py::test_progress_create PASSED                      [ 45%]
tests/test_progress.py::test_track_thread PASSED                         [ 46%]
tests/test_progress.py::test_reset PASSED                                [ 46%]
tests/test_progress.py::test_progress_max_refresh PASSED                 [ 46%]
tests/test_progress.py::test_live_is_started_if_progress_is_enabled PASSED [ 47%]
tests/test_progress.py::test_live_is_not_started_if_progress_is_disabled PASSED [ 47%]
tests/test_progress.py::test_no_output_if_progress_is_disabled PASSED    [ 47%]
tests/test_protocol.py::test_rich_cast PASSED                            [ 48%]
tests/test_protocol.py::test_rich_cast_fake PASSED                       [ 48%]
tests/test_protocol.py::test_rich_cast_container PASSED                  [ 49%]
tests/test_protocol.py::test_abc PASSED                                  [ 49%]
tests/test_protocol.py::test_cast_deep PASSED                            [ 49%]
tests/test_protocol.py::test_cast_recursive PASSED                       [ 50%]
tests/test_repr.py::test_rich_repr PASSED                                [ 50%]
tests/test_repr.py::test_rich_repr_positional_only PASSED                [ 50%]
tests/test_repr.py::test_rich_angular PASSED                             [ 51%]
tests/test_repr.py::test_rich_repr_auto PASSED                           [ 51%]
tests/test_repr.py::test_rich_repr_auto_angular PASSED                   [ 52%]
tests/test_repr.py::test_broken_egg PASSED                               [ 52%]
tests/test_repr.py::test_rich_pretty PASSED                              [ 52%]
tests/test_repr.py::test_rich_pretty_angular PASSED                      [ 53%]
tests/test_segment.py::test_repr PASSED                                  [ 53%]
tests/test_segment.py::test_line PASSED                                  [ 53%]
tests/test_segment.py::test_apply_style PASSED                           [ 54%]
tests/test_segment.py::test_split_lines PASSED                           [ 54%]
tests/test_segment.py::test_split_and_crop_lines PASSED                  [ 55%]
tests/test_segment.py::test_adjust_line_length PASSED                    [ 55%]
tests/test_segment.py::test_get_line_length PASSED                       [ 55%]
tests/test_segment.py::test_get_shape PASSED                             [ 56%]
tests/test_segment.py::test_set_shape PASSED                             [ 56%]
tests/test_segment.py::test_simplify PASSED                              [ 56%]
tests/test_segment.py::test_filter_control PASSED                        [ 57%]
tests/test_segment.py::test_strip_styles PASSED                          [ 57%]
tests/test_segment.py::test_strip_links PASSED                           [ 58%]
tests/test_segment.py::test_remove_color PASSED                          [ 58%]
tests/test_segment.py::test_is_control PASSED                            [ 58%]
tests/test_segment.py::test_segments_renderable PASSED                   [ 59%]
tests/test_segment.py::test_divide PASSED                                [ 59%]
tests/test_segment.py::test_divide_emoji PASSED                          [ 59%]
tests/test_segment.py::test_divide_edge PASSED                           [ 60%]
tests/test_segment.py::test_divide_edge_2 PASSED                         [ 60%]
tests/test_segment.py::test_split_cells_emoji[XX-4-result0] PASSED       [ 61%]
tests/test_segment.py::test_split_cells_emoji[X-1-result1] PASSED        [ 61%]
tests/test_segment.py::test_split_cells_emoji[\U0001f4a9-1-result2] PASSED [ 61%]
tests/test_segment.py::test_split_cells_emoji[XY-1-result3] PASSED       [ 62%]
tests/test_segment.py::test_split_cells_emoji[\U0001f4a9X-1-result4] PASSED [ 62%]
tests/test_segment.py::test_split_cells_emoji[\U0001f4a9\U0001f4a9-1-result5] PASSED [ 62%]
tests/test_segment.py::test_split_cells_emoji[X\U0001f4a9Y-2-result6] PASSED [ 63%]
tests/test_segment.py::test_split_cells_emoji[X\U0001f4a9YZ-2-result7] PASSED [ 63%]
tests/test_segment.py::test_split_cells_emoji[X\U0001f4a9\U0001f4a9Z-2-result8] PASSED [ 64%]
tests/test_segment.py::test_split_cells_emoji[X\U0001f4a9\U0001f4a9Z-3-result9] PASSED [ 64%]
tests/test_segment.py::test_split_cells_emoji[X\U0001f4a9\U0001f4a9Z-4-result10] PASSED [ 64%]
tests/test_segment.py::test_split_cells_emoji[X\U0001f4a9\U0001f4a9Z-5-result11] PASSED [ 65%]
tests/test_segment.py::test_split_cells_emoji[X\U0001f4a9\U0001f4a9Z-6-result12] PASSED [ 65%]
tests/test_segment.py::test_split_cells_emoji[XYZABC\U0001f4a9\U0001f4a9-6-result13] PASSED [ 65%]
tests/test_segment.py::test_split_cells_emoji[XYZABC\U0001f4a9\U0001f4a9-7-result14] PASSED [ 66%]
tests/test_segment.py::test_split_cells_emoji[XYZABC\U0001f4a9\U0001f4a9-8-result15] PASSED [ 66%]
tests/test_segment.py::test_split_cells_emoji[XYZABC\U0001f4a9\U0001f4a9-9-result16] PASSED [ 67%]
tests/test_segment.py::test_split_cells_emoji[XYZABC\U0001f4a9\U0001f4a9-10-result17] PASSED [ 67%]
tests/test_segment.py::test_split_cells_emoji[\U0001f4a9\U0001f4a9\U0001f4a9\U0001f4a9\U0001f4a9-3-result18] PASSED [ 67%]
tests/test_segment.py::test_split_cells_emoji[\U0001f4a9\U0001f4a9\U0001f4a9\U0001f4a9\U0001f4a9-4-result19] PASSED [ 68%]
tests/test_segment.py::test_split_cells_emoji[\U0001f4a9X\U0001f4a9Y\U0001f4a9Z\U0001f4a9A\U0001f4a9-4-result20] PASSED [ 68%]
tests/test_segment.py::test_split_cells_emoji[XYZABC-4-result21] PASSED  [ 68%]
tests/test_segment.py::test_split_cells_emoji[XYZABC-5-result22] PASSED  [ 69%]
tests/test_segment.py::test_segment_lines_renderable PASSED              [ 69%]
tests/test_text.py::test_span PASSED                                     [ 70%]
tests/test_text.py::test_span_split PASSED                               [ 70%]
tests/test_text.py::test_span_move PASSED                                [ 70%]
tests/test_text.py::test_span_right_crop PASSED                          [ 71%]
tests/test_text.py::test_len PASSED                                      [ 71%]
tests/test_text.py::test_cell_len PASSED                                 [ 71%]
tests/test_text.py::test_bool PASSED                                     [ 72%]
tests/test_text.py::test_str PASSED                                      [ 72%]
tests/test_text.py::test_repr PASSED                                     [ 73%]
tests/test_text.py::test_add PASSED                                      [ 73%]
tests/test_text.py::test_eq PASSED                                       [ 73%]
tests/test_text.py::test_contain PASSED                                  [ 74%]
tests/test_text.py::test_plain_property PASSED                           [ 74%]
tests/test_text.py::test_plain_property_setter PASSED                    [ 74%]
tests/test_text.py::test_from_markup PASSED                              [ 75%]
tests/test_text.py::test_from_ansi FAILED                                [ 75%]
tests/test_text.py::test_copy PASSED                                     [ 76%]
tests/test_text.py::test_rstrip PASSED                                   [ 76%]
tests/test_text.py::test_rstrip_end PASSED                               [ 76%]
tests/test_text.py::test_stylize PASSED                                  [ 77%]
tests/test_text.py::test_stylize_negative_index PASSED                   [ 77%]
tests/test_text.py::test_highlight_regex PASSED                          [ 77%]
tests/test_text.py::test_highlight_regex_callable PASSED                 [ 78%]
tests/test_text.py::test_highlight_words PASSED                          [ 78%]
tests/test_text.py::test_set_length PASSED                               [ 79%]
tests/test_text.py::test_console_width PASSED                            [ 79%]
tests/test_text.py::test_join PASSED                                     [ 79%]
tests/test_text.py::test_trim_spans PASSED                               [ 80%]
tests/test_text.py::test_pad_left PASSED                                 [ 80%]
tests/test_text.py::test_pad_right PASSED                                [ 80%]
tests/test_text.py::test_append PASSED                                   [ 81%]
tests/test_text.py::test_append_text PASSED                              [ 81%]
tests/test_text.py::test_split PASSED                                    [ 82%]
tests/test_text.py::test_split_spans PASSED                              [ 82%]
tests/test_text.py::test_divide PASSED                                   [ 82%]
tests/test_text.py::test_right_crop PASSED                               [ 83%]
tests/test_text.py::test_wrap_3 PASSED                                   [ 83%]
tests/test_text.py::test_wrap_4 PASSED                                   [ 83%]
tests/test_text.py::test_wrap_long PASSED                                [ 84%]
tests/test_text.py::test_wrap_overflow PASSED                            [ 84%]
tests/test_text.py::test_wrap_overflow_long PASSED                       [ 85%]
tests/test_text.py::test_wrap_long_words PASSED                          [ 85%]
tests/test_text.py::test_no_wrap_no_crop PASSED                          [ 85%]
tests/test_text.py::test_fit PASSED                                      [ 86%]
tests/test_text.py::test_wrap_tabs PASSED                                [ 86%]
tests/test_text.py::test_render PASSED                                   [ 86%]
tests/test_text.py::test_render_simple PASSED                            [ 87%]
tests/test_text.py::test_print[.-.\n] PASSED                             [ 87%]
tests/test_text.py::test_print[print_text1-. .\n] PASSED                 [ 88%]
tests/test_text.py::test_print[print_text2-Hello World !\n] PASSED       [ 88%]
tests/test_text.py::test_print_sep_end[.-.X] PASSED                      [ 88%]
tests/test_text.py::test_print_sep_end[print_text1-..X] PASSED           [ 89%]
tests/test_text.py::test_print_sep_end[print_text2-HelloWorld!X] PASSED  [ 89%]
tests/test_text.py::test_tabs_to_spaces PASSED                           [ 89%]
tests/test_text.py::test_markup_switch PASSED                            [ 90%]
tests/test_text.py::test_emoji PASSED                                    [ 90%]
tests/test_text.py::test_emoji_switch PASSED                             [ 91%]
tests/test_text.py::test_assemble PASSED                                 [ 91%]
tests/test_text.py::test_assemble_meta PASSED                            [ 91%]
tests/test_text.py::test_styled PASSED                                   [ 92%]
tests/test_text.py::test_strip_control_codes PASSED                      [ 92%]
tests/test_text.py::test_get_style_at_offset PASSED                      [ 92%]
tests/test_text.py::test_truncate_ellipsis[Hello-10-Hello] PASSED        [ 93%]
tests/test_text.py::test_truncate_ellipsis[Hello-5-Hello] PASSED         [ 93%]
tests/test_text.py::test_truncate_ellipsis[Hello-4-Hel\u2026] PASSED     [ 94%]
tests/test_text.py::test_truncate_ellipsis[Hello-3-He\u2026] PASSED      [ 94%]
tests/test_text.py::test_truncate_ellipsis[Hello-2-H\u2026] PASSED       [ 94%]
tests/test_text.py::test_truncate_ellipsis[Hello-1-\u2026] PASSED        [ 95%]
tests/test_text.py::test_truncate_ellipsis_pad[Hello-5-Hello] PASSED     [ 95%]
tests/test_text.py::test_truncate_ellipsis_pad[Hello-10-Hello     ] PASSED [ 95%]
tests/test_text.py::test_truncate_ellipsis_pad[Hello-3-He\u2026] PASSED  [ 96%]
tests/test_text.py::test_pad PASSED                                      [ 96%]
tests/test_text.py::test_align_left PASSED                               [ 97%]
tests/test_text.py::test_align_right PASSED                              [ 97%]
tests/test_text.py::test_align_center PASSED                             [ 97%]
tests/test_text.py::test_detect_indentation PASSED                       [ 98%]
tests/test_text.py::test_indentation_guides PASSED                       [ 98%]
tests/test_text.py::test_slice PASSED                                    [ 98%]
tests/test_text.py::test_wrap_invalid_style PASSED                       [ 99%]
tests/test_text.py::test_apply_meta PASSED                               [ 99%]
tests/test_text.py::test_on PASSED                                       [100%]

=================================== FAILURES ===================================
______________________ test_console_options_update_height ______________________

    def test_console_options_update_height():
        options = ConsoleOptions(
            ConsoleDimensions(80, 25),
            max_height=25,
            legacy_windows=False,
            min_width=10,
            max_width=20,
            is_terminal=False,
            encoding="utf-8",
        )
        assert options.height is None
>       render_options = options.update_height(12)
                         ^^^^^^^^^^^^^^^^^^^^^
E       AttributeError: 'ConsoleOptions' object has no attribute 'update_height'

tests/test_console.py:101: AttributeError
______________________________ test_attrs_broken _______________________________

    @skip_py36
    @skip_py310
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

tests/test_pretty.py:268: AssertionError
----------------------------- Captured stdout call -----------------------------
'Foo(bar=AttributeError("\'Foo\' object has no attribute \'bar\'"))'
_________________________________ test_render __________________________________

    def test_render() -> None:
        expected = "\x1b[?25lfoo  \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\nbar  \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 53%\x1b[0m \x1b[36m-:--:--\x1b[0m\nfoo2 \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2Kfoo  \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\nbar  \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 53%\x1b[0m \x1b[36m-:--:--\x1b[0m\nfoo2 \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h"
        render_result = render_progress()
        print(repr(render_result))
>       assert render_result == expected
E       AssertionError: assert '\x1b[?25lfoo...0m\n\x1b[?25h' == '\x1b[?25lfoo...0m\n\x1b[?25h'
E         
E         - [?25lfoo  [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m  0%[0m [36m-:--:--[0m
E         ?                                                                         --
E         + [?25lfoo  [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m0%[0m   [36m-:--:--[0m
E         ?                                                                               ++
E         - bar  [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━[0m [35m 53%[0m [36m-:--:--[0m
E         ?                                                                                                        -
E         + bar  [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━[0m [35m53%[0m  [36m-:--:--[0m
E         ?                                                                                                               +
E           foo2 [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
E         - [2K[1A[2K[1A[2Kfoo  [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m  0%[0m [36m-:--:--[0m
E         ?                                                                                       --
E         + [2K[1A[2K[1A[2Kfoo  [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m0%[0m   [36m-:--:--[0m
E         ?                                                                                             ++
E         - bar  [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━[0m [35m 53%[0m [36m-:--:--[0m
E         ?                                                                                                        -
E         + bar  [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━[0m [35m53%[0m  [36m-:--:--[0m
E         ?                                                                                                               +
E           foo2 [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
E           [?25h

tests/test_progress.py:222: AssertionError
----------------------------- Captured stdout call -----------------------------
'\x1b[?25lfoo  \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m0%\x1b[0m   \x1b[36m-:--:--\x1b[0m\nbar  \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m53%\x1b[0m  \x1b[36m-:--:--\x1b[0m\nfoo2 \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2K\x1b[1A\x1b[2K\x1b[1A\x1b[2Kfoo  \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m0%\x1b[0m   \x1b[36m-:--:--\x1b[0m\nbar  \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m53%\x1b[0m  \x1b[36m-:--:--\x1b[0m\nfoo2 \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h'
_____________________________ test_progress_track ______________________________

    def test_progress_track() -> None:
        console = Console(
            file=io.StringIO(),
            force_terminal=True,
            width=60,
            color_system="truecolor",
            legacy_windows=False,
            _environ={},
        )
        progress = Progress(
            console=console, auto_refresh=False, get_time=MockClock(auto=True)
        )
        test = ["foo", "bar", "baz"]
        expected_values = iter(test)
        with progress:
            for value in progress.track(test, description="test"):
                assert value == next(expected_values)
        result = console.file.getvalue()
        print(repr(result))
        expected = "\x1b[?25l\r\x1b[2Ktest \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 33%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;2;249;38;114m╸\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━\x1b[0m \x1b[35m 67%\x1b[0m \x1b[36m0:00:06\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h"
    
        print(expected)
        print(repr(expected))
        print(result)
        print(repr(result))
    
>       assert result == expected
E       AssertionError: assert '\x1b[?25l\r\...0m\n\x1b[?25h' == '\x1b[?25l\r\...0m\n\x1b[?25h'
E         
E           [?25l
E         - [2Ktest [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m  0%[0m [36m-:--:--[0m
E         ?                                                                       --
E         + [2Ktest [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m0%[0m   [36m-:--:--[0m
E         ?                                                                             ++
E         - [2Ktest [38;2;249;38;114m━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m 33%[0m [36m-:--:--[0m
E         ?                                                                                                            -
E         + [2Ktest [38;2;249;38;114m━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m33%[0m  [36m-:--:--[0m
E         ?                                                                                                                   +
E         - [2Ktest [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m[38;2;249;38;114m╸[0m[38;5;237m━━━━━━━━━━━━━[0m [35m 67%[0m [36m0:00:06[0m
E         ?                                                                                                                   -
E         + [2Ktest [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m[38;2;249;38;114m╸[0m[38;5;237m━━━━━━━━━━━━━[0m [35m67%[0m  [36m0:00:06[0m
E         ?                                                                                                                          +
E           [2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
E           [2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
E           [?25h

tests/test_progress.py:285: AssertionError
----------------------------- Captured stdout call -----------------------------
'\x1b[?25l\r\x1b[2Ktest \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m0%\x1b[0m   \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m33%\x1b[0m  \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;2;249;38;114m╸\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━\x1b[0m \x1b[35m67%\x1b[0m  \x1b[36m0:00:06\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h'
[?25l
[2Ktest [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m  0%[0m [36m-:--:--[0m
[2Ktest [38;2;249;38;114m━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m 33%[0m [36m-:--:--[0m
[2Ktest [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m[38;2;249;38;114m╸[0m[38;5;237m━━━━━━━━━━━━━[0m [35m 67%[0m [36m0:00:06[0m
[2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
[2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
[?25h
'\x1b[?25l\r\x1b[2Ktest \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 33%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;2;249;38;114m╸\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━\x1b[0m \x1b[35m 67%\x1b[0m \x1b[36m0:00:06\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h'
[?25l
[2Ktest [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m0%[0m   [36m-:--:--[0m
[2Ktest [38;2;249;38;114m━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m33%[0m  [36m-:--:--[0m
[2Ktest [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m[38;2;249;38;114m╸[0m[38;5;237m━━━━━━━━━━━━━[0m [35m67%[0m  [36m0:00:06[0m
[2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
[2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
[?25h
'\x1b[?25l\r\x1b[2Ktest \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m0%\x1b[0m   \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m33%\x1b[0m  \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;2;249;38;114m╸\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━\x1b[0m \x1b[35m67%\x1b[0m  \x1b[36m0:00:06\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h'
________________________________ test_from_ansi ________________________________

    def test_from_ansi():
        text = Text.from_ansi("Hello, \033[1mWorld!\033[0m")
        assert str(text) == "Hello, World!"
        assert text._spans == [Span(7, 13, Style(bold=True))]
    
        text = Text.from_ansi("Hello, \033[1m\nWorld!\033[0m")
        assert str(text) == "Hello, \nWorld!"
>       assert text._spans == [Span(8, 14, Style(bold=True))]
E       assert [Span(7, 14, ...e(bold=True))] == [Span(8, 14, ...e(bold=True))]
E         
E         At index 0 diff: Span(7, 14, Style(bold=True)) != Span(8, 14, Style(bold=True))
E         
E         Full diff:
E           [
E         -     Span(8, 14, Style(bold=True)),
E         ?          ^
E         +     Span(7, 14, Style(bold=True)),
E         ?          ^
E           ]

tests/test_text.py:105: AssertionError
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
____________________________ test_pretty_dataclass _____________________________
----------------------------- Captured stdout call -----------------------------
"ExampleDataclass(foo=1000, bar='Hello, World', baz=['foo', 'bar', 'baz'])"
"ExampleDataclass(\n    foo=1000,\n    bar='Hello, World',\n    baz=[\n        'foo',\n        'bar',\n        'baz'\n    ]\n)"
"ExampleDataclass(foo=1000, bar=..., baz=['foo', 'bar', 'baz'])"
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
____________________________ test_attrs_broken_310 _____________________________
----------------------------- Captured stdout call -----------------------------
'Foo(bar=AttributeError("\'Foo\' object has no attribute \'bar\'"))'
________________________________ test_user_dict ________________________________
----------------------------- Captured stdout call -----------------------------
"{\n    'foo': 'bar'\n}"
'FOO'
_____________________________ test_spinner_column ______________________________
----------------------------- Captured stdout call -----------------------------
<text '⣾' []>
<text '⡿' []>
_______________________________ test_expand_bar ________________________________
----------------------------- Captured stdout call -----------------------------
RESULT
 '\x1b[?25l\x1b[38;5;237m━━━━━━━━━━\x1b[0m\r\x1b[2K\x1b[38;5;237m━━━━━━━━━━\x1b[0m\n\x1b[?25h'
EXPECTED
 '\x1b[?25l\x1b[38;5;237m━━━━━━━━━━\x1b[0m\r\x1b[2K\x1b[38;5;237m━━━━━━━━━━\x1b[0m\n\x1b[?25h'
__________________________________ test_track __________________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[?25l\r\x1b[2Ktest \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 33%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;2;249;38;114m╸\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━\x1b[0m \x1b[35m 67%\x1b[0m \x1b[36m0:00:06\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h'
--
RESULT:
[?25l
[2Ktest [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m  0%[0m [36m-:--:--[0m
[2Ktest [38;2;249;38;114m━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m 33%[0m [36m-:--:--[0m
[2Ktest [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m[38;2;249;38;114m╸[0m[38;5;237m━━━━━━━━━━━━━[0m [35m 67%[0m [36m0:00:06[0m
[2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
[2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
[?25h
'\x1b[?25l\r\x1b[2Ktest \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 33%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;2;249;38;114m╸\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━\x1b[0m \x1b[35m 67%\x1b[0m \x1b[36m0:00:06\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h'
EXPECTED:
[?25l
[2Ktest [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m  0%[0m [36m-:--:--[0m
[2Ktest [38;2;249;38;114m━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m 33%[0m [36m-:--:--[0m
[2Ktest [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m[38;2;249;38;114m╸[0m[38;5;237m━━━━━━━━━━━━━[0m [35m 67%[0m [36m0:00:06[0m
[2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
[2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
[?25h
'\x1b[?25l\r\x1b[2Ktest \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m  0%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━\x1b[0m\x1b[38;5;237m╺\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m 33%\x1b[0m \x1b[36m-:--:--\x1b[0m\r\x1b[2Ktest \x1b[38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m\x1b[38;2;249;38;114m╸\x1b[0m\x1b[38;5;237m━━━━━━━━━━━━━\x1b[0m \x1b[35m 67%\x1b[0m \x1b[36m0:00:06\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\r\x1b[2Ktest \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[35m100%\x1b[0m \x1b[36m0:00:00\x1b[0m\n\x1b[?25h'

_________________________________ test_columns _________________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[?25ltest foo \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[33m0:00:07\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m0/10 bytes\x1b[0m \x1b[31m?\x1b[0m\ntest bar \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[33m0:00:16\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m0/7 bytes \x1b[0m \x1b[31m?\x1b[0m\r\x1b[2K\x1b[1A\x1b[2Kfoo\ntest foo \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[33m0:00:07\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m0/10 bytes\x1b[0m \x1b[31m?\x1b[0m\ntest bar \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[33m0:00:16\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m0/7 bytes \x1b[0m \x1b[31m?\x1b[0m\r\x1b[2K\x1b[1A\x1b[2K\x1b[2;36m[TIME]\x1b[0m\x1b[2;36m \x1b[0mhello                                                                    \ntest foo \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[33m0:00:07\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m0/10 bytes\x1b[0m \x1b[31m?\x1b[0m\ntest bar \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[33m0:00:16\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m0/7 bytes \x1b[0m \x1b[31m?\x1b[0m\r\x1b[2K\x1b[1A\x1b[2Kworld\ntest foo \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[33m0:00:07\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m0/10 bytes\x1b[0m \x1b[31m?\x1b[0m\ntest bar \x1b[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━\x1b[0m \x1b[36m-:--:--\x1b[0m \x1b[33m0:00:16\x1b[0m \x1b[32m0 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m0/7 bytes \x1b[0m \x1b[31m?\x1b[0m\r\x1b[2K\x1b[1A\x1b[2Ktest foo \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━\x1b[0m \x1b[36m0:00:00\x1b[0m \x1b[33m0:00:30\x1b[0m \x1b[32m12 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m12/10 bytes\x1b[0m \x1b[31m1 byte/s \x1b[0m\ntest bar \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━\x1b[0m \x1b[36m0:00:00\x1b[0m \x1b[33m0:00:25\x1b[0m \x1b[32m16 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m16/7 bytes \x1b[0m \x1b[31m2 bytes/s\x1b[0m\r\x1b[2K\x1b[1A\x1b[2Ktest foo \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━\x1b[0m \x1b[36m0:00:00\x1b[0m \x1b[33m0:00:30\x1b[0m \x1b[32m12 bytes\x1b[0m \x1b[32m10 bytes\x1b[0m \x1b[32m12/10 bytes\x1b[0m \x1b[31m1 byte/s \x1b[0m\ntest bar \x1b[38;2;114;156;31m━━━━━━━━━━━━━━━\x1b[0m \x1b[36m0:00:00\x1b[0m \x1b[33m0:00:25\x1b[0m \x1b[32m16 bytes\x1b[0m \x1b[32m7 bytes \x1b[0m \x1b[32m16/7 bytes \x1b[0m \x1b[31m2 bytes/s\x1b[0m\n\x1b[?25h\r\x1b[1A\x1b[2K\x1b[1A\x1b[2K'
__________________________ test_progress_max_refresh ___________________________
----------------------------- Captured stdout call -----------------------------
'\x1b[?25l\r\x1b[2Kstart\r\x1b[2Kstart\r\x1b[2Ktick 1\r\x1b[2Ktick 1\r\x1b[2Ktick 3\r\x1b[2Ktick 3\r\x1b[2Ktick 5\r\x1b[2Ktick 5\n\x1b[?25h'
_________________ test_live_is_started_if_progress_is_enabled __________________
----------------------------- Captured stdout call -----------------------------

_______________ test_live_is_not_started_if_progress_is_disabled _______________
----------------------------- Captured stdout call -----------------------------

____________________ test_no_output_if_progress_is_disabled ____________________
----------------------------- Captured stdout call -----------------------------
''
_______________________________ test_divide_edge _______________________________
----------------------------- Captured stdout call -----------------------------
[[Segment('f')], [Segment('oo')], [Segment('bar'), Segment('baz')]]
______________________________ test_divide_edge_2 ______________________________
----------------------------- Captured stdout call -----------------------------
[[Segment('╭─'), Segment('────── Placeholder ───────'), Segment('─╮')], []]
_________________________________ test_wrap_3 __________________________________
----------------------------- Captured stdout call -----------------------------
Lines([<text 'foo' []>, <text 'bar' []>, <text 'baz' []>])
_____________________________ test_no_wrap_no_crop _____________________________
----------------------------- Captured stdout call -----------------------------
'Hello World!Hello Wo\nHello World!Hello World!Hello World!\n'
_________________________________ test_render __________________________________
----------------------------- Captured stdout call -----------------------------
Where there is 
a Will, there 
is a Way.
______________________________ test_print[.-.\n] _______________________________
----------------------------- Captured stdout call -----------------------------
.
________________________ test_print[print_text1-. .\n] _________________________
----------------------------- Captured stdout call -----------------------------
. .
___________________ test_print[print_text2-Hello World !\n] ____________________
----------------------------- Captured stdout call -----------------------------
Hello World !
___________________________ test_indentation_guides ____________________________
----------------------------- Captured stdout call -----------------------------
for a in range(10):
│   print(a)

foo = [
│   1,
│   {
│   │   2
│   }
]


'for a in range(10):\n│   print(a)\n\nfoo = [\n│   1,\n│   {\n│   │   2\n│   }\n]\n\n'
___________________________ test_wrap_invalid_style ____________________________
----------------------------- Captured stdout call -----------------------------
 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
xxxxxxxxxxxxxxxxxxxxx 
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
PASSED tests/test_pretty.py::test_install
PASSED tests/test_pretty.py::test_pretty
PASSED tests/test_pretty.py::test_pretty_dataclass
PASSED tests/test_pretty.py::test_small_width
PASSED tests/test_pretty.py::test_broken_repr
PASSED tests/test_pretty.py::test_broken_getattr
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
PASSED tests/test_pretty.py::test_attrs_broken_310
PASSED tests/test_pretty.py::test_user_dict
PASSED tests/test_pretty.py::test_lying_attribute
PASSED tests/test_progress.py::test_bar_columns
PASSED tests/test_progress.py::test_text_column
PASSED tests/test_progress.py::test_time_elapsed_column
PASSED tests/test_progress.py::test_time_remaining_column
PASSED tests/test_progress.py::test_renderable_column
PASSED tests/test_progress.py::test_spinner_column
PASSED tests/test_progress.py::test_download_progress_uses_decimal_units
PASSED tests/test_progress.py::test_download_progress_uses_binary_units
PASSED tests/test_progress.py::test_task_ids
PASSED tests/test_progress.py::test_finished
PASSED tests/test_progress.py::test_expand_bar
PASSED tests/test_progress.py::test_track
PASSED tests/test_progress.py::test_columns
PASSED tests/test_progress.py::test_task_create
PASSED tests/test_progress.py::test_task_start
PASSED tests/test_progress.py::test_task_zero_total
PASSED tests/test_progress.py::test_progress_create
PASSED tests/test_progress.py::test_track_thread
PASSED tests/test_progress.py::test_reset
PASSED tests/test_progress.py::test_progress_max_refresh
PASSED tests/test_progress.py::test_live_is_started_if_progress_is_enabled
PASSED tests/test_progress.py::test_live_is_not_started_if_progress_is_disabled
PASSED tests/test_progress.py::test_no_output_if_progress_is_disabled
PASSED tests/test_protocol.py::test_rich_cast
PASSED tests/test_protocol.py::test_rich_cast_fake
PASSED tests/test_protocol.py::test_rich_cast_container
PASSED tests/test_protocol.py::test_abc
PASSED tests/test_protocol.py::test_cast_deep
PASSED tests/test_protocol.py::test_cast_recursive
PASSED tests/test_repr.py::test_rich_repr
PASSED tests/test_repr.py::test_rich_repr_positional_only
PASSED tests/test_repr.py::test_rich_angular
PASSED tests/test_repr.py::test_rich_repr_auto
PASSED tests/test_repr.py::test_rich_repr_auto_angular
PASSED tests/test_repr.py::test_broken_egg
PASSED tests/test_repr.py::test_rich_pretty
PASSED tests/test_repr.py::test_rich_pretty_angular
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
PASSED tests/test_segment.py::test_remove_color
PASSED tests/test_segment.py::test_is_control
PASSED tests/test_segment.py::test_segments_renderable
PASSED tests/test_segment.py::test_divide
PASSED tests/test_segment.py::test_divide_emoji
PASSED tests/test_segment.py::test_divide_edge
PASSED tests/test_segment.py::test_divide_edge_2
PASSED tests/test_segment.py::test_split_cells_emoji[XX-4-result0]
PASSED tests/test_segment.py::test_split_cells_emoji[X-1-result1]
PASSED tests/test_segment.py::test_split_cells_emoji[\U0001f4a9-1-result2]
PASSED tests/test_segment.py::test_split_cells_emoji[XY-1-result3]
PASSED tests/test_segment.py::test_split_cells_emoji[\U0001f4a9X-1-result4]
PASSED tests/test_segment.py::test_split_cells_emoji[\U0001f4a9\U0001f4a9-1-result5]
PASSED tests/test_segment.py::test_split_cells_emoji[X\U0001f4a9Y-2-result6]
PASSED tests/test_segment.py::test_split_cells_emoji[X\U0001f4a9YZ-2-result7]
PASSED tests/test_segment.py::test_split_cells_emoji[X\U0001f4a9\U0001f4a9Z-2-result8]
PASSED tests/test_segment.py::test_split_cells_emoji[X\U0001f4a9\U0001f4a9Z-3-result9]
PASSED tests/test_segment.py::test_split_cells_emoji[X\U0001f4a9\U0001f4a9Z-4-result10]
PASSED tests/test_segment.py::test_split_cells_emoji[X\U0001f4a9\U0001f4a9Z-5-result11]
PASSED tests/test_segment.py::test_split_cells_emoji[X\U0001f4a9\U0001f4a9Z-6-result12]
PASSED tests/test_segment.py::test_split_cells_emoji[XYZABC\U0001f4a9\U0001f4a9-6-result13]
PASSED tests/test_segment.py::test_split_cells_emoji[XYZABC\U0001f4a9\U0001f4a9-7-result14]
PASSED tests/test_segment.py::test_split_cells_emoji[XYZABC\U0001f4a9\U0001f4a9-8-result15]
PASSED tests/test_segment.py::test_split_cells_emoji[XYZABC\U0001f4a9\U0001f4a9-9-result16]
PASSED tests/test_segment.py::test_split_cells_emoji[XYZABC\U0001f4a9\U0001f4a9-10-result17]
PASSED tests/test_segment.py::test_split_cells_emoji[\U0001f4a9\U0001f4a9\U0001f4a9\U0001f4a9\U0001f4a9-3-result18]
PASSED tests/test_segment.py::test_split_cells_emoji[\U0001f4a9\U0001f4a9\U0001f4a9\U0001f4a9\U0001f4a9-4-result19]
PASSED tests/test_segment.py::test_split_cells_emoji[\U0001f4a9X\U0001f4a9Y\U0001f4a9Z\U0001f4a9A\U0001f4a9-4-result20]
PASSED tests/test_segment.py::test_split_cells_emoji[XYZABC-4-result21]
PASSED tests/test_segment.py::test_split_cells_emoji[XYZABC-5-result22]
PASSED tests/test_segment.py::test_segment_lines_renderable
PASSED tests/test_text.py::test_span
PASSED tests/test_text.py::test_span_split
PASSED tests/test_text.py::test_span_move
PASSED tests/test_text.py::test_span_right_crop
PASSED tests/test_text.py::test_len
PASSED tests/test_text.py::test_cell_len
PASSED tests/test_text.py::test_bool
PASSED tests/test_text.py::test_str
PASSED tests/test_text.py::test_repr
PASSED tests/test_text.py::test_add
PASSED tests/test_text.py::test_eq
PASSED tests/test_text.py::test_contain
PASSED tests/test_text.py::test_plain_property
PASSED tests/test_text.py::test_plain_property_setter
PASSED tests/test_text.py::test_from_markup
PASSED tests/test_text.py::test_copy
PASSED tests/test_text.py::test_rstrip
PASSED tests/test_text.py::test_rstrip_end
PASSED tests/test_text.py::test_stylize
PASSED tests/test_text.py::test_stylize_negative_index
PASSED tests/test_text.py::test_highlight_regex
PASSED tests/test_text.py::test_highlight_regex_callable
PASSED tests/test_text.py::test_highlight_words
PASSED tests/test_text.py::test_set_length
PASSED tests/test_text.py::test_console_width
PASSED tests/test_text.py::test_join
PASSED tests/test_text.py::test_trim_spans
PASSED tests/test_text.py::test_pad_left
PASSED tests/test_text.py::test_pad_right
PASSED tests/test_text.py::test_append
PASSED tests/test_text.py::test_append_text
PASSED tests/test_text.py::test_split
PASSED tests/test_text.py::test_split_spans
PASSED tests/test_text.py::test_divide
PASSED tests/test_text.py::test_right_crop
PASSED tests/test_text.py::test_wrap_3
PASSED tests/test_text.py::test_wrap_4
PASSED tests/test_text.py::test_wrap_long
PASSED tests/test_text.py::test_wrap_overflow
PASSED tests/test_text.py::test_wrap_overflow_long
PASSED tests/test_text.py::test_wrap_long_words
PASSED tests/test_text.py::test_no_wrap_no_crop
PASSED tests/test_text.py::test_fit
PASSED tests/test_text.py::test_wrap_tabs
PASSED tests/test_text.py::test_render
PASSED tests/test_text.py::test_render_simple
PASSED tests/test_text.py::test_print[.-.\n]
PASSED tests/test_text.py::test_print[print_text1-. .\n]
PASSED tests/test_text.py::test_print[print_text2-Hello World !\n]
PASSED tests/test_text.py::test_print_sep_end[.-.X]
PASSED tests/test_text.py::test_print_sep_end[print_text1-..X]
PASSED tests/test_text.py::test_print_sep_end[print_text2-HelloWorld!X]
PASSED tests/test_text.py::test_tabs_to_spaces
PASSED tests/test_text.py::test_markup_switch
PASSED tests/test_text.py::test_emoji
PASSED tests/test_text.py::test_emoji_switch
PASSED tests/test_text.py::test_assemble
PASSED tests/test_text.py::test_assemble_meta
PASSED tests/test_text.py::test_styled
PASSED tests/test_text.py::test_strip_control_codes
PASSED tests/test_text.py::test_get_style_at_offset
PASSED tests/test_text.py::test_truncate_ellipsis[Hello-10-Hello]
PASSED tests/test_text.py::test_truncate_ellipsis[Hello-5-Hello]
PASSED tests/test_text.py::test_truncate_ellipsis[Hello-4-Hel\u2026]
PASSED tests/test_text.py::test_truncate_ellipsis[Hello-3-He\u2026]
PASSED tests/test_text.py::test_truncate_ellipsis[Hello-2-H\u2026]
PASSED tests/test_text.py::test_truncate_ellipsis[Hello-1-\u2026]
PASSED tests/test_text.py::test_truncate_ellipsis_pad[Hello-5-Hello]
PASSED tests/test_text.py::test_truncate_ellipsis_pad[Hello-10-Hello     ]
PASSED tests/test_text.py::test_truncate_ellipsis_pad[Hello-3-He\u2026]
PASSED tests/test_text.py::test_pad
PASSED tests/test_text.py::test_align_left
PASSED tests/test_text.py::test_align_right
PASSED tests/test_text.py::test_align_center
PASSED tests/test_text.py::test_detect_indentation
PASSED tests/test_text.py::test_indentation_guides
PASSED tests/test_text.py::test_slice
PASSED tests/test_text.py::test_wrap_invalid_style
PASSED tests/test_text.py::test_apply_meta
PASSED tests/test_text.py::test_on
FAILED tests/test_console.py::test_console_options_update_height - AttributeError: 'ConsoleOptions' object has no attribute 'update_height'
FAILED tests/test_pretty.py::test_attrs_broken - assert 'Foo(bar=Attr...te \'bar\'"))' == "Foo(bar=Attr...Error('bar'))"
  
  - Foo(bar=AttributeError('bar'))
  + Foo(bar=AttributeError("'Foo' object has no attribute 'bar'"))
FAILED tests/test_progress.py::test_render - AssertionError: assert '\x1b[?25lfoo...0m\n\x1b[?25h' == '\x1b[?25lfoo...0m\n\x1b[?25h'
  
  - [?25lfoo  [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m  0%[0m [36m-:--:--[0m
  ?                                                                         --
  + [?25lfoo  [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m0%[0m   [36m-:--:--[0m
  ?                                                                               ++
  - bar  [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━[0m [35m 53%[0m [36m-:--:--[0m
  ?                                                                                                        -
  + bar  [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━[0m [35m53%[0m  [36m-:--:--[0m
  ?                                                                                                               +
    foo2 [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
  - [2K[1A[2K[1A[2Kfoo  [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m  0%[0m [36m-:--:--[0m
  ?                                                                                       --
  + [2K[1A[2K[1A[2Kfoo  [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m0%[0m   [36m-:--:--[0m
  ?                                                                                             ++
  - bar  [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━[0m [35m 53%[0m [36m-:--:--[0m
  ?                                                                                                        -
  + bar  [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━[0m [35m53%[0m  [36m-:--:--[0m
  ?                                                                                                               +
    foo2 [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
    [?25h
FAILED tests/test_progress.py::test_progress_track - AssertionError: assert '\x1b[?25l\r\...0m\n\x1b[?25h' == '\x1b[?25l\r\...0m\n\x1b[?25h'
  
    [?25l
  - [2Ktest [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m  0%[0m [36m-:--:--[0m
  ?                                                                       --
  + [2Ktest [38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m0%[0m   [36m-:--:--[0m
  ?                                                                             ++
  - [2Ktest [38;2;249;38;114m━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m 33%[0m [36m-:--:--[0m
  ?                                                                                                            -
  + [2Ktest [38;2;249;38;114m━━━━━━━━━━━━━[0m[38;5;237m╺[0m[38;5;237m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m33%[0m  [36m-:--:--[0m
  ?                                                                                                                   +
  - [2Ktest [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m[38;2;249;38;114m╸[0m[38;5;237m━━━━━━━━━━━━━[0m [35m 67%[0m [36m0:00:06[0m
  ?                                                                                                                   -
  + [2Ktest [38;2;249;38;114m━━━━━━━━━━━━━━━━━━━━━━━━━━[0m[38;2;249;38;114m╸[0m[38;5;237m━━━━━━━━━━━━━[0m [35m67%[0m  [36m0:00:06[0m
  ?                                                                                                                          +
    [2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
    [2Ktest [38;2;114;156;31m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━[0m [35m100%[0m [36m0:00:00[0m
    [?25h
FAILED tests/test_text.py::test_from_ansi - assert [Span(7, 14, ...e(bold=True))] == [Span(8, 14, ...e(bold=True))]
  
  At index 0 diff: Span(7, 14, Style(bold=True)) != Span(8, 14, Style(bold=True))
  
  Full diff:
    [
  -     Span(8, 14, Style(bold=True)),
  ?          ^
  +     Span(7, 14, Style(bold=True)),
  ?          ^
    ]
======================== 5 failed, 262 passed in 1.05s =========================
