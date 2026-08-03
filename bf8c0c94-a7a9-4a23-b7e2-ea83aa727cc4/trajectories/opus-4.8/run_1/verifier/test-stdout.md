   Compiling clap v4.1.4 (/home/clap)
warning: unexpected `cfg` condition value: `perf`
  --> src/builder/os_str.rs:67:7
   |
67 | #[cfg(feature = "perf")]
   |       ^^^^^^^^^^^^^^^^
   |
   = note: expected values for `feature` are: `cargo`, `color`, `debug`, `default`, `deprecated`, `derive`, `env`, `error-context`, `help`, `std`, `string`, `suggestions`, `unicode`, `unstable-doc`, `unstable-grouped`, `unstable-replace`, `unstable-v5`, `usage`, and `wrap_help`
   = help: consider adding `perf` as a feature in `Cargo.toml`
   = note: see <https://doc.rust-lang.org/nightly/rustc/check-cfg/cargo-specifics.html> for more information about checking conditional configuration
   = note: `#[warn(unexpected_cfgs)]` on by default

warning: variable does not need to be mutable
    --> src/builder/command.rs:4037:17
     |
4037 |             for mut sc in &mut self.subcommands {
     |                 ----^^
     |                 |
     |                 help: remove this `mut`
     |
     = note: `#[warn(unused_mut)]` (part of `#[warn(unused)]`) on by default

warning: method `parse` is never used
   --> src/builder/value_parser.rs:579:8
    |
571 | trait AnyValueParser: Send + Sync + 'static {
    |       -------------- method in this trait
...
579 |     fn parse(
    |        ^^^^^
    |
    = note: `#[warn(dead_code)]` (part of `#[warn(unused)]`) on by default

warning: struct `GroupedValues` is never constructed
    --> src/parser/matches/arg_matches.rs:1567:12
     |
1567 | pub struct GroupedValues<'a> {
     |            ^^^^^^^^^^^^^

warning: hiding a lifetime that's elided elsewhere is confusing
    --> src/builder/command.rs:4457:40
     |
4457 |     pub(crate) fn all_subcommand_names(&self) -> impl Iterator<Item = &str> + Captures {
     |                                        ^^^^^     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
     |                                        |         |                    |
     |                                        |         |                    the same lifetime is elided here
     |                                        |         the same lifetime is hidden here
     |                                        the lifetime is elided here
     |
     = help: the same lifetime is referred to in inconsistent ways, making the signature confusing
     = note: `#[warn(mismatched_lifetime_syntaxes)]` on by default
help: use `'_` for type paths
     |
4457 |     pub(crate) fn all_subcommand_names(&self) -> impl Iterator<Item = &str> + Captures<'_> {
     |                                                                                       ++++

warning: hiding a lifetime that's elided elsewhere is confusing
   --> src/error/mod.rs:812:18
    |
812 |     fn formatted(&self) -> Cow<StyledStr> {
    |                  ^^^^^     ^^^^^^^^^^^^^^ the same lifetime is hidden here
    |                  |
    |                  the lifetime is elided here
    |
    = help: the same lifetime is referred to in inconsistent ways, making the signature confusing
help: use `'_` for type paths
    |
812 |     fn formatted(&self) -> Cow<'_, StyledStr> {
    |                                +++

warning: hiding a lifetime that's elided elsewhere is confusing
   --> src/parser/arg_matcher.rs:120:25
    |
120 |     pub(crate) fn entry(&mut self, arg: Id) -> crate::util::Entry<Id, MatchedArg> {
    |                         ^^^^^^^^^              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ the same lifetime is hidden here
    |                         |
    |                         the lifetime is elided here
    |
    = help: the same lifetime is referred to in inconsistent ways, making the signature confusing
help: use `'_` for type paths
    |
120 |     pub(crate) fn entry(&mut self, arg: Id) -> crate::util::Entry<'_, Id, MatchedArg> {
    |                                                                   +++

warning: hiding a lifetime that's elided elsewhere is confusing
   --> src/parser/matches/arg_matches.rs:213:9
    |
213 |         &self,
    |         ^^^^^ the lifetime is elided here
214 |         id: &str,
215 |     ) -> Option<ValuesRef<T>> {
    |                 ^^^^^^^^^^^^ the same lifetime is hidden here
    |
    = help: the same lifetime is referred to in inconsistent ways, making the signature confusing
help: use `'_` for type paths
    |
215 |     ) -> Option<ValuesRef<'_, T>> {
    |                           +++

warning: hiding a lifetime that's elided elsewhere is confusing
   --> src/parser/matches/arg_matches.rs:250:9
    |
250 |         &self,
    |         ^^^^^ the lifetime is elided here
251 |         id: &str,
252 |     ) -> Option<OccurrencesRef<T>> {
    |                 ^^^^^^^^^^^^^^^^^ the same lifetime is hidden here
    |
    = help: the same lifetime is referred to in inconsistent ways, making the signature confusing
help: use `'_` for type paths
    |
252 |     ) -> Option<OccurrencesRef<'_, T>> {
    |                                +++

warning: hiding a lifetime that's elided elsewhere is confusing
    --> src/parser/matches/arg_matches.rs:1092:9
     |
1092 |         &self,
     |         ^^^^^ the lifetime is elided here
1093 |         id: &str,
1094 |     ) -> Result<Option<ValuesRef<T>>, MatchesError> {
     |                        ^^^^^^^^^^^^ the same lifetime is hidden here
     |
     = help: the same lifetime is referred to in inconsistent ways, making the signature confusing
help: use `'_` for type paths
     |
1094 |     ) -> Result<Option<ValuesRef<'_, T>>, MatchesError> {
     |                                  +++

warning: hiding a lifetime that's elided elsewhere is confusing
    --> src/parser/matches/arg_matches.rs:1111:9
     |
1111 |         &self,
     |         ^^^^^ the lifetime is elided here
1112 |         id: &str,
1113 |     ) -> Result<Option<OccurrencesRef<T>>, MatchesError> {
     |                        ^^^^^^^^^^^^^^^^^ the same lifetime is hidden here
     |
     = help: the same lifetime is referred to in inconsistent ways, making the signature confusing
help: use `'_` for type paths
     |
1113 |     ) -> Result<Option<OccurrencesRef<'_, T>>, MatchesError> {
     |                                       +++

warning: hiding a lifetime that's elided elsewhere is confusing
  --> src/parser/matches/matched_arg.rs:78:24
   |
78 |     pub(crate) fn vals(&self) -> Iter<Vec<AnyValue>> {
   |                        ^^^^^     ^^^^^^^^^^^^^^^^^^^ the same lifetime is hidden here
   |                        |
   |                        the lifetime is elided here
   |
   = help: the same lifetime is referred to in inconsistent ways, making the signature confusing
help: use `'_` for type paths
   |
78 |     pub(crate) fn vals(&self) -> Iter<'_, Vec<AnyValue>> {
   |                                       +++

warning: hiding a lifetime that's elided elsewhere is confusing
  --> src/parser/matches/matched_arg.rs:86:32
   |
86 |     pub(crate) fn vals_flatten(&self) -> Flatten<Iter<Vec<AnyValue>>> {
   |                                ^^^^^             ^^^^^^^^^^^^^^^^^^^ the same lifetime is hidden here
   |                                |
   |                                the lifetime is elided here
   |
   = help: the same lifetime is referred to in inconsistent ways, making the signature confusing
help: use `'_` for type paths
   |
86 |     pub(crate) fn vals_flatten(&self) -> Flatten<Iter<'_, Vec<AnyValue>>> {
   |                                                       +++

warning: hiding a lifetime that's elided elsewhere is confusing
  --> src/parser/matches/matched_arg.rs:94:28
   |
94 |     pub(crate) fn raw_vals(&self) -> Iter<Vec<OsString>> {
   |                            ^^^^^     ^^^^^^^^^^^^^^^^^^^ the same lifetime is hidden here
   |                            |
   |                            the lifetime is elided here
   |
   = help: the same lifetime is referred to in inconsistent ways, making the signature confusing
help: use `'_` for type paths
   |
94 |     pub(crate) fn raw_vals(&self) -> Iter<'_, Vec<OsString>> {
   |                                           +++

warning: hiding a lifetime that's elided elsewhere is confusing
  --> src/parser/matches/matched_arg.rs:98:36
   |
98 |     pub(crate) fn raw_vals_flatten(&self) -> Flatten<Iter<Vec<OsString>>> {
   |                                    ^^^^^             ^^^^^^^^^^^^^^^^^^^ the same lifetime is hidden here
   |                                    |
   |                                    the lifetime is elided here
   |
   = help: the same lifetime is referred to in inconsistent ways, making the signature confusing
help: use `'_` for type paths
   |
98 |     pub(crate) fn raw_vals_flatten(&self) -> Flatten<Iter<'_, Vec<OsString>>> {
   |                                                           +++

warning: hiding a lifetime that's elided elsewhere is confusing
  --> src/util/flat_map.rs:82:18
   |
82 |     pub fn entry(&mut self, key: K) -> Entry<K, V> {
   |                  ^^^^^^^^^             ^^^^^^^^^^^ the same lifetime is hidden here
   |                  |
   |                  the lifetime is elided here
   |
   = help: the same lifetime is referred to in inconsistent ways, making the signature confusing
help: use `'_` for type paths
   |
82 |     pub fn entry(&mut self, key: K) -> Entry<'_, K, V> {
   |                                              +++

warning: hiding a lifetime that's elided elsewhere is confusing
   --> src/util/flat_map.rs:121:17
    |
121 |     pub fn iter(&self) -> Iter<K, V> {
    |                 ^^^^^     ^^^^^^^^^^ the same lifetime is hidden here
    |                 |
    |                 the lifetime is elided here
    |
    = help: the same lifetime is referred to in inconsistent ways, making the signature confusing
help: use `'_` for type paths
    |
121 |     pub fn iter(&self) -> Iter<'_, K, V> {
    |                                +++

warning: hiding a lifetime that's elided elsewhere is confusing
   --> src/util/flat_map.rs:128:21
    |
128 |     pub fn iter_mut(&mut self) -> IterMut<K, V> {
    |                     ^^^^^^^^^     ^^^^^^^^^^^^^ the same lifetime is hidden here
    |                     |
    |                     the lifetime is elided here
    |
    = help: the same lifetime is referred to in inconsistent ways, making the signature confusing
help: use `'_` for type paths
    |
128 |     pub fn iter_mut(&mut self) -> IterMut<'_, K, V> {
    |                                           +++

warning: `clap` (lib) generated 18 warnings (run `cargo fix --lib -p clap` to apply 15 suggestions)
warning: unexpected `cfg` condition name: `tarpaulin`
 --> tests/examples.rs:1:12
  |
1 | #![cfg(not(tarpaulin))]
  |            ^^^^^^^^^
  |
  = help: expected names are: `docsrs`, `feature`, and `test` and 31 more
  = help: consider using a Cargo feature instead
  = help: or consider adding in `Cargo.toml` the `check-cfg` lint config for the lint:
           [lints.rust]
           unexpected_cfgs = { level = "warn", check-cfg = ['cfg(tarpaulin)'] }
  = help: or consider adding `println!("cargo::rustc-check-cfg=cfg(tarpaulin)");` to the top of the `build.rs`
  = note: see <https://doc.rust-lang.org/nightly/rustc/check-cfg/cargo-specifics.html> for more information about checking conditional configuration
  = note: `#[warn(unexpected_cfgs)]` on by default

warning: unexpected `cfg` condition name: `tarpaulin`
 --> tests/ui.rs:1:12
  |
1 | #![cfg(not(tarpaulin))]
  |            ^^^^^^^^^
  |
  = help: expected names are: `docsrs`, `feature`, and `test` and 31 more
  = help: consider using a Cargo feature instead
  = help: or consider adding in `Cargo.toml` the `check-cfg` lint config for the lint:
           [lints.rust]
           unexpected_cfgs = { level = "warn", check-cfg = ['cfg(tarpaulin)'] }
  = help: or consider adding `println!("cargo::rustc-check-cfg=cfg(tarpaulin)");` to the top of the `build.rs`
  = note: see <https://doc.rust-lang.org/nightly/rustc/check-cfg/cargo-specifics.html> for more information about checking conditional configuration
  = note: `#[warn(unexpected_cfgs)]` on by default

warning: unexpected `cfg` condition name: `featiure`
   --> tests/macros.rs:280:33
    |
280 |     #[cfg(all(feature = "help", featiure = "usage"))]
    |                                 ^^^^^^^^^^^^^^^^^^
    |
    = note: see <https://doc.rust-lang.org/nightly/rustc/check-cfg/cargo-specifics.html> for more information about checking conditional configuration
    = note: `#[warn(unexpected_cfgs)]` on by default
help: there is a config with a similar name and value
    |
280 -     #[cfg(all(feature = "help", featiure = "usage"))]
280 +     #[cfg(all(feature = "help", feature = "usage"))]
    |

warning: `clap` (lib test) generated 18 warnings (18 duplicates)
warning: `clap` (test "macros") generated 1 warning
warning: `clap` (test "ui") generated 1 warning
warning: `clap` (test "examples") generated 1 warning
    Finished `test` profile [optimized + debuginfo] target(s) in 6.53s
     Running unittests src/lib.rs (target/debug/deps/clap-6c4ebd4b39af95bc)

running 77 tests
test builder::arg::test::flag_display_count ... ok
test builder::arg::test::flag_display_long ... ok
test builder::arg::test::flag_display_multiple_aliases ... ok
test builder::arg::test::flag_display_multiple_short_aliases ... ok
test builder::arg::test::flag_display_short ... ok
test builder::arg::test::flag_display_single_alias ... ok
test builder::arg::test::flag_display_single_short_alias ... ok
test builder::arg::test::option_display3 ... ok
test builder::arg::test::option_display_multiple_aliases ... ok
test builder::arg::test::option_display_multiple_occurrences ... ok
test builder::arg::test::option_display_multiple_short_aliases ... ok
test builder::arg::test::option_display_multiple_values ... ok
test builder::arg::test::option_display_one_or_more_values ... ok
test builder::arg::test::option_display_one_or_more_values_with_value_name ... ok
test builder::arg::test::option_display_optional_value ... ok
test builder::arg::test::option_display_single_alias ... ok
test builder::arg::test::option_display_single_short_alias ... ok
test builder::arg::test::option_display_value_names ... ok
test builder::arg::test::option_display_zero_or_more_values ... ok
test builder::arg::test::option_display_zero_or_more_values_with_value_name ... ok
test builder::arg::test::positional_display_multiple_occurrences ... ok
test builder::arg::test::positional_display_multiple_occurrences_required ... ok
test builder::arg::test::positional_display_multiple_values ... ok
test builder::arg::test::positional_display_multiple_values_required ... ok
test builder::arg::test::positional_display_one_or_more_values ... ok
test builder::arg::test::positional_display_one_or_more_values_required ... ok
test builder::arg::test::positional_display_optional_value ... ok
test builder::arg::test::positional_display_required ... ok
test builder::arg::test::positional_display_val_names ... ok
test builder::arg::test::positional_display_val_names_req ... ok
test builder::arg::test::positional_display_val_names_required ... ok
test builder::arg::test::positional_display_zero_or_more_values ... ok
test builder::arg_group::test::arg_group_expose_get_args_helper ... ok
test builder::arg_group::test::arg_group_send_sync ... ok
test builder::arg_group::test::arg_group_expose_is_multiple_helper ... ok
test builder::arg_group::test::groups ... ok
test builder::arg_group::test::test_from ... ok
test builder::arg_settings::test::setting ... ok
test builder::arg_settings::test::setting_bitor ... ok
test builder::arg_settings::test::unset_setting ... ok
test builder::arg_settings::test::unset_setting_bitor ... ok
test builder::command::check_auto_traits ... ok
test builder::range::test::from_fixed ... ok
test builder::range::test::from_fixed_empty ... ok
test builder::range::test::from_range ... ok
test builder::range::test::from_range_from ... ok
test builder::range::test::from_range_full ... ok
test builder::range::test::from_range_inclusive ... ok
test builder::range::test::from_range_to ... ok
test builder::range::test::from_range_to_inclusive ... ok
test builder::tests::app_send_sync ... ok
test builder::tests::arg_send_sync ... ok
test builder::tests::global_setting ... ok
test builder::tests::issue_2090 ... ok
test builder::tests::propagate_version ... ok
test builder::value_parser::test::ensure_typed_applies_to_parse ... ok
test error::check_auto_traits ... ok
test parser::error::check_auto_traits ... ok
test parser::features::suggestions::test::ambiguous ... ok
test parser::features::suggestions::test::best_fit ... ok
test parser::features::suggestions::test::best_fit_long_common_prefix_issue_4660 ... ok
test parser::features::suggestions::test::flag_ambiguous ... ok
test parser::features::suggestions::test::flag_best_fit ... ok
test parser::features::suggestions::test::flag_missing_letter ... ok
test parser::features::suggestions::test::flag_unrelated ... ok
test parser::features::suggestions::test::missing_letter ... ok
test parser::features::suggestions::test::unrelated ... ok
test parser::matches::any_value::test::debug_impl ... ok
test parser::matches::arg_matches::tests::check_auto_traits ... ok
test parser::matches::arg_matches::tests::test_default_indices ... ok
test parser::matches::arg_matches::tests::indices_exact_size ... ok
test parser::matches::arg_matches::tests::os_values_exact_size ... ok
test parser::matches::arg_matches::tests::test_default_raw_values ... ok
test parser::matches::matched_arg::tests::test_grouped_vals_first ... ok
test parser::matches::arg_matches::tests::values_exact_size ... ok
test parser::matches::arg_matches::tests::test_default_indices_with_shorter_lifetime ... ok
test output::textwrap::core::tests::emojis_have_correct_width ... ok

test result: ok. 77 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.01s

     Running unittests src/bin/stdio-fixture.rs (target/debug/deps/stdio_fixture-19dc8e65ec89b2c7)

running 0 tests

test result: ok. 0 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.00s

     Running tests/builder/main.rs (target/debug/deps/builder-05629cd3ca1f9b02)

running 811 tests
test action::count ... ok
test action::append ... ok
test action::count_with_default_value_if_present ... ok
test action::count_with_default_value_if_value ... ok
test action::count_with_explicit_default_value ... ok
test action::set ... ok
test action::set_false ... ok
test action::set_false_with_default_value_if_present ... ok
test action::set_false_with_default_value_if_value ... ok
test action::set_false_with_explicit_default_value ... ok
test action::set_true ... ok
test action::set_true_with_default_value_if_present ... ok
test action::set_true_with_default_value_if_value ... ok
test action::set_true_with_explicit_default_value ... ok
test action::set_true_with_required_if_eq ... ok
test app_settings::aaos_option_use_delim_false ... ok
test app_settings::aaos_opts_mult_req_delims ... ok
test app_settings::aaos_opts_mult ... ok
test app_settings::aaos_opts_w_other_overrides_2 ... ok
test app_settings::aaos_opts_w_other_overrides ... ok
test app_settings::aaos_opts_w_other_overrides_rev ... ok
test app_settings::aaos_opts_w_other_overrides_rev_2 ... ok
test app_settings::aaos_opts_w_override_as_conflict_1 ... ok
test app_settings::aaos_opts_w_override_as_conflict_2 ... ok
test app_settings::aaos_pos_mult ... ok
test app_settings::allow_ext_sc_empty_args ... ok
test app_settings::allow_ext_sc_when_sc_required ... ok
test app_settings::allow_missing_positional ... ok
test app_settings::allow_missing_positional_no_default ... ok
test app_settings::allow_negative_numbers_fail ... ok
test app_settings::allow_negative_numbers_success ... ok
test app_settings::arg_required_else_help ... ok
test app_settings::arg_required_else_help_error_message ... ok
test app_settings::arg_required_else_help_over_req_arg ... ok
test app_settings::arg_required_else_help_over_req_subcommand ... ok
test app_settings::arg_required_else_help_with_default ... ok
test app_settings::built_in_subcommand_escaped ... ok
test app_settings::color_is_global ... ok
test app_settings::delim_values_only_pos_follows ... ok
test app_settings::delim_values_only_pos_follows_with_delim ... ok
test app_settings::delim_values_trailingvararg ... ok
test app_settings::delim_values_trailingvararg_with_delim ... ok
test app_settings::disable_help_subcommand ... ok
test app_settings::dont_delim_values_trailingvararg ... ok
test app_settings::dont_collapse_args ... ok
test app_settings::external_subcommand_looks_like_built_in ... ok
test app_settings::infer_subcommands_fail_no_args ... ok
test app_settings::infer_subcommands_fail_with_args ... ok
test app_settings::infer_subcommands_fail_suggestions ... ok
test app_settings::infer_subcommands_fail_with_args2 ... ok
test app_settings::infer_subcommands_pass ... ok
test app_settings::infer_subcommands_pass_close ... ok
test app_settings::infer_subcommands_pass_exact_match ... ok
test app_settings::issue_1066_allow_leading_hyphen_and_unknown_args_option ... ok
test app_settings::issue_1437_allow_hyphen_values_for_positional_arg ... ok
test app_settings::issue_1093_allow_ext_sc ... ok
test app_settings::issue_3880_allow_long_flag_hyphen_value_for_positional_arg ... ok
test app_settings::leading_hyphen_long ... ok
test app_settings::leading_hyphen_opt ... ok
test app_settings::leading_hyphen_short ... ok
test app_settings::missing_positional_hyphen ... ok
test app_settings::missing_positional_hyphen_far_back ... ok
test app_settings::missing_positional_hyphen_req_error ... ok
test app_settings::no_bin_name ... ok
test app_settings::missing_positional_no_hyphen ... ok
test app_settings::propagate_vals_down ... ok
test app_settings::stop_delim_values_only_pos_follows ... ok
test app_settings::require_eq ... ok
test app_settings::skip_possible_values ... ok
test app_settings::sub_command_negate_required ... ok
test app_settings::sub_command_negate_required_2 ... ok
test app_settings::sub_command_required ... ok
test app_settings::sub_command_required_error ... ok
test app_settings::trailing_var_arg_with_hyphen_values_escape_first ... ok
test app_settings::trailing_var_arg_with_hyphen_values_escape_middle ... ok
test app_settings::trailing_var_arg_with_hyphen_values_short_middle ... ok
test app_settings::trailing_var_arg_with_hyphen_values_long_first ... ok
test arg_aliases::alias_on_a_subcommand_option ... ok
test arg_aliases::get_aliases ... ok
test arg_aliases_short::multiple_short_aliases_of_flag ... ok
test app_settings::trailing_var_arg_with_hyphen_values_short_first ... ok
test app_settings::trailing_var_arg_with_hyphen_values_long_middle ... ok
test arg_aliases_short::single_short_alias_of_option ... ok
test conflicts::conflict_output_three_conflicting ... ok
test conflicts::group_conflicts_with_default_value ... ok
test arg_aliases_short::single_short_alias_of_flag ... ok
test arg_aliases::single_alias_of_flag ... ok
test default_missing_vals::opt_present_with_value ... ok
test arg_aliases_short::visible_short_arg_aliases_help_output ... ok
test conflicts::conflicts_with_alongside_default ... ok
test conflicts::conflict_with_unused_default ... ok
test conflicts::exclusive_option ... ok
test conflicts::default_doesnt_activate_exclusive ... ok
test conflicts::get_arg_conflicts_with_group ... ok
test default_vals::default_if_arg_present_no_arg_with_value_with_default_user_override ... ok
test arg_matches::ids_ignore_overridden ... ok
test arg_aliases::invisible_arg_aliases_help_output ... ok
test arg_aliases_short::invisible_short_arg_aliases_help_output ... ok
test conflicts::flag_conflict ... ok
test default_missing_vals::default_missing_value_per_occurrence ... ok
test arg_aliases::multiple_aliases_of_option ... ok
test arg_matches::ids ... ok
test conflicts::group_in_conflicts_with ... ok
test conflicts::not_exclusive_with_group ... ok
test conflicts::arg_conflicts_with_group ... ok
test conflicts::exclusive_with_required ... ok
test default_missing_vals::opt_default ... ok
test default_missing_vals::opt_missing ... ok
test default_vals::default_if_arg_present_no_arg_with_value_with_default_user_override_fail ... ok
test default_vals::default_if_arg_present_no_default_user_override ... ok
test default_vals::conditional_reqs_pass ... ok
test default_vals::default_has_index ... ok
test arg_aliases_short::short_alias_on_a_subcommand_option ... ok
test default_missing_vals::opt_present_with_missing_value ... ok
test conflicts::args_negate_subcommands_one_level ... ok
test default_missing_vals::opt_present_with_empty_value ... ok
test arg_matches::ids_ignore_unused ... ok
test conflicts::group_conflicts_with_default_arg ... ok
test default_missing_vals::opt_default_user_override ... ok
test conflicts::arg_conflicts_with_group_with_required_memeber ... ok
test arg_aliases::multiple_aliases_of_flag ... ok
test arg_aliases::single_alias_of_option ... ok
test conflicts::group_conflicts_with_arg ... ok
test default_vals::default_if_arg_present_no_default ... ok
test default_vals::default_if_arg_present_with_default ... ok
test default_vals::default_if_arg_present_with_value_no_arg_with_default ... ok
test arg_aliases_short::multiple_short_aliases_of_option ... ok
test borrowed::borrowed_args ... ok
test conflicts::three_conflicting_arguments ... ok
test conflicts::arg_conflicts_with_group_with_multiple_sources ... ok
test conflicts::subcommand_conflict_negates_required ... ok
test arg_aliases::visible_arg_aliases_help_output ... ok
test default_missing_vals::default_missing_value_flag_value ... ok
test conflicts::required_group_conflicts_with_arg ... ok
test conflicts::not_exclusive_with_defaults ... ok
test default_vals::default_if_arg_present_with_default_user_override ... ok
test default_vals::default_if_arg_present_with_value_no_arg_with_default_fail ... ok
test default_vals::default_if_arg_present_with_value_no_default_fail ... ok
test default_vals::default_if_arg_present_with_value_no_default ... ok
test default_vals::default_if_arg_present_with_value_with_default ... ok
test default_vals::default_if_arg_present_with_value_with_default_user_override ... ok
test default_vals::default_ifs_arg_present ... ok
test default_vals::default_ifs_arg_present_user_override ... ok
test default_vals::default_independent_of_trailing ... ok
test conflicts::flag_conflict_with_all ... ok
test conflicts::exclusive_flag ... ok
test conflicts::arg_conflicts_with_required_group ... ok
test default_vals::default_if_arg_present_no_arg_with_default_user_override ... ok
test conflicts::two_conflicting_arguments ... ok
test conflicts::subcommand_conflict_error_message ... ok
test default_missing_vals::delimited_missing_value ... ok
test default_vals::default_if_arg_present_with_value_no_default_user_override ... ok
test default_vals::default_ifs_arg_present_order ... ok
test default_vals::default_if_arg_present_no_arg_with_default ... ok
test default_vals::issue_1050_num_vals_and_defaults ... ok
test default_vals::missing_with_value_delimiter ... ok
test default_vals::multiple_defaults ... ok
test default_vals::multiple_defaults_override ... ok
test default_vals::no_default_if_arg_present_no_arg_with_value_with_default ... ok
test default_vals::no_default_if_arg_present_with_value_no_default ... ok
test default_vals::no_default_if_arg_present_with_value_with_default ... ok
test default_vals::no_default_if_arg_present_with_value_with_default_user_override ... ok
test default_vals::no_default_ifs_arg_present ... ok
test conflicts::flag_conflict_2 ... ok
test arg_matches::arg_matches_value_of_wrong_arg - should panic ... ok
test arg_matches::arg_matches_if_present_wrong_arg - should panic ... ok
test arg_matches::arg_matches_subcommand_matches_wrong_sub - should panic ... ok
test conflicts::conflicts_with_invalid_arg - should panic ... ok
test default_missing_vals::valid_index ... ok
test conflicts::self_conflicting_arg - should panic ... ok
test default_missing_vals::default_missing_values_are_possible_values - should panic ... ok
test default_missing_vals::default_missing_values_are_valid - should panic ... ok
test default_vals::invalid_default_values - should panic ... ok
test default_vals::invalid_delimited_default_values - should panic ... ok
test default_vals::osstr_positionals ... ok
test default_vals::positionals ... ok
test default_vals::positional_user_override ... ok
test default_vals::required_args_with_default_values ... ok
test default_vals::valid_delimited_default_values ... ok
test default_vals::required_groups_with_default_values ... ok
test default_vals::with_value_delimiter ... ok
test delimiters::opt_default_no_delim ... ok
test delimiters::opt_eq_mult_def_delim ... ok
test delimiters::opt_eq_no_delim ... ok
test default_vals::default_value_ifs_os ... ok
test default_vals::default_values_are_possible_values - should panic ... ok
test conflicts::args_negate_subcommands_two_levels ... ok
test default_vals::default_vals_donnot_show_in_smart_usage ... ok
test delimiters::opt_s_eq_no_delim ... ok
test delimiters::opt_s_no_space_mult_no_delim ... ok
test default_vals::opts ... ok
test delimiters::opt_s_no_space_no_delim ... ok
test derive_order::derive_order ... ok
test derive_order::derive_order_next_order ... ok
test default_vals::osstr_opt_user_override ... ok
test derive_order::no_derive_order ... ok
test derive_order::subcommand_derived_display_order ... ok
test display_order::very_large_display_order ... ok
test double_require::help_text ... ok
test double_require::no_duplicate_error ... ok
test default_vals::osstr_opts ... ok
test empty_values::empty_values ... ok
test empty_values::empty_values_with_equals ... ok
test empty_values::no_empty_values ... ok
test empty_values::no_empty_values_without_equals ... ok
test empty_values::no_empty_values_with_equals ... ok
test delimiters::opt_s_default_no_delim ... ok
test error::trailing_already_in_use ... ok
test default_vals::opt_without_value_fail ... ok
test error::value_validation_has_newline ... ok
test empty_values::no_empty_values_without_equals_but_requires_equals ... ok
test flag_subcommands::flag_subcommand_long ... ok
test default_vals::opt_user_override ... ok
test flag_subcommands::flag_subcommand_conflict_with_version - should panic ... ok
test derive_order::derive_order_no_next_order ... ok
test error::suggest_trailing ... ok
test double_require::valid_cases ... ok
test derive_order::derive_order_subcommand_propagate ... ok
test flag_subcommands::flag_subcommand_long_infer_pass ... ok
test flag_subcommands::flag_subcommand_long_infer_pass_close ... ok
test flag_subcommands::flag_subcommand_long_short_normal_usage_string ... ok
test error::app_error ... ok
test error::cant_use_trailing ... ok
test flag_subcommands::flag_subcommand_long_with_aliases ... ok
test error::kind_formats_validation_error ... ok
test flag_subcommands::flag_subcommand_normal ... ok
test error::kind_prints_help ... ok
test flag_subcommands::flag_subcommand_normal_with_alias ... ok
test flag_subcommands::flag_subcommand_short ... ok
test flag_subcommands::flag_subcommand_short_after_long_arg ... ok
test derive_order::subcommand_sorted_display_order ... ok
test flag_subcommands::flag_subcommand_long_infer_fail ... ok
test flag_subcommands::flag_subcommand_long_with_alias ... ok
test derive_order::derive_order_subcommand_propagate_with_explicit_display_order ... ok
test error::rich_formats_validation_error ... ok
test default_vals::osstr_positional_user_override ... ok
test flag_subcommands::flag_subcommand_multiple ... ok
test flag_subcommands::flag_subcommand_short_with_alias ... ok
test flag_subcommands::flag_subcommand_short_with_alias_hyphen - should panic ... ok
test flag_subcommands::flag_subcommand_short_with_alias_same_as_short_flag ... ok
test flag_subcommands::flag_subcommand_short_with_aliases ... ok
test flag_subcommands::flag_subcommand_long_conflict_with_arg - should panic ... ok
test flag_subcommands::flag_subcommand_long_conflict_with_arg_alias - should panic ... ok
test flag_subcommands::flag_subcommand_long_infer_exact_match ... ok
test flag_subcommands::flag_subcommand_long_with_alias_same_as_long_flag ... ok
test conflicts::conflict_output_rev_with_required ... ok
test flag_subcommands::flag_subcommand_long_conflict_with_alias - should panic ... ok
test flag_subcommands::flag_subcommand_short_conflict_with_arg - should panic ... ok
test flag_subcommands::flag_subcommand_short_conflict_with_arg_alias - should panic ... ok
test conflicts::conflict_output_with_required ... ok
test flag_subcommands::flag_subcommand_conflict_with_help - should panic ... ok
test flag_subcommands::flag_subcommand_short_conflict_with_alias - should panic ... ok
test flag_subcommands::flag_subcommand_long_normal_usage_string ... ok
test flag_subcommands::flag_subcommand_short_normal_usage_string ... ok
test flag_subcommands::flag_subcommand_short_with_aliases_hyphen - should panic ... ok
test flag_subcommands::flag_subcommand_short_with_args ... ok
test flags::flag_using_long ... ok
test conflicts::conflict_output_repeat ... ok
test conflicts::conflict_output ... ok
test flag_subcommands::flag_subcommand_short_with_aliases_vis_and_hidden ... ok
test flags::flag_using_long_with_literals ... ok
test flags::flag_using_short ... ok
test flags::leading_dash_stripped - should panic ... ok
test flags::issue_1284_argument_in_flag_style ... ok
test flags::multiple_flags_in_single ... ok
test flags::issue_2308_multiple_dashes ... ok
test flags::unexpected_value_error ... ok
test flags::lots_o_flags_combined ... ok
test global_args::issue_1076 ... ok
test flags::lots_o_flags_sep ... ok
test global_args::propagate_global_arg_in_subcommand_to_subsubcommand_1385 ... ok
test global_args::global_arg_available_in_subcommand ... ok
test groups::arg_group_new_of_arg_name - should panic ... ok
test flags::flag_using_mixed ... ok
test groups::empty_group ... ok
test global_args::propagate_global_arg_to_subcommand_in_subsubcommand_2053 ... ok
test groups::group_acts_like_arg ... ok
test groups::group_empty ... ok
test groups::group_overrides_required ... ok
test conflicts::conflict_output_rev ... ok
test groups::group_multi_value_single_arg ... ok
test groups::group_usage_use_val_name ... ok
test groups::req_group_usage_string ... ok
test groups::conflict_with_overlapping_group_in_error ... ok
test groups::group_required_flags_empty ... ok
test groups::req_group_with_conflict_usage_string ... ok
test groups::group_single_value ... ok
test groups::req_group_with_conflict_usage_string_only_options ... ok
test groups::required_group_missing_arg ... ok
test groups::required_group_multiple_args ... ok
test groups::group_multiple_args_error ... ok
test groups::requires_group_with_overlapping_group_in_error ... ok
test help::after_help_no_args ... ok
test groups::groups_new_of_arg_name - should panic ... ok
test help::after_and_before_long_help_output ... ok
test groups::unique_group_name - should panic ... ok
test help::arg_short_conflict_with_help - should panic ... ok
test global_args::deeply_nested_discovery ... ok
test help::args_with_last_usage ... ok
test help::arg_id_conflict_with_help - should panic ... ok
test help::custom_headers_headers ... ok
test help::custom_heading_pos ... ok
test help::args_negate_sc ... ok
test help::arg_long_conflict_with_help - should panic ... ok
test help::disabled_help_flag ... ok
test help::custom_help_headers_hide_args ... ok
test help::disabled_help_flag_and_subcommand ... ok
test help::display_name_default ... ok
test help::display_name_explicit ... ok
test help::display_name_subcommand_default ... ok
test global_args::global_overrides_default ... ok
test help::after_and_before_help_output ... ok
test groups::non_existing_arg - should panic ... ok
test help::disable_help_flag_affects_help_subcommand ... ok
test help::display_name_subcommand_explicit ... ok
test help::global_args_should_not_show_on_help_message_for_help_help ... ok
test help::complex_subcommand_help_output ... ok
test help::dont_propagate_version_to_help_subcommand ... ok
test help::global_args_should_show_on_help_message_for_nested_subcommand ... ok
test help::global_args_should_show_on_help_message_for_subcommand ... ok
test help::help_long ... ok
test help::global_args_should_show_on_toplevel_help_message ... ok
test help::help_no_subcommand ... ok
test help::complex_help_output ... ok
test help::help_required_and_given ... ok
test help::help_multi_subcommand_error ... ok
test help::help_required_and_given_for_subcommand ... ok
test help::help_required_and_no_args ... ok
test help::help_required_but_not_given_for_one_of_two_arguments - should panic ... ok
test help::help_required_but_not_given - should panic ... ok
test help::help_required_but_not_given_settings_after_args - should panic ... ok
test help::help_required_globally - should panic ... ok
test help::help_short ... ok
test help::help_required_globally_but_not_given_for_subcommand - should panic ... ok
test help::help_subcommand ... ok
test help::help_subcmd_help ... ok
test help::help_without_short ... ok
test help::hide_args ... ok
test help::hide_default_val ... ok
test help::hide_possible_vals ... ok
test help::hide_single_possible_val ... ok
test help::issue_1052_require_delim_help ... ok
test help::issue_1046_hide_scs ... ok
test help::issue_1364_no_short_options ... ok
test help::issue_1487 ... ok
test help::issue_1642_long_help_spacing ... ok
test help::issue_1794_usage ... ok
test help::issue_2508_number_of_values_with_single_value_name ... ok
test help::last_arg_mult_usage ... ok
test help::last_arg_mult_usage_req ... ok
test help::last_arg_mult_usage_req_with_sc ... ok
test help::issue_702_multiple_values ... ok
test help::long_about ... ok
test help::missing_positional_final_multiple ... ok
test help::last_arg_mult_usage_with_sc ... ok
test help::missing_positional_final_required ... ok
test help::no_wrap_default_help ... ok
test help::no_wrap_help ... ok
test help::old_newline_chars ... ok
test help::multi_level_sc_help ... ok
test help::old_newline_variables ... ok
test help::multiple_custom_help_headers ... ok
test help::only_custom_heading_opts_no_args ... ok
test help::only_custom_heading_pos_no_args ... ok
test help::override_help_flag_using_long ... ok
test help::override_help_about ... ok
test help::option_usage_order ... ok
test help::override_help_flag_using_short ... ok
test help::override_help_long ... ok
test help::override_help_subcommand ... ok
test help::override_help_short ... ok
test help::parent_cmd_req_ignored_when_conflicts ... ok
test help::parent_cmd_req_ignored_when_negates_reqs ... ok
test help::parent_cmd_req_in_usage_with_help_flag ... ok
test help::parent_cmd_req_in_usage_with_help_subcommand ... ok
test help::parent_cmd_req_in_usage_with_render_help ... ok
test help::positional_multiple_occurrences_is_dotted ... ok
test help::positional_multiple_values_is_dotted ... ok
test help::possible_vals_with_help ... ok
test help::prefer_about_over_long_about_in_subcommands_list ... ok
test help::prefer_user_help_long_1112 ... ok
test help::prefer_user_help_short_1112 ... ok
test help::prefer_user_subcmd_help_long_1112 ... ok
test help::prefer_user_subcmd_help_short_1112 ... ok
test help::req_last_arg_usage ... ok
test help::ripgrep_usage ... ok
test help::ripgrep_usage_using_templates ... ok
test help::sc_negates_reqs ... ok
test help::show_long_about_issue_897 ... ok
test help::show_short_about_issue_897 ... ok
test help::subcmd_help_subcmd_help ... ok
test help::subcommand_help_doesnt_have_useless_help_flag ... ok
test help::too_few_value_names_is_dotted ... ok
test help::too_many_value_names_panics - should panic ... ok
test help::subcommand_help_rev ... ok
test help::subcommand_long_help ... ok
test hidden_args::hidden_arg_with_possible_value_with_help ... ok
test help::subcommand_short_help ... ok
test hidden_args::hide_args ... ok
test hidden_args::hide_opt_args_only ... ok
test hidden_args::hide_long_args_short_help ... ok
test hidden_args::hide_pos_args ... ok
test hidden_args::hide_pos_args_only ... ok
test hidden_args::hide_long_args ... ok
test hidden_args::hide_short_args_long_help ... ok
test hidden_args::hide_short_args ... ok
test hidden_args::hide_subcmds_only ... ok
test hidden_args::hide_subcmds ... ok
test ignore_errors::multiple_args_and_final_arg_without_value ... ok
test ignore_errors::multiple_args_and_intermittent_arg_without_value ... ok
test ignore_errors::single_long_arg_without_value ... ok
test ignore_errors::single_short_arg_without_value ... ok
test ignore_errors::subcommand ... ok
test indices::index_flag ... ok
test indices::index_flags ... ok
test indices::index_mult_opts ... ok
test indices::indices_mult_flags ... ok
test indices::indices_mult_flags_combined ... ok
test indices::indices_mult_flags_opt_combined ... ok
test indices::indices_mult_flags_opt_combined_eq ... ok
test indices::indices_mult_opt_mult_flag ... ok
test indices::indices_mult_opt_value_delim_eq ... ok
test indices::indices_mult_opt_value_no_delim_eq ... ok
test indices::indices_mult_opts ... ok
test multiple_occurrences::multiple_occurrences_of_flags_long ... ok
test multiple_occurrences::multiple_occurrences_of_flags_short ... ok
test multiple_occurrences::multiple_occurrences_of_positional ... ok
test multiple_values::different_sep ... ok
test multiple_values::different_sep_positional ... ok
test multiple_values::disallow_positionals_without_values - should panic ... ok
test multiple_values::issue_1480_max_values_consumes_extra_arg_1 ... ok
test multiple_values::issue_1480_max_values_consumes_extra_arg_2 ... ok
test multiple_values::issue_1480_max_values_consumes_extra_arg_3 ... ok
test multiple_values::issue_2229 ... ok
test multiple_values::low_index_positional ... ok
test multiple_values::low_index_positional_in_subcmd ... ok
test multiple_values::low_index_positional_last_multiple_too - should panic ... ok
test multiple_values::low_index_positional_not_required - should panic ... ok
test multiple_values::low_index_positional_too_far_back - should panic ... ok
test multiple_values::low_index_positional_with_extra_flags ... ok
test multiple_values::low_index_positional_with_flag ... ok
test multiple_values::low_index_positional_with_option ... ok
test multiple_occurrences::multiple_occurrences_of_flags_large_quantity ... ok
test multiple_values::multiple_vals_with_hyphen ... ok
test multiple_values::multiple_value_terminator_option ... ok
test multiple_values::no_sep ... ok
test multiple_values::multiple_value_terminator_option_other_arg ... ok
test multiple_values::no_sep_positional ... ok
test multiple_values::num_args_preferred_over_value_names ... ok
test multiple_values::option_exact_exact ... ok
test multiple_values::option_exact_exact_mult ... ok
test multiple_values::option_exact_exact_not_mult ... ok
test multiple_values::option_exact_less ... ok
test multiple_values::option_exact_more ... ok
test multiple_values::option_long ... ok
test multiple_values::option_max_exact ... ok
test multiple_values::option_max_less ... ok
test multiple_values::option_max_more ... ok
test multiple_values::option_max_zero ... ok
test multiple_values::option_max_zero_eq ... ok
test multiple_values::option_min_exact ... ok
test multiple_values::option_min_less ... ok
test multiple_values::option_mixed ... ok
test multiple_values::option_short ... ok
test multiple_values::option_short_min_more_mult_occurs ... ok
test multiple_values::option_short_min_more_single_occur ... ok
test multiple_values::positional ... ok
test multiple_values::optional_value ... ok
test multiple_values::positional_exact_exact ... ok
test multiple_values::positional_exact_less ... ok
test multiple_values::positional_exact_more ... ok
test multiple_values::positional_max_exact ... ok
test multiple_values::positional_max_less ... ok
test multiple_values::positional_max_more ... ok
test multiple_values::positional_min_exact ... ok
test multiple_values::positional_min_less ... ok
test multiple_values::positional_min_more ... ok
test multiple_values::req_delimiter_long ... ok
test multiple_values::req_delimiter_complex ... ok
test multiple_values::req_delimiter_long_with_equal ... ok
test multiple_values::req_delimiter_short_with_equal ... ok
test multiple_values::req_delimiter_short_with_space ... ok
test multiple_values::req_delimiter_short_with_no_space ... ok
test multiple_values::sep_long_equals ... ok
test multiple_values::sep_positional ... ok
test multiple_values::sep_long_space ... ok
test multiple_values::sep_short_equals ... ok
test multiple_values::sep_short_no_space ... ok
test multiple_values::value_names_building_num_vals ... ok
test multiple_values::sep_short_space ... ok
test multiple_values::value_names_building_num_vals_for_positional ... ok
test multiple_values::values_per_occurrence_named ... ok
test multiple_values::values_per_occurrence_positional ... ok
test occurrences::grouped_interleaved_positional_occurrences ... ok
test occurrences::grouped_interleaved_positional_values ... ok
test occurrences::grouped_value_long_flag_delimiter ... ok
test occurrences::grouped_value_multiple_positional_arg ... ok
test occurrences::grouped_value_multiple_positional_arg_last_multiple ... ok
test occurrences::grouped_value_positional_arg ... ok
test occurrences::grouped_value_short_flag_delimiter ... ok
test occurrences::grouped_value_works ... ok
test occurrences::issue_1026 ... ok
test opts::default_values_user_value ... ok
test occurrences::issue_2171 ... ok
test opts::double_hyphen_as_value ... ok
test opts::issue_1047_min_zero_vals_default_val ... ok
test opts::infer_long_arg ... ok
test opts::did_you_mean ... ok
test opts::issue_1073_suboptimal_flag_suggestion ... ok
test opts::issue_1105_empty_value_long_equals ... ok
test opts::issue_1105_empty_value_long_explicit ... ok
test opts::issue_1105_empty_value_long_fail ... ok
test opts::issue_1105_empty_value_short_equals ... ok
test opts::issue_1105_empty_value_short_explicit ... ok
test opts::issue_1105_empty_value_short_explicit_no_space ... ok
test opts::issue_1105_empty_value_short_fail ... ok
test opts::issue_2022_get_flags_misuse ... ok
test opts::issue_2279 ... ok
test opts::leading_hyphen_fail ... ok
test opts::leading_hyphen_pass ... ok
test opts::leading_hyphen_with_flag_after ... ok
test opts::leading_hyphen_with_flag_before ... ok
test opts::leading_hyphen_with_only_pos_follows ... ok
test opts::long_eq_val_starts_with_eq ... ok
test opts::multiple_vals_pos_arg_equals ... ok
test opts::opts_using_long_equals ... ok
test opts::opts_using_long_space ... ok
test opts::opts_using_mixed ... ok
test opts::opts_using_mixed2 ... ok
test opts::opts_using_short ... ok
test opts::require_delims ... ok
test opts::require_delims_no_delim ... ok
test opts::require_equals_empty_vals_pass ... ok
test opts::require_equals_fail ... ok
test opts::require_equals_fail_message ... ok
test opts::lots_o_vals ... ok
test opts::require_equals_min_values_zero ... ok
test opts::require_equals_no_empty_values_fail ... ok
test opts::require_equals_pass ... ok
test opts::short_eq_val_starts_with_eq ... ok
test opts::short_non_ascii_no_space ... ok
test opts::stdin_char ... ok
test positionals::create_positional ... ok
test positionals::ignore_hyphen_values_on_last ... ok
test positionals::issue_946 ... ok
test positionals::last_positional ... ok
test positionals::last_positional_no_double_dash ... ok
test positionals::last_positional_second_to_last_mult ... ok
test positionals::missing_required - should panic ... ok
test positionals::missing_required_2 ... ok
test positionals::multiple_positional_one_required_usage_string ... ok
test positionals::multiple_positional_usage_string ... ok
test positionals::only_pos_follow ... ok
test positionals::positional ... ok
test positionals::positional_arg_with_long - should panic ... ok
test positionals::positional_hyphen_does_not_panic ... ok
test positionals::positional_arg_with_short - should panic ... ok
test positionals::positional_multiple ... ok
test positionals::positional_multiple_2 ... ok
test positionals::lots_o_vals ... ok
test positionals::positional_possible_values ... ok
test positionals::positional_multiple_3 ... ok
test positionals::single_positional_multiple_usage_string ... ok
test positionals::single_positional_required_usage_string ... ok
test positionals::single_positional_usage_string ... ok
test posix_compatible::conflict_overridden ... ok
test posix_compatible::conflict_overridden_2 ... ok
test posix_compatible::conflict_overridden_3 ... ok
test posix_compatible::flag_overrides_itself ... ok
test posix_compatible::conflict_overridden_4 ... ok
test posix_compatible::incremental_override ... ok
test posix_compatible::option_overrides_itself ... ok
test posix_compatible::pos_required_overridden_by_flag ... ok
test posix_compatible::posix_compatible_flags_long ... ok
test posix_compatible::posix_compatible_flags_long_rev ... ok
test posix_compatible::overrides_with_invalid_arg - should panic ... ok
test posix_compatible::posix_compatible_flags_short ... ok
test posix_compatible::posix_compatible_flags_short_rev ... ok
test posix_compatible::posix_compatible_opts_long ... ok
test posix_compatible::posix_compatible_opts_long_equals ... ok
test posix_compatible::posix_compatible_opts_long_equals_rev ... ok
test posix_compatible::posix_compatible_opts_long_rev ... ok
test posix_compatible::posix_compatible_opts_short ... ok
test posix_compatible::posix_compatible_opts_short_rev ... ok
test posix_compatible::require_overridden_2 ... ok
test posix_compatible::require_overridden_3 ... ok
test posix_compatible::require_overridden_4 ... ok
test possible_values::alias ... ok
test possible_values::aliases ... ok
test possible_values::escaped_possible_values_output ... ok
test possible_values::ignore_case ... ok
test possible_values::ignore_case_fail ... ok
test possible_values::ignore_case_multiple ... ok
test possible_values::ignore_case_multiple_fail ... ok
test possible_values::missing_possible_value_error ... ok
test possible_values::possible_value_arg_value ... ok
test possible_values::possible_values_alias_output ... ok
test possible_values::possible_values_hidden_output ... ok
test possible_values::possible_values_of_option ... ok
test possible_values::possible_values_of_option_fail ... ok
test possible_values::possible_values_of_option_multiple ... ok
test possible_values::possible_values_of_option_multiple_fail ... ok
test possible_values::possible_values_of_positional ... ok
test possible_values::possible_values_of_positional_fail ... ok
test possible_values::possible_values_of_positional_multiple ... ok
test possible_values::possible_values_of_positional_multiple_fail ... ok
test possible_values::possible_values_output ... ok
test propagate_globals::global_arg_default_value ... ok
test propagate_globals::global_arg_used_inner ... ok
test propagate_globals::global_arg_used_outer ... ok
test propagate_globals::global_arg_used_top_level ... ok
test propagate_globals::global_flag_2x_used_inner ... ok
test propagate_globals::global_flag_used_inner ... ok
test propagate_globals::global_flag_2x_used_top_level ... ok
test propagate_globals::global_flag_used_outer ... ok
test propagate_globals::global_flag_used_top_level ... ok
test require::arg_require_group ... ok
test require::arg_require_group_2 ... ok
test require::arg_require_group_3 ... ok
test require::flag_required ... ok
test require::flag_required_2 ... ok
test require::group_required ... ok
test require::group_required_2 ... ok
test require::group_required_3 ... ok
test require::group_requires_with_default_value ... ok
test require::issue_1158_conflicting_requirements_rev ... ok
test require::issue_1158_conflicting_requirements ... ok
test require::issue_1643_args_mutually_require_each_other ... ok
test require::issue_2624 ... ok
test require::issue_753 ... ok
test require::list_correct_required_args ... ok
test require::multiple_required_unless_usage_printing ... ok
test require::option_required ... ok
test require::missing_required_output ... ok
test require::option_required_2 ... ok
test require::positional_required ... ok
test require::positional_required_2 ... ok
test require::positional_required_with_requires ... ok
test require::positional_required_with_requires_if_no_value ... ok
test require::positional_required_with_requires_if_value ... ok
test require::require_eq ... ok
test require::require_eq_filtered ... ok
test require::require_eq_filtered_group ... ok
test require::required_error_doesnt_duplicate ... ok
test require::required_if_all_values_present_fail ... ok
test require::required_if_all_values_present_pass ... ok
test require::required_if_any_all_values_present_fail ... ok
test require::required_if_any_all_values_present_pass ... ok
test require::required_if_eq_all_on_default_value ... ok
test require::required_if_eq_on_default_value ... ok
test require::required_if_some_values_present_pass ... ok
test require::required_if_invalid_arg - should panic ... ok
test require::required_if_val_present_fail ... ok
test require::required_if_val_present_fail_error_output ... ok
test require::required_if_val_present_ignore_case_pass ... ok
test require::required_if_val_present_ignore_case_fail ... ok
test require::required_if_val_present_pass ... ok
test require::required_if_wrong_val ... ok
test require::required_ifs_val_present_fail ... ok
test require::required_ifs_val_present_pass ... ok
test require::required_ifs_wrong_val ... ok
test require::required_ifs_wrong_val_mult_fail ... ok
test require::required_unless_all_err ... ok
test require::required_unless_all_on_default_value ... ok
test require::required_require_with_group_shows_flag ... ok
test require::required_unless_any_1 ... ok
test require::required_unless_all_with_any ... ok
test require::required_unless_any_2 ... ok
test require::required_unless_any_err ... ok
test require::required_unless_any_works_with_long ... ok
test require::required_unless_any_works_with_short ... ok
test require::required_unless_any_works_with_short_err ... ok
test require::required_unless_any_works_without ... ok
test require::required_unless_on_default_value ... ok
test require::required_unless_invalid_arg - should panic ... ok
test require::required_unless_present ... ok
test require::required_unless_present_all ... ok
test require::required_unless_present_any ... ok
test require::required_unless_present_err ... ok
test require::required_unless_present_with_optional_value ... ok
test require::requires_if_invalid_arg - should panic ... ok
test require::requires_if_present_mult ... ok
test require::requires_if_present_mult_pass ... ok
test require::requires_if_present_val ... ok
test require::requires_if_present_val_no_present_pass ... ok
test require::requires_if_with_default_value ... ok
test require::requires_with_default_value ... ok
test require::requires_invalid_arg - should panic ... ok
test require::short_flag_require_equals_with_minvals_zero ... ok
test subcommands::alias_help ... ok
test subcommands::busybox_like_multicall ... ok
test subcommands::bad_multicall_command_error ... ok
test subcommands::cant_have_args_with_multicall - should panic ... ok
test subcommands::duplicate_subcommand - should panic ... ok
test subcommands::duplicate_subcommand_alias - should panic ... ok
test subcommands::hostname_like_multicall ... ok
test subcommands::invisible_aliases_help_output ... ok
test subcommands::issue_1031_args_with_same_name ... ok
test subcommands::issue_1722_not_emit_error_when_arg_follows_similar_to_a_subcommand ... ok
test subcommands::issue_1161_multiple_hyphen_hyphen ... ok
test subcommands::issue_2494_subcommand_is_present ... ok
test subcommands::issue_1031_args_with_same_name_no_more_vals ... ok
test subcommands::multiple_aliases ... ok
test subcommands::multicall_help_subcommand ... ok
test subcommands::multicall_render_help ... ok
test subcommands::multicall_help_flag ... ok
test subcommands::single_alias ... ok
test subcommands::subcmd_did_you_mean_output ... ok
test subcommands::subcmd_did_you_mean_output_arg_false_positives ... ok
test subcommands::subcommand ... ok
test subcommands::subcommand_after_argument ... ok
test subcommands::subcommand_after_argument_looks_like_help ... ok
test subcommands::subcmd_did_you_mean_output_ambiguous ... ok
test subcommands::subcommand_multiple ... ok
test subcommands::subcommand_none_given ... ok
test subcommands::subcommand_placeholder_test ... ok
test subcommands::subcommand_used_after_double_dash ... ok
test subcommands::subcmd_did_you_mean_output_arg ... ok
test template_help::template_author_version ... ok
test template_help::template_empty ... ok
test subcommands::visible_aliases_help_output ... ok
test template_help::template_notag ... ok
test template_help::template_unknowntag ... ok
test tests::add_multiple_arg ... ok
test subcommands::subcommand_not_recognized ... ok
test template_help::custom_template ... ok
test template_help::with_template ... ok
test tests::create_app ... ok
test tests::issue_3669_command_build_recurses ... ok
test tests::flag_x2_opt ... ok
test tests::long_flag_long_opt_eq_pos ... ok
test tests::long_flag_long_opt_pos ... ok
test tests::long_opt_eq_x2_pos ... ok
test tests::mut_arg_all ... ok
test tests::mut_subcommand_with_alias_resolve ... ok
test tests::long_opt_x2_pos ... ok
test tests::mut_subcommand_all ... ok
test tests::sc_long_flag_long_opt ... ok
test tests::sc_long_flag_long_opt_eq_pos ... ok
test tests::sc_long_flag_short_opt_pos ... ok
test tests::sc_long_flag_x2_long_opt_eq_pos ... ok
test tests::sc_long_flag_x2_short_opt_eq_pos ... ok
test tests::sc_long_flag_x2_long_opt_pos ... ok
test tests::sc_long_flag_x2_short_opt_pos ... ok
test tests::sc_short_flag_long_opt_eq_pos ... ok
test tests::sc_short_flag_long_opt_pos ... ok
test tests::sc_short_flag_short_opt_eq_pos ... ok
test tests::sc_short_flag_short_opt_pos ... ok
test tests::sc_short_flag_x2_comb_long_opt_eq_pos ... ok
test unique_args::unique_arg_longs - should panic ... ok
test utf8::allow_invalid_utf8_subcommand_args_with_allow_external_subcommands ... ok
test utf8::allow_validated_utf8_external_subcommand_values_of ... ok
test utf8::allow_validated_utf8_value_of ... ok
test tests::sc_short_flag_x2_long_opt_eq_pos ... ok
test utf8::invalid_utf8_option_long_equals ... ok
test utf8::invalid_utf8_option_long_space ... ok
test utf8::invalid_utf8_option_short_equals ... ok
test utf8::invalid_utf8_positional ... ok
test utf8::invalid_utf8_strict_invalid_long ... ok
test unique_args::unique_arg_names - should panic ... ok
test utf8::invalid_utf8_strict_invalid_short ... ok
test tests::sc_short_flag_x2_long_opt_pos ... ok
test unique_args::unique_arg_shorts - should panic ... ok
test utf8::invalid_utf8_strict_option_long_equals ... ok
test utf8::invalid_utf8_strict_option_long_space ... ok
test utf8::invalid_utf8_strict_option_short_equals ... ok
test tests::sc_short_flag_x2_short_opt_eq_pos ... ok
test utf8::invalid_utf8_option_short_no_space ... ok
test utf8::panic_invalid_utf8_external_subcommand_values_of - should panic ... ok
test tests::sc_short_flag_x2_comb_short_opt_pos ... ok
test utf8::invalid_utf8_strict_option_short_no_space ... ok
test utf8::invalid_utf8_strict_option_short_space ... ok
test utf8::refuse_invalid_utf8_subcommand_args_with_allow_external_subcommands ... ok
test utf8::invalid_utf8_strict_positional ... ok
test utf8::panic_validated_utf8_external_subcommand_values_of_os - should panic ... ok
test utf8::allow_invalid_utf8_external_subcommand_values_of_os ... ok
test tests::sc_short_flag_x2_comb_long_opt_pos ... ok
test tests::short_opt_eq_x2_pos ... ok
test tests::short_opt_x2_pos ... ok
test tests::short_flag_short_opt_pos ... ok
test utf8::invalid_utf8_option_short_space ... ok
test tests::sc_short_flag_x2_comb_short_opt_eq_pos ... ok
test tests::short_flag_x2_comb_short_opt_pos ... ok
test version::help_long_flag_with_long_version ... ok
test version::help_long_flag_with_version ... ok
test version::help_short_flag_no_version ... ok
test version::help_short_flag_with_both ... ok
test version::help_short_flag_with_long_version ... ok
test utf8::refuse_invalid_utf8_subcommand_with_allow_external_subcommands ... ok
test version::help_short_flag_with_version ... ok
test version::mut_arg_version_no_auto_version - should panic ... ok
test utf8::refuse_invalid_utf8_subcommand_when_args_are_allowed_with_allow_external_subcommands ... ok
test version::no_propagation_by_default_long ... ok
test version::propagate_version_long ... ok
test version::propagate_version_short ... ok
test version::override_version_short_with_user_flag - should panic ... ok
test version::version_long_flag_no_version ... ok
test version::propagate_version_no_version_info - should panic ... ok
test version::version_long_flag_with_both ... ok
test version::version_long_flag_with_long_version ... ok
test version::help_long_flag_with_both ... ok
test version::version_long_flag_with_version ... ok
test version::version_required - should panic ... ok
test version::version_short_flag_no_version ... ok
test version::version_short_flag_with_both ... ok
test version::no_propagation_by_default_short ... ok
test version::version_short_flag_with_long_version ... ok
test version::override_version_long_with_user_flag - should panic ... ok
test version::help_long_flag_no_version ... ok
test version::version_short_flag_with_version ... ok
test tests::sc_short_flag_x2_short_opt_pos ... ok

test result: ok. 811 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.02s

     Running tests/derive/main.rs (target/debug/deps/derive-37d5a0950a73a955)

running 0 tests

test result: ok. 0 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.00s

     Running tests/derive_ui.rs (target/debug/deps/derive_ui-2fbe0bbc0652ede9)

running 0 tests

test result: ok. 0 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.00s

     Running tests/examples.rs (target/debug/deps/examples-83379c615fefa1f9)

running 1 test
Testing examples/README.md ... ignored
Testing examples/tutorial_derive/01_quick.md:2 ... ignored
Testing examples/tutorial_derive/01_quick.md:24 ... ignored
Testing examples/tutorial_derive/01_quick.md:31 ... ignored
Testing examples/tutorial_builder/02_crate.md:2 ... ignored
Testing examples/tutorial_builder/02_crate.md:13 ... ignored
Testing examples/cargo-example-derive.md:8 ... ignored
Testing examples/cargo-example-derive.md:18 ... ignored
Testing examples/cargo-example-derive.md:32 ... ignored
Testing examples/cargo-example-derive.md:35 ... ignored
Testing examples/tutorial_derive/02_crate.md:2 ... ignored
Testing examples/tutorial_derive/02_crate.md:13 ... ignored
Testing examples/cargo-example.md:8 ... ignored
Testing examples/cargo-example.md:18 ... ignored
Testing examples/cargo-example.md:32 ... ignored
Testing examples/cargo-example.md:35 ... ignored
Testing examples/escaped-positional.md:7 ... ignored
Testing examples/escaped-positional.md:25 ... ignored
Testing examples/escaped-positional.md:34 ... ignored
Testing examples/escaped-positional.md:46 ... ignored
Testing examples/escaped-positional.md:55 ... ignored
Testing examples/tutorial_builder/03_01_flag_count.md:2 ... ignored
Testing examples/tutorial_builder/03_01_flag_count.md:12 ... ignored
Testing examples/tutorial_builder/03_01_flag_count.md:15 ... ignored
Testing examples/tutorial_builder/03_01_flag_count.md:18 ... ignored
Testing examples/tutorial_builder/04_02_parse.md:2 ... ignored
Testing examples/tutorial_builder/04_02_parse.md:14 ... ignored
Testing examples/tutorial_builder/04_02_parse.md:17 ... ignored
Testing examples/tutorial_builder/04_02_parse.md:23 ... ignored
Testing examples/tutorial_builder/04_04_custom.md:2 ... ignored
Testing examples/tutorial_builder/04_04_custom.md:20 ... ignored
Testing examples/tutorial_builder/04_04_custom.md:28 ... ignored
Testing examples/tutorial_builder/04_04_custom.md:31 ... ignored
Testing examples/tutorial_builder/04_04_custom.md:39 ... ignored
Testing examples/tutorial_builder/04_04_custom.md:48 ... ignored
Testing examples/tutorial_derive/02_apps.md:2 ... ignored
Testing examples/tutorial_derive/02_apps.md:13 ... ignored
Testing examples/tutorial_derive/03_05_default_values.md:2 ... ignored
Testing examples/tutorial_derive/03_05_default_values.md:14 ... ignored
Testing examples/tutorial_derive/03_05_default_values.md:17 ... ignored
Testing examples/tutorial_builder/03_01_flag_bool.md:2 ... ignored
Testing examples/tutorial_builder/03_01_flag_bool.md:12 ... ignored
Testing examples/tutorial_builder/03_01_flag_bool.md:15 ... ignored
Testing examples/tutorial_builder/03_01_flag_bool.md:18 ... ignored
Testing examples/tutorial_derive/04_02_validate.md:2 ... ignored
Testing examples/tutorial_derive/04_02_validate.md:14 ... ignored
Testing examples/tutorial_derive/04_02_validate.md:17 ... ignored
Testing examples/tutorial_derive/04_02_validate.md:23 ... ignored
Testing examples/tutorial_derive/03_04_subcommands.md:2 ... ignored
Testing examples/tutorial_derive/03_04_subcommands.md:15 ... ignored
Testing examples/tutorial_derive/03_04_subcommands.md:27 ... ignored
Testing examples/tutorial_derive/03_04_subcommands.md:34 ... ignored
Testing examples/tutorial_derive/03_04_subcommands.md:52 ... ignored
Testing examples/tutorial_derive/03_04_subcommands.md:55 ... ignored
Testing examples/tutorial_builder/02_app_settings.md:2 ... ignored
Testing examples/tutorial_derive/03_01_flag_bool.md:2 ... ignored
Testing examples/tutorial_derive/03_01_flag_bool.md:12 ... ignored
Testing examples/tutorial_derive/03_01_flag_bool.md:15 ... ignored
Testing examples/tutorial_derive/03_01_flag_bool.md:18 ... ignored
Testing examples/tutorial_derive/04_01_enum.md:2 ... ignored
Testing examples/tutorial_derive/04_01_enum.md:22 ... ignored
Testing examples/tutorial_derive/04_01_enum.md:34 ... ignored
Testing examples/tutorial_derive/04_01_enum.md:37 ... ignored
Testing examples/tutorial_derive/04_01_enum.md:40 ... ignored
Testing examples/tutorial_builder/03_05_default_values.md:2 ... ignored
Testing examples/tutorial_builder/03_05_default_values.md:14 ... ignored
Testing examples/tutorial_builder/03_05_default_values.md:17 ... ignored
Testing examples/tutorial_derive/02_app_settings.md:2 ... ignored
Testing examples/tutorial_builder/04_03_relations.md:2 ... ignored
Testing examples/tutorial_builder/04_03_relations.md:20 ... ignored
Testing examples/tutorial_builder/04_03_relations.md:29 ... ignored
Testing examples/tutorial_builder/04_03_relations.md:32 ... ignored
Testing examples/tutorial_builder/04_03_relations.md:40 ... ignored
Testing examples/tutorial_builder/04_03_relations.md:49 ... ignored
Testing examples/tutorial_builder/03_02_option.md:2 ... ignored
Testing examples/tutorial_builder/03_02_option.md:12 ... ignored
Testing examples/tutorial_builder/03_02_option.md:15 ... ignored
Testing examples/tutorial_builder/03_02_option.md:18 ... ignored
Testing examples/tutorial_builder/03_02_option.md:21 ... ignored
Testing examples/tutorial_builder/03_02_option.md:24 ... ignored
Testing examples/tutorial_builder/03_02_option.md:27 ... ignored
Testing examples/tutorial_derive/03_01_flag_count.md:2 ... ignored
Testing examples/tutorial_derive/03_01_flag_count.md:12 ... ignored
Testing examples/tutorial_derive/03_01_flag_count.md:15 ... ignored
Testing examples/tutorial_derive/03_01_flag_count.md:18 ... ignored
Testing examples/tutorial_derive/03_02_option_mult.md:2 ... ignored
Testing examples/tutorial_derive/03_02_option_mult.md:12 ... ignored
Testing examples/tutorial_derive/03_02_option_mult.md:15 ... ignored
Testing examples/tutorial_derive/03_02_option_mult.md:18 ... ignored
Testing examples/tutorial_derive/03_02_option_mult.md:21 ... ignored
Testing examples/tutorial_derive/03_02_option_mult.md:24 ... ignored
Testing examples/tutorial_derive/03_02_option_mult.md:27 ... ignored
Testing examples/demo.md:2 ... ignored
Testing examples/demo.md:13 ... ignored
Testing examples/find.md:4 ... ignored
Testing examples/find.md:22 ... ignored
Testing examples/tutorial_builder/04_02_validate.md:2 ... ignored
Testing examples/tutorial_builder/04_02_validate.md:14 ... ignored
Testing examples/tutorial_builder/04_02_validate.md:17 ... ignored
Testing examples/tutorial_builder/04_02_validate.md:23 ... ignored
Testing examples/tutorial_builder/03_02_option_mult.md:2 ... ignored
Testing examples/tutorial_builder/03_02_option_mult.md:12 ... ignored
Testing examples/tutorial_builder/03_02_option_mult.md:15 ... ignored
Testing examples/tutorial_builder/03_02_option_mult.md:18 ... ignored
Testing examples/tutorial_builder/03_02_option_mult.md:21 ... ignored
Testing examples/tutorial_builder/03_02_option_mult.md:24 ... ignored
Testing examples/tutorial_builder/03_02_option_mult.md:27 ... ignored
Testing examples/tutorial_derive/03_03_positional.md:2 ... ignored
Testing examples/tutorial_derive/03_03_positional.md:14 ... ignored
Testing examples/tutorial_derive/03_03_positional.md:17 ... ignored
Testing examples/tutorial_derive/03_03_positional_mult.md:2 ... ignored
Testing examples/tutorial_derive/03_03_positional_mult.md:14 ... ignored
Testing examples/tutorial_derive/03_03_positional_mult.md:17 ... ignored
Testing examples/tutorial_derive/03_03_positional_mult.md:20 ... ignored
Testing examples/tutorial_derive/04_03_relations.md:2 ... ignored
Testing examples/tutorial_derive/04_03_relations.md:20 ... ignored
Testing examples/tutorial_derive/04_03_relations.md:29 ... ignored
Testing examples/tutorial_derive/04_03_relations.md:32 ... ignored
Testing examples/tutorial_derive/04_03_relations.md:40 ... ignored
Testing examples/tutorial_derive/04_03_relations.md:49 ... ignored
Testing examples/tutorial_builder/03_03_positional.md:2 ... ignored
Testing examples/tutorial_builder/03_03_positional.md:14 ... ignored
Testing examples/tutorial_builder/03_03_positional.md:17 ... ignored
Testing examples/git-derive.md:7 ... ignored
Testing examples/git-derive.md:24 ... ignored
Testing examples/git-derive.md:40 ... ignored
Testing examples/git-derive.md:55 ... ignored
Testing examples/git-derive.md:67 ... ignored
Testing examples/git-derive.md:74 ... ignored
Testing examples/git-derive.md:88 ... ignored
Testing examples/git-derive.md:95 ... ignored
Testing examples/git-derive.md:104 ... ignored
Testing examples/git-derive.md:107 ... ignored
Testing examples/git-derive.md:110 ... ignored
Testing examples/git-derive.md:113 ... ignored
Testing examples/git-derive.md:120 ... ignored
Testing examples/git-derive.md:127 ... ignored
Testing examples/git-derive.md:141 ... ignored
Testing examples/git-derive.md:144 ... ignored
Testing examples/git-derive.md:147 ... ignored
Testing examples/git-derive.md:150 ... ignored
Testing examples/git-derive.md:153 ... ignored
Testing examples/git-derive.md:156 ... ignored
Testing examples/tutorial_builder/04_01_enum.md:2 ... ignored
Testing examples/tutorial_builder/04_01_enum.md:22 ... ignored
Testing examples/tutorial_builder/04_01_enum.md:34 ... ignored
Testing examples/tutorial_builder/04_01_enum.md:37 ... ignored
Testing examples/tutorial_builder/04_01_enum.md:40 ... ignored
Testing examples/tutorial_builder/04_01_possible.md:2 ... ignored
Testing examples/tutorial_builder/04_01_possible.md:14 ... ignored
Testing examples/tutorial_builder/04_01_possible.md:17 ... ignored
Testing examples/tutorial_builder/04_01_possible.md:20 ... ignored
Testing examples/escaped-positional-derive.md:7 ... ignored
Testing examples/escaped-positional-derive.md:25 ... ignored
Testing examples/escaped-positional-derive.md:34 ... ignored
Testing examples/escaped-positional-derive.md:46 ... ignored
Testing examples/escaped-positional-derive.md:55 ... ignored
Testing examples/derive_ref/interop_tests.md:6 ... ignored
Testing examples/derive_ref/interop_tests.md:16 ... ignored
Testing examples/derive_ref/interop_tests.md:26 ... ignored
Testing examples/derive_ref/interop_tests.md:36 ... ignored
Testing examples/derive_ref/interop_tests.md:49 ... ignored
Testing examples/derive_ref/interop_tests.md:55 ... ignored
Testing examples/derive_ref/interop_tests.md:63 ... ignored
Testing examples/derive_ref/interop_tests.md:71 ... ignored
Testing examples/derive_ref/interop_tests.md:82 ... ignored
Testing examples/derive_ref/interop_tests.md:95 ... ignored
Testing examples/derive_ref/interop_tests.md:111 ... ignored
Testing examples/derive_ref/interop_tests.md:124 ... ignored
Testing examples/derive_ref/interop_tests.md:141 ... ignored
Testing examples/derive_ref/interop_tests.md:154 ... ignored
Testing examples/derive_ref/interop_tests.md:168 ... ignored
Testing examples/derive_ref/interop_tests.md:186 ... ignored
Testing examples/derive_ref/interop_tests.md:199 ... ignored
Testing examples/derive_ref/interop_tests.md:212 ... ignored
Testing examples/derive_ref/interop_tests.md:225 ... ignored
Testing examples/derive_ref/interop_tests.md:240 ... ignored
Testing examples/tutorial_builder/03_03_positional_mult.md:2 ... ignored
Testing examples/tutorial_builder/03_03_positional_mult.md:14 ... ignored
Testing examples/tutorial_builder/03_03_positional_mult.md:17 ... ignored
Testing examples/tutorial_builder/03_03_positional_mult.md:20 ... ignored
Testing examples/tutorial_builder/03_04_subcommands.md:2 ... ignored
Testing examples/tutorial_builder/03_04_subcommands.md:15 ... ignored
Testing examples/tutorial_builder/03_04_subcommands.md:27 ... ignored
Testing examples/tutorial_builder/03_04_subcommands.md:34 ... ignored
Testing examples/tutorial_builder/03_04_subcommands.md:52 ... ignored
Testing examples/tutorial_builder/03_04_subcommands.md:55 ... ignored
Testing examples/tutorial_derive/04_02_parse.md:2 ... ignored
Testing examples/tutorial_derive/04_02_parse.md:14 ... ignored
Testing examples/tutorial_derive/04_02_parse.md:17 ... ignored
Testing examples/tutorial_derive/04_02_parse.md:23 ... ignored
Testing examples/tutorial_derive/04_04_custom.md:2 ... ignored
Testing examples/tutorial_derive/04_04_custom.md:20 ... ignored
Testing examples/tutorial_derive/04_04_custom.md:28 ... ignored
Testing examples/tutorial_derive/04_04_custom.md:31 ... ignored
Testing examples/tutorial_derive/04_04_custom.md:39 ... ignored
Testing examples/tutorial_derive/04_04_custom.md:48 ... ignored
Testing examples/tutorial_derive/03_02_option.md:2 ... ignored
Testing examples/tutorial_derive/03_02_option.md:12 ... ignored
Testing examples/tutorial_derive/03_02_option.md:15 ... ignored
Testing examples/tutorial_derive/03_02_option.md:18 ... ignored
Testing examples/tutorial_derive/03_02_option.md:21 ... ignored
Testing examples/tutorial_derive/03_02_option.md:24 ... ignored
Testing examples/tutorial_derive/03_02_option.md:27 ... ignored
Testing examples/multicall-hostname.md:6 ... ok
Testing examples/typed-derive.md:5 ... ignored
Testing examples/typed-derive.md:22 ... ignored
Testing examples/typed-derive.md:25 ... ignored
Testing examples/typed-derive.md:35 ... ignored
Testing examples/typed-derive.md:42 ... ignored
Testing examples/typed-derive.md:45 ... ignored
Testing examples/typed-derive.md:55 ... ignored
Testing examples/typed-derive.md:58 ... ignored
Testing examples/typed-derive.md:68 ... ignored
Testing examples/typed-derive.md:71 ... ignored
Testing examples/typed-derive.md:77 ... ignored
Testing examples/typed-derive.md:87 ... ignored
Testing examples/typed-derive.md:90 ... ignored
Testing examples/typed-derive.md:93 ... ignored
Testing examples/typed-derive.md:100 ... ignored
Testing examples/typed-derive.md:111 ... ignored
Testing examples/typed-derive.md:114 ... ignored
Testing examples/typed-derive.md:117 ... ignored
Testing examples/typed-derive.md:124 ... ignored
Testing examples/tutorial_builder/01_quick.md:2 ... ignored
Testing examples/tutorial_builder/01_quick.md:24 ... ignored
Testing examples/tutorial_builder/01_quick.md:31 ... ignored
Testing examples/tutorial_builder/02_apps.md:2 ... ok
Testing examples/tutorial_builder/02_apps.md:13 ... ok
Testing examples/multicall-busybox.md:6 ... ok
Testing examples/multicall-busybox.md:9 ... ok
Testing examples/multicall-busybox.md:18 ... ok
Testing examples/multicall-busybox.md:26 ... ok
Testing examples/pacman.md:5 ... ok
Testing examples/pacman.md:12 ... ok
Testing examples/pacman.md:19 ... ok
Testing examples/pacman.md:26 ... ok
Testing examples/pacman.md:29 ... ok
Testing examples/pacman.md:37 ... ok
Testing examples/pacman.md:51 ... ok
Testing examples/pacman.md:68 ... ok
Testing examples/git.md:5 ... ok
Testing examples/git.md:22 ... ok
Testing examples/git.md:38 ... ok
Testing examples/git.md:53 ... ok
Testing examples/git.md:65 ... ok
Testing examples/git.md:72 ... ok
Testing examples/git.md:86 ... ok
Testing examples/git.md:93 ... ok
Testing examples/git.md:102 ... ok
Testing examples/git.md:105 ... ok
Testing examples/git.md:108 ... ok
Testing examples/git.md:111 ... ok
Testing examples/git.md:118 ... ok
Testing examples/git.md:125 ... ok
Testing examples/git.md:139 ... ok
Testing examples/git.md:142 ... ok
Testing examples/git.md:145 ... ok
Testing examples/git.md:148 ... ok
Testing examples/git.md:151 ... ok
Testing examples/git.md:154 ... ok
test example_tests ... ok

test result: ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 1.78s

     Running tests/macros.rs (target/debug/deps/macros-4f0d649087805240)

running 20 tests
test arg::long_help ... ok
test arg::long_version ... ok
test arg::name_from_long ... ok
test arg::name_explicit ... ok
test arg::name_from_value ... ok
test arg::positional ... ok
test arg::short ... ok
test arg::name_none_fails - should panic ... ok
test arg::short_and_long ... ok
test arg::short_help ... ok
test arg::short_version ... ok
test arg::short_only_fails - should panic ... ok
test arg::short_with_value ... ok
test arg_impl::arg_name_dashed ... ok
test arg_impl::arg_value_dashed_with_long_arg ... ok
test arg_impl::arg_value_dashed_with_short_arg ... ok
test arg_impl::char_ident ... ok
test arg_impl::char_literal ... ok
test arg_impl::string_ident ... ok
test arg_impl::string_literal ... ok

test result: ok. 20 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.00s

     Running tests/ui.rs (target/debug/deps/ui-80d54492e0ec1dac)

running 1 test
Testing tests/ui/V_flag_stdout.toml ... ok
Testing tests/ui/version_flag_stdout.toml ... ok
Testing tests/ui/error_stderr.toml ... ok
Testing tests/ui/h_flag_stdout.toml ... ok
Testing tests/ui/arg_required_else_help_stderr.toml ... ok
Testing tests/ui/help_flag_stdout.toml ... ok
Testing tests/ui/help_cmd_stdout.toml ... ok
test ui_tests ... ok

test result: ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.06s

   Doc-tests clap

running 341 tests
test src/builder/arg.rs - builder::arg::Arg::exclusive (line 744) ... ok
test src/builder/arg.rs - builder::arg::Arg::hide_short_help (line 2407) ... ok
test src/builder/arg.rs - builder::arg::Arg::conflicts_with (line 3528) ... ok
test src/builder/arg.rs - builder::arg::Arg::group (line 2557) ... ok
test src/builder/arg.rs - builder::arg::Arg::index (line 462) ... ok
test src/builder/arg.rs - builder::arg::Arg::groups (line 2601) ... ok
test src/builder/arg.rs - builder::arg::Arg::get_long_help (line 3712) ... ok
test src/builder/arg.rs - builder::arg::Arg::hide_default_value (line 2316) ... ok
test src/builder/arg.rs - builder::arg::Arg::get_default_values (line 3909) ... ok
test src/builder/action.rs - builder::action::ArgAction (line 5) ... ok
test src/builder/action.rs - builder::action::ArgAction::Help (line 227) ... ok
test src/builder/arg.rs - builder::arg::Arg::conflicts_with_all (line 3582) ... ok
test src/builder/arg.rs - builder::arg::Arg::hide_possible_values (line 2287) ... ok
test src/builder/arg.rs - builder::arg::Arg::group (line 2569) ... ok
test src/builder/arg.rs - builder::arg::Arg::hide (line 2241) ... ok
test src/builder/arg.rs - builder::arg::Arg (line 41) ... ok
test src/builder/arg.rs - builder::arg::Arg::help (line 2016) ... ok
test src/builder/arg.rs - builder::arg::Arg::aliases (line 277) ... ok
test src/builder/arg.rs - builder::arg::Arg::get_value_parser (line 3967) ... ok
test src/builder/arg.rs - builder::arg::Arg::display_order (line 2123) ... ok
test src/builder/arg.rs - builder::arg::Arg::allow_hyphen_values (line 1355) ... ok
test src/builder/arg.rs - builder::arg::Arg::alias (line 218) ... ok
test src/builder/arg.rs - builder::arg::Arg::default_value_if (line 2711) ... ok
test src/builder/arg.rs - builder::arg::Arg::hide_long_help (line 2488) ... ok
test src/builder/action.rs - builder::action::ArgAction::Version (line 253) ... ok
test src/builder/arg.rs - builder::arg::Arg::hide_short_help (line 2441) ... ok
test src/builder/action.rs - builder::action::ArgAction::SetFalse (line 162) ... ok
test src/builder/arg.rs - builder::arg::Arg::conflicts_with (line 3537) ... ok
test src/builder/arg.rs - builder::arg::Arg::groups (line 2613) ... ok
test src/builder/action.rs - builder::action::ArgAction::Count (line 196) ... ok
test src/builder/arg.rs - builder::arg::Arg::global (line 794) ... ok
test src/builder/arg.rs - builder::arg::Arg::new (line 101) ... ok
test src/builder/arg.rs - builder::arg::Arg::is_positional (line 3922) ... ok
test src/builder/arg.rs - builder::arg::Arg::default_value_if (line 2655) ... ok
test src/builder/arg.rs - builder::arg::Arg::allow_negative_numbers (line 1388) ... ok
test src/builder/arg.rs - builder::arg::Arg::hide_short_help (line 2415) ... ok
test src/builder/arg.rs - builder::arg::Arg::hide_long_help (line 2514) ... ok
test src/builder/arg.rs - builder::arg::Arg::conflicts_with_all (line 3592) ... ok
test src/builder/arg.rs - builder::arg::Arg::last (line 554) ... ok
test src/builder/arg.rs - builder::arg::Arg::default_value_ifs (line 2789) ... ok
test src/builder/action.rs - builder::action::ArgAction::Append (line 58) ... ok
test src/builder/arg.rs - builder::arg::Arg::default_value_if (line 2692) ... ok
test src/builder/arg.rs - builder::arg::Arg::default_value_if (line 2674) ... ok
test src/builder/arg.rs - builder::arg::Arg::default_value_if (line 2730) ... ok
test src/builder/arg.rs - builder::arg::Arg::default_missing_value (line 1742) ... ok
test src/builder/arg.rs - builder::arg::Arg::default_value_ifs (line 2813) ... ok
test src/builder/arg.rs - builder::arg::Arg::last (line 565) ... ok
test src/builder/arg.rs - builder::arg::Arg::ignore_case (line 1290) ... ok
test src/builder/arg.rs - builder::arg::Arg::allow_hyphen_values (line 1338) ... ok
test src/builder/action.rs - builder::action::ArgAction::SetTrue (line 116) ... ok
test src/builder/arg.rs - builder::arg::Arg::index (line 469) ... ok
test src/builder/arg.rs - builder::arg::Arg::ignore_case (line 1273) ... ok
test src/builder/arg.rs - builder::arg::Arg::default_value_ifs (line 2835) ... ok
test src/builder/arg.rs - builder::arg::Arg::default_value (line 1610) ... ok
test src/builder/arg.rs - builder::arg::Arg::last (line 586) ... ok
test src/builder/arg.rs - builder::arg::Arg::exclusive (line 754) ... ok
test src/builder/arg.rs - builder::arg::Arg::action (line 863) ... ok
test src/builder/arg.rs - builder::arg::Arg::default_value (line 1627) ... ok
test src/builder/action.rs - builder::action::ArgAction::Set (line 36) ... ok
test src/builder/arg.rs - builder::arg::Arg::long_help (line 2066) ... ok
test src/builder/arg.rs - builder::arg::Arg::long (line 192) ... ok
test src/builder/action.rs - builder::action::ArgAction::SetTrue (line 89) ... ok
test src/builder/arg.rs - builder::arg::Arg::next_line_help (line 2190) ... ok
test src/builder/arg.rs - builder::arg::Arg::default_missing_value (line 1704) ... ok
test src/builder/arg.rs - builder::arg::Arg::require_equals (line 1419) ... ok
test src/builder/arg.rs - builder::arg::Arg::required (line 627) ... ok
test src/builder/arg.rs - builder::arg::Arg::require_equals (line 1436) ... ok
test src/builder/arg.rs - builder::arg::Arg::num_args (line 981) ... ok
test src/builder/arg.rs - builder::arg::Arg::num_args (line 1024) ... ok
test src/builder/arg.rs - builder::arg::Arg::num_args (line 1050) ... ok
test src/builder/arg.rs - builder::arg::Arg::required_if_eq (line 3117) ... ok
test src/builder/arg.rs - builder::arg::Arg::required_if_eq_all (line 3287) ... ok
test src/builder/arg.rs - builder::arg::Arg::overrides_with (line 3630) ... ok
test src/builder/arg.rs - builder::arg::Arg::num_args (line 1078) ... ok
test src/builder/arg.rs - builder::arg::Arg::required_unless_present (line 2902) ... ok
test src/builder/arg.rs - builder::arg::Arg::num_args (line 995) ... ok
test src/builder/arg.rs - builder::arg::Arg::overrides_with_all (line 3669) ... ok
test src/builder/arg.rs - builder::arg::Arg::required (line 636) ... ok
test src/builder/arg.rs - builder::arg::Arg::required (line 652) ... ok
test src/builder/command.rs - builder::command::Command::about (line 1487) - compile ... ok
test src/builder/command.rs - builder::command::Command::after_help (line 1533) - compile ... ok
test src/builder/command.rs - builder::command::Command (line 54) - compile ... ok
test src/builder/arg.rs - builder::arg::Arg::required_if_eq_all (line 3301) ... ok
test src/builder/arg.rs - builder::arg::Arg::required_if_eq_any (line 3204) ... ok
test src/builder/command.rs - builder::command::Command::after_long_help (line 1555) - compile ... ok
test src/builder/arg.rs - builder::arg::Arg::required_if_eq (line 3124) ... ok
test src/builder/arg.rs - builder::arg::Arg::required_unless_present_all (line 2969) ... ok
test src/builder/arg.rs - builder::arg::Arg::required_unless_present_any (line 3045) ... ok
test src/builder/command.rs - builder::command::Command::args (line 189) - compile ... ok
test src/builder/arg.rs - builder::arg::Arg::requires_if (line 3369) ... ok
test src/builder/command.rs - builder::command::Command::arg (line 147) - compile ... ok
test src/builder/command.rs - builder::command::Command::author (line 1464) - compile ... ok
test src/builder/arg.rs - builder::arg::Arg::value_hint (line 1232) ... ok
test src/builder/arg.rs - builder::arg::Arg::value_name (line 1120) ... ok
test src/builder/arg.rs - builder::arg::Arg::value_terminator (line 1520) ... ok
test src/builder/command.rs - builder::command::Command::before_help (line 1576) - compile ... ok
test src/builder/arg.rs - builder::arg::Arg::value_hint (line 1242) ... ok
test src/builder/command.rs - builder::command::Command::before_long_help (line 1596) - compile ... ok
test src/builder/arg.rs - builder::arg::Arg::requires (line 684) ... ok
test src/builder/command.rs - builder::command::Command::bin_name (line 1425) - compile ... ok
test src/builder/arg.rs - builder::arg::Arg::value_names (line 1183) ... ok
test src/builder/arg.rs - builder::arg::Arg::requires_ifs (line 3429) ... ok
test src/builder/arg.rs - builder::arg::Arg::required_if_eq_any (line 3218) ... ok
test src/builder/arg.rs - builder::arg::Arg::required_if_eq_any (line 3244) ... ok
test src/builder/command.rs - builder::command::Command::color (line 1034) - compile ... ok
test src/builder/arg_group.rs - builder::arg_group::ArgGroup::get_args (line 195) ... ok
test src/builder/command.rs - builder::command::Command::disable_colored_help (line 1242) - compile ... ok
test src/builder/arg.rs - builder::arg::Arg::required_unless_present (line 2931) ... ok
test src/builder/arg.rs - builder::arg::Arg::required_unless_present_all (line 2979) ... ok
test src/builder/arg.rs - builder::arg::Arg::required_unless_present_any (line 3057) ... ok
test src/builder/command.rs - builder::command::Command::display_name (line 1441) - compile ... ok
test src/builder/arg.rs - builder::arg::Arg::required_unless_present_any (line 3080) ... ok
test src/builder/arg.rs - builder::arg::Arg::required_unless_present (line 2912) ... ok
test src/builder/arg.rs - builder::arg::Arg::requires_if (line 3380) ... ok
test src/builder/arg.rs - builder::arg::Arg::required_if_eq_all (line 3327) ... ok
test src/builder/arg.rs - builder::arg::Arg::value_name (line 1128) ... ok
test src/builder/command.rs - builder::command::Command::dont_delimit_trailing_values (line 1009) - compile ... ok
test src/builder/arg.rs - builder::arg::Arg::required_unless_present_all (line 3002) ... ok
test src/builder/arg.rs - builder::arg::Arg::short_alias (line 247) ... ok
test src/builder/command.rs - builder::command::Command::get_matches_mut (line 503) - compile ... ok
test src/builder/arg.rs - builder::arg::Arg::requires (line 695) ... ok
test src/builder/arg.rs - builder::arg::Arg::requires_if (line 3398) ... ok
test src/builder/arg.rs - builder::arg::Arg::short (line 132) ... ok
test src/builder/arg.rs - builder::arg::Arg::value_names (line 1190) ... ok
test src/builder/arg.rs - builder::arg::Arg::visible_aliases (line 392) ... ok
test src/builder/arg.rs - builder::arg::Arg::visible_short_aliases (line 418) ... ok
test src/builder/arg.rs - builder::arg::Arg::requires (line 712) ... ok
test src/builder/command.rs - builder::command::Command::get_matches_from (line 562) - compile ... ok
test src/builder/command.rs - builder::command::Command::name (line 1399) ... ignored
test src/builder/command.rs - builder::command::Command::group (line 316) - compile ... ok
test src/builder/command.rs - builder::command::Command::groups (line 339) - compile ... ok
test src/builder/command.rs - builder::command::Command::get_matches (line 480) - compile ... ok
test src/builder/arg.rs - builder::arg::Arg::visible_alias (line 334) ... ok
test src/builder/command.rs - builder::command::Command::help_expected (line 1279) - compile ... ok
test src/builder/command.rs - builder::command::Command::help_template (line 1771) - compile ... ok
test src/builder/arg.rs - builder::arg::Arg::requires_ifs (line 3468) ... ok
test src/builder/arg.rs - builder::arg::Arg::visible_short_alias (line 363) ... ok
test src/builder/arg.rs - builder::arg::Arg::value_terminator (line 1532) ... ok
test src/builder/arg.rs - builder::arg::Arg::value_delimiter (line 1484) ... ok
test src/builder/command.rs - builder::command::Command::help_template (line 1781) - compile ... ok
test src/builder/arg_group.rs - builder::arg_group::ArgGroup::conflicts_with_all (line 461) ... ok
test src/builder/arg_group.rs - builder::arg_group::ArgGroup::args (line 165) ... ok
test src/builder/arg.rs - builder::arg::Arg::short (line 146) ... ok
test src/builder/arg_group.rs - builder::arg_group::ArgGroup::conflicts_with (line 420) ... ok
test src/builder/arg_group.rs - builder::arg_group::ArgGroup::arg (line 132) ... ok
test src/builder/arg_group.rs - builder::arg_group::ArgGroup (line 55) ... ok
test src/builder/arg.rs - builder::arg::Arg::requires_ifs (line 3443) ... ok
test src/builder/arg.rs - builder::arg::Arg::short_aliases (line 305) ... ok
test src/builder/arg.rs - builder::arg::Arg::value_parser (line 903) ... ok
test src/builder/arg.rs - builder::arg::Arg::trailing_var_arg (line 509) ... ok
test src/builder/command.rs - builder::command::Command::long_version (line 1640) - compile ... ok
test src/builder/command.rs - builder::command::Command::long_flag_alias (line 2311) - compile ... ok
test src/builder/command.rs - builder::command::Command::long_about (line 1508) - compile ... ok
test src/builder/command.rs - builder::command::Command::infer_subcommands (line 1365) - compile ... ok
test src/builder/arg_group.rs - builder::arg_group::ArgGroup (line 37) ... ok
test src/builder/command.rs - builder::command::Command::max_term_width (line 1096) - compile ... ok
test src/builder/command.rs - builder::command::Command::new (line 123) - compile ... ok
test src/builder/arg_group.rs - builder::arg_group::ArgGroup::is_multiple (line 265) ... ok
test src/builder/command.rs - builder::command::Command::override_help (line 1711) - compile ... ok
test src/builder/command.rs - builder::command::Command::next_line_help (line 1168) - compile ... ok
test src/builder/command.rs - builder::command::Command::override_usage (line 1682) - compile ... ok
test src/builder/arg_group.rs - builder::arg_group::ArgGroup::new (line 104) ... ok
test src/builder/command.rs - builder::command::Command::propagate_version (line 1141) - compile ... ok
test src/builder/arg_group.rs - builder::arg_group::ArgGroup::id (line 117) ... ok
test src/builder/command.rs - builder::command::Command::override_usage (line 1673) - compile ... ok
test src/builder/command.rs - builder::command::Command::subcommand_help_heading (line 3152) - compile ... ok
test src/builder/command.rs - builder::command::Command::subcommand (line 377) - compile ... ok
test src/builder/command.rs - builder::command::Command::subcommand_value_name (line 3088) - compile ... ok
test src/builder/command.rs - builder::command::Command::subcommand_value_name (line 3114) - compile ... ok
test src/builder/command.rs - builder::command::Command::term_width (line 1069) - compile ... ok
test src/builder/command.rs - builder::command::Command::try_get_matches (line 530) - compile ... ok
test src/builder/command.rs - builder::command::Command::subcommand_help_heading (line 3178) - compile ... ok
test src/builder/command.rs - builder::command::Command::try_get_matches_from (line 600) - compile ... ok
test src/builder/command.rs - builder::command::Command::version (line 1618) - compile ... ok
test src/builder/command.rs - builder::command::Command::short_flag_alias (line 2284) - compile ... ok
test src/builder/command.rs - builder::command::Command::visible_alias (line 2437) - compile ... ok
test src/builder/command.rs - builder::command::Command::try_get_matches_from_mut (line 645) - compile ... ok
test src/builder/command.rs - builder::command::Command::visible_long_flag_alias (line 2496) - compile ... ok
test src/builder/command.rs - builder::command::Command::visible_long_flag_aliases (line 2579) - compile ... ok
test src/builder/command.rs - builder::command::Command::visible_aliases (line 2533) - compile ... ok
test src/builder/command.rs - builder::command::Command::visible_short_flag_alias (line 2466) - compile ... ok
test src/builder/command.rs - builder::command::Command::visible_short_flag_aliases (line 2555) - compile ... ok
test src/builder/arg_group.rs - builder::arg_group::ArgGroup::multiple (line 215) ... ok
test src/builder/arg_group.rs - builder::arg_group::ArgGroup::multiple (line 234) ... ok
test src/builder/arg_group.rs - builder::arg_group::ArgGroup::required (line 292) ... ok
test src/builder/arg_group.rs - builder::arg_group::ArgGroup::requires (line 331) ... ok
test src/builder/command.rs - builder::command::Command::arg_required_else_help (line 1997) ... ok
test src/builder/command.rs - builder::command::Command::args_conflicts_with_subcommands (line 2829) ... ok
test src/builder/arg_group.rs - builder::arg_group::ArgGroup::requires_all (line 375) ... ok
test src/builder/range.rs - builder::range::ValueRange::new (line 40) ... ok
test src/builder/command.rs - builder::command::Command::alias (line 2257) ... ok
test src/builder/command.rs - builder::command::Command::aliases (line 2345) ... ok
test src/builder/command.rs - builder::command::Command::allow_missing_positional (line 2104) ... ok
test src/builder/command.rs - builder::command::Command::allow_missing_positional (line 2123) ... ok
test src/builder/range.rs - builder::range::ValueRange::new (line 29) ... ok
test src/builder/command.rs - builder::command::Command::allow_external_subcommands (line 2717) ... ok
test src/builder/range.rs - builder::range::ValueRange::takes_values (line 70) ... ok
test src/builder/command.rs - builder::command::Command::allow_missing_positional (line 2086) ... ok
test src/builder/command.rs - builder::command::Command::allow_missing_positional (line 2142) ... ok
test src/builder/command.rs - builder::command::Command::error (line 463) ... ok
test src/builder/command.rs - builder::command::Command::get_external_subcommand_value_parser (line 3693) ... ok
test src/builder/command.rs - builder::command::Command::hide (line 2658) ... ok
test src/builder/command.rs - builder::command::Command::debug_assert (line 436) ... ok
test src/builder/command.rs - builder::command::Command::disable_help_flag (line 1189) ... ok
test src/builder/command.rs - builder::command::Command::disable_help_subcommand (line 1212) ... ok
test src/builder/command.rs - builder::command::Command::display_order (line 2611) ... ok
test src/builder/command.rs - builder::command::Command::render_long_version (line 878) ... ok
test src/builder/command.rs - builder::command::Command::disable_version_flag (line 1114) ... ok
test src/builder/command.rs - builder::command::Command::print_help (line 717) ... ok
test src/builder/command.rs - builder::command::Command::print_long_help (line 741) ... ok
test src/builder/command.rs - builder::command::Command::help_expected (line 1266) ... ok
test src/derive.rs - derive::Args (line 270) ... ignored
test src/derive.rs - derive::FromArgMatches::from_arg_matches (line 182) ... ignored
test src/builder/command.rs - builder::command::Command::render_usage (line 896) ... ok
test src/derive.rs - derive::FromArgMatches::from_arg_matches (line 192) ... ignored
test src/derive.rs - derive::FromArgMatches::from_arg_matches_mut (line 216) ... ignored
test src/derive.rs - derive::FromArgMatches::from_arg_matches_mut (line 226) ... ignored
test src/derive.rs - derive::Parser (line 33) ... ignored
test src/derive.rs - derive::Subcommand (line 316) ... ignored
test src/derive.rs - derive::ValueEnum (line 358) ... ignored
test src/builder/command.rs - builder::command::Command::render_long_help (line 794) ... ok
test src/builder/command.rs - builder::command::Command::render_help (line 768) ... ok
test src/builder/command.rs - builder::command::Command::subcommands (line 406) ... ok
test src/builder/value_parser.rs - builder::value_parser::TypedValueParser (line 647) ... ok
test src/builder/command.rs - builder::command::Command::external_subcommand_value_parser (line 2782) ... ok
test src/builder/possible_value.rs - builder::possible_value::PossibleValue::hide (line 94) ... ok
test src/builder/possible_value.rs - builder::possible_value::PossibleValue::alias (line 112) ... ok
test src/builder/possible_value.rs - builder::possible_value::PossibleValue::matches (line 210) ... ok
test src/builder/command.rs - builder::command::Command::external_subcommand_value_parser (line 2759) ... ok
test src/builder/command.rs - builder::command::Command::render_version (line 854) ... ok
test src/builder/possible_value.rs - builder::possible_value::PossibleValue::aliases (line 132) ... ok
test src/builder/command.rs - builder::command::Command::mut_subcommand (line 263) ... ok
test src/builder/resettable.rs - builder::resettable::Resettable (line 21) ... ok
test src/builder/possible_value.rs - builder::possible_value::PossibleValue::help (line 74) ... ok
test src/builder/command.rs - builder::command::Command::long_flag_aliases (line 2400) ... ok
test src/builder/command.rs - builder::command::Command::multicall (line 3017) ... ok
test src/builder/command.rs - builder::command::Command::subcommand_negates_reqs (line 2933) ... ok
test src/builder/command.rs - builder::command::Command::mut_arg (line 217) ... ok
test src/builder/possible_value.rs - builder::possible_value::PossibleValue::new (line 52) ... ok
test src/builder/command.rs - builder::command::Command::multicall (line 3044) ... ok
test src/builder/command.rs - builder::command::Command::long_flag (line 2215) ... ok
test src/builder/value_parser.rs - builder::value_parser::BoolishValueParser (line 1790) ... ok
test src/builder/possible_value.rs - builder::possible_value::PossibleValue (line 18) ... ok
test src/lib.rs - (line 44) ... ignored
test src/builder/command.rs - builder::command::Command::no_binary_name (line 927) ... ok
test src/builder/value_parser.rs - builder::value_parser::FalseyValueParser (line 1697) ... ok
test src/builder/command.rs - builder::command::Command::subcommand_negates_reqs (line 2916) ... ok
test src/builder/command.rs - builder::command::Command::short_flag (line 2178) ... ok
test src/builder/command.rs - builder::command::Command::short_flag_aliases (line 2372) ... ok
test src/builder/command.rs - builder::command::Command::subcommand_required (line 2681) ... ok
test src/builder/value_parser.rs - builder::value_parser::NonEmptyStringValueParser (line 1888) ... ok
test src/builder/command.rs - builder::command::Command::ignore_errors (line 953) ... ok
test src/builder/command.rs - builder::command::Command::subcommand_precedence_over_arg (line 2866) ... ok
test src/builder/value_parser.rs - builder::value_parser::BoolishValueParser (line 1775) ... ok
test src/builder/value_parser.rs - builder::value_parser::PossibleValuesParser (line 1126) ... ok
test src/error/mod.rs - error::Error<F>::render (line 260) - compile ... ok
test src/builder/value_parser.rs - builder::value_parser::EnumValueParser (line 993) ... ok
test src/builder/value_parser.rs - builder::value_parser::NonEmptyStringValueParser (line 1873) ... ok
test src/builder/value_parser.rs - builder::value_parser::FalseyValueParser (line 1682) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches (line 28) - compile ... ok
test src/error/mod.rs - error::Error<F>::print (line 230) - compile ... ok
test src/builder/value_parser.rs - builder::value_parser::PossibleValuesParser (line 1111) ... ok
test src/builder/value_parser.rs - builder::value_parser::RangedI64ValueParser (line 1237) ... ok
test src/builder/value_parser.rs - builder::value_parser::RangedU64ValueParser (line 1435) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::remove_subcommand (line 930) - compile ... ok
test src/builder/value_parser.rs - builder::value_parser::RangedI64ValueParser (line 1220) ... ok
test src/builder/value_parser.rs - builder::value_parser::RangedU64ValueParser (line 1418) ... ok
test src/builder/value_parser.rs - builder::value_parser::ValueParserFactory (line 2060) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::subcommand (line 873) - compile ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::subcommand_name (line 1029) - compile ... ok
test src/builder/value_parser.rs - builder::value_parser::ValueParser (line 365) ... ok
test src/builder/value_parser.rs - builder::value_parser::ValueParser (line 264) ... ok
test src/builder/value_parser.rs - builder::value_parser::TypedValueParser::map (line 725) ... ok
test src/builder/value_parser.rs - builder::value_parser::ValueParser (line 425) ... ok
test src/builder/value_parser.rs - builder::value_parser::ValueParser (line 395) ... ok
test src/builder/value_parser.rs - builder::value_parser::TypedValueParser::try_map (line 769) ... ok
test src/util/color.rs - util::color::ColorChoice::Always (line 34) - compile ... ok
test src/builder/value_parser.rs - builder::value_parser::ValueParser (line 305) ... ok
test src/util/color.rs - util::color::ColorChoice::Auto (line 17) - compile ... ok
test src/derive.rs - derive::Parser (line 49) ... ok
test src/builder/value_parser.rs - builder::value_parser::ValueParser (line 335) ... ok
test src/builder/value_parser.rs - builder::value_parser::ValueParser (line 484) ... ok
test src/builder/value_parser.rs - builder::value_parser::ValueParser (line 20) ... ok
test src/util/color.rs - util::color::ColorChoice::Never (line 51) - compile ... ok
test src/builder/value_parser.rs - builder::value_parser::ValueParser::bool (line 122) ... ok
test src/builder/value_parser.rs - builder::value_parser::ValueParser (line 455) ... ok
test src/builder/value_parser.rs - builder::value_parser::ValueParser (line 518) ... ok
test src/builder/value_parser.rs - builder::value_parser::ValueParser::path_buf (line 199) ... ok
test src/builder/value_parser.rs - builder::value_parser::value_parser (line 2345) ... ok
test src/builder/value_parser.rs - builder::value_parser::ValueParser::os_string (line 169) ... ok
test src/builder/value_parser.rs - builder::value_parser::ValueParser::string (line 148) ... ok
test src/error/kind.rs - error::kind::ErrorKind::DisplayHelp (line 253) ... ok
test src/builder/value_parser.rs - builder::value_parser::ValueParser::new (line 85) ... ok
test src/error/mod.rs - error::Error<F>::new (line 109) ... ok
test src/error/kind.rs - error::kind::ErrorKind::MissingRequiredArgument (line 180) ... ok
test src/builder/value_parser.rs - builder::value_parser::value_parser (line 2328) ... ok
test src/error/kind.rs - error::kind::ErrorKind::DisplayHelpOnMissingArgumentOrSubcommand (line 269) ... ok
test src/error/kind.rs - error::kind::ErrorKind::InvalidSubcommand (line 42) ... ok
test src/error/kind.rs - error::kind::ErrorKind::InvalidUtf8 (line 225) ... ok
test src/error/kind.rs - error::kind::ErrorKind::MissingSubcommand (line 196) ... ok
test src/error/kind.rs - error::kind::ErrorKind::NoEquals (line 62) ... ok
test src/error/kind.rs - error::kind::ErrorKind::TooFewValues (line 120) ... ok
test src/error/kind.rs - error::kind::ErrorKind::DisplayVersion (line 291) ... ok
test src/error/kind.rs - error::kind::ErrorKind::ArgumentConflict (line 160) ... ok
test src/error/mod.rs - error::Error<F>::apply (line 154) ... ok
test src/error/kind.rs - error::kind::ErrorKind::ValueValidation (line 80) ... ok
test src/error/kind.rs - error::kind::ErrorKind::UnknownArgument (line 25) ... ok
test src/error/kind.rs - error::kind::ErrorKind::InvalidValue (line 10) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::contains_id (line 481) ... ok
test src/error/kind.rs - error::kind::ErrorKind::TooManyValues (line 103) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::args_present (line 530) ... ok
test src/error/kind.rs - error::kind::ErrorKind::WrongNumberOfValues (line 139) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::get_flag (line 155) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::get_count (line 124) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::index_of (line 656) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::index_of (line 724) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::index_of (line 675) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::index_of (line 695) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::indices_of (line 812) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::indices_of (line 795) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::get_one (line 95) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::get_occurrences (line 235) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::get_many (line 194) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::indices_of (line 835) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::get_raw (line 271) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::index_of (line 753) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::get_raw_occurrences (line 319) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::remove_one (line 373) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::ids (line 503) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::remove_occurrences (line 448) ... ok
test src/macros.rs - macros::arg (line 510) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::remove_many (line 408) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::subcommand_matches (line 992) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::remove_subcommand (line 952) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::value_source (line 606) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ArgMatches::subcommand (line 893) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::Indices (line 1811) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::IdsRef (line 1346) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::Values (line 1390) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::ValuesRef (line 1446) ... ok
test src/parser/matches/arg_matches.rs - parser::matches::arg_matches::RawValues (line 1503) ... ok

test result: ok. 331 passed; 0 failed; 10 ignored; 0 measured; 0 filtered out; finished in 1.79s

