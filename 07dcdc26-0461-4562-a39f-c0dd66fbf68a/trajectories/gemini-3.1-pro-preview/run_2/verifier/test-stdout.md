+ cd /home/lazygit
+ git config --global --add safe.directory /home/lazygit
+ git reset --hard
HEAD is now at bb5d5f2de Update docs and schema for release (#5477)
+ git checkout bb5d5f2deb88d495b4613328816fbfea954ba9bc
HEAD is now at bb5d5f2de Update docs and schema for release (#5477)
+ git apply --whitespace=nowarn /home/fix.patch
+ git apply --whitespace=nowarn /home/test.patch
++ go list ./...
++ grep -v integration
+ go test -v -count=1 -timeout 30m github.com/jesseduffield/lazygit github.com/jesseduffield/lazygit/cmd/i18n github.com/jesseduffield/lazygit/pkg/app github.com/jesseduffield/lazygit/pkg/app/daemon github.com/jesseduffield/lazygit/pkg/app/types github.com/jesseduffield/lazygit/pkg/cheatsheet github.com/jesseduffield/lazygit/pkg/commands github.com/jesseduffield/lazygit/pkg/commands/git_commands github.com/jesseduffield/lazygit/pkg/commands/git_config github.com/jesseduffield/lazygit/pkg/commands/hosting_service github.com/jesseduffield/lazygit/pkg/commands/models github.com/jesseduffield/lazygit/pkg/commands/oscommands github.com/jesseduffield/lazygit/pkg/commands/patch github.com/jesseduffield/lazygit/pkg/common github.com/jesseduffield/lazygit/pkg/config github.com/jesseduffield/lazygit/pkg/constants github.com/jesseduffield/lazygit/pkg/env github.com/jesseduffield/lazygit/pkg/fakes github.com/jesseduffield/lazygit/pkg/gui github.com/jesseduffield/lazygit/pkg/gui/context github.com/jesseduffield/lazygit/pkg/gui/context/traits github.com/jesseduffield/lazygit/pkg/gui/controllers github.com/jesseduffield/lazygit/pkg/gui/controllers/helpers github.com/jesseduffield/lazygit/pkg/gui/filetree github.com/jesseduffield/lazygit/pkg/gui/keybindings github.com/jesseduffield/lazygit/pkg/gui/mergeconflicts github.com/jesseduffield/lazygit/pkg/gui/modes/cherrypicking github.com/jesseduffield/lazygit/pkg/gui/modes/diffing github.com/jesseduffield/lazygit/pkg/gui/modes/filtering github.com/jesseduffield/lazygit/pkg/gui/modes/marked_base_commit github.com/jesseduffield/lazygit/pkg/gui/patch_exploring github.com/jesseduffield/lazygit/pkg/gui/popup github.com/jesseduffield/lazygit/pkg/gui/presentation github.com/jesseduffield/lazygit/pkg/gui/presentation/authors github.com/jesseduffield/lazygit/pkg/gui/presentation/graph github.com/jesseduffield/lazygit/pkg/gui/presentation/icons github.com/jesseduffield/lazygit/pkg/gui/services/custom_commands github.com/jesseduffield/lazygit/pkg/gui/status github.com/jesseduffield/lazygit/pkg/gui/style github.com/jesseduffield/lazygit/pkg/gui/types github.com/jesseduffield/lazygit/pkg/i18n github.com/jesseduffield/lazygit/pkg/jsonschema github.com/jesseduffield/lazygit/pkg/logs github.com/jesseduffield/lazygit/pkg/logs/tail github.com/jesseduffield/lazygit/pkg/snake github.com/jesseduffield/lazygit/pkg/tasks github.com/jesseduffield/lazygit/pkg/theme github.com/jesseduffield/lazygit/pkg/updates github.com/jesseduffield/lazygit/pkg/utils github.com/jesseduffield/lazygit/pkg/utils/yaml_utils
?   	github.com/jesseduffield/lazygit	[no test files]
?   	github.com/jesseduffield/lazygit/cmd/i18n	[no test files]
?   	github.com/jesseduffield/lazygit/pkg/app	[no test files]
?   	github.com/jesseduffield/lazygit/pkg/app/daemon	[no test files]
?   	github.com/jesseduffield/lazygit/pkg/app/types	[no test files]
=== RUN   TestGetBindingSections
=== RUN   TestGetBindingSections/no_bindings
=== RUN   TestGetBindingSections/one_binding
=== RUN   TestGetBindingSections/global_binding
=== RUN   TestGetBindingSections/grouped_bindings
=== RUN   TestGetBindingSections/with_navigation_bindings
=== RUN   TestGetBindingSections/with_duplicate_navigation_bindings
--- PASS: TestGetBindingSections (0.00s)
    --- PASS: TestGetBindingSections/no_bindings (0.00s)
    --- PASS: TestGetBindingSections/one_binding (0.00s)
    --- PASS: TestGetBindingSections/global_binding (0.00s)
    --- PASS: TestGetBindingSections/grouped_bindings (0.00s)
    --- PASS: TestGetBindingSections/with_navigation_bindings (0.00s)
    --- PASS: TestGetBindingSections/with_duplicate_navigation_bindings (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/cheatsheet	0.004s
?   	github.com/jesseduffield/lazygit/pkg/commands	[no test files]
=== RUN   TestObtainBranch
=== RUN   TestObtainBranch/TrimHeads
=== RUN   TestObtainBranch/NoUpstream
=== RUN   TestObtainBranch/IsHead
=== RUN   TestObtainBranch/IsBehindAndAhead
=== RUN   TestObtainBranch/RemoteBranchIsGone
=== RUN   TestObtainBranch/WithCommitDateAsRecency
--- PASS: TestObtainBranch (0.00s)
    --- PASS: TestObtainBranch/TrimHeads (0.00s)
    --- PASS: TestObtainBranch/NoUpstream (0.00s)
    --- PASS: TestObtainBranch/IsHead (0.00s)
    --- PASS: TestObtainBranch/IsBehindAndAhead (0.00s)
    --- PASS: TestObtainBranch/RemoteBranchIsGone (0.00s)
    --- PASS: TestObtainBranch/WithCommitDateAsRecency (0.00s)
=== RUN   TestBranchGetCommitDifferences
=== RUN   TestBranchGetCommitDifferences/Can't_retrieve_pushable_count
=== RUN   TestBranchGetCommitDifferences/Can't_retrieve_pullable_count
=== RUN   TestBranchGetCommitDifferences/Retrieve_pullable_and_pushable_count
--- PASS: TestBranchGetCommitDifferences (0.00s)
    --- PASS: TestBranchGetCommitDifferences/Can't_retrieve_pushable_count (0.00s)
    --- PASS: TestBranchGetCommitDifferences/Can't_retrieve_pullable_count (0.00s)
    --- PASS: TestBranchGetCommitDifferences/Retrieve_pullable_and_pushable_count (0.00s)
=== RUN   TestBranchNewBranch
--- PASS: TestBranchNewBranch (0.00s)
=== RUN   TestBranchDeleteBranch
=== RUN   TestBranchDeleteBranch/Delete_a_branch
=== RUN   TestBranchDeleteBranch/Delete_multiple_branches
=== RUN   TestBranchDeleteBranch/Force_delete_a_branch
=== RUN   TestBranchDeleteBranch/Force_delete_multiple_branches
--- PASS: TestBranchDeleteBranch (0.00s)
    --- PASS: TestBranchDeleteBranch/Delete_a_branch (0.00s)
    --- PASS: TestBranchDeleteBranch/Delete_multiple_branches (0.00s)
    --- PASS: TestBranchDeleteBranch/Force_delete_a_branch (0.00s)
    --- PASS: TestBranchDeleteBranch/Force_delete_multiple_branches (0.00s)
=== RUN   TestBranchMerge
=== RUN   TestBranchMerge/basic
=== RUN   TestBranchMerge/merging_args
=== RUN   TestBranchMerge/multiple_merging_args
=== RUN   TestBranchMerge/fast-forward_merge
=== RUN   TestBranchMerge/non-fast-forward_merge
=== RUN   TestBranchMerge/squash_merge
--- PASS: TestBranchMerge (0.00s)
    --- PASS: TestBranchMerge/basic (0.00s)
    --- PASS: TestBranchMerge/merging_args (0.00s)
    --- PASS: TestBranchMerge/multiple_merging_args (0.00s)
    --- PASS: TestBranchMerge/fast-forward_merge (0.00s)
    --- PASS: TestBranchMerge/non-fast-forward_merge (0.00s)
    --- PASS: TestBranchMerge/squash_merge (0.00s)
=== RUN   TestBranchCheckout
=== RUN   TestBranchCheckout/Checkout
=== RUN   TestBranchCheckout/Checkout_forced
--- PASS: TestBranchCheckout (0.00s)
    --- PASS: TestBranchCheckout/Checkout (0.00s)
    --- PASS: TestBranchCheckout/Checkout_forced (0.00s)
=== RUN   TestBranchGetBranchGraph
--- PASS: TestBranchGetBranchGraph (0.00s)
=== RUN   TestBranchGetAllBranchGraph
--- PASS: TestBranchGetAllBranchGraph (0.00s)
=== RUN   TestBranchCurrentBranchInfo
=== RUN   TestBranchCurrentBranchInfo/says_we_are_on_the_master_branch_if_we_are
=== RUN   TestBranchCurrentBranchInfo/falls_back_to_git_`git_branch_--points-at=HEAD`_if_symbolic-ref_fails
=== RUN   TestBranchCurrentBranchInfo/handles_a_detached_head_(LANG=zh_CN.UTF-8)
=== RUN   TestBranchCurrentBranchInfo/bubbles_up_error_if_there_is_one
--- PASS: TestBranchCurrentBranchInfo (0.00s)
    --- PASS: TestBranchCurrentBranchInfo/says_we_are_on_the_master_branch_if_we_are (0.00s)
    --- PASS: TestBranchCurrentBranchInfo/falls_back_to_git_`git_branch_--points-at=HEAD`_if_symbolic-ref_fails (0.00s)
    --- PASS: TestBranchCurrentBranchInfo/handles_a_detached_head_(LANG=zh_CN.UTF-8) (0.00s)
    --- PASS: TestBranchCurrentBranchInfo/bubbles_up_error_if_there_is_one (0.00s)
=== RUN   TestGetCommitFilesFromFilenames
=== RUN   TestGetCommitFilesFromFilenames/no_files
=== RUN   TestGetCommitFilesFromFilenames/one_file
=== RUN   TestGetCommitFilesFromFilenames/two_files
=== RUN   TestGetCommitFilesFromFilenames/three_files
--- PASS: TestGetCommitFilesFromFilenames (0.00s)
    --- PASS: TestGetCommitFilesFromFilenames/no_files (0.00s)
    --- PASS: TestGetCommitFilesFromFilenames/one_file (0.00s)
    --- PASS: TestGetCommitFilesFromFilenames/two_files (0.00s)
    --- PASS: TestGetCommitFilesFromFilenames/three_files (0.00s)
=== RUN   TestGetCommits
=== RUN   TestGetCommits/should_return_no_commits_if_there_are_none
=== RUN   TestGetCommits/should_use_proper_upstream_name_for_branch
=== RUN   TestGetCommits/should_return_commits_if_they_are_present
=== RUN   TestGetCommits/should_not_call_rev-list_for_mainBranches_if_none_exist
=== RUN   TestGetCommits/should_call_rev-list_with_all_main_branches_that_exist
=== RUN   TestGetCommits/should_not_specify_order_if_`log.order`_is_`default`
=== RUN   TestGetCommits/should_set_filter_path
--- PASS: TestGetCommits (0.00s)
    --- PASS: TestGetCommits/should_return_no_commits_if_there_are_none (0.00s)
    --- PASS: TestGetCommits/should_use_proper_upstream_name_for_branch (0.00s)
    --- PASS: TestGetCommits/should_return_commits_if_they_are_present (0.00s)
    --- PASS: TestGetCommits/should_not_call_rev-list_for_mainBranches_if_none_exist (0.00s)
    --- PASS: TestGetCommits/should_call_rev-list_with_all_main_branches_that_exist (0.00s)
    --- PASS: TestGetCommits/should_not_specify_order_if_`log.order`_is_`default` (0.00s)
    --- PASS: TestGetCommits/should_set_filter_path (0.00s)
=== RUN   TestCommitLoader_getConflictedCommitImpl
=== RUN   TestCommitLoader_getConflictedCommitImpl/no_done_todos
=== RUN   TestCommitLoader_getConflictedCommitImpl/common_case_(conflict)
=== RUN   TestCommitLoader_getConflictedCommitImpl/last_command_was_'break'
=== RUN   TestCommitLoader_getConflictedCommitImpl/last_command_was_'exec'
=== RUN   TestCommitLoader_getConflictedCommitImpl/last_command_was_'reword'
=== RUN   TestCommitLoader_getConflictedCommitImpl/'pick'_was_rescheduled
=== RUN   TestCommitLoader_getConflictedCommitImpl/'pick'_was_rescheduled,_buggy_git_version
=== RUN   TestCommitLoader_getConflictedCommitImpl/conflicting_'pick'_after_'exec'
=== RUN   TestCommitLoader_getConflictedCommitImpl/'edit'_with_amend_file
=== RUN   TestCommitLoader_getConflictedCommitImpl/'edit'_without_amend_file_but_message_file
=== RUN   TestCommitLoader_getConflictedCommitImpl/'edit'_without_amend_and_without_message_file
--- PASS: TestCommitLoader_getConflictedCommitImpl (0.00s)
    --- PASS: TestCommitLoader_getConflictedCommitImpl/no_done_todos (0.00s)
    --- PASS: TestCommitLoader_getConflictedCommitImpl/common_case_(conflict) (0.00s)
    --- PASS: TestCommitLoader_getConflictedCommitImpl/last_command_was_'break' (0.00s)
    --- PASS: TestCommitLoader_getConflictedCommitImpl/last_command_was_'exec' (0.00s)
    --- PASS: TestCommitLoader_getConflictedCommitImpl/last_command_was_'reword' (0.00s)
    --- PASS: TestCommitLoader_getConflictedCommitImpl/'pick'_was_rescheduled (0.00s)
    --- PASS: TestCommitLoader_getConflictedCommitImpl/'pick'_was_rescheduled,_buggy_git_version (0.00s)
    --- PASS: TestCommitLoader_getConflictedCommitImpl/conflicting_'pick'_after_'exec' (0.00s)
    --- PASS: TestCommitLoader_getConflictedCommitImpl/'edit'_with_amend_file (0.00s)
    --- PASS: TestCommitLoader_getConflictedCommitImpl/'edit'_without_amend_file_but_message_file (0.00s)
    --- PASS: TestCommitLoader_getConflictedCommitImpl/'edit'_without_amend_and_without_message_file (0.00s)
=== RUN   TestCommitLoader_setCommitStatuses
=== RUN   TestCommitLoader_setCommitStatuses/basic
=== RUN   TestCommitLoader_setCommitStatuses/with_update-ref
--- PASS: TestCommitLoader_setCommitStatuses (0.00s)
    --- PASS: TestCommitLoader_setCommitStatuses/basic (0.00s)
    --- PASS: TestCommitLoader_setCommitStatuses/with_update-ref (0.00s)
=== RUN   TestCommitLoader_extractCommitFromLine
=== RUN   TestCommitLoader_extractCommitFromLine/normal_commit_line_with_all_fields
=== RUN   TestCommitLoader_extractCommitFromLine/normal_commit_line_with_left_divergence
=== RUN   TestCommitLoader_extractCommitFromLine/commit_line_with_tags_in_extraInfo
=== RUN   TestCommitLoader_extractCommitFromLine/commit_line_with_empty_extraInfo
=== RUN   TestCommitLoader_extractCommitFromLine/commit_line_with_no_parents_(root_commit)
=== RUN   TestCommitLoader_extractCommitFromLine/malformed_line_with_only_3_fields
=== RUN   TestCommitLoader_extractCommitFromLine/malformed_line_with_only_4_fields
=== RUN   TestCommitLoader_extractCommitFromLine/malformed_line_with_only_5_fields
=== RUN   TestCommitLoader_extractCommitFromLine/malformed_line_with_only_6_fields
=== RUN   TestCommitLoader_extractCommitFromLine/minimal_valid_line_with_7_fields_(no_message)
=== RUN   TestCommitLoader_extractCommitFromLine/minimal_valid_line_with_7_fields_(empty_extraInfo)
=== RUN   TestCommitLoader_extractCommitFromLine/valid_line_with_8_fields_(complete)
=== RUN   TestCommitLoader_extractCommitFromLine/empty_line
=== RUN   TestCommitLoader_extractCommitFromLine/line_with_special_characters_in_commit_message
--- PASS: TestCommitLoader_extractCommitFromLine (0.00s)
    --- PASS: TestCommitLoader_extractCommitFromLine/normal_commit_line_with_all_fields (0.00s)
    --- PASS: TestCommitLoader_extractCommitFromLine/normal_commit_line_with_left_divergence (0.00s)
    --- PASS: TestCommitLoader_extractCommitFromLine/commit_line_with_tags_in_extraInfo (0.00s)
    --- PASS: TestCommitLoader_extractCommitFromLine/commit_line_with_empty_extraInfo (0.00s)
    --- PASS: TestCommitLoader_extractCommitFromLine/commit_line_with_no_parents_(root_commit) (0.00s)
    --- PASS: TestCommitLoader_extractCommitFromLine/malformed_line_with_only_3_fields (0.00s)
    --- PASS: TestCommitLoader_extractCommitFromLine/malformed_line_with_only_4_fields (0.00s)
    --- PASS: TestCommitLoader_extractCommitFromLine/malformed_line_with_only_5_fields (0.00s)
    --- PASS: TestCommitLoader_extractCommitFromLine/malformed_line_with_only_6_fields (0.00s)
    --- PASS: TestCommitLoader_extractCommitFromLine/minimal_valid_line_with_7_fields_(no_message) (0.00s)
    --- PASS: TestCommitLoader_extractCommitFromLine/minimal_valid_line_with_7_fields_(empty_extraInfo) (0.00s)
    --- PASS: TestCommitLoader_extractCommitFromLine/valid_line_with_8_fields_(complete) (0.00s)
    --- PASS: TestCommitLoader_extractCommitFromLine/empty_line (0.00s)
    --- PASS: TestCommitLoader_extractCommitFromLine/line_with_special_characters_in_commit_message (0.00s)
=== RUN   TestCommitRewordCommit
=== RUN   TestCommitRewordCommit/Single_line_reword
=== RUN   TestCommitRewordCommit/Multi_line_reword
--- PASS: TestCommitRewordCommit (0.00s)
    --- PASS: TestCommitRewordCommit/Single_line_reword (0.00s)
    --- PASS: TestCommitRewordCommit/Multi_line_reword (0.00s)
=== RUN   TestCommitResetToCommit
--- PASS: TestCommitResetToCommit (0.00s)
=== RUN   TestCommitCommitCmdObj
=== RUN   TestCommitCommitCmdObj/Commit
=== RUN   TestCommitCommitCmdObj/Commit_with_--no-verify_flag_<_only_prefix
=== RUN   TestCommitCommitCmdObj/Commit_with_--no-verify_flag_<_skip_flag_and_prefix
=== RUN   TestCommitCommitCmdObj/Commit_with_--no-verify_flag_<_skip_flag_no_prefix
=== RUN   TestCommitCommitCmdObj/Commit_with_multiline_message
=== RUN   TestCommitCommitCmdObj/Commit_with_signoff
=== RUN   TestCommitCommitCmdObj/Commit_with_signoff_and_no-verify
--- PASS: TestCommitCommitCmdObj (0.00s)
    --- PASS: TestCommitCommitCmdObj/Commit (0.00s)
    --- PASS: TestCommitCommitCmdObj/Commit_with_--no-verify_flag_<_only_prefix (0.00s)
    --- PASS: TestCommitCommitCmdObj/Commit_with_--no-verify_flag_<_skip_flag_and_prefix (0.00s)
    --- PASS: TestCommitCommitCmdObj/Commit_with_--no-verify_flag_<_skip_flag_no_prefix (0.00s)
    --- PASS: TestCommitCommitCmdObj/Commit_with_multiline_message (0.00s)
    --- PASS: TestCommitCommitCmdObj/Commit_with_signoff (0.00s)
    --- PASS: TestCommitCommitCmdObj/Commit_with_signoff_and_no-verify (0.00s)
=== RUN   TestCommitCommitEditorCmdObj
=== RUN   TestCommitCommitEditorCmdObj/Commit_using_editor
=== RUN   TestCommitCommitEditorCmdObj/Commit_with_--signoff
--- PASS: TestCommitCommitEditorCmdObj (0.00s)
    --- PASS: TestCommitCommitEditorCmdObj/Commit_using_editor (0.00s)
    --- PASS: TestCommitCommitEditorCmdObj/Commit_with_--signoff (0.00s)
=== RUN   TestCommitCreateFixupCommit
=== RUN   TestCommitCreateFixupCommit/valid_case
--- PASS: TestCommitCreateFixupCommit (0.00s)
    --- PASS: TestCommitCreateFixupCommit/valid_case (0.00s)
=== RUN   TestCommitCreateAmendCommit
=== RUN   TestCommitCreateAmendCommit/subject_only
=== RUN   TestCommitCreateAmendCommit/subject_and_description
=== RUN   TestCommitCreateAmendCommit/without_file_changes
--- PASS: TestCommitCreateAmendCommit (0.00s)
    --- PASS: TestCommitCreateAmendCommit/subject_only (0.00s)
    --- PASS: TestCommitCreateAmendCommit/subject_and_description (0.00s)
    --- PASS: TestCommitCreateAmendCommit/without_file_changes (0.00s)
=== RUN   TestCommitShowCmdObj
=== RUN   TestCommitShowCmdObj/Default_case_without_filter_path
=== RUN   TestCommitShowCmdObj/Default_case_with_filter_path
=== RUN   TestCommitShowCmdObj/Show_diff_with_custom_context_size
=== RUN   TestCommitShowCmdObj/Show_diff_with_custom_similarity_threshold
=== RUN   TestCommitShowCmdObj/Show_diff,_ignoring_whitespace
=== RUN   TestCommitShowCmdObj/Show_diff_with_external_diff_command
=== RUN   TestCommitShowCmdObj/Show_diff_using_git's_external_diff_config
--- PASS: TestCommitShowCmdObj (0.00s)
    --- PASS: TestCommitShowCmdObj/Default_case_without_filter_path (0.00s)
    --- PASS: TestCommitShowCmdObj/Default_case_with_filter_path (0.00s)
    --- PASS: TestCommitShowCmdObj/Show_diff_with_custom_context_size (0.00s)
    --- PASS: TestCommitShowCmdObj/Show_diff_with_custom_similarity_threshold (0.00s)
    --- PASS: TestCommitShowCmdObj/Show_diff,_ignoring_whitespace (0.00s)
    --- PASS: TestCommitShowCmdObj/Show_diff_with_external_diff_command (0.00s)
    --- PASS: TestCommitShowCmdObj/Show_diff_using_git's_external_diff_config (0.00s)
=== RUN   TestGetCommitMsg
=== RUN   TestGetCommitMsg/empty
=== RUN   TestGetCommitMsg/no_line_breaks_(single_line)
=== RUN   TestGetCommitMsg/with_line_breaks
--- PASS: TestGetCommitMsg (0.00s)
    --- PASS: TestGetCommitMsg/empty (0.00s)
    --- PASS: TestGetCommitMsg/no_line_breaks_(single_line) (0.00s)
    --- PASS: TestGetCommitMsg/with_line_breaks (0.00s)
=== RUN   TestGetCommitMessageFromHistory
=== RUN   TestGetCommitMessageFromHistory/Empty_message
=== RUN   TestGetCommitMessageFromHistory/Default_case_to_retrieve_a_commit_in_history
--- PASS: TestGetCommitMessageFromHistory (0.00s)
    --- PASS: TestGetCommitMessageFromHistory/Empty_message (0.00s)
    --- PASS: TestGetCommitMessageFromHistory/Default_case_to_retrieve_a_commit_in_history (0.00s)
=== RUN   TestAddCoAuthorToMessage
=== RUN   TestAddCoAuthorToMessage/Empty_message
=== RUN   TestAddCoAuthorToMessage/Just_a_subject,_no_body
=== RUN   TestAddCoAuthorToMessage/Subject_and_body
=== RUN   TestAddCoAuthorToMessage/Body_already_ending_with_a_Co-authored-by_line
--- PASS: TestAddCoAuthorToMessage (0.00s)
    --- PASS: TestAddCoAuthorToMessage/Empty_message (0.00s)
    --- PASS: TestAddCoAuthorToMessage/Just_a_subject,_no_body (0.00s)
    --- PASS: TestAddCoAuthorToMessage/Subject_and_body (0.00s)
    --- PASS: TestAddCoAuthorToMessage/Body_already_ending_with_a_Co-authored-by_line (0.00s)
=== RUN   TestAddCoAuthorToDescription
=== RUN   TestAddCoAuthorToDescription/Empty_description
=== RUN   TestAddCoAuthorToDescription/Non-empty_description
=== RUN   TestAddCoAuthorToDescription/Description_already_ending_with_a_Co-authored-by_line
--- PASS: TestAddCoAuthorToDescription (0.00s)
    --- PASS: TestAddCoAuthorToDescription/Empty_description (0.00s)
    --- PASS: TestAddCoAuthorToDescription/Non-empty_description (0.00s)
    --- PASS: TestAddCoAuthorToDescription/Description_already_ending_with_a_Co-authored-by_line (0.00s)
=== RUN   TestFileGetStatusFiles
=== RUN   TestFileGetStatusFiles/No_files_found
=== RUN   TestFileGetStatusFiles/Several_files_found
=== RUN   TestFileGetStatusFiles/File_with_new_line_char
=== RUN   TestFileGetStatusFiles/Renamed_files
=== RUN   TestFileGetStatusFiles/File_with_arrow_in_name
=== RUN   TestFileGetStatusFiles/Copied_files
--- PASS: TestFileGetStatusFiles (0.00s)
    --- PASS: TestFileGetStatusFiles/No_files_found (0.00s)
    --- PASS: TestFileGetStatusFiles/Several_files_found (0.00s)
    --- PASS: TestFileGetStatusFiles/File_with_new_line_char (0.00s)
    --- PASS: TestFileGetStatusFiles/Renamed_files (0.00s)
    --- PASS: TestFileGetStatusFiles/File_with_arrow_in_name (0.00s)
    --- PASS: TestFileGetStatusFiles/Copied_files (0.00s)
=== RUN   TestEditFilesCmd
--- PASS: TestEditFilesCmd (0.00s)
=== RUN   TestEditFileAtLineCmd
--- PASS: TestEditFileAtLineCmd (0.00s)
=== RUN   TestEditFileAtLineAndWaitCmd
--- PASS: TestEditFileAtLineAndWaitCmd (0.00s)
=== RUN   TestGuessDefaultEditor
--- PASS: TestGuessDefaultEditor (0.00s)
=== RUN   TestStartCmdObj
=== RUN   TestStartCmdObj/basic
--- PASS: TestStartCmdObj (0.00s)
    --- PASS: TestStartCmdObj/basic (0.00s)
=== RUN   TestFinishCmdObj
=== RUN   TestFinishCmdObj/not_a_git_flow_branch
=== RUN   TestFinishCmdObj/feature_branch_without_config
=== RUN   TestFinishCmdObj/feature_branch_with_config
--- PASS: TestFinishCmdObj (0.00s)
    --- PASS: TestFinishCmdObj/not_a_git_flow_branch (0.00s)
    --- PASS: TestFinishCmdObj/feature_branch_without_config (0.00s)
    --- PASS: TestFinishCmdObj/feature_branch_with_config (0.00s)
=== RUN   TestGitCommandBuilder
--- PASS: TestGitCommandBuilder (0.00s)
=== RUN   TestRunGitCmdOnPaths
=== RUN   TestRunGitCmdOnPaths/empty_list_makes_no_calls
=== RUN   TestRunGitCmdOnPaths/paths_that_fit_in_one_batch_make_a_single_call
=== RUN   TestRunGitCmdOnPaths/paths_that_exceed_the_limit_are_split_across_multiple_calls
--- PASS: TestRunGitCmdOnPaths (0.00s)
    --- PASS: TestRunGitCmdOnPaths/empty_list_makes_no_calls (0.00s)
    --- PASS: TestRunGitCmdOnPaths/paths_that_fit_in_one_batch_make_a_single_call (0.00s)
    --- PASS: TestRunGitCmdOnPaths/paths_that_exceed_the_limit_are_split_across_multiple_calls (0.00s)
=== RUN   TestGetRepoInfoFromURL
=== RUN   TestGetRepoInfoFromURL/SSH_URL
=== RUN   TestGetRepoInfoFromURL/HTTPS_URL
=== RUN   TestGetRepoInfoFromURL/HTTPS_URL_without_.git
=== RUN   TestGetRepoInfoFromURL/SSH_URL_with_org_nesting
--- PASS: TestGetRepoInfoFromURL (0.00s)
    --- PASS: TestGetRepoInfoFromURL/SSH_URL (0.00s)
    --- PASS: TestGetRepoInfoFromURL/HTTPS_URL (0.00s)
    --- PASS: TestGetRepoInfoFromURL/HTTPS_URL_without_.git (0.00s)
    --- PASS: TestGetRepoInfoFromURL/SSH_URL_with_org_nesting (0.00s)
=== RUN   TestGenerateGithubPullRequestMap
=== RUN   TestGenerateGithubPullRequestMap/empty_inputs
=== RUN   TestGenerateGithubPullRequestMap/matches_PR_to_branch_tracking_origin
=== RUN   TestGenerateGithubPullRequestMap/does_not_match_branch_without_upstream
=== RUN   TestGenerateGithubPullRequestMap/matches_fork_PR_to_branch_tracking_fork_remote
=== RUN   TestGenerateGithubPullRequestMap/does_not_match_when_owner_differs
=== RUN   TestGenerateGithubPullRequestMap/matches_when_UpstreamRemote_is_a_full_URL
=== RUN   TestGenerateGithubPullRequestMap/uses_first_PR_when_branch_name_is_reused_(API_returns_newest_first)
=== RUN   TestGenerateGithubPullRequestMap/matches_with_HTTPS_remote_URL
=== RUN   TestGenerateGithubPullRequestMap/matches_when_owner_casing_differs
--- PASS: TestGenerateGithubPullRequestMap (0.00s)
    --- PASS: TestGenerateGithubPullRequestMap/empty_inputs (0.00s)
    --- PASS: TestGenerateGithubPullRequestMap/matches_PR_to_branch_tracking_origin (0.00s)
    --- PASS: TestGenerateGithubPullRequestMap/does_not_match_branch_without_upstream (0.00s)
    --- PASS: TestGenerateGithubPullRequestMap/matches_fork_PR_to_branch_tracking_fork_remote (0.00s)
    --- PASS: TestGenerateGithubPullRequestMap/does_not_match_when_owner_differs (0.00s)
    --- PASS: TestGenerateGithubPullRequestMap/matches_when_UpstreamRemote_is_a_full_URL (0.00s)
    --- PASS: TestGenerateGithubPullRequestMap/uses_first_PR_when_branch_name_is_reused_(API_returns_newest_first) (0.00s)
    --- PASS: TestGenerateGithubPullRequestMap/matches_with_HTTPS_remote_URL (0.00s)
    --- PASS: TestGenerateGithubPullRequestMap/matches_when_owner_casing_differs (0.00s)
=== RUN   TestRebaseRebaseBranch
=== RUN   TestRebaseRebaseBranch/successful_rebase
=== RUN   TestRebaseRebaseBranch/unsuccessful_rebase
=== RUN   TestRebaseRebaseBranch/successful_rebase_(<_2.26.0)
--- PASS: TestRebaseRebaseBranch (0.00s)
    --- PASS: TestRebaseRebaseBranch/successful_rebase (0.00s)
    --- PASS: TestRebaseRebaseBranch/unsuccessful_rebase (0.00s)
    --- PASS: TestRebaseRebaseBranch/successful_rebase_(<_2.26.0) (0.00s)
=== RUN   TestRebaseSkipEditorCommand
--- PASS: TestRebaseSkipEditorCommand (0.00s)
=== RUN   TestRebaseDiscardOldFileChanges
=== RUN   TestRebaseDiscardOldFileChanges/returns_error_when_index_outside_of_range_of_commits
=== RUN   TestRebaseDiscardOldFileChanges/returns_error_when_using_gpg
=== RUN   TestRebaseDiscardOldFileChanges/checks_out_file_if_it_already_existed
--- PASS: TestRebaseDiscardOldFileChanges (0.00s)
    --- PASS: TestRebaseDiscardOldFileChanges/returns_error_when_index_outside_of_range_of_commits (0.00s)
    --- PASS: TestRebaseDiscardOldFileChanges/returns_error_when_using_gpg (0.00s)
    --- PASS: TestRebaseDiscardOldFileChanges/checks_out_file_if_it_already_existed (0.00s)
=== RUN   TestGetReflogCommits
=== RUN   TestGetReflogCommits/no_reflog_entries
    reflog_commit_loader_test.go:192: actual commits: 
        []*models.Commit{}
=== RUN   TestGetReflogCommits/some_reflog_entries
    reflog_commit_loader_test.go:192: actual commits: 
        []*models.Commit{
          &models.Commit{
            Name: "checkout: moving from A to B",
            Tags: nil,
            ExtraInfo: "",
            AuthorName: "",
            AuthorEmail: "",
            UnixTimestamp: 1643150483,
            FilterPaths: nil,
            Status: 7,
            Action: 0,
            ActionFlag: "",
            Divergence: 0,
          },
          &models.Commit{
            Name: "checkout: moving from B to A",
            Tags: nil,
            ExtraInfo: "",
            AuthorName: "",
            AuthorEmail: "",
            UnixTimestamp: 1643150483,
            FilterPaths: nil,
            Status: 7,
            Action: 0,
            ActionFlag: "",
            Divergence: 0,
          },
          &models.Commit{
            Name: "checkout: moving from A to B",
            Tags: nil,
            ExtraInfo: "",
            AuthorName: "",
            AuthorEmail: "",
            UnixTimestamp: 1643150483,
            FilterPaths: nil,
            Status: 7,
            Action: 0,
            ActionFlag: "",
            Divergence: 0,
          },
          &models.Commit{
            Name: "checkout: moving from master to A",
            Tags: nil,
            ExtraInfo: "",
            AuthorName: "",
            AuthorEmail: "",
            UnixTimestamp: 1643150483,
            FilterPaths: nil,
            Status: 7,
            Action: 0,
            ActionFlag: "",
            Divergence: 0,
          },
          &models.Commit{
            Name: "checkout: moving from A to master",
            Tags: nil,
            ExtraInfo: "",
            AuthorName: "",
            AuthorEmail: "",
            UnixTimestamp: 1643149435,
            FilterPaths: nil,
            Status: 7,
            Action: 0,
            ActionFlag: "",
            Divergence: 0,
          },
        }
=== RUN   TestGetReflogCommits/some_reflog_entries_where_last_commit_is_given
    reflog_commit_loader_test.go:192: actual commits: 
        []*models.Commit{
          &models.Commit{
            Name: "checkout: moving from A to B",
            Tags: nil,
            ExtraInfo: "",
            AuthorName: "",
            AuthorEmail: "",
            UnixTimestamp: 1643150483,
            FilterPaths: nil,
            Status: 7,
            Action: 0,
            ActionFlag: "",
            Divergence: 0,
          },
        }
=== RUN   TestGetReflogCommits/when_passing_filterPath
    reflog_commit_loader_test.go:192: actual commits: 
        []*models.Commit{
          &models.Commit{
            Name: "checkout: moving from A to B",
            Tags: nil,
            ExtraInfo: "",
            AuthorName: "",
            AuthorEmail: "",
            UnixTimestamp: 1643150483,
            FilterPaths: nil,
            Status: 7,
            Action: 0,
            ActionFlag: "",
            Divergence: 0,
          },
        }
=== RUN   TestGetReflogCommits/when_passing_filterAuthor
    reflog_commit_loader_test.go:192: actual commits: 
        []*models.Commit{
          &models.Commit{
            Name: "checkout: moving from A to B",
            Tags: nil,
            ExtraInfo: "",
            AuthorName: "",
            AuthorEmail: "",
            UnixTimestamp: 1643150483,
            FilterPaths: nil,
            Status: 7,
            Action: 0,
            ActionFlag: "",
            Divergence: 0,
          },
        }
=== RUN   TestGetReflogCommits/when_command_returns_error
    reflog_commit_loader_test.go:192: actual commits: 
        nil
--- PASS: TestGetReflogCommits (0.00s)
    --- PASS: TestGetReflogCommits/no_reflog_entries (0.00s)
    --- PASS: TestGetReflogCommits/some_reflog_entries (0.00s)
    --- PASS: TestGetReflogCommits/some_reflog_entries_where_last_commit_is_given (0.00s)
    --- PASS: TestGetReflogCommits/when_passing_filterPath (0.00s)
    --- PASS: TestGetReflogCommits/when_passing_filterAuthor (0.00s)
    --- PASS: TestGetReflogCommits/when_command_returns_error (0.00s)
=== RUN   TestGetRepoPaths
=== RUN   TestGetRepoPaths/typical_case
=== RUN   TestGetRepoPaths/bare_repo
=== RUN   TestGetRepoPaths/submodule
=== RUN   TestGetRepoPaths/git_rev-parse_returns_an_error
--- PASS: TestGetRepoPaths (0.00s)
    --- PASS: TestGetRepoPaths/typical_case (0.00s)
    --- PASS: TestGetRepoPaths/bare_repo (0.00s)
    --- PASS: TestGetRepoPaths/submodule (0.00s)
    --- PASS: TestGetRepoPaths/git_rev-parse_returns_an_error (0.00s)
=== RUN   TestGetStashEntries
=== RUN   TestGetStashEntries/No_stash_entries_found
=== RUN   TestGetStashEntries/Several_stash_entries_found
--- PASS: TestGetStashEntries (0.00s)
    --- PASS: TestGetStashEntries/No_stash_entries_found (0.00s)
    --- PASS: TestGetStashEntries/Several_stash_entries_found (0.00s)
=== RUN   TestStashDrop
--- PASS: TestStashDrop (0.00s)
=== RUN   TestStashApply
--- PASS: TestStashApply (0.00s)
=== RUN   TestStashPop
--- PASS: TestStashPop (0.00s)
=== RUN   TestStashSave
--- PASS: TestStashSave (0.00s)
=== RUN   TestStashStore
=== RUN   TestStashStore/Non-empty_message
=== RUN   TestStashStore/Empty_message
=== RUN   TestStashStore/Space_message
--- PASS: TestStashStore (0.00s)
    --- PASS: TestStashStore/Non-empty_message (0.00s)
    --- PASS: TestStashStore/Empty_message (0.00s)
    --- PASS: TestStashStore/Space_message (0.00s)
=== RUN   TestStashHash
--- PASS: TestStashHash (0.00s)
=== RUN   TestStashStashEntryCmdObj
=== RUN   TestStashStashEntryCmdObj/Default_case
=== RUN   TestStashStashEntryCmdObj/Show_diff_with_custom_context_size
=== RUN   TestStashStashEntryCmdObj/Show_diff_with_custom_similarity_threshold
=== RUN   TestStashStashEntryCmdObj/Show_diff_with_external_diff_command
=== RUN   TestStashStashEntryCmdObj/Show_diff_using_git's_external_diff_config
=== RUN   TestStashStashEntryCmdObj/Default_case#01
--- PASS: TestStashStashEntryCmdObj (0.00s)
    --- PASS: TestStashStashEntryCmdObj/Default_case (0.00s)
    --- PASS: TestStashStashEntryCmdObj/Show_diff_with_custom_context_size (0.00s)
    --- PASS: TestStashStashEntryCmdObj/Show_diff_with_custom_similarity_threshold (0.00s)
    --- PASS: TestStashStashEntryCmdObj/Show_diff_with_external_diff_command (0.00s)
    --- PASS: TestStashStashEntryCmdObj/Show_diff_using_git's_external_diff_config (0.00s)
    --- PASS: TestStashStashEntryCmdObj/Default_case#01 (0.00s)
=== RUN   TestStashRename
=== RUN   TestStashRename/Default_case
=== RUN   TestStashRename/Empty_message
--- PASS: TestStashRename (0.00s)
    --- PASS: TestStashRename/Default_case (0.00s)
    --- PASS: TestStashRename/Empty_message (0.00s)
=== RUN   TestSyncPush
=== RUN   TestSyncPush/Push_with_force_disabled
=== RUN   TestSyncPush/Push_with_force-with-lease_enabled
=== RUN   TestSyncPush/Push_with_force_enabled
=== RUN   TestSyncPush/Push_with_force_disabled,_upstream_supplied
=== RUN   TestSyncPush/Push_with_force_disabled,_setting_upstream
=== RUN   TestSyncPush/Push_with_force-with-lease_enabled,_setting_upstream
=== RUN   TestSyncPush/Push_with_remote_branch_but_no_origin
--- PASS: TestSyncPush (0.00s)
    --- PASS: TestSyncPush/Push_with_force_disabled (0.00s)
    --- PASS: TestSyncPush/Push_with_force-with-lease_enabled (0.00s)
    --- PASS: TestSyncPush/Push_with_force_enabled (0.00s)
    --- PASS: TestSyncPush/Push_with_force_disabled,_upstream_supplied (0.00s)
    --- PASS: TestSyncPush/Push_with_force_disabled,_setting_upstream (0.00s)
    --- PASS: TestSyncPush/Push_with_force-with-lease_enabled,_setting_upstream (0.00s)
    --- PASS: TestSyncPush/Push_with_remote_branch_but_no_origin (0.00s)
=== RUN   TestSyncFetch
=== RUN   TestSyncFetch/Fetch_in_foreground_(all=false)
=== RUN   TestSyncFetch/Fetch_in_foreground_(all=true)
--- PASS: TestSyncFetch (0.00s)
    --- PASS: TestSyncFetch/Fetch_in_foreground_(all=false) (0.00s)
    --- PASS: TestSyncFetch/Fetch_in_foreground_(all=true) (0.00s)
=== RUN   TestSyncFetchBackground
=== RUN   TestSyncFetchBackground/Fetch_in_background_(all=false)
=== RUN   TestSyncFetchBackground/Fetch_in_background_(all=true)
--- PASS: TestSyncFetchBackground (0.00s)
    --- PASS: TestSyncFetchBackground/Fetch_in_background_(all=false) (0.00s)
    --- PASS: TestSyncFetchBackground/Fetch_in_background_(all=true) (0.00s)
=== RUN   TestGetTags
=== RUN   TestGetTags/should_return_no_tags_if_there_are_none
=== RUN   TestGetTags/should_return_tags_if_present
--- PASS: TestGetTags (0.00s)
    --- PASS: TestGetTags/should_return_no_tags_if_there_are_none (0.00s)
    --- PASS: TestGetTags/should_return_tags_if_present (0.00s)
=== RUN   TestParseGitVersion
--- PASS: TestParseGitVersion (0.00s)
=== RUN   TestGitVersionIsOlderThan
--- PASS: TestGitVersionIsOlderThan (0.00s)
=== RUN   TestGitVersionIsAtLeast
--- PASS: TestGitVersionIsAtLeast (0.00s)
=== RUN   TestWorkingTreeStageFile
--- PASS: TestWorkingTreeStageFile (0.00s)
=== RUN   TestWorkingTreeStageFiles
--- PASS: TestWorkingTreeStageFiles (0.00s)
=== RUN   TestWorkingTreeUnstageFile
=== RUN   TestWorkingTreeUnstageFile/Remove_an_untracked_file_from_staging
=== RUN   TestWorkingTreeUnstageFile/Remove_a_tracked_file_from_staging
--- PASS: TestWorkingTreeUnstageFile (0.00s)
    --- PASS: TestWorkingTreeUnstageFile/Remove_an_untracked_file_from_staging (0.00s)
    --- PASS: TestWorkingTreeUnstageFile/Remove_a_tracked_file_from_staging (0.00s)
=== RUN   TestWorkingTreeDiscardAllFileChanges
=== RUN   TestWorkingTreeDiscardAllFileChanges/An_error_occurred_when_resetting
=== RUN   TestWorkingTreeDiscardAllFileChanges/An_error_occurred_when_removing_file
=== RUN   TestWorkingTreeDiscardAllFileChanges/An_error_occurred_with_checkout
=== RUN   TestWorkingTreeDiscardAllFileChanges/Checkout_only
=== RUN   TestWorkingTreeDiscardAllFileChanges/Reset_and_checkout_staged_changes
=== RUN   TestWorkingTreeDiscardAllFileChanges/Reset_and_checkout_merge_conflicts
=== RUN   TestWorkingTreeDiscardAllFileChanges/Reset_and_remove
=== RUN   TestWorkingTreeDiscardAllFileChanges/Remove_only
--- PASS: TestWorkingTreeDiscardAllFileChanges (0.00s)
    --- PASS: TestWorkingTreeDiscardAllFileChanges/An_error_occurred_when_resetting (0.00s)
    --- PASS: TestWorkingTreeDiscardAllFileChanges/An_error_occurred_when_removing_file (0.00s)
    --- PASS: TestWorkingTreeDiscardAllFileChanges/An_error_occurred_with_checkout (0.00s)
    --- PASS: TestWorkingTreeDiscardAllFileChanges/Checkout_only (0.00s)
    --- PASS: TestWorkingTreeDiscardAllFileChanges/Reset_and_checkout_staged_changes (0.00s)
    --- PASS: TestWorkingTreeDiscardAllFileChanges/Reset_and_checkout_merge_conflicts (0.00s)
    --- PASS: TestWorkingTreeDiscardAllFileChanges/Reset_and_remove (0.00s)
    --- PASS: TestWorkingTreeDiscardAllFileChanges/Remove_only (0.00s)
=== RUN   TestWorkingTreeDiff
=== RUN   TestWorkingTreeDiff/Default_case
=== RUN   TestWorkingTreeDiff/cached
=== RUN   TestWorkingTreeDiff/plain
=== RUN   TestWorkingTreeDiff/File_not_tracked_and_file_has_no_staged_changes
=== RUN   TestWorkingTreeDiff/Default_case_(ignore_whitespace)
=== RUN   TestWorkingTreeDiff/Show_diff_with_custom_context_size
=== RUN   TestWorkingTreeDiff/Show_diff_with_custom_similarity_threshold
--- PASS: TestWorkingTreeDiff (0.00s)
    --- PASS: TestWorkingTreeDiff/Default_case (0.00s)
    --- PASS: TestWorkingTreeDiff/cached (0.00s)
    --- PASS: TestWorkingTreeDiff/plain (0.00s)
    --- PASS: TestWorkingTreeDiff/File_not_tracked_and_file_has_no_staged_changes (0.00s)
    --- PASS: TestWorkingTreeDiff/Default_case_(ignore_whitespace) (0.00s)
    --- PASS: TestWorkingTreeDiff/Show_diff_with_custom_context_size (0.00s)
    --- PASS: TestWorkingTreeDiff/Show_diff_with_custom_similarity_threshold (0.00s)
=== RUN   TestWorkingTreeShowFileDiff
=== RUN   TestWorkingTreeShowFileDiff/Default_case
=== RUN   TestWorkingTreeShowFileDiff/Show_diff_with_custom_context_size
=== RUN   TestWorkingTreeShowFileDiff/Default_case_(ignore_whitespace)
--- PASS: TestWorkingTreeShowFileDiff (0.00s)
    --- PASS: TestWorkingTreeShowFileDiff/Default_case (0.00s)
    --- PASS: TestWorkingTreeShowFileDiff/Show_diff_with_custom_context_size (0.00s)
    --- PASS: TestWorkingTreeShowFileDiff/Default_case_(ignore_whitespace) (0.00s)
=== RUN   TestWorkingTreeCheckoutFile
=== RUN   TestWorkingTreeCheckoutFile/typical_case
=== RUN   TestWorkingTreeCheckoutFile/returns_error_if_there_is_one
--- PASS: TestWorkingTreeCheckoutFile (0.00s)
    --- PASS: TestWorkingTreeCheckoutFile/typical_case (0.00s)
    --- PASS: TestWorkingTreeCheckoutFile/returns_error_if_there_is_one (0.00s)
=== RUN   TestWorkingTreeDiscardUnstagedFileChanges
=== RUN   TestWorkingTreeDiscardUnstagedFileChanges/valid_case
--- PASS: TestWorkingTreeDiscardUnstagedFileChanges (0.00s)
    --- PASS: TestWorkingTreeDiscardUnstagedFileChanges/valid_case (0.00s)
=== RUN   TestWorkingTreeDiscardAllDirChanges
=== RUN   TestWorkingTreeDiscardAllDirChanges/multiple_regular_tracked_files_batched_into_a_single_checkout_call
=== RUN   TestWorkingTreeDiscardAllDirChanges/staged_files_batched_into_a_single_reset_then_a_single_checkout
=== RUN   TestWorkingTreeDiscardAllDirChanges/added_files_with_no_staged_changes_are_removed_from_disk_without_any_git_call
=== RUN   TestWorkingTreeDiscardAllDirChanges/files_from_multiple_nodes_are_batched_into_a_single_git_call
=== RUN   TestWorkingTreeDiscardAllDirChanges/empty_parent_directory_is_removed_after_all_its_added_files_are_deleted
=== RUN   TestWorkingTreeDiscardAllDirChanges/nested_empty_directories_are_removed_bottom-up
=== RUN   TestWorkingTreeDiscardAllDirChanges/empty_directory_is_NOT_removed_when_individual_file_nodes_are_selected
--- PASS: TestWorkingTreeDiscardAllDirChanges (0.00s)
    --- PASS: TestWorkingTreeDiscardAllDirChanges/multiple_regular_tracked_files_batched_into_a_single_checkout_call (0.00s)
    --- PASS: TestWorkingTreeDiscardAllDirChanges/staged_files_batched_into_a_single_reset_then_a_single_checkout (0.00s)
    --- PASS: TestWorkingTreeDiscardAllDirChanges/added_files_with_no_staged_changes_are_removed_from_disk_without_any_git_call (0.00s)
    --- PASS: TestWorkingTreeDiscardAllDirChanges/files_from_multiple_nodes_are_batched_into_a_single_git_call (0.00s)
    --- PASS: TestWorkingTreeDiscardAllDirChanges/empty_parent_directory_is_removed_after_all_its_added_files_are_deleted (0.00s)
    --- PASS: TestWorkingTreeDiscardAllDirChanges/nested_empty_directories_are_removed_bottom-up (0.00s)
    --- PASS: TestWorkingTreeDiscardAllDirChanges/empty_directory_is_NOT_removed_when_individual_file_nodes_are_selected (0.00s)
=== RUN   TestWorkingTreeDiscardUnstagedDirChanges
=== RUN   TestWorkingTreeDiscardUnstagedDirChanges/directory_node:_removes_untracked_files_and_checks_out_tracked_files_by_path,_not_by_directory
=== RUN   TestWorkingTreeDiscardUnstagedDirChanges/directory_node:_staged-but-not-committed_file_(Tracked=false,_HasStagedChanges=true)_is_left_alone;_purely_untracked_file_is_removed
=== RUN   TestWorkingTreeDiscardUnstagedDirChanges/file_node:_added_and_unstaged_file_is_removed_from_disk
=== RUN   TestWorkingTreeDiscardUnstagedDirChanges/files_from_multiple_nodes_are_batched_into_a_single_checkout_call
=== RUN   TestWorkingTreeDiscardUnstagedDirChanges/empty_untracked_directory_is_removed_after_its_files_are_deleted
=== RUN   TestWorkingTreeDiscardUnstagedDirChanges/empty_directory_is_NOT_removed_when_individual_file_nodes_are_selected
--- PASS: TestWorkingTreeDiscardUnstagedDirChanges (0.00s)
    --- PASS: TestWorkingTreeDiscardUnstagedDirChanges/directory_node:_removes_untracked_files_and_checks_out_tracked_files_by_path,_not_by_directory (0.00s)
    --- PASS: TestWorkingTreeDiscardUnstagedDirChanges/directory_node:_staged-but-not-committed_file_(Tracked=false,_HasStagedChanges=true)_is_left_alone;_purely_untracked_file_is_removed (0.00s)
    --- PASS: TestWorkingTreeDiscardUnstagedDirChanges/file_node:_added_and_unstaged_file_is_removed_from_disk (0.00s)
    --- PASS: TestWorkingTreeDiscardUnstagedDirChanges/files_from_multiple_nodes_are_batched_into_a_single_checkout_call (0.00s)
    --- PASS: TestWorkingTreeDiscardUnstagedDirChanges/empty_untracked_directory_is_removed_after_its_files_are_deleted (0.00s)
    --- PASS: TestWorkingTreeDiscardUnstagedDirChanges/empty_directory_is_NOT_removed_when_individual_file_nodes_are_selected (0.00s)
=== RUN   TestWorkingTreeDiscardAnyUnstagedFileChanges
=== RUN   TestWorkingTreeDiscardAnyUnstagedFileChanges/valid_case
--- PASS: TestWorkingTreeDiscardAnyUnstagedFileChanges (0.00s)
    --- PASS: TestWorkingTreeDiscardAnyUnstagedFileChanges/valid_case (0.00s)
=== RUN   TestWorkingTreeRemoveUntrackedFiles
=== RUN   TestWorkingTreeRemoveUntrackedFiles/valid_case
--- PASS: TestWorkingTreeRemoveUntrackedFiles (0.00s)
    --- PASS: TestWorkingTreeRemoveUntrackedFiles/valid_case (0.00s)
=== RUN   TestWorkingTreeResetHard
=== RUN   TestWorkingTreeResetHard/valid_case
--- PASS: TestWorkingTreeResetHard (0.00s)
    --- PASS: TestWorkingTreeResetHard/valid_case (0.00s)
=== RUN   TestWorkingTreeCommands_AllRepoFiles
=== RUN   TestWorkingTreeCommands_AllRepoFiles/no_files
=== RUN   TestWorkingTreeCommands_AllRepoFiles/two_files
--- PASS: TestWorkingTreeCommands_AllRepoFiles (0.00s)
    --- PASS: TestWorkingTreeCommands_AllRepoFiles/no_files (0.00s)
    --- PASS: TestWorkingTreeCommands_AllRepoFiles/two_files (0.00s)
=== RUN   TestGetWorktrees
=== RUN   TestGetWorktrees/Single_worktree_(main)
=== RUN   TestGetWorktrees/Multiple_worktrees_(main_+_linked)
=== RUN   TestGetWorktrees/Worktree_missing_path
=== RUN   TestGetWorktrees/In_linked_worktree
=== RUN   TestGetWorktrees/Detached_HEAD_worktree
--- PASS: TestGetWorktrees (0.01s)
    --- PASS: TestGetWorktrees/Single_worktree_(main) (0.00s)
    --- PASS: TestGetWorktrees/Multiple_worktrees_(main_+_linked) (0.00s)
    --- PASS: TestGetWorktrees/Worktree_missing_path (0.00s)
    --- PASS: TestGetWorktrees/In_linked_worktree (0.00s)
    --- PASS: TestGetWorktrees/Detached_HEAD_worktree (0.00s)
=== RUN   TestGetUniqueNamesFromPaths
--- PASS: TestGetUniqueNamesFromPaths (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/commands/git_commands	0.024s
=== RUN   TestGetBool
=== RUN   TestGetBool/Option_global_and_local_config_commit.gpgsign_is_not_set
=== RUN   TestGetBool/Some_other_random_key_is_set
=== RUN   TestGetBool/Option_commit.gpgsign_is_true
=== RUN   TestGetBool/Option_commit.gpgsign_is_on
=== RUN   TestGetBool/Option_commit.gpgsign_is_yes
=== RUN   TestGetBool/Option_commit.gpgsign_is_1
--- PASS: TestGetBool (0.00s)
    --- PASS: TestGetBool/Option_global_and_local_config_commit.gpgsign_is_not_set (0.00s)
    --- PASS: TestGetBool/Some_other_random_key_is_set (0.00s)
    --- PASS: TestGetBool/Option_commit.gpgsign_is_true (0.00s)
    --- PASS: TestGetBool/Option_commit.gpgsign_is_on (0.00s)
    --- PASS: TestGetBool/Option_commit.gpgsign_is_yes (0.00s)
    --- PASS: TestGetBool/Option_commit.gpgsign_is_1 (0.00s)
=== RUN   TestGet
=== RUN   TestGet/not_set
=== RUN   TestGet/is_set
--- PASS: TestGet (0.00s)
    --- PASS: TestGet/not_set (0.00s)
    --- PASS: TestGet/is_set (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/commands/git_config	0.004s
=== RUN   TestGetPullRequestURL
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_bitbucket
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_bitbucket_with_extra_slash_removed
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_bitbucket_with_http_remote_url
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_github
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_github_custom_SSH_config_alias_and_a_corresponding_service_config
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_github_with_extra_slash_removed
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_github_with_https_remote_url
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_bitbucket_with_specific_target_branch
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_bitbucket_with_http_remote_url_with_specified_target_branch
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_github_with_specific_target_branch
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_github_with_specific_target_branch_(different_git_username)
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_github_with_https_remote_url_with_specific_target_branch
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab_with_custom_SSH_config_alias_and_a_corresponding_service_config
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab_with_extra_slash_removed
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab_in_nested_groups
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab_in_nested_groups_and_extra_slash_removed
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab_with_https_remote_url_in_nested_groups
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab_with_specific_target_branch
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab_with_specific_target_branch_in_nested_groups
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab_with_https_remote_url_with_specific_target_branch_in_nested_groups
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_bitbucket_with_a_custom_SSH_username
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Azure_DevOps_(SSH)
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Azure_DevOps_(SSH)_with_extra_slash_removed
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Azure_DevOps_(SSH)_with_specific_target
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Azure_DevOps_(HTTP)
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Azure_DevOps_(HTTP)_with_specific_target
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Azure_DevOps_Server_(HTTP)
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Azure_DevOps_(legacy_vs-ssh.visualstudio.com_SSH)_with_mapping_to_dev.azure.com
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Bitbucket_Server_(SSH)
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Bitbucket_Server_(SSH)_with_extra_slash_removed
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Bitbucket_Server_(SSH)_with_specific_target
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Bitbucket_Server_(HTTP)
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Bitbucket_Server_(HTTP)_with_specific_target
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Gitea_Server_(SSH)
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Gitea_Server_(SSH)_with_specific_target
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Gitea_Server_(HTTP)
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Gitea_Server_(HTTP)_with_specific_target
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Codeberg_(SSH)
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Codeberg_(SSH)_with_specific_target
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Codeberg_(HTTP)
=== RUN   TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Codeberg_(HTTP)_with_specific_target
=== RUN   TestGetPullRequestURL/Throws_an_error_if_git_service_is_unsupported
=== RUN   TestGetPullRequestURL/Does_not_log_error_when_config_service_domains_are_valid
=== RUN   TestGetPullRequestURL/Does_not_log_error_when_config_service_domains_are_valid_with_extra_slash
=== RUN   TestGetPullRequestURL/Does_not_log_error_when_config_service_webDomain_contains_a_port
=== RUN   TestGetPullRequestURL/Logs_error_when_webDomain_contains_more_than_one_colon
=== RUN   TestGetPullRequestURL/Logs_error_when_config_service_domain_is_malformed
=== RUN   TestGetPullRequestURL/Logs_error_when_config_service_domain_uses_unknown_provider
=== RUN   TestGetPullRequestURL/Escapes_reserved_URL_characters_in_from_branch_name
=== RUN   TestGetPullRequestURL/Escapes_reserved_URL_characters_in_to_branch_name
--- PASS: TestGetPullRequestURL (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_bitbucket (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_bitbucket_with_extra_slash_removed (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_bitbucket_with_http_remote_url (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_github (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_github_custom_SSH_config_alias_and_a_corresponding_service_config (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_github_with_extra_slash_removed (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_github_with_https_remote_url (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_bitbucket_with_specific_target_branch (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_bitbucket_with_http_remote_url_with_specified_target_branch (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_github_with_specific_target_branch (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_github_with_specific_target_branch_(different_git_username) (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_github_with_https_remote_url_with_specific_target_branch (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab_with_custom_SSH_config_alias_and_a_corresponding_service_config (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab_with_extra_slash_removed (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab_in_nested_groups (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab_in_nested_groups_and_extra_slash_removed (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab_with_https_remote_url_in_nested_groups (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab_with_specific_target_branch (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab_with_specific_target_branch_in_nested_groups (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_gitlab_with_https_remote_url_with_specific_target_branch_in_nested_groups (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_bitbucket_with_a_custom_SSH_username (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Azure_DevOps_(SSH) (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Azure_DevOps_(SSH)_with_extra_slash_removed (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Azure_DevOps_(SSH)_with_specific_target (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Azure_DevOps_(HTTP) (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Azure_DevOps_(HTTP)_with_specific_target (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Azure_DevOps_Server_(HTTP) (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Azure_DevOps_(legacy_vs-ssh.visualstudio.com_SSH)_with_mapping_to_dev.azure.com (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Bitbucket_Server_(SSH) (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Bitbucket_Server_(SSH)_with_extra_slash_removed (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Bitbucket_Server_(SSH)_with_specific_target (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Bitbucket_Server_(HTTP) (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Bitbucket_Server_(HTTP)_with_specific_target (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Gitea_Server_(SSH) (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Gitea_Server_(SSH)_with_specific_target (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Gitea_Server_(HTTP) (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Gitea_Server_(HTTP)_with_specific_target (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Codeberg_(SSH) (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Codeberg_(SSH)_with_specific_target (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Codeberg_(HTTP) (0.00s)
    --- PASS: TestGetPullRequestURL/Opens_a_link_to_new_pull_request_on_Codeberg_(HTTP)_with_specific_target (0.00s)
    --- PASS: TestGetPullRequestURL/Throws_an_error_if_git_service_is_unsupported (0.00s)
    --- PASS: TestGetPullRequestURL/Does_not_log_error_when_config_service_domains_are_valid (0.00s)
    --- PASS: TestGetPullRequestURL/Does_not_log_error_when_config_service_domains_are_valid_with_extra_slash (0.00s)
    --- PASS: TestGetPullRequestURL/Does_not_log_error_when_config_service_webDomain_contains_a_port (0.00s)
    --- PASS: TestGetPullRequestURL/Logs_error_when_webDomain_contains_more_than_one_colon (0.00s)
    --- PASS: TestGetPullRequestURL/Logs_error_when_config_service_domain_is_malformed (0.00s)
    --- PASS: TestGetPullRequestURL/Logs_error_when_config_service_domain_uses_unknown_provider (0.00s)
    --- PASS: TestGetPullRequestURL/Escapes_reserved_URL_characters_in_from_branch_name (0.00s)
    --- PASS: TestGetPullRequestURL/Escapes_reserved_URL_characters_in_to_branch_name (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/commands/hosting_service	0.008s
?   	github.com/jesseduffield/lazygit/pkg/commands/models	[no test files]
=== RUN   TestProcessOutput
=== RUN   TestProcessOutput/no_output
=== RUN   TestProcessOutput/password_prompt
=== RUN   TestProcessOutput/password_prompt_2
=== RUN   TestProcessOutput/password_prompt_3
=== RUN   TestProcessOutput/username_prompt
=== RUN   TestProcessOutput/passphrase_prompt
=== RUN   TestProcessOutput/security_key_pin_prompt
=== RUN   TestProcessOutput/pkcs11_key_pin_prompt
=== RUN   TestProcessOutput/2FA_token_prompt
=== RUN   TestProcessOutput/username_and_password_prompt
=== RUN   TestProcessOutput/user_submits_empty_credential
--- PASS: TestProcessOutput (0.00s)
    --- PASS: TestProcessOutput/no_output (0.00s)
    --- PASS: TestProcessOutput/password_prompt (0.00s)
    --- PASS: TestProcessOutput/password_prompt_2 (0.00s)
    --- PASS: TestProcessOutput/password_prompt_3 (0.00s)
    --- PASS: TestProcessOutput/username_prompt (0.00s)
    --- PASS: TestProcessOutput/passphrase_prompt (0.00s)
    --- PASS: TestProcessOutput/security_key_pin_prompt (0.00s)
    --- PASS: TestProcessOutput/pkcs11_key_pin_prompt (0.00s)
    --- PASS: TestProcessOutput/2FA_token_prompt (0.00s)
    --- PASS: TestProcessOutput/username_and_password_prompt (0.00s)
    --- PASS: TestProcessOutput/user_submits_empty_credential (0.00s)
=== RUN   TestCmdObjToString
--- PASS: TestCmdObjToString (0.00s)
=== RUN   TestClone
--- PASS: TestClone (0.00s)
=== RUN   TestOSCommandRunWithOutput
--- PASS: TestOSCommandRunWithOutput (0.00s)
=== RUN   TestOSCommandOpenFileDarwin
--- PASS: TestOSCommandOpenFileDarwin (0.00s)
=== RUN   TestOSCommandOpenFileLinux
--- PASS: TestOSCommandOpenFileLinux (0.00s)
=== RUN   TestOSCommandRun
--- PASS: TestOSCommandRun (0.00s)
=== RUN   TestOSCommandQuote
--- PASS: TestOSCommandQuote (0.00s)
=== RUN   TestOSCommandQuoteSingleQuote
--- PASS: TestOSCommandQuoteSingleQuote (0.00s)
=== RUN   TestOSCommandQuoteDoubleQuote
--- PASS: TestOSCommandQuoteDoubleQuote (0.00s)
=== RUN   TestOSCommandQuoteWindows
--- PASS: TestOSCommandQuoteWindows (0.00s)
=== RUN   TestOSCommandFileType
--- PASS: TestOSCommandFileType (0.00s)
=== RUN   TestOSCommandAppendLineToFile
--- PASS: TestOSCommandAppendLineToFile (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/commands/oscommands	0.008s
=== RUN   TestTransform
=== RUN   TestTransform/nothing_selected
=== RUN   TestTransform/only_context_selected
=== RUN   TestTransform/whole_range_selected
=== RUN   TestTransform/only_removal_selected
=== RUN   TestTransform/only_addition_selected
=== RUN   TestTransform/range_that_extends_beyond_diff_bounds
=== RUN   TestTransform/add_newline_to_end_of_file
=== RUN   TestTransform/add_newline_to_end_of_file,_reversed
=== RUN   TestTransform/remove_newline_from_end_of_file
=== RUN   TestTransform/remove_newline_from_end_of_file,_reversed
=== RUN   TestTransform/remove_newline_from_end_of_file,_removal_only
=== RUN   TestTransform/remove_newline_from_end_of_file,_removal_only,_reversed
=== RUN   TestTransform/remove_newline_from_end_of_file,_addition_only
=== RUN   TestTransform/remove_newline_from_end_of_file,_addition_only,_reversed
=== RUN   TestTransform/staging_two_whole_hunks
=== RUN   TestTransform/staging_part_of_both_hunks
=== RUN   TestTransform/adding_a_new_file
=== RUN   TestTransform/adding_part_of_a_new_file
=== RUN   TestTransform/adding_a_new_line_to_a_previously_empty_file
=== RUN   TestTransform/adding_a_new_line_to_a_previously_empty_file,_reversed
=== RUN   TestTransform/adding_part_of_a_hunk
=== RUN   TestTransform/adding_part_of_a_hunk,_reverse
--- PASS: TestTransform (0.00s)
    --- PASS: TestTransform/nothing_selected (0.00s)
    --- PASS: TestTransform/only_context_selected (0.00s)
    --- PASS: TestTransform/whole_range_selected (0.00s)
    --- PASS: TestTransform/only_removal_selected (0.00s)
    --- PASS: TestTransform/only_addition_selected (0.00s)
    --- PASS: TestTransform/range_that_extends_beyond_diff_bounds (0.00s)
    --- PASS: TestTransform/add_newline_to_end_of_file (0.00s)
    --- PASS: TestTransform/add_newline_to_end_of_file,_reversed (0.00s)
    --- PASS: TestTransform/remove_newline_from_end_of_file (0.00s)
    --- PASS: TestTransform/remove_newline_from_end_of_file,_reversed (0.00s)
    --- PASS: TestTransform/remove_newline_from_end_of_file,_removal_only (0.00s)
    --- PASS: TestTransform/remove_newline_from_end_of_file,_removal_only,_reversed (0.00s)
    --- PASS: TestTransform/remove_newline_from_end_of_file,_addition_only (0.00s)
    --- PASS: TestTransform/remove_newline_from_end_of_file,_addition_only,_reversed (0.00s)
    --- PASS: TestTransform/staging_two_whole_hunks (0.00s)
    --- PASS: TestTransform/staging_part_of_both_hunks (0.00s)
    --- PASS: TestTransform/adding_a_new_file (0.00s)
    --- PASS: TestTransform/adding_part_of_a_new_file (0.00s)
    --- PASS: TestTransform/adding_a_new_line_to_a_previously_empty_file (0.00s)
    --- PASS: TestTransform/adding_a_new_line_to_a_previously_empty_file,_reversed (0.00s)
    --- PASS: TestTransform/adding_part_of_a_hunk (0.00s)
    --- PASS: TestTransform/adding_part_of_a_hunk,_reverse (0.00s)
=== RUN   TestParseAndFormatPlain
=== RUN   TestParseAndFormatPlain/simpleDiff
=== RUN   TestParseAndFormatPlain/addNewlineToEndOfFile
=== RUN   TestParseAndFormatPlain/removeNewlinefromEndOfFile
=== RUN   TestParseAndFormatPlain/twoHunks
=== RUN   TestParseAndFormatPlain/twoChangesInOneHunk
=== RUN   TestParseAndFormatPlain/newFile
=== RUN   TestParseAndFormatPlain/deletedFile
=== RUN   TestParseAndFormatPlain/addNewlineToPreviouslyEmptyFile
=== RUN   TestParseAndFormatPlain/exampleHunk
--- PASS: TestParseAndFormatPlain (0.00s)
    --- PASS: TestParseAndFormatPlain/simpleDiff (0.00s)
    --- PASS: TestParseAndFormatPlain/addNewlineToEndOfFile (0.00s)
    --- PASS: TestParseAndFormatPlain/removeNewlinefromEndOfFile (0.00s)
    --- PASS: TestParseAndFormatPlain/twoHunks (0.00s)
    --- PASS: TestParseAndFormatPlain/twoChangesInOneHunk (0.00s)
    --- PASS: TestParseAndFormatPlain/newFile (0.00s)
    --- PASS: TestParseAndFormatPlain/deletedFile (0.00s)
    --- PASS: TestParseAndFormatPlain/addNewlineToPreviouslyEmptyFile (0.00s)
    --- PASS: TestParseAndFormatPlain/exampleHunk (0.00s)
=== RUN   TestLineNumberOfLine
=== RUN   TestLineNumberOfLine/twoHunks
=== RUN   TestLineNumberOfLine/twoHunksWithMoreAdditionsThanRemovals
--- PASS: TestLineNumberOfLine (0.00s)
    --- PASS: TestLineNumberOfLine/twoHunks (0.00s)
    --- PASS: TestLineNumberOfLine/twoHunksWithMoreAdditionsThanRemovals (0.00s)
=== RUN   TestGetNextStageableLineIndex
=== RUN   TestGetNextStageableLineIndex/twoHunks
--- PASS: TestGetNextStageableLineIndex (0.00s)
    --- PASS: TestGetNextStageableLineIndex/twoHunks (0.00s)
=== RUN   TestAdjustLineNumber
=== RUN   TestAdjustLineNumber/TestAdjustLineNumber
--- PASS: TestAdjustLineNumber (0.00s)
    --- PASS: TestAdjustLineNumber/TestAdjustLineNumber (0.00s)
=== RUN   TestIsSingleHunkForWholeFile
=== RUN   TestIsSingleHunkForWholeFile/simpleDiff
=== RUN   TestIsSingleHunkForWholeFile/addNewlineToEndOfFile
=== RUN   TestIsSingleHunkForWholeFile/removeNewlinefromEndOfFile
=== RUN   TestIsSingleHunkForWholeFile/twoHunks
=== RUN   TestIsSingleHunkForWholeFile/twoChangesInOneHunk
=== RUN   TestIsSingleHunkForWholeFile/newFile
=== RUN   TestIsSingleHunkForWholeFile/deletedFile
=== RUN   TestIsSingleHunkForWholeFile/addNewlineToPreviouslyEmptyFile
=== RUN   TestIsSingleHunkForWholeFile/exampleHunk
--- PASS: TestIsSingleHunkForWholeFile (0.00s)
    --- PASS: TestIsSingleHunkForWholeFile/simpleDiff (0.00s)
    --- PASS: TestIsSingleHunkForWholeFile/addNewlineToEndOfFile (0.00s)
    --- PASS: TestIsSingleHunkForWholeFile/removeNewlinefromEndOfFile (0.00s)
    --- PASS: TestIsSingleHunkForWholeFile/twoHunks (0.00s)
    --- PASS: TestIsSingleHunkForWholeFile/twoChangesInOneHunk (0.00s)
    --- PASS: TestIsSingleHunkForWholeFile/newFile (0.00s)
    --- PASS: TestIsSingleHunkForWholeFile/deletedFile (0.00s)
    --- PASS: TestIsSingleHunkForWholeFile/addNewlineToPreviouslyEmptyFile (0.00s)
    --- PASS: TestIsSingleHunkForWholeFile/exampleHunk (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/commands/patch	0.004s
?   	github.com/jesseduffield/lazygit/pkg/common	[no test files]
=== RUN   TestMigrationOfRenamedKeys
=== RUN   TestMigrationOfRenamedKeys/Empty_String
=== RUN   TestMigrationOfRenamedKeys/No_rename_needed
=== RUN   TestMigrationOfRenamedKeys/Rename_one
=== RUN   TestMigrationOfRenamedKeys/Rename_several
--- PASS: TestMigrationOfRenamedKeys (0.00s)
    --- PASS: TestMigrationOfRenamedKeys/Empty_String (0.00s)
    --- PASS: TestMigrationOfRenamedKeys/No_rename_needed (0.00s)
    --- PASS: TestMigrationOfRenamedKeys/Rename_one (0.00s)
    --- PASS: TestMigrationOfRenamedKeys/Rename_several (0.00s)
=== RUN   TestMigrateNullKeybindingsToDisabled
=== RUN   TestMigrateNullKeybindingsToDisabled/Empty_String
=== RUN   TestMigrateNullKeybindingsToDisabled/No_change_needed
=== RUN   TestMigrateNullKeybindingsToDisabled/Change_one
=== RUN   TestMigrateNullKeybindingsToDisabled/Change_several
--- PASS: TestMigrateNullKeybindingsToDisabled (0.00s)
    --- PASS: TestMigrateNullKeybindingsToDisabled/Empty_String (0.00s)
    --- PASS: TestMigrateNullKeybindingsToDisabled/No_change_needed (0.00s)
    --- PASS: TestMigrateNullKeybindingsToDisabled/Change_one (0.00s)
    --- PASS: TestMigrateNullKeybindingsToDisabled/Change_several (0.00s)
=== RUN   TestCommitPrefixMigrations
=== RUN   TestCommitPrefixMigrations/Empty_String
=== RUN   TestCommitPrefixMigrations/Single_CommitPrefix_Rename
=== RUN   TestCommitPrefixMigrations/Complicated_CommitPrefixes_Rename
=== RUN   TestCommitPrefixMigrations/Incomplete_Configuration
=== RUN   TestCommitPrefixMigrations/No_changes_made_when_already_migrated
--- PASS: TestCommitPrefixMigrations (0.00s)
    --- PASS: TestCommitPrefixMigrations/Empty_String (0.00s)
    --- PASS: TestCommitPrefixMigrations/Single_CommitPrefix_Rename (0.00s)
    --- PASS: TestCommitPrefixMigrations/Complicated_CommitPrefixes_Rename (0.00s)
    --- PASS: TestCommitPrefixMigrations/Incomplete_Configuration (0.00s)
    --- PASS: TestCommitPrefixMigrations/No_changes_made_when_already_migrated (0.00s)
=== RUN   TestCustomCommandsOutputMigration
=== RUN   TestCustomCommandsOutputMigration/Empty_String
=== RUN   TestCustomCommandsOutputMigration/Convert_subprocess_to_output=terminal
=== RUN   TestCustomCommandsOutputMigration/Convert_stream_to_output=log
=== RUN   TestCustomCommandsOutputMigration/Convert_showOutput_to_output=popup
=== RUN   TestCustomCommandsOutputMigration/Subprocess_wins_over_the_other_two
=== RUN   TestCustomCommandsOutputMigration/Stream_wins_over_showOutput
=== RUN   TestCustomCommandsOutputMigration/Explicitly_setting_to_false_doesn't_create_an_output=none_key
--- PASS: TestCustomCommandsOutputMigration (0.00s)
    --- PASS: TestCustomCommandsOutputMigration/Empty_String (0.00s)
    --- PASS: TestCustomCommandsOutputMigration/Convert_subprocess_to_output=terminal (0.00s)
    --- PASS: TestCustomCommandsOutputMigration/Convert_stream_to_output=log (0.00s)
    --- PASS: TestCustomCommandsOutputMigration/Convert_showOutput_to_output=popup (0.00s)
    --- PASS: TestCustomCommandsOutputMigration/Subprocess_wins_over_the_other_two (0.00s)
    --- PASS: TestCustomCommandsOutputMigration/Stream_wins_over_showOutput (0.00s)
    --- PASS: TestCustomCommandsOutputMigration/Explicitly_setting_to_false_doesn't_create_an_output=none_key (0.00s)
=== RUN   TestAllBranchesLogCmdMigrations
=== RUN   TestAllBranchesLogCmdMigrations/Incomplete_Configuration_Passes_uneventfully
=== RUN   TestAllBranchesLogCmdMigrations/Single_Cmd_with_no_Cmds
=== RUN   TestAllBranchesLogCmdMigrations/Cmd_with_one_existing_Cmds
=== RUN   TestAllBranchesLogCmdMigrations/Only_Cmds_set_have_no_changes
=== RUN   TestAllBranchesLogCmdMigrations/Removes_Empty_Cmd_When_at_end_of_yaml
=== RUN   TestAllBranchesLogCmdMigrations/Migrates_when_sequence_defined_inline
=== RUN   TestAllBranchesLogCmdMigrations/Removes_Empty_Cmd_With_Keys_Afterwards
--- PASS: TestAllBranchesLogCmdMigrations (0.00s)
    --- PASS: TestAllBranchesLogCmdMigrations/Incomplete_Configuration_Passes_uneventfully (0.00s)
    --- PASS: TestAllBranchesLogCmdMigrations/Single_Cmd_with_no_Cmds (0.00s)
    --- PASS: TestAllBranchesLogCmdMigrations/Cmd_with_one_existing_Cmds (0.00s)
    --- PASS: TestAllBranchesLogCmdMigrations/Only_Cmds_set_have_no_changes (0.00s)
    --- PASS: TestAllBranchesLogCmdMigrations/Removes_Empty_Cmd_When_at_end_of_yaml (0.00s)
    --- PASS: TestAllBranchesLogCmdMigrations/Migrates_when_sequence_defined_inline (0.00s)
    --- PASS: TestAllBranchesLogCmdMigrations/Removes_Empty_Cmd_With_Keys_Afterwards (0.00s)
=== RUN   TestPagerMigration
=== RUN   TestPagerMigration/Incomplete_Configuration_Passes_uneventfully
=== RUN   TestPagerMigration/No_paging_section
=== RUN   TestPagerMigration/Both_paging_and_pagers_exist
=== RUN   TestPagerMigration/paging_is_not_an_object
=== RUN   TestPagerMigration/paging_is_moved_to_pagers_array_(keeping_the_order)
=== RUN   TestPagerMigration/paging_is_moved_to_pagers_array_even_if_empty
--- PASS: TestPagerMigration (0.00s)
    --- PASS: TestPagerMigration/Incomplete_Configuration_Passes_uneventfully (0.00s)
    --- PASS: TestPagerMigration/No_paging_section (0.00s)
    --- PASS: TestPagerMigration/Both_paging_and_pagers_exist (0.00s)
    --- PASS: TestPagerMigration/paging_is_not_an_object (0.00s)
    --- PASS: TestPagerMigration/paging_is_moved_to_pagers_array_(keeping_the_order) (0.00s)
    --- PASS: TestPagerMigration/paging_is_moved_to_pagers_array_even_if_empty (0.00s)
=== RUN   TestGetEditTemplate
=== RUN   TestGetEditTemplate/Default_template_is_vim
=== RUN   TestGetEditTemplate/Setting_a_preset
=== RUN   TestGetEditTemplate/Setting_a_preset_wins_over_guessed_editor
=== RUN   TestGetEditTemplate/Overriding_a_preset_with_explicit_config_(edit)
=== RUN   TestGetEditTemplate/Overriding_a_preset_with_explicit_config_(edit_at_line)
=== RUN   TestGetEditTemplate/Overriding_a_preset_with_explicit_config_(edit_at_line_and_wait)
=== RUN   TestGetEditTemplate/Unknown_preset_name
=== RUN   TestGetEditTemplate/Guessing_a_preset_from_guessed_editor
--- PASS: TestGetEditTemplate (0.00s)
    --- PASS: TestGetEditTemplate/Default_template_is_vim (0.00s)
    --- PASS: TestGetEditTemplate/Setting_a_preset (0.00s)
    --- PASS: TestGetEditTemplate/Setting_a_preset_wins_over_guessed_editor (0.00s)
    --- PASS: TestGetEditTemplate/Overriding_a_preset_with_explicit_config_(edit) (0.00s)
    --- PASS: TestGetEditTemplate/Overriding_a_preset_with_explicit_config_(edit_at_line) (0.00s)
    --- PASS: TestGetEditTemplate/Overriding_a_preset_with_explicit_config_(edit_at_line_and_wait) (0.00s)
    --- PASS: TestGetEditTemplate/Unknown_preset_name (0.00s)
    --- PASS: TestGetEditTemplate/Guessing_a_preset_from_guessed_editor (0.00s)
=== RUN   TestUserConfigValidate_enums
=== RUN   TestUserConfigValidate_enums/Gui.StatusPanelView
=== RUN   TestUserConfigValidate_enums/Gui.ShowDivergenceFromBaseBranch
=== RUN   TestUserConfigValidate_enums/Git.AutoForwardBranches
=== RUN   TestUserConfigValidate_enums/Git.LocalBranchSortOrder
=== RUN   TestUserConfigValidate_enums/Git.RemoteBranchSortOrder
=== RUN   TestUserConfigValidate_enums/Git.Log.Order
=== RUN   TestUserConfigValidate_enums/Git.Log.ShowGraph
=== RUN   TestUserConfigValidate_enums/Keybindings
=== RUN   TestUserConfigValidate_enums/JumpToBlock_keybinding
=== RUN   TestUserConfigValidate_enums/Custom_command_keybinding
=== RUN   TestUserConfigValidate_enums/Custom_command_keybinding_in_sub_menu
=== RUN   TestUserConfigValidate_enums/Custom_command_keybinding_in_prompt_menu
=== RUN   TestUserConfigValidate_enums/Custom_command_output
=== RUN   TestUserConfigValidate_enums/Custom_command_sub_menu
=== RUN   TestUserConfigValidate_enums/Custom_command_sub_menu#01
=== RUN   TestUserConfigValidate_enums/Custom_command_sub_menu#02
--- PASS: TestUserConfigValidate_enums (0.01s)
    --- PASS: TestUserConfigValidate_enums/Gui.StatusPanelView (0.00s)
    --- PASS: TestUserConfigValidate_enums/Gui.ShowDivergenceFromBaseBranch (0.00s)
    --- PASS: TestUserConfigValidate_enums/Git.AutoForwardBranches (0.00s)
    --- PASS: TestUserConfigValidate_enums/Git.LocalBranchSortOrder (0.00s)
    --- PASS: TestUserConfigValidate_enums/Git.RemoteBranchSortOrder (0.00s)
    --- PASS: TestUserConfigValidate_enums/Git.Log.Order (0.00s)
    --- PASS: TestUserConfigValidate_enums/Git.Log.ShowGraph (0.00s)
    --- PASS: TestUserConfigValidate_enums/Keybindings (0.00s)
    --- PASS: TestUserConfigValidate_enums/JumpToBlock_keybinding (0.00s)
    --- PASS: TestUserConfigValidate_enums/Custom_command_keybinding (0.00s)
    --- PASS: TestUserConfigValidate_enums/Custom_command_keybinding_in_sub_menu (0.00s)
    --- PASS: TestUserConfigValidate_enums/Custom_command_keybinding_in_prompt_menu (0.00s)
    --- PASS: TestUserConfigValidate_enums/Custom_command_output (0.00s)
    --- PASS: TestUserConfigValidate_enums/Custom_command_sub_menu (0.00s)
    --- PASS: TestUserConfigValidate_enums/Custom_command_sub_menu#01 (0.00s)
    --- PASS: TestUserConfigValidate_enums/Custom_command_sub_menu#02 (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/config	0.011s
?   	github.com/jesseduffield/lazygit/pkg/constants	[no test files]
?   	github.com/jesseduffield/lazygit/pkg/env	[no test files]
?   	github.com/jesseduffield/lazygit/pkg/fakes	[no test files]
?   	github.com/jesseduffield/lazygit/pkg/gui	[no test files]
=== RUN   TestListRenderer_renderLines
=== RUN   TestListRenderer_renderLines/Render_whole_list
=== RUN   TestListRenderer_renderLines/Partial_list,_beginning
=== RUN   TestListRenderer_renderLines/Partial_list,_end
=== RUN   TestListRenderer_renderLines/Pass_an_endIdx_greater_than_the_model_length
=== RUN   TestListRenderer_renderLines/Whole_list_with_section_headers
=== RUN   TestListRenderer_renderLines/Multiple_consecutive_headers
=== RUN   TestListRenderer_renderLines/Partial_list_with_headers,_beginning
=== RUN   TestListRenderer_renderLines/Partial_list_with_headers,_end_(beyond_end_index)
--- PASS: TestListRenderer_renderLines (0.00s)
    --- PASS: TestListRenderer_renderLines/Render_whole_list (0.00s)
    --- PASS: TestListRenderer_renderLines/Partial_list,_beginning (0.00s)
    --- PASS: TestListRenderer_renderLines/Partial_list,_end (0.00s)
    --- PASS: TestListRenderer_renderLines/Pass_an_endIdx_greater_than_the_model_length (0.00s)
    --- PASS: TestListRenderer_renderLines/Whole_list_with_section_headers (0.00s)
    --- PASS: TestListRenderer_renderLines/Multiple_consecutive_headers (0.00s)
    --- PASS: TestListRenderer_renderLines/Partial_list_with_headers,_beginning (0.00s)
    --- PASS: TestListRenderer_renderLines/Partial_list_with_headers,_end_(beyond_end_index) (0.00s)
=== RUN   TestListRenderer_ModelIndexToViewIndex_and_back
=== RUN   TestListRenderer_ModelIndexToViewIndex_and_back/no_headers_(no_getNonModelItems_provided)
=== RUN   TestListRenderer_ModelIndexToViewIndex_and_back/no_headers_(getNonModelItems_returns_zero_items)
=== RUN   TestListRenderer_ModelIndexToViewIndex_and_back/basic
=== RUN   TestListRenderer_ModelIndexToViewIndex_and_back/consecutive_section_headers
--- PASS: TestListRenderer_ModelIndexToViewIndex_and_back (0.00s)
    --- PASS: TestListRenderer_ModelIndexToViewIndex_and_back/no_headers_(no_getNonModelItems_provided) (0.00s)
    --- PASS: TestListRenderer_ModelIndexToViewIndex_and_back/no_headers_(getNonModelItems_returns_zero_items) (0.00s)
    --- PASS: TestListRenderer_ModelIndexToViewIndex_and_back/basic (0.00s)
    --- PASS: TestListRenderer_ModelIndexToViewIndex_and_back/consecutive_section_headers (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/gui/context	0.004s
?   	github.com/jesseduffield/lazygit/pkg/gui/context/traits	[no test files]
=== RUN   Test_countSquashableCommitsAbove
=== RUN   Test_countSquashableCommitsAbove/no_squashable_commits
=== RUN   Test_countSquashableCommitsAbove/some_squashable_commits,_including_for_the_selected_commit
=== RUN   Test_countSquashableCommitsAbove/base_commit_is_below_rebase_start
=== RUN   Test_countSquashableCommitsAbove/base_commit_does_not_exist_at_all
=== RUN   Test_countSquashableCommitsAbove/selected_commit_is_in_the_middle_of_fixups
=== RUN   Test_countSquashableCommitsAbove/selected_commit_is_after_rebase_start
--- PASS: Test_countSquashableCommitsAbove (0.00s)
    --- PASS: Test_countSquashableCommitsAbove/no_squashable_commits (0.00s)
    --- PASS: Test_countSquashableCommitsAbove/some_squashable_commits,_including_for_the_selected_commit (0.00s)
    --- PASS: Test_countSquashableCommitsAbove/base_commit_is_below_rebase_start (0.00s)
    --- PASS: Test_countSquashableCommitsAbove/base_commit_does_not_exist_at_all (0.00s)
    --- PASS: Test_countSquashableCommitsAbove/selected_commit_is_in_the_middle_of_fixups (0.00s)
    --- PASS: Test_countSquashableCommitsAbove/selected_commit_is_after_rebase_start (0.00s)
=== RUN   Test_dropDiffPrefix
=== RUN   Test_dropDiffPrefix/empty_string
=== RUN   Test_dropDiffPrefix/only_added_lines
=== RUN   Test_dropDiffPrefix/added_lines_with_context
=== RUN   Test_dropDiffPrefix/only_deleted_lines
=== RUN   Test_dropDiffPrefix/deleted_lines_with_context
=== RUN   Test_dropDiffPrefix/only_context
=== RUN   Test_dropDiffPrefix/added_and_deleted_lines
=== RUN   Test_dropDiffPrefix/hunk_header_lines
--- PASS: Test_dropDiffPrefix (0.00s)
    --- PASS: Test_dropDiffPrefix/empty_string (0.00s)
    --- PASS: Test_dropDiffPrefix/only_added_lines (0.00s)
    --- PASS: Test_dropDiffPrefix/added_lines_with_context (0.00s)
    --- PASS: Test_dropDiffPrefix/only_deleted_lines (0.00s)
    --- PASS: Test_dropDiffPrefix/deleted_lines_with_context (0.00s)
    --- PASS: Test_dropDiffPrefix/only_context (0.00s)
    --- PASS: Test_dropDiffPrefix/added_and_deleted_lines (0.00s)
    --- PASS: Test_dropDiffPrefix/hunk_header_lines (0.00s)
=== RUN   TestReplaceForkUsername_SSH_OK
=== RUN   TestReplaceForkUsername_SSH_OK/github_ssh_scp-like_basic
=== RUN   TestReplaceForkUsername_SSH_OK/ssh_scp-like_no_.git
=== RUN   TestReplaceForkUsername_SSH_OK/gitlab_subgroup_ssh_scp-like
=== RUN   TestReplaceForkUsername_SSH_OK/ssh_url_style_basic
=== RUN   TestReplaceForkUsername_SSH_OK/ssh_url_style_with_port
=== RUN   TestReplaceForkUsername_SSH_OK/ssh_url_style_multi_subgroup
--- PASS: TestReplaceForkUsername_SSH_OK (0.00s)
    --- PASS: TestReplaceForkUsername_SSH_OK/github_ssh_scp-like_basic (0.00s)
    --- PASS: TestReplaceForkUsername_SSH_OK/ssh_scp-like_no_.git (0.00s)
    --- PASS: TestReplaceForkUsername_SSH_OK/gitlab_subgroup_ssh_scp-like (0.00s)
    --- PASS: TestReplaceForkUsername_SSH_OK/ssh_url_style_basic (0.00s)
    --- PASS: TestReplaceForkUsername_SSH_OK/ssh_url_style_with_port (0.00s)
    --- PASS: TestReplaceForkUsername_SSH_OK/ssh_url_style_multi_subgroup (0.00s)
=== RUN   TestReplaceForkUsername_HTTPS_OK
=== RUN   TestReplaceForkUsername_HTTPS_OK/github_https_basic
=== RUN   TestReplaceForkUsername_HTTPS_OK/https_no_.git
=== RUN   TestReplaceForkUsername_HTTPS_OK/https_with_port
=== RUN   TestReplaceForkUsername_HTTPS_OK/gitlab_multi_subgroup_https
--- PASS: TestReplaceForkUsername_HTTPS_OK (0.00s)
    --- PASS: TestReplaceForkUsername_HTTPS_OK/github_https_basic (0.00s)
    --- PASS: TestReplaceForkUsername_HTTPS_OK/https_no_.git (0.00s)
    --- PASS: TestReplaceForkUsername_HTTPS_OK/https_with_port (0.00s)
    --- PASS: TestReplaceForkUsername_HTTPS_OK/gitlab_multi_subgroup_https (0.00s)
=== RUN   TestReplaceForkUsername_IntegrationTest_OK
--- PASS: TestReplaceForkUsername_IntegrationTest_OK (0.00s)
=== RUN   TestReplaceForkUsername_Errors
=== RUN   TestReplaceForkUsername_Errors/https_host_only
=== RUN   TestReplaceForkUsername_Errors/https_host_slash_only
=== RUN   TestReplaceForkUsername_Errors/https_only_repo_(no_owner)
=== RUN   TestReplaceForkUsername_Errors/ssh_missing_path
=== RUN   TestReplaceForkUsername_Errors/ssh_one_segment_only
=== RUN   TestReplaceForkUsername_Errors/unsupported_scheme
=== RUN   TestReplaceForkUsername_Errors/empty_url
=== RUN   TestReplaceForkUsername_Errors/integration_test_URL_outside_of_integration_test
--- PASS: TestReplaceForkUsername_Errors (0.00s)
    --- PASS: TestReplaceForkUsername_Errors/https_host_only (0.00s)
    --- PASS: TestReplaceForkUsername_Errors/https_host_slash_only (0.00s)
    --- PASS: TestReplaceForkUsername_Errors/https_only_repo_(no_owner) (0.00s)
    --- PASS: TestReplaceForkUsername_Errors/ssh_missing_path (0.00s)
    --- PASS: TestReplaceForkUsername_Errors/ssh_one_segment_only (0.00s)
    --- PASS: TestReplaceForkUsername_Errors/unsupported_scheme (0.00s)
    --- PASS: TestReplaceForkUsername_Errors/empty_url (0.00s)
    --- PASS: TestReplaceForkUsername_Errors/integration_test_URL_outside_of_integration_test (0.00s)
=== RUN   Test_calculateLinesToScrollUp
=== RUN   Test_calculateLinesToScrollUp/before_position_is_above_viewport_-_don't_scroll
=== RUN   Test_calculateLinesToScrollUp/before_position_is_below_viewport_-_don't_scroll
=== RUN   Test_calculateLinesToScrollUp/before_and_after_positions_are_outside_scroll-off_margin_-_don't_scroll
=== RUN   Test_calculateLinesToScrollUp/before_outside,_after_inside_scroll-off_margin_-_scroll_by_1
=== RUN   Test_calculateLinesToScrollUp/scroll-off_margin_is_zero_-_scroll_by_1_at_end_of_view
=== RUN   Test_calculateLinesToScrollUp/before_inside_scroll-off_margin_-_scroll_by_more_than_1
=== RUN   Test_calculateLinesToScrollUp/very_large_scroll-off_margin_-_keep_view_centered_(even_viewport_height)
=== RUN   Test_calculateLinesToScrollUp/very_large_scroll-off_margin_-_keep_view_centered_(odd_viewport_height)
--- PASS: Test_calculateLinesToScrollUp (0.00s)
    --- PASS: Test_calculateLinesToScrollUp/before_position_is_above_viewport_-_don't_scroll (0.00s)
    --- PASS: Test_calculateLinesToScrollUp/before_position_is_below_viewport_-_don't_scroll (0.00s)
    --- PASS: Test_calculateLinesToScrollUp/before_and_after_positions_are_outside_scroll-off_margin_-_don't_scroll (0.00s)
    --- PASS: Test_calculateLinesToScrollUp/before_outside,_after_inside_scroll-off_margin_-_scroll_by_1 (0.00s)
    --- PASS: Test_calculateLinesToScrollUp/scroll-off_margin_is_zero_-_scroll_by_1_at_end_of_view (0.00s)
    --- PASS: Test_calculateLinesToScrollUp/before_inside_scroll-off_margin_-_scroll_by_more_than_1 (0.00s)
    --- PASS: Test_calculateLinesToScrollUp/very_large_scroll-off_margin_-_keep_view_centered_(even_viewport_height) (0.00s)
    --- PASS: Test_calculateLinesToScrollUp/very_large_scroll-off_margin_-_keep_view_centered_(odd_viewport_height) (0.00s)
=== RUN   Test_calculateLinesToScrollDown
=== RUN   Test_calculateLinesToScrollDown/before_position_is_above_viewport_-_don't_scroll
=== RUN   Test_calculateLinesToScrollDown/before_position_is_below_viewport_-_don't_scroll
=== RUN   Test_calculateLinesToScrollDown/before_and_after_positions_are_outside_scroll-off_margin_-_don't_scroll
=== RUN   Test_calculateLinesToScrollDown/before_outside,_after_inside_scroll-off_margin_-_scroll_by_1
=== RUN   Test_calculateLinesToScrollDown/scroll-off_margin_is_zero_-_scroll_by_1_at_end_of_view
=== RUN   Test_calculateLinesToScrollDown/before_inside_scroll-off_margin_-_scroll_by_more_than_1
=== RUN   Test_calculateLinesToScrollDown/very_large_scroll-off_margin_-_keep_view_centered_(even_viewport_height)
=== RUN   Test_calculateLinesToScrollDown/very_large_scroll-off_margin_-_keep_view_centered_(odd_viewport_height)
--- PASS: Test_calculateLinesToScrollDown (0.00s)
    --- PASS: Test_calculateLinesToScrollDown/before_position_is_above_viewport_-_don't_scroll (0.00s)
    --- PASS: Test_calculateLinesToScrollDown/before_position_is_below_viewport_-_don't_scroll (0.00s)
    --- PASS: Test_calculateLinesToScrollDown/before_and_after_positions_are_outside_scroll-off_margin_-_don't_scroll (0.00s)
    --- PASS: Test_calculateLinesToScrollDown/before_outside,_after_inside_scroll-off_margin_-_scroll_by_1 (0.00s)
    --- PASS: Test_calculateLinesToScrollDown/scroll-off_margin_is_zero_-_scroll_by_1_at_end_of_view (0.00s)
    --- PASS: Test_calculateLinesToScrollDown/before_inside_scroll-off_margin_-_scroll_by_more_than_1 (0.00s)
    --- PASS: Test_calculateLinesToScrollDown/very_large_scroll-off_margin_-_keep_view_centered_(even_viewport_height) (0.00s)
    --- PASS: Test_calculateLinesToScrollDown/very_large_scroll-off_margin_-_keep_view_centered_(odd_viewport_height) (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/gui/controllers	0.004s
=== RUN   TestTryRemoveHardLineBreaks
=== RUN   TestTryRemoveHardLineBreaks/empty
=== RUN   TestTryRemoveHardLineBreaks/all_line_breaks_are_needed
=== RUN   TestTryRemoveHardLineBreaks/some_can_be_unwrapped
--- PASS: TestTryRemoveHardLineBreaks (0.00s)
    --- PASS: TestTryRemoveHardLineBreaks/empty (0.00s)
    --- PASS: TestTryRemoveHardLineBreaks/all_line_breaks_are_needed (0.00s)
    --- PASS: TestTryRemoveHardLineBreaks/some_can_be_unwrapped (0.00s)
=== RUN   TestFixupHelper_parseDiff
=== RUN   TestFixupHelper_parseDiff/no_diff
=== RUN   TestFixupHelper_parseDiff/hunk_with_only_deleted_lines
=== RUN   TestFixupHelper_parseDiff/hunk_with_deleted_and_added_lines
=== RUN   TestFixupHelper_parseDiff/hunk_with_only_added_lines
=== RUN   TestFixupHelper_parseDiff/hunk_with_dashed_lines
=== RUN   TestFixupHelper_parseDiff/several_hunks_in_different_files
--- PASS: TestFixupHelper_parseDiff (0.00s)
    --- PASS: TestFixupHelper_parseDiff/no_diff (0.00s)
    --- PASS: TestFixupHelper_parseDiff/hunk_with_only_deleted_lines (0.00s)
    --- PASS: TestFixupHelper_parseDiff/hunk_with_deleted_and_added_lines (0.00s)
    --- PASS: TestFixupHelper_parseDiff/hunk_with_only_added_lines (0.00s)
    --- PASS: TestFixupHelper_parseDiff/hunk_with_dashed_lines (0.00s)
    --- PASS: TestFixupHelper_parseDiff/several_hunks_in_different_files (0.00s)
=== RUN   TestFixupHelper_IsFixupCommit
=== RUN   TestFixupHelper_IsFixupCommit/Bla
=== RUN   TestFixupHelper_IsFixupCommit/fixup_Bla
=== RUN   TestFixupHelper_IsFixupCommit/fixup!_Bla
=== RUN   TestFixupHelper_IsFixupCommit/fixup!_fixup!_Bla
=== RUN   TestFixupHelper_IsFixupCommit/amend!_squash!_Bla
=== RUN   TestFixupHelper_IsFixupCommit/fixup!
--- PASS: TestFixupHelper_IsFixupCommit (0.00s)
    --- PASS: TestFixupHelper_IsFixupCommit/Bla (0.00s)
    --- PASS: TestFixupHelper_IsFixupCommit/fixup_Bla (0.00s)
    --- PASS: TestFixupHelper_IsFixupCommit/fixup!_Bla (0.00s)
    --- PASS: TestFixupHelper_IsFixupCommit/fixup!_fixup!_Bla (0.00s)
    --- PASS: TestFixupHelper_IsFixupCommit/amend!_squash!_Bla (0.00s)
    --- PASS: TestFixupHelper_IsFixupCommit/fixup! (0.00s)
=== RUN   TestFixupHelper_removeFixupCommits
=== RUN   TestFixupHelper_removeFixupCommits/empty_list
=== RUN   TestFixupHelper_removeFixupCommits/single_commit
=== RUN   TestFixupHelper_removeFixupCommits/two_unrelated_commits
=== RUN   TestFixupHelper_removeFixupCommits/fixup_commit_for_last_commit
=== RUN   TestFixupHelper_removeFixupCommits/amend_and_squash_commits_for_last_commit
=== RUN   TestFixupHelper_removeFixupCommits/fixup_commit_for_different_commit
=== RUN   TestFixupHelper_removeFixupCommits/last_commit_is_a_fixup_itself
=== RUN   TestFixupHelper_removeFixupCommits/nested_fixup_commit
=== RUN   TestFixupHelper_removeFixupCommits/fixup_commits_mixed_with_unrelated_commits
=== RUN   TestFixupHelper_removeFixupCommits/only_fixup_commits_for_last_commit_removed,_others_preserved
--- PASS: TestFixupHelper_removeFixupCommits (0.00s)
    --- PASS: TestFixupHelper_removeFixupCommits/empty_list (0.00s)
    --- PASS: TestFixupHelper_removeFixupCommits/single_commit (0.00s)
    --- PASS: TestFixupHelper_removeFixupCommits/two_unrelated_commits (0.00s)
    --- PASS: TestFixupHelper_removeFixupCommits/fixup_commit_for_last_commit (0.00s)
    --- PASS: TestFixupHelper_removeFixupCommits/amend_and_squash_commits_for_last_commit (0.00s)
    --- PASS: TestFixupHelper_removeFixupCommits/fixup_commit_for_different_commit (0.00s)
    --- PASS: TestFixupHelper_removeFixupCommits/last_commit_is_a_fixup_itself (0.00s)
    --- PASS: TestFixupHelper_removeFixupCommits/nested_fixup_commit (0.00s)
    --- PASS: TestFixupHelper_removeFixupCommits/fixup_commits_mixed_with_unrelated_commits (0.00s)
    --- PASS: TestFixupHelper_removeFixupCommits/only_fixup_commits_for_last_commit_removed,_others_preserved (0.00s)
=== RUN   TestGetSuggestedRemote
--- PASS: TestGetSuggestedRemote (0.00s)
=== RUN   TestGetWindowDimensions
=== RUN   TestGetWindowDimensions/default
=== RUN   TestGetWindowDimensions/stash_focused
=== RUN   TestGetWindowDimensions/expandFocusedSidePanel
=== RUN   TestGetWindowDimensions/expandSidePanelWeight
=== RUN   TestGetWindowDimensions/0.5_SidePanelWidth
=== RUN   TestGetWindowDimensions/0.8_SidePanelWidth
=== RUN   TestGetWindowDimensions/half_screen_mode,_enlargedSideViewLocation_left
=== RUN   TestGetWindowDimensions/half_screen_mode,_enlargedSideViewLocation_top
=== RUN   TestGetWindowDimensions/portrait_auto_mode,_enabled
=== RUN   TestGetWindowDimensions/portrait_auto_mode,_disabled_because_width_is_too_large
=== RUN   TestGetWindowDimensions/portrait_auto_mode,_disabled_because_height_is_too_small
=== RUN   TestGetWindowDimensions/search_mode
=== RUN   TestGetWindowDimensions/app_status_present
=== RUN   TestGetWindowDimensions/information_present_without_options
=== RUN   TestGetWindowDimensions/app_status_present_without_information_or_options
=== RUN   TestGetWindowDimensions/app_status_present_with_information_but_without_options
=== RUN   TestGetWindowDimensions/app_status_present_with_very_long_information_but_without_options
--- PASS: TestGetWindowDimensions (0.01s)
    --- PASS: TestGetWindowDimensions/default (0.00s)
    --- PASS: TestGetWindowDimensions/stash_focused (0.00s)
    --- PASS: TestGetWindowDimensions/expandFocusedSidePanel (0.00s)
    --- PASS: TestGetWindowDimensions/expandSidePanelWeight (0.00s)
    --- PASS: TestGetWindowDimensions/0.5_SidePanelWidth (0.00s)
    --- PASS: TestGetWindowDimensions/0.8_SidePanelWidth (0.00s)
    --- PASS: TestGetWindowDimensions/half_screen_mode,_enlargedSideViewLocation_left (0.00s)
    --- PASS: TestGetWindowDimensions/half_screen_mode,_enlargedSideViewLocation_top (0.00s)
    --- PASS: TestGetWindowDimensions/portrait_auto_mode,_enabled (0.00s)
    --- PASS: TestGetWindowDimensions/portrait_auto_mode,_disabled_because_width_is_too_large (0.00s)
    --- PASS: TestGetWindowDimensions/portrait_auto_mode,_disabled_because_height_is_too_small (0.00s)
    --- PASS: TestGetWindowDimensions/search_mode (0.00s)
    --- PASS: TestGetWindowDimensions/app_status_present (0.00s)
    --- PASS: TestGetWindowDimensions/information_present_without_options (0.00s)
    --- PASS: TestGetWindowDimensions/app_status_present_without_information_or_options (0.00s)
    --- PASS: TestGetWindowDimensions/app_status_present_with_information_but_without_options (0.00s)
    --- PASS: TestGetWindowDimensions/app_status_present_with_very_long_information_but_without_options (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/gui/controllers/helpers	0.016s
=== RUN   TestBuildTreeFromFiles
=== RUN   TestBuildTreeFromFiles/no_files
=== RUN   TestBuildTreeFromFiles/files_in_same_directory
=== RUN   TestBuildTreeFromFiles/files_in_same_directory,_not_root_item
=== RUN   TestBuildTreeFromFiles/paths_that_can_be_compressed
=== RUN   TestBuildTreeFromFiles/paths_that_can_be_compressed,_no_root_item
=== RUN   TestBuildTreeFromFiles/paths_that_can_be_sorted
=== RUN   TestBuildTreeFromFiles/paths_that_can_be_sorted_including_a_merge_conflict_file
--- PASS: TestBuildTreeFromFiles (0.00s)
    --- PASS: TestBuildTreeFromFiles/no_files (0.00s)
    --- PASS: TestBuildTreeFromFiles/files_in_same_directory (0.00s)
    --- PASS: TestBuildTreeFromFiles/files_in_same_directory,_not_root_item (0.00s)
    --- PASS: TestBuildTreeFromFiles/paths_that_can_be_compressed (0.00s)
    --- PASS: TestBuildTreeFromFiles/paths_that_can_be_compressed,_no_root_item (0.00s)
    --- PASS: TestBuildTreeFromFiles/paths_that_can_be_sorted (0.00s)
    --- PASS: TestBuildTreeFromFiles/paths_that_can_be_sorted_including_a_merge_conflict_file (0.00s)
=== RUN   TestBuildFlatTreeFromFiles
=== RUN   TestBuildFlatTreeFromFiles/no_files
=== RUN   TestBuildFlatTreeFromFiles/files_in_same_directory
=== RUN   TestBuildFlatTreeFromFiles/files_in_same_directory,_not_root_item
=== RUN   TestBuildFlatTreeFromFiles/paths_that_can_be_compressed
=== RUN   TestBuildFlatTreeFromFiles/paths_that_can_be_compressed,_no_root_item
=== RUN   TestBuildFlatTreeFromFiles/paths_that_can_be_sorted
=== RUN   TestBuildFlatTreeFromFiles/tracked,_untracked,_and_conflicted_files
--- PASS: TestBuildFlatTreeFromFiles (0.00s)
    --- PASS: TestBuildFlatTreeFromFiles/no_files (0.00s)
    --- PASS: TestBuildFlatTreeFromFiles/files_in_same_directory (0.00s)
    --- PASS: TestBuildFlatTreeFromFiles/files_in_same_directory,_not_root_item (0.00s)
    --- PASS: TestBuildFlatTreeFromFiles/paths_that_can_be_compressed (0.00s)
    --- PASS: TestBuildFlatTreeFromFiles/paths_that_can_be_compressed,_no_root_item (0.00s)
    --- PASS: TestBuildFlatTreeFromFiles/paths_that_can_be_sorted (0.00s)
    --- PASS: TestBuildFlatTreeFromFiles/tracked,_untracked,_and_conflicted_files (0.00s)
=== RUN   TestBuildTreeFromCommitFiles
=== RUN   TestBuildTreeFromCommitFiles/no_files
=== RUN   TestBuildTreeFromCommitFiles/files_in_same_directory
=== RUN   TestBuildTreeFromCommitFiles/files_in_same_directory,_not_root_item
=== RUN   TestBuildTreeFromCommitFiles/paths_that_can_be_compressed
=== RUN   TestBuildTreeFromCommitFiles/paths_that_can_be_compressed,_no_root_item
=== RUN   TestBuildTreeFromCommitFiles/paths_that_can_be_sorted
--- PASS: TestBuildTreeFromCommitFiles (0.00s)
    --- PASS: TestBuildTreeFromCommitFiles/no_files (0.00s)
    --- PASS: TestBuildTreeFromCommitFiles/files_in_same_directory (0.00s)
    --- PASS: TestBuildTreeFromCommitFiles/files_in_same_directory,_not_root_item (0.00s)
    --- PASS: TestBuildTreeFromCommitFiles/paths_that_can_be_compressed (0.00s)
    --- PASS: TestBuildTreeFromCommitFiles/paths_that_can_be_compressed,_no_root_item (0.00s)
    --- PASS: TestBuildTreeFromCommitFiles/paths_that_can_be_sorted (0.00s)
=== RUN   TestBuildFlatTreeFromCommitFiles
=== RUN   TestBuildFlatTreeFromCommitFiles/no_files
=== RUN   TestBuildFlatTreeFromCommitFiles/files_in_same_directory
=== RUN   TestBuildFlatTreeFromCommitFiles/files_in_same_directory,_not_root_item
=== RUN   TestBuildFlatTreeFromCommitFiles/paths_that_can_be_compressed
=== RUN   TestBuildFlatTreeFromCommitFiles/paths_that_can_be_sorted
--- PASS: TestBuildFlatTreeFromCommitFiles (0.00s)
    --- PASS: TestBuildFlatTreeFromCommitFiles/no_files (0.00s)
    --- PASS: TestBuildFlatTreeFromCommitFiles/files_in_same_directory (0.00s)
    --- PASS: TestBuildFlatTreeFromCommitFiles/files_in_same_directory,_not_root_item (0.00s)
    --- PASS: TestBuildFlatTreeFromCommitFiles/paths_that_can_be_compressed (0.00s)
    --- PASS: TestBuildFlatTreeFromCommitFiles/paths_that_can_be_sorted (0.00s)
=== RUN   TestCompress
=== RUN   TestCompress/nil_node
=== RUN   TestCompress/leaf_node
=== RUN   TestCompress/big_example
--- PASS: TestCompress (0.00s)
    --- PASS: TestCompress/nil_node (0.00s)
    --- PASS: TestCompress/leaf_node (0.00s)
    --- PASS: TestCompress/big_example (0.00s)
=== RUN   TestGetFile
=== RUN   TestGetFile/valid_case
=== RUN   TestGetFile/not_found
--- PASS: TestGetFile (0.00s)
    --- PASS: TestGetFile/valid_case (0.00s)
    --- PASS: TestGetFile/not_found (0.00s)
=== RUN   TestFilterAction
=== RUN   TestFilterAction/filter_files_with_unstaged_changes
=== RUN   TestFilterAction/filter_files_with_staged_changes
=== RUN   TestFilterAction/filter_files_that_are_tracked
=== RUN   TestFilterAction/filter_all_files
=== RUN   TestFilterAction/filter_conflicted_files
--- PASS: TestFilterAction (0.00s)
    --- PASS: TestFilterAction/filter_files_with_unstaged_changes (0.00s)
    --- PASS: TestFilterAction/filter_files_with_staged_changes (0.00s)
    --- PASS: TestFilterAction/filter_files_that_are_tracked (0.00s)
    --- PASS: TestFilterAction/filter_all_files (0.00s)
    --- PASS: TestFilterAction/filter_conflicted_files (0.00s)
=== RUN   TestFileTreeSortOrderConfig
=== RUN   TestFileTreeSortOrderConfig/mixed/caseSensitive=true
=== RUN   TestFileTreeSortOrderConfig/mixed/caseSensitive=false
=== RUN   TestFileTreeSortOrderConfig/filesFirst/caseSensitive=true
=== RUN   TestFileTreeSortOrderConfig/filesFirst/caseSensitive=false
=== RUN   TestFileTreeSortOrderConfig/foldersFirst/caseSensitive=true
=== RUN   TestFileTreeSortOrderConfig/foldersFirst/caseSensitive=false
--- PASS: TestFileTreeSortOrderConfig (0.00s)
    --- PASS: TestFileTreeSortOrderConfig/mixed/caseSensitive=true (0.00s)
    --- PASS: TestFileTreeSortOrderConfig/mixed/caseSensitive=false (0.00s)
    --- PASS: TestFileTreeSortOrderConfig/filesFirst/caseSensitive=true (0.00s)
    --- PASS: TestFileTreeSortOrderConfig/filesFirst/caseSensitive=false (0.00s)
    --- PASS: TestFileTreeSortOrderConfig/foldersFirst/caseSensitive=true (0.00s)
    --- PASS: TestFileTreeSortOrderConfig/foldersFirst/caseSensitive=false (0.00s)
=== RUN   TestGetVisualDepthAtIndex
=== RUN   TestGetVisualDepthAtIndex/flat_files_with_root_item
=== RUN   TestGetVisualDepthAtIndex/flat_files_without_root_item
=== RUN   TestGetVisualDepthAtIndex/nested_directories_with_root_item
=== RUN   TestGetVisualDepthAtIndex/compressed_paths_with_root_item
=== RUN   TestGetVisualDepthAtIndex/compressed_paths_without_root_item
=== RUN   TestGetVisualDepthAtIndex/collapsed_directory_hides_children
=== RUN   TestGetVisualDepthAtIndex/out_of_range_returns_-1
--- PASS: TestGetVisualDepthAtIndex (0.00s)
    --- PASS: TestGetVisualDepthAtIndex/flat_files_with_root_item (0.00s)
    --- PASS: TestGetVisualDepthAtIndex/flat_files_without_root_item (0.00s)
    --- PASS: TestGetVisualDepthAtIndex/nested_directories_with_root_item (0.00s)
    --- PASS: TestGetVisualDepthAtIndex/compressed_paths_with_root_item (0.00s)
    --- PASS: TestGetVisualDepthAtIndex/compressed_paths_without_root_item (0.00s)
    --- PASS: TestGetVisualDepthAtIndex/collapsed_directory_hides_children (0.00s)
    --- PASS: TestGetVisualDepthAtIndex/out_of_range_returns_-1 (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/gui/filetree	0.004s
?   	github.com/jesseduffield/lazygit/pkg/gui/keybindings	[no test files]
=== RUN   TestDetermineLineType
--- PASS: TestDetermineLineType (0.00s)
=== RUN   TestFindConflictsAux
--- PASS: TestFindConflictsAux (0.00s)
=== RUN   TestFindConflicts
=== RUN   TestFindConflicts/empty
=== RUN   TestFindConflicts/various_conflicts
--- PASS: TestFindConflicts (0.00s)
    --- PASS: TestFindConflicts/empty (0.00s)
    --- PASS: TestFindConflicts/various_conflicts (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/gui/mergeconflicts	0.004s
?   	github.com/jesseduffield/lazygit/pkg/gui/modes/cherrypicking	[no test files]
?   	github.com/jesseduffield/lazygit/pkg/gui/modes/diffing	[no test files]
?   	github.com/jesseduffield/lazygit/pkg/gui/modes/filtering	[no test files]
?   	github.com/jesseduffield/lazygit/pkg/gui/modes/marked_base_commit	[no test files]
=== RUN   TestNewOrigin
=== RUN   TestNewOrigin/selection_above_scroll_window,_enough_room_to_put_it_in_the_middle
=== RUN   TestNewOrigin/selection_above_scroll_window,_not_enough_room_to_put_it_in_the_middle
=== RUN   TestNewOrigin/selection_below_scroll_window,_enough_room_to_put_it_in_the_middle
=== RUN   TestNewOrigin/selection_below_scroll_window,_not_enough_room_to_put_it_in_the_middle
=== RUN   TestNewOrigin/selection_within_scroll_window
=== RUN   TestNewOrigin/range_ending_below_scroll_window_with_selection_at_end_of_range
=== RUN   TestNewOrigin/range_ending_below_scroll_window_with_selection_at_beginning_of_range
=== RUN   TestNewOrigin/range_starting_above_scroll_window_with_selection_at_beginning_of_range
=== RUN   TestNewOrigin/hunk_extending_beyond_both_bounds_of_scroll_window
--- PASS: TestNewOrigin (0.00s)
    --- PASS: TestNewOrigin/selection_above_scroll_window,_enough_room_to_put_it_in_the_middle (0.00s)
    --- PASS: TestNewOrigin/selection_above_scroll_window,_not_enough_room_to_put_it_in_the_middle (0.00s)
    --- PASS: TestNewOrigin/selection_below_scroll_window,_enough_room_to_put_it_in_the_middle (0.00s)
    --- PASS: TestNewOrigin/selection_below_scroll_window,_not_enough_room_to_put_it_in_the_middle (0.00s)
    --- PASS: TestNewOrigin/selection_within_scroll_window (0.00s)
    --- PASS: TestNewOrigin/range_ending_below_scroll_window_with_selection_at_end_of_range (0.00s)
    --- PASS: TestNewOrigin/range_ending_below_scroll_window_with_selection_at_beginning_of_range (0.00s)
    --- PASS: TestNewOrigin/range_starting_above_scroll_window_with_selection_at_beginning_of_range (0.00s)
    --- PASS: TestNewOrigin/hunk_extending_beyond_both_bounds_of_scroll_window (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/gui/patch_exploring	0.004s
?   	github.com/jesseduffield/lazygit/pkg/gui/popup	[no test files]
=== RUN   Test_getBranchDisplayStrings
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_0
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_1
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_2
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_3
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_4
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_5
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_6
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_7
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_8
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_9
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_10
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_11
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_12
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_13
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_14
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_15
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_16
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_17
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_18
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_19
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_20
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_21
=== RUN   Test_getBranchDisplayStrings/getBranchDisplayStrings_22
--- PASS: Test_getBranchDisplayStrings (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_0 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_1 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_2 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_3 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_4 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_5 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_6 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_7 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_8 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_9 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_10 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_11 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_12 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_13 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_14 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_15 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_16 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_17 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_18 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_19 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_20 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_21 (0.00s)
    --- PASS: Test_getBranchDisplayStrings/getBranchDisplayStrings_22 (0.00s)
=== RUN   TestGetCommitListDisplayStrings
=== RUN   TestGetCommitListDisplayStrings/no_commits
    commits_test.go:576: 
=== RUN   TestGetCommitListDisplayStrings/some_commits
    commits_test.go:576: 
        hash1 commit1
        hash2 commit2
=== RUN   TestGetCommitListDisplayStrings/commit_with_tags
    commits_test.go:576: 
        hash1 tag1 tag2 commit1
        hash2 commit2
=== RUN   TestGetCommitListDisplayStrings/show_local_branch_head,_except_the_current_branch,_main_branches,_or_merged_branches
    commits_test.go:576: 
        hash1 commit1
        hash2 * commit2
        hash3 commit3
        hash4 commit4
=== RUN   TestGetCommitListDisplayStrings/show_local_branch_head_for_head_commit_if_updateRefs_is_on
    commits_test.go:576: 
        hash1 * commit1
        hash2 commit2
=== RUN   TestGetCommitListDisplayStrings/don't_show_local_branch_head_for_head_commit_if_updateRefs_is_off
    commits_test.go:576: 
        hash1 commit1
        hash2 commit2
=== RUN   TestGetCommitListDisplayStrings/show_local_branch_head_and_tag_if_both_exist
    commits_test.go:576: 
        hash1 commit1
        hash2 * some-tag commit2
        hash3 commit3
=== RUN   TestGetCommitListDisplayStrings/showing_graph
    commits_test.go:576: 
        hash1 ⏣─╮ commit1
        hash2 ◯ │ commit2
        hash3 ◯─╯ commit3
        hash4 ◯ commit4
        hash5 ◯ commit5
=== RUN   TestGetCommitListDisplayStrings/showing_graph,_including_rebase_commits
    commits_test.go:576: 
        hash1 pick commit1
        hash2 pick commit2
        hash3      ◯ commit3
        hash4      ◯ commit4
        hash5      ◯ commit5
=== RUN   TestGetCommitListDisplayStrings/showing_graph,_including_rebase_commits,_with_offset
    commits_test.go:576: 
        hash2 pick commit2
        hash3      ◯ commit3
        hash4      ◯ commit4
        hash5      ◯ commit5
=== RUN   TestGetCommitListDisplayStrings/startIdx_is_past_TODO_commits
    commits_test.go:576: 
        hash4 ◯ commit4
        hash5 ◯ commit5
=== RUN   TestGetCommitListDisplayStrings/only_showing_TODO_commits
    commits_test.go:576: 
        hash1 pick commit1
        hash2 pick commit2
=== RUN   TestGetCommitListDisplayStrings/no_TODO_commits,_towards_bottom
    commits_test.go:576: 
        hash5 ◯ commit5
=== RUN   TestGetCommitListDisplayStrings/only_TODO_commits_except_last
    commits_test.go:576: 
        hash1 pick commit1
        hash2 pick commit2
=== RUN   TestGetCommitListDisplayStrings/graph_in_divergence_view_-_all_commits_visible
    commits_test.go:576: 
        ↓ hash1r ◯ commit1
        ↓ hash2r ⏣─╮ commit2
        ↓ hash3r ◯ │ commit3
        ↑ hash1l ◯ commit1
        ↑ hash2l ⏣─╮ commit2
        ↑ hash3l ◯ │ commit3
        ↑ hash4l ◯─╯ commit4
        ↑ hash5l ◯ commit5
=== RUN   TestGetCommitListDisplayStrings/graph_in_divergence_view_-_not_all_remote_commits_visible
    commits_test.go:576: 
        ↓ hash3r ◯ │ commit3
        ↑ hash1l ◯ commit1
        ↑ hash2l ⏣─╮ commit2
        ↑ hash3l ◯ │ commit3
        ↑ hash4l ◯─╯ commit4
        ↑ hash5l ◯ commit5
=== RUN   TestGetCommitListDisplayStrings/graph_in_divergence_view_-_not_all_local_commits
    commits_test.go:576: 
        ↓ hash1r ◯ commit1
        ↓ hash2r ⏣─╮ commit2
        ↓ hash3r ◯ │ commit3
        ↑ hash1l ◯ commit1
        ↑ hash2l ⏣─╮ commit2
=== RUN   TestGetCommitListDisplayStrings/graph_in_divergence_view_-_no_remote_commits_visible
    commits_test.go:576: 
        ↑ hash2l ⏣─╮ commit2
        ↑ hash3l ◯ │ commit3
        ↑ hash4l ◯─╯ commit4
        ↑ hash5l ◯ commit5
=== RUN   TestGetCommitListDisplayStrings/graph_in_divergence_view_-_no_local_commits_visible
    commits_test.go:576: 
        ↓ hash1r ◯ commit1
        ↓ hash2r ⏣─╮ commit2
=== RUN   TestGetCommitListDisplayStrings/graph_in_divergence_view_-_no_remote_commits_present
    commits_test.go:576: 
        ↑ hash1l ◯ commit1
        ↑ hash2l ⏣─╮ commit2
        ↑ hash3l ◯ │ commit3
        ↑ hash4l ◯─╯ commit4
        ↑ hash5l ◯ commit5
=== RUN   TestGetCommitListDisplayStrings/graph_in_divergence_view_-_no_local_commits_present
    commits_test.go:576: 
        ↓ hash1r ◯ commit1
        ↓ hash2r ⏣─╮ commit2
        ↓ hash3r ◯ │ commit3
=== RUN   TestGetCommitListDisplayStrings/custom_time_format
    commits_test.go:576: 
        hash1 2:03AM     Jesse Duffield    commit1
        hash2 2019-12-20 Jesse Duffield    commit2
--- PASS: TestGetCommitListDisplayStrings (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/no_commits (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/some_commits (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/commit_with_tags (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/show_local_branch_head,_except_the_current_branch,_main_branches,_or_merged_branches (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/show_local_branch_head_for_head_commit_if_updateRefs_is_on (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/don't_show_local_branch_head_for_head_commit_if_updateRefs_is_off (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/show_local_branch_head_and_tag_if_both_exist (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/showing_graph (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/showing_graph,_including_rebase_commits (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/showing_graph,_including_rebase_commits,_with_offset (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/startIdx_is_past_TODO_commits (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/only_showing_TODO_commits (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/no_TODO_commits,_towards_bottom (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/only_TODO_commits_except_last (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/graph_in_divergence_view_-_all_commits_visible (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/graph_in_divergence_view_-_not_all_remote_commits_visible (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/graph_in_divergence_view_-_not_all_local_commits (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/graph_in_divergence_view_-_no_remote_commits_visible (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/graph_in_divergence_view_-_no_local_commits_visible (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/graph_in_divergence_view_-_no_remote_commits_present (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/graph_in_divergence_view_-_no_local_commits_present (0.00s)
    --- PASS: TestGetCommitListDisplayStrings/custom_time_format (0.00s)
=== RUN   TestRenderFileTree
=== RUN   TestRenderFileTree/nil_node
=== RUN   TestRenderFileTree/leaf_node
=== RUN   TestRenderFileTree/numstat
=== RUN   TestRenderFileTree/big_example
=== RUN   TestRenderFileTree/big_example_without_root_item
--- PASS: TestRenderFileTree (0.00s)
    --- PASS: TestRenderFileTree/nil_node (0.00s)
    --- PASS: TestRenderFileTree/leaf_node (0.00s)
    --- PASS: TestRenderFileTree/numstat (0.00s)
    --- PASS: TestRenderFileTree/big_example (0.00s)
    --- PASS: TestRenderFileTree/big_example_without_root_item (0.00s)
=== RUN   TestRenderCommitFileTree
=== RUN   TestRenderCommitFileTree/nil_node
=== RUN   TestRenderCommitFileTree/leaf_node
=== RUN   TestRenderCommitFileTree/big_example
=== RUN   TestRenderCommitFileTree/big_example_without_root_item
--- PASS: TestRenderCommitFileTree (0.00s)
    --- PASS: TestRenderCommitFileTree/nil_node (0.00s)
    --- PASS: TestRenderCommitFileTree/leaf_node (0.00s)
    --- PASS: TestRenderCommitFileTree/big_example (0.00s)
    --- PASS: TestRenderCommitFileTree/big_example_without_root_item (0.00s)
=== RUN   Test_GetWorktreeDisplayString
=== RUN   Test_GetWorktreeDisplayString/Current_worktree_on_a_branch
=== RUN   Test_GetWorktreeDisplayString/Non-current_worktree_on_a_branch
=== RUN   Test_GetWorktreeDisplayString/Main_worktree_on_a_branch
=== RUN   Test_GetWorktreeDisplayString/Detached_HEAD_worktree
=== RUN   Test_GetWorktreeDisplayString/Detached_HEAD_on_main_worktree
=== RUN   Test_GetWorktreeDisplayString/Worktree_with_branch_takes_precedence_over_head
=== RUN   Test_GetWorktreeDisplayString/Missing_worktree
=== RUN   Test_GetWorktreeDisplayString/Worktree_with_no_branch_and_no_head
=== RUN   Test_GetWorktreeDisplayString/Main_worktree_with_no_branch_and_no_head
--- PASS: Test_GetWorktreeDisplayString (0.00s)
    --- PASS: Test_GetWorktreeDisplayString/Current_worktree_on_a_branch (0.00s)
    --- PASS: Test_GetWorktreeDisplayString/Non-current_worktree_on_a_branch (0.00s)
    --- PASS: Test_GetWorktreeDisplayString/Main_worktree_on_a_branch (0.00s)
    --- PASS: Test_GetWorktreeDisplayString/Detached_HEAD_worktree (0.00s)
    --- PASS: Test_GetWorktreeDisplayString/Detached_HEAD_on_main_worktree (0.00s)
    --- PASS: Test_GetWorktreeDisplayString/Worktree_with_branch_takes_precedence_over_head (0.00s)
    --- PASS: Test_GetWorktreeDisplayString/Missing_worktree (0.00s)
    --- PASS: Test_GetWorktreeDisplayString/Worktree_with_no_branch_and_no_head (0.00s)
    --- PASS: Test_GetWorktreeDisplayString/Main_worktree_with_no_branch_and_no_head (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/gui/presentation	0.008s
=== RUN   TestGetInitials
--- PASS: TestGetInitials (0.00s)
=== RUN   TestAuthorWithLength
--- PASS: TestAuthorWithLength (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/gui/presentation/authors	0.003s
=== RUN   TestRenderCommitGraph
=== RUN   TestRenderCommitGraph/with_some_merges
    graph_test.go:234: 
        expected: 
        1 ◯
        2 ◯
        3 ◯
        4 ⏣─╮
        7 │ ◯
        5 ◯─╯
        8 ◯
        9 ⏣─╮
        B │ ◯
        D │ ◯
        A ◯ │
        E ◯ │
        F ◯ │
        D ◯─╯
        
    graph_test.go:241: 
        actual: 
        1 ◯
        2 ◯
        3 ◯
        4 ⏣─╮
        7 │ ◯
        5 ◯─╯
        8 ◯
        9 ⏣─╮
        B │ ◯
        D │ ◯
        A ◯ │
        E ◯ │
        F ◯ │
        D ◯─╯
        
=== RUN   TestRenderCommitGraph/with_a_path_that_has_room_to_move_to_the_left
    graph_test.go:234: 
        expected: 
        1 ◯
        2 ⏣─╮
        4 │ ⏣─╮
        3 ◯─╯ │
        5 ◯───╯
        6 ◯
        
    graph_test.go:241: 
        actual: 
        1 ◯
        2 ⏣─╮
        4 │ ⏣─╮
        3 ◯─╯ │
        5 ◯───╯
        6 ◯
        
=== RUN   TestRenderCommitGraph/with_a_new_commit
    graph_test.go:234: 
        expected: 
        1 ◯
        2 ⏣─╮
        4 │ ⏣─╮
        Z │ │ │ ◯
        3 ◯─╯ │ │
        5 ◯───╯ │
        6 ◯ ╭───╯
        
    graph_test.go:241: 
        actual: 
        1 ◯
        2 ⏣─╮
        4 │ ⏣─╮
        Z │ │ │ ◯
        3 ◯─╯ │ │
        5 ◯───╯ │
        6 ◯ ╭───╯
        
=== RUN   TestRenderCommitGraph/with_a_path_that_has_room_to_move_to_the_left_and_continues
    graph_test.go:234: 
        expected: 
        1 ◯
        2 ⏣─╮
        3 ⏣─│─╮
        5 ⏣─│─│─╮
        4 │ ◯─╯ │
        7 ◯─╯ ╭─╯
        
    graph_test.go:241: 
        actual: 
        1 ◯
        2 ⏣─╮
        3 ⏣─│─╮
        5 ⏣─│─│─╮
        4 │ ◯─╯ │
        7 ◯─╯ ╭─╯
        
=== RUN   TestRenderCommitGraph/with_a_path_that_has_room_to_move_to_the_left_and_continues#01
    graph_test.go:234: 
        expected: 
        1 ◯
        2 ⏣─╮
        3 ⏣─│─╮
        5 ⏣─│─│─╮
        7 ⏣─│─│─│─╮
        4 ◯─┴─╯ │ │
        B ◯ ╭───╯ │
        
    graph_test.go:241: 
        actual: 
        1 ◯
        2 ⏣─╮
        3 ⏣─│─╮
        5 ⏣─│─│─╮
        7 ⏣─│─│─│─╮
        4 ◯─┴─╯ │ │
        B ◯ ╭───╯ │
        
=== RUN   TestRenderCommitGraph/with_a_path_that_has_room_to_move_to_the_left_and_continues#02
    graph_test.go:234: 
        expected: 
        1 ⏣─╮
        3 │ ◯
        2 ⏣─│
        4 ⏣─│─╮
        6 ◯ │ │
        
    graph_test.go:241: 
        actual: 
        1 ⏣─╮
        3 │ ◯
        2 ⏣─│
        4 ⏣─│─╮
        6 ◯ │ │
        
=== RUN   TestRenderCommitGraph/new_merge_path_fills_gap_before_continuing_path_on_right
    graph_test.go:234: 
        expected: 
        1 ⏣─┬─┬─╮
        4 │ │ ◯ │
        2 ◯─│─╯ │
        A ⏣─│─╮ │
        B │ │ ◯ │
        
    graph_test.go:241: 
        actual: 
        1 ⏣─┬─┬─╮
        4 │ │ ◯ │
        2 ◯─│─╯ │
        A ⏣─│─╮ │
        B │ │ ◯ │
        
=== RUN   TestRenderCommitGraph/with_a_path_that_has_room_to_move_to_the_left_and_continues#03
    graph_test.go:234: 
        expected: 
        1 ◯
        2 ⏣─╮
        3 ⏣─│─╮
        5 ⏣─│─│─╮
        7 ⏣─│─│─│─╮
        4 ◯─┴─╯ │ │
        B ◯ ╭───╯ │
        C ◯ │ ╭───╯
        
    graph_test.go:241: 
        actual: 
        1 ◯
        2 ⏣─╮
        3 ⏣─│─╮
        5 ⏣─│─│─╮
        7 ⏣─│─│─│─╮
        4 ◯─┴─╯ │ │
        B ◯ ╭───╯ │
        C ◯ │ ╭───╯
        
=== RUN   TestRenderCommitGraph/with_a_path_that_has_room_to_move_to_the_left_and_continues#04
    graph_test.go:234: 
        expected: 
        1 ◯
        2 ⏣─╮
        3 ⏣─│─╮
        5 ⏣─│─│─╮
        7 ⏣─│─│─│─╮
        8 ⏣─│─│─│─│─╮
        4 ◯─┴─╯ │ │ │
        B ◯ ╭───╯ │ │
        C ◯ │ ╭───╯ │
        D ◯ │ │ ╭───╯
        
    graph_test.go:241: 
        actual: 
        1 ◯
        2 ⏣─╮
        3 ⏣─│─╮
        5 ⏣─│─│─╮
        7 ⏣─│─│─│─╮
        8 ⏣─│─│─│─│─╮
        4 ◯─┴─╯ │ │ │
        B ◯ ╭───╯ │ │
        C ◯ │ ╭───╯ │
        D ◯ │ │ ╭───╯
        
--- PASS: TestRenderCommitGraph (0.00s)
    --- PASS: TestRenderCommitGraph/with_some_merges (0.00s)
    --- PASS: TestRenderCommitGraph/with_a_path_that_has_room_to_move_to_the_left (0.00s)
    --- PASS: TestRenderCommitGraph/with_a_new_commit (0.00s)
    --- PASS: TestRenderCommitGraph/with_a_path_that_has_room_to_move_to_the_left_and_continues (0.00s)
    --- PASS: TestRenderCommitGraph/with_a_path_that_has_room_to_move_to_the_left_and_continues#01 (0.00s)
    --- PASS: TestRenderCommitGraph/with_a_path_that_has_room_to_move_to_the_left_and_continues#02 (0.00s)
    --- PASS: TestRenderCommitGraph/new_merge_path_fills_gap_before_continuing_path_on_right (0.00s)
    --- PASS: TestRenderCommitGraph/with_a_path_that_has_room_to_move_to_the_left_and_continues#03 (0.00s)
    --- PASS: TestRenderCommitGraph/with_a_path_that_has_room_to_move_to_the_left_and_continues#04 (0.00s)
=== RUN   TestRenderPipeSet
=== RUN   TestRenderPipeSet/single_cell
    graph_test.go:466: actual cells:
    graph_test.go:467: [32m◯[0m 
    graph_test.go:476: expected cells:
    graph_test.go:477: [32m◯[0m 
=== RUN   TestRenderPipeSet/single_cell,_selected
    graph_test.go:466: actual cells:
    graph_test.go:467: [97;1m◯[0m 
    graph_test.go:476: expected cells:
    graph_test.go:477: [97;1m◯[0m 
=== RUN   TestRenderPipeSet/terminating_hook_and_starting_hook,_selected
    graph_test.go:466: actual cells:
    graph_test.go:467: [97;1m⏣[0m[97;1m─[0m[97;1m╮[0m 
    graph_test.go:476: expected cells:
    graph_test.go:477: [97;1m⏣[0m[97;1m─[0m[97;1m╮[0m 
=== RUN   TestRenderPipeSet/terminating_hook_and_starting_hook,_prioritise_the_terminating_one
    graph_test.go:466: actual cells:
    graph_test.go:467: [32m⏣[0m[32m─[0m[35m│[0m 
    graph_test.go:476: expected cells:
    graph_test.go:477: [32m⏣[0m[32m─[0m[35m│[0m 
=== RUN   TestRenderPipeSet/starting_and_terminating_pipe_sharing_some_space
    graph_test.go:466: actual cells:
    graph_test.go:467: [33m⏣[0m[33m─[0m[35m│[0m[33m─[0m[33m┬[0m[32m─[0m[32m╯[0m 
    graph_test.go:476: expected cells:
    graph_test.go:477: [33m⏣[0m[33m─[0m[35m│[0m[33m─[0m[33m┬[0m[32m─[0m[32m╯[0m 
=== RUN   TestRenderPipeSet/starting_and_terminating_pipe_sharing_some_space,_with_selection
    graph_test.go:466: actual cells:
    graph_test.go:467: [97;1m⏣[0m[97;1m─[0m[97;1m─[0m[97;1m─[0m[97;1m╮[0m [32m╯[0m 
    graph_test.go:476: expected cells:
    graph_test.go:477: [97;1m⏣[0m[97;1m─[0m[97;1m─[0m[97;1m─[0m[97;1m╮[0m [32m╯[0m 
=== RUN   TestRenderPipeSet/many_terminating_pipes
    graph_test.go:466: actual cells:
    graph_test.go:467: [33m◯[0m[35m─[0m[35m┴[0m[32m─[0m[32m╯[0m 
    graph_test.go:476: expected cells:
    graph_test.go:477: [33m◯[0m[35m─[0m[35m┴[0m[32m─[0m[32m╯[0m 
=== RUN   TestRenderPipeSet/starting_pipe_passing_through
    graph_test.go:466: actual cells:
    graph_test.go:467: [33m⏣[0m[33m─[0m[35m│[0m[33m─[0m[32m│[0m[33m─[0m[33m╮[0m 
    graph_test.go:476: expected cells:
    graph_test.go:477: [33m⏣[0m[33m─[0m[35m│[0m[33m─[0m[32m│[0m[33m─[0m[33m╮[0m 
=== RUN   TestRenderPipeSet/starting_and_terminating_path_crossing_continuing_path
    graph_test.go:466: actual cells:
    graph_test.go:467: [33m⏣[0m[33m─[0m[32m│[0m[35m─[0m[35m╯[0m 
    graph_test.go:476: expected cells:
    graph_test.go:477: [33m⏣[0m[33m─[0m[32m│[0m[35m─[0m[35m╯[0m 
=== RUN   TestRenderPipeSet/another_clash_of_starting_and_terminating_paths
    graph_test.go:466: actual cells:
    graph_test.go:467: [33m⏣[0m[33m─[0m[33m┬[0m[35m─[0m[32m│[0m[35m─[0m[35m╯[0m 
    graph_test.go:476: expected cells:
    graph_test.go:477: [33m⏣[0m[33m─[0m[33m┬[0m[35m─[0m[32m│[0m[35m─[0m[35m╯[0m 
=== RUN   TestRenderPipeSet/commit_whose_previous_commit_is_selected
    graph_test.go:466: actual cells:
    graph_test.go:467: [33m◯[0m 
    graph_test.go:476: expected cells:
    graph_test.go:477: [33m◯[0m 
=== RUN   TestRenderPipeSet/commit_whose_previous_commit_is_selected_and_is_a_merge_commit
    graph_test.go:466: actual cells:
    graph_test.go:467: [97;1m◯[0m [97;1m│[0m 
    graph_test.go:476: expected cells:
    graph_test.go:477: [97;1m◯[0m [97;1m│[0m 
=== RUN   TestRenderPipeSet/commit_whose_previous_commit_is_selected_and_is_a_merge_commit,_with_continuing_pipe_inbetween
    graph_test.go:466: actual cells:
    graph_test.go:467: [97;1m◯[0m [32m│[0m [97;1m│[0m 
    graph_test.go:476: expected cells:
    graph_test.go:477: [97;1m◯[0m [32m│[0m [97;1m│[0m 
=== RUN   TestRenderPipeSet/when_previous_commit_is_selected,_not_a_merge_commit,_and_spawns_a_continuing_pipe
    graph_test.go:466: actual cells:
    graph_test.go:467: [97;1m⏣[0m[97;1m─[0m[97;1m╯[0m 
    graph_test.go:476: expected cells:
    graph_test.go:477: [97;1m⏣[0m[97;1m─[0m[97;1m╯[0m 
--- PASS: TestRenderPipeSet (0.00s)
    --- PASS: TestRenderPipeSet/single_cell (0.00s)
    --- PASS: TestRenderPipeSet/single_cell,_selected (0.00s)
    --- PASS: TestRenderPipeSet/terminating_hook_and_starting_hook,_selected (0.00s)
    --- PASS: TestRenderPipeSet/terminating_hook_and_starting_hook,_prioritise_the_terminating_one (0.00s)
    --- PASS: TestRenderPipeSet/starting_and_terminating_pipe_sharing_some_space (0.00s)
    --- PASS: TestRenderPipeSet/starting_and_terminating_pipe_sharing_some_space,_with_selection (0.00s)
    --- PASS: TestRenderPipeSet/many_terminating_pipes (0.00s)
    --- PASS: TestRenderPipeSet/starting_pipe_passing_through (0.00s)
    --- PASS: TestRenderPipeSet/starting_and_terminating_path_crossing_continuing_path (0.00s)
    --- PASS: TestRenderPipeSet/another_clash_of_starting_and_terminating_paths (0.00s)
    --- PASS: TestRenderPipeSet/commit_whose_previous_commit_is_selected (0.00s)
    --- PASS: TestRenderPipeSet/commit_whose_previous_commit_is_selected_and_is_a_merge_commit (0.00s)
    --- PASS: TestRenderPipeSet/commit_whose_previous_commit_is_selected_and_is_a_merge_commit,_with_continuing_pipe_inbetween (0.00s)
    --- PASS: TestRenderPipeSet/when_previous_commit_is_selected,_not_a_merge_commit,_and_spawns_a_continuing_pipe (0.00s)
=== RUN   TestGetNextPipes
    graph_test.go:545: expected cells:
    graph_test.go:546: [39m◯[0m 
    graph_test.go:547: actual cells:
    graph_test.go:548: [39m◯[0m 
    graph_test.go:545: expected cells:
    graph_test.go:546: [39m│[0m [39m◯[0m 
    graph_test.go:547: actual cells:
    graph_test.go:548: [39m│[0m [39m◯[0m 
    graph_test.go:545: expected cells:
    graph_test.go:546: [39m [0m [39m◯[0m 
    graph_test.go:547: actual cells:
    graph_test.go:548: [39m [0m [39m◯[0m 
--- PASS: TestGetNextPipes (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/gui/presentation/graph	0.006s
=== RUN   TestFileIcons
=== RUN   TestFileIcons/TestFileIcons
--- PASS: TestFileIcons (0.00s)
    --- PASS: TestFileIcons/TestFileIcons (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/gui/presentation/icons	0.004s
=== RUN   TestMenuGenerator
=== RUN   TestMenuGenerator/Extract_remote_branch_name
=== RUN   TestMenuGenerator/Multiple_named_groups_with_empty_labelFormat
=== RUN   TestMenuGenerator/Multiple_named_groups_with_group_ids
=== RUN   TestMenuGenerator/No_named_groups
=== RUN   TestMenuGenerator/No_filter
--- PASS: TestMenuGenerator (0.00s)
    --- PASS: TestMenuGenerator/Extract_remote_branch_name (0.00s)
    --- PASS: TestMenuGenerator/Multiple_named_groups_with_empty_labelFormat (0.00s)
    --- PASS: TestMenuGenerator/Multiple_named_groups_with_group_ids (0.00s)
    --- PASS: TestMenuGenerator/No_named_groups (0.00s)
    --- PASS: TestMenuGenerator/No_filter (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/gui/services/custom_commands	0.004s
?   	github.com/jesseduffield/lazygit/pkg/gui/status	[no test files]
=== RUN   TestMerge
=== RUN   TestMerge/no_color
=== RUN   TestMerge/only_fg_color
=== RUN   TestMerge/only_bg_color
=== RUN   TestMerge/fg_and_bg_color
=== RUN   TestMerge/single_attribute
=== RUN   TestMerge/multiple_attributes
=== RUN   TestMerge/multiple_attributes_and_colors
=== RUN   TestMerge/rgb_fg_color
=== RUN   TestMerge/rgb_fg_and_bg_color
=== RUN   TestMerge/rgb_fg_and_bg_color_with_opts
=== RUN   TestMerge/mix_color-16_(background)_with_rgb_(foreground)
=== RUN   TestMerge/mix_color-16_(foreground)_with_rgb_(background)
--- PASS: TestMerge (0.00s)
    --- PASS: TestMerge/no_color (0.00s)
    --- PASS: TestMerge/only_fg_color (0.00s)
    --- PASS: TestMerge/only_bg_color (0.00s)
    --- PASS: TestMerge/fg_and_bg_color (0.00s)
    --- PASS: TestMerge/single_attribute (0.00s)
    --- PASS: TestMerge/multiple_attributes (0.00s)
    --- PASS: TestMerge/multiple_attributes_and_colors (0.00s)
    --- PASS: TestMerge/rgb_fg_color (0.00s)
    --- PASS: TestMerge/rgb_fg_and_bg_color (0.00s)
    --- PASS: TestMerge/rgb_fg_and_bg_color_with_opts (0.00s)
    --- PASS: TestMerge/mix_color-16_(background)_with_rgb_(foreground) (0.00s)
    --- PASS: TestMerge/mix_color-16_(foreground)_with_rgb_(background) (0.00s)
=== RUN   TestTemplateFuncMapAddColors
=== RUN   TestTemplateFuncMapAddColors/normal_template
=== RUN   TestTemplateFuncMapAddColors/colored_string
=== RUN   TestTemplateFuncMapAddColors/string_with_decorator
=== RUN   TestTemplateFuncMapAddColors/string_with_color_and_decorator
=== RUN   TestTemplateFuncMapAddColors/multiple_string_with_different_colors
--- PASS: TestTemplateFuncMapAddColors (0.00s)
    --- PASS: TestTemplateFuncMapAddColors/normal_template (0.00s)
    --- PASS: TestTemplateFuncMapAddColors/colored_string (0.00s)
    --- PASS: TestTemplateFuncMapAddColors/string_with_decorator (0.00s)
    --- PASS: TestTemplateFuncMapAddColors/string_with_color_and_decorator (0.00s)
    --- PASS: TestTemplateFuncMapAddColors/multiple_string_with_different_colors (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/gui/style	0.004s
=== RUN   TestParseVersionNumber
=== RUN   TestParseVersionNumber/1.2.3
=== RUN   TestParseVersionNumber/v1.2.3
=== RUN   TestParseVersionNumber/12.34.56
=== RUN   TestParseVersionNumber/1.2
=== RUN   TestParseVersionNumber/1
=== RUN   TestParseVersionNumber/invalid
=== RUN   TestParseVersionNumber/junk_before_1.2.3
=== RUN   TestParseVersionNumber/1.2.3_junk_after
--- PASS: TestParseVersionNumber (0.00s)
    --- PASS: TestParseVersionNumber/1.2.3 (0.00s)
    --- PASS: TestParseVersionNumber/v1.2.3 (0.00s)
    --- PASS: TestParseVersionNumber/12.34.56 (0.00s)
    --- PASS: TestParseVersionNumber/1.2 (0.00s)
    --- PASS: TestParseVersionNumber/1 (0.00s)
    --- PASS: TestParseVersionNumber/invalid (0.00s)
    --- PASS: TestParseVersionNumber/junk_before_1.2.3 (0.00s)
    --- PASS: TestParseVersionNumber/1.2.3_junk_after (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/gui/types	0.003s
=== RUN   TestDetectLanguage
--- PASS: TestDetectLanguage (0.00s)
=== RUN   TestNewTranslationSetFromConfig
=== RUN   TestNewTranslationSetFromConfig/configLanguage_is_nl
=== RUN   TestNewTranslationSetFromConfig/configLanguage_is_an_unsupported_language
=== RUN   TestNewTranslationSetFromConfig/auto-detection_without_LANG_set
=== RUN   TestNewTranslationSetFromConfig/auto-detection_with_LANG_set_to_nl_NL
=== RUN   TestNewTranslationSetFromConfig/auto-detection_with_LANG_set_to_zh-CN
=== RUN   TestNewTranslationSetFromConfig/auto-detection_with_LANG_set_to_an_unsupported_language
--- PASS: TestNewTranslationSetFromConfig (0.00s)
    --- PASS: TestNewTranslationSetFromConfig/configLanguage_is_nl (0.00s)
    --- PASS: TestNewTranslationSetFromConfig/configLanguage_is_an_unsupported_language (0.00s)
    --- PASS: TestNewTranslationSetFromConfig/auto-detection_without_LANG_set (0.00s)
    --- PASS: TestNewTranslationSetFromConfig/auto-detection_with_LANG_set_to_nl_NL (0.00s)
    --- PASS: TestNewTranslationSetFromConfig/auto-detection_with_LANG_set_to_zh-CN (0.00s)
    --- PASS: TestNewTranslationSetFromConfig/auto-detection_with_LANG_set_to_an_unsupported_language (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/i18n	0.007s
?   	github.com/jesseduffield/lazygit/pkg/jsonschema	[no test files]
?   	github.com/jesseduffield/lazygit/pkg/logs	[no test files]
?   	github.com/jesseduffield/lazygit/pkg/logs/tail	[no test files]
=== RUN   TestSnake
--- PASS: TestSnake (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/snake	0.004s
=== RUN   TestAsyncHandler
setting to 2
--- PASS: TestAsyncHandler (0.00s)
=== RUN   TestNewCmdTaskInstantStop
--- PASS: TestNewCmdTaskInstantStop (0.00s)
=== RUN   TestNewCmdTask
--- PASS: TestNewCmdTask (0.10s)
=== RUN   TestNewCmdTaskRefresh
--- PASS: TestNewCmdTaskRefresh (0.60s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/tasks	0.706s
=== RUN   TestGetTextStyle
=== RUN   TestGetTextStyle/empty
=== RUN   TestGetTextStyle/named_color,_fg
=== RUN   TestGetTextStyle/named_color,_bg
=== RUN   TestGetTextStyle/hex_color,_fg
=== RUN   TestGetTextStyle/hex_color,_bg
--- PASS: TestGetTextStyle (0.00s)
    --- PASS: TestGetTextStyle/empty (0.00s)
    --- PASS: TestGetTextStyle/named_color,_fg (0.00s)
    --- PASS: TestGetTextStyle/named_color,_bg (0.00s)
    --- PASS: TestGetTextStyle/hex_color,_fg (0.00s)
    --- PASS: TestGetTextStyle/hex_color,_bg (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/theme	0.004s
?   	github.com/jesseduffield/lazygit/pkg/updates	[no test files]
=== RUN   TestDecolorise
--- PASS: TestDecolorise (0.00s)
=== RUN   TestFormatSecondsAgo
=== RUN   TestFormatSecondsAgo/zero
=== RUN   TestFormatSecondsAgo/one_second
=== RUN   TestFormatSecondsAgo/almost_a_minute
=== RUN   TestFormatSecondsAgo/one_minute
=== RUN   TestFormatSecondsAgo/one_minute_and_one_second
=== RUN   TestFormatSecondsAgo/almost_one_hour
=== RUN   TestFormatSecondsAgo/one_hour
=== RUN   TestFormatSecondsAgo/almost_one_day
=== RUN   TestFormatSecondsAgo/one_day
=== RUN   TestFormatSecondsAgo/almost_a_week
=== RUN   TestFormatSecondsAgo/one_week
=== RUN   TestFormatSecondsAgo/six_months
=== RUN   TestFormatSecondsAgo/almost_one_year
=== RUN   TestFormatSecondsAgo/one_year
=== RUN   TestFormatSecondsAgo/50_years
--- PASS: TestFormatSecondsAgo (0.00s)
    --- PASS: TestFormatSecondsAgo/zero (0.00s)
    --- PASS: TestFormatSecondsAgo/one_second (0.00s)
    --- PASS: TestFormatSecondsAgo/almost_a_minute (0.00s)
    --- PASS: TestFormatSecondsAgo/one_minute (0.00s)
    --- PASS: TestFormatSecondsAgo/one_minute_and_one_second (0.00s)
    --- PASS: TestFormatSecondsAgo/almost_one_hour (0.00s)
    --- PASS: TestFormatSecondsAgo/one_hour (0.00s)
    --- PASS: TestFormatSecondsAgo/almost_one_day (0.00s)
    --- PASS: TestFormatSecondsAgo/one_day (0.00s)
    --- PASS: TestFormatSecondsAgo/almost_a_week (0.00s)
    --- PASS: TestFormatSecondsAgo/one_week (0.00s)
    --- PASS: TestFormatSecondsAgo/six_months (0.00s)
    --- PASS: TestFormatSecondsAgo/almost_one_year (0.00s)
    --- PASS: TestFormatSecondsAgo/one_year (0.00s)
    --- PASS: TestFormatSecondsAgo/50_years (0.00s)
=== RUN   TestWithPadding
--- PASS: TestWithPadding (0.00s)
=== RUN   TestGetPadWidths
--- PASS: TestGetPadWidths (0.00s)
=== RUN   TestTruncateWithEllipsis
--- PASS: TestTruncateWithEllipsis (0.00s)
=== RUN   TestRenderDisplayStrings
--- PASS: TestRenderDisplayStrings (0.00s)
=== RUN   TestNewHistoryBuffer
--- PASS: TestNewHistoryBuffer (0.00s)
=== RUN   TestPush
--- PASS: TestPush (0.00s)
=== RUN   TestPeekAt
--- PASS: TestPeekAt (0.00s)
=== RUN   TestPeekAtEmptyBuffer
--- PASS: TestPeekAtEmptyBuffer (0.00s)
=== RUN   Test_forEachLineInStream
=== RUN   Test_forEachLineInStream/empty_input
=== RUN   Test_forEachLineInStream/single_line
=== RUN   Test_forEachLineInStream/single_line_without_line_feed
=== RUN   Test_forEachLineInStream/multiple_lines
=== RUN   Test_forEachLineInStream/multiple_lines_including_empty_lines
=== RUN   Test_forEachLineInStream/multiple_lines_without_linefeed_at_end_of_file
--- PASS: Test_forEachLineInStream (0.00s)
    --- PASS: Test_forEachLineInStream/empty_input (0.00s)
    --- PASS: Test_forEachLineInStream/single_line (0.00s)
    --- PASS: Test_forEachLineInStream/single_line_without_line_feed (0.00s)
    --- PASS: Test_forEachLineInStream/multiple_lines (0.00s)
    --- PASS: Test_forEachLineInStream/multiple_lines_including_empty_lines (0.00s)
    --- PASS: Test_forEachLineInStream/multiple_lines_without_linefeed_at_end_of_file (0.00s)
=== RUN   TestSplitLines
--- PASS: TestSplitLines (0.00s)
=== RUN   TestSplitNul
--- PASS: TestSplitNul (0.00s)
=== RUN   TestNormalizeLinefeeds
--- PASS: TestNormalizeLinefeeds (0.00s)
=== RUN   TestScanLinesAndTruncateWhenLongerThanBuffer
--- PASS: TestScanLinesAndTruncateWhenLongerThanBuffer (0.00s)
=== RUN   TestWrapViewLinesToWidth
=== RUN   TestWrapViewLinesToWidth/Wrap_off
=== RUN   TestWrapViewLinesToWidth/Wrap_on_space
=== RUN   TestWrapViewLinesToWidth/Wrap_on_hyphen
=== RUN   TestWrapViewLinesToWidth/Wrap_on_hyphen_2
=== RUN   TestWrapViewLinesToWidth/Wrap_on_hyphen_3
=== RUN   TestWrapViewLinesToWidth/Wrap_on_hyphen_4
=== RUN   TestWrapViewLinesToWidth/Wrap_on_space_2
=== RUN   TestWrapViewLinesToWidth/Wrap_on_space_with_more_words
=== RUN   TestWrapViewLinesToWidth/Split_word_that's_too_long
=== RUN   TestWrapViewLinesToWidth/Split_word_that's_too_long_over_multiple_lines
=== RUN   TestWrapViewLinesToWidth/Lots_of_hyphens
=== RUN   TestWrapViewLinesToWidth/Several_lines_using_all_the_available_width
=== RUN   TestWrapViewLinesToWidth/Several_lines_using_all_the_available_width,_with_multi-cell_runes
=== RUN   TestWrapViewLinesToWidth/Space_in_last_column
=== RUN   TestWrapViewLinesToWidth/Hyphen_in_last_column
=== RUN   TestWrapViewLinesToWidth/English_text
=== RUN   TestWrapViewLinesToWidth/Tabs,_width_4
=== RUN   TestWrapViewLinesToWidth/Tabs,_width_8
=== RUN   TestWrapViewLinesToWidth/Multiple_lines
=== RUN   TestWrapViewLinesToWidth/Avoid_blank_line_at_end_if_not_editable
=== RUN   TestWrapViewLinesToWidth/Keep_blank_line_at_end_if_editable
--- PASS: TestWrapViewLinesToWidth (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Wrap_off (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Wrap_on_space (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Wrap_on_hyphen (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Wrap_on_hyphen_2 (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Wrap_on_hyphen_3 (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Wrap_on_hyphen_4 (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Wrap_on_space_2 (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Wrap_on_space_with_more_words (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Split_word_that's_too_long (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Split_word_that's_too_long_over_multiple_lines (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Lots_of_hyphens (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Several_lines_using_all_the_available_width (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Several_lines_using_all_the_available_width,_with_multi-cell_runes (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Space_in_last_column (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Hyphen_in_last_column (0.00s)
    --- PASS: TestWrapViewLinesToWidth/English_text (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Tabs,_width_4 (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Tabs,_width_8 (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Multiple_lines (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Avoid_blank_line_at_end_if_not_editable (0.00s)
    --- PASS: TestWrapViewLinesToWidth/Keep_blank_line_at_end_if_editable (0.00s)
=== RUN   TestOnceWriter
--- PASS: TestOnceWriter (0.00s)
=== RUN   TestRebaseCommands_moveTodoDown
=== RUN   TestRebaseCommands_moveTodoDown/simple_case_1_-_move_to_beginning
=== RUN   TestRebaseCommands_moveTodoDown/simple_case_2_-_move_from_end
=== RUN   TestRebaseCommands_moveTodoDown/move_update-ref_todo
=== RUN   TestRebaseCommands_moveTodoDown/move_across_update-ref_todo_in_rebase
=== RUN   TestRebaseCommands_moveTodoDown/move_across_update-ref_todo_outside_of_rebase
=== RUN   TestRebaseCommands_moveTodoDown/move_across_exec_todo
=== RUN   TestRebaseCommands_moveTodoDown/skip_an_invisible_todo
=== RUN   TestRebaseCommands_moveTodoDown/commit_not_found
=== RUN   TestRebaseCommands_moveTodoDown/trying_to_move_first_commit_down
=== RUN   TestRebaseCommands_moveTodoDown/trying_to_move_commit_down_when_all_commits_before_are_invisible
--- PASS: TestRebaseCommands_moveTodoDown (0.00s)
    --- PASS: TestRebaseCommands_moveTodoDown/simple_case_1_-_move_to_beginning (0.00s)
    --- PASS: TestRebaseCommands_moveTodoDown/simple_case_2_-_move_from_end (0.00s)
    --- PASS: TestRebaseCommands_moveTodoDown/move_update-ref_todo (0.00s)
    --- PASS: TestRebaseCommands_moveTodoDown/move_across_update-ref_todo_in_rebase (0.00s)
    --- PASS: TestRebaseCommands_moveTodoDown/move_across_update-ref_todo_outside_of_rebase (0.00s)
    --- PASS: TestRebaseCommands_moveTodoDown/move_across_exec_todo (0.00s)
    --- PASS: TestRebaseCommands_moveTodoDown/skip_an_invisible_todo (0.00s)
    --- PASS: TestRebaseCommands_moveTodoDown/commit_not_found (0.00s)
    --- PASS: TestRebaseCommands_moveTodoDown/trying_to_move_first_commit_down (0.00s)
    --- PASS: TestRebaseCommands_moveTodoDown/trying_to_move_commit_down_when_all_commits_before_are_invisible (0.00s)
=== RUN   TestRebaseCommands_moveTodoUp
=== RUN   TestRebaseCommands_moveTodoUp/simple_case_1_-_move_to_end
=== RUN   TestRebaseCommands_moveTodoUp/simple_case_2_-_move_from_beginning
=== RUN   TestRebaseCommands_moveTodoUp/move_update-ref_todo
=== RUN   TestRebaseCommands_moveTodoUp/move_across_update-ref_todo_in_rebase
=== RUN   TestRebaseCommands_moveTodoUp/move_across_update-ref_todo_outside_of_rebase
=== RUN   TestRebaseCommands_moveTodoUp/move_across_exec_todo
=== RUN   TestRebaseCommands_moveTodoUp/skip_an_invisible_todo
=== RUN   TestRebaseCommands_moveTodoUp/commit_not_found
=== RUN   TestRebaseCommands_moveTodoUp/trying_to_move_last_commit_up
=== RUN   TestRebaseCommands_moveTodoUp/trying_to_move_commit_up_when_all_commits_after_it_are_invisible
--- PASS: TestRebaseCommands_moveTodoUp (0.00s)
    --- PASS: TestRebaseCommands_moveTodoUp/simple_case_1_-_move_to_end (0.00s)
    --- PASS: TestRebaseCommands_moveTodoUp/simple_case_2_-_move_from_beginning (0.00s)
    --- PASS: TestRebaseCommands_moveTodoUp/move_update-ref_todo (0.00s)
    --- PASS: TestRebaseCommands_moveTodoUp/move_across_update-ref_todo_in_rebase (0.00s)
    --- PASS: TestRebaseCommands_moveTodoUp/move_across_update-ref_todo_outside_of_rebase (0.00s)
    --- PASS: TestRebaseCommands_moveTodoUp/move_across_exec_todo (0.00s)
    --- PASS: TestRebaseCommands_moveTodoUp/skip_an_invisible_todo (0.00s)
    --- PASS: TestRebaseCommands_moveTodoUp/commit_not_found (0.00s)
    --- PASS: TestRebaseCommands_moveTodoUp/trying_to_move_last_commit_up (0.00s)
    --- PASS: TestRebaseCommands_moveTodoUp/trying_to_move_commit_up_when_all_commits_after_it_are_invisible (0.00s)
=== RUN   TestRebaseCommands_moveFixupCommitDown
=== RUN   TestRebaseCommands_moveFixupCommitDown/fixup_commit_is_the_last_commit_(change_to_fixup)
=== RUN   TestRebaseCommands_moveFixupCommitDown/fixup_commit_is_the_last_commit_(don't_change_to_fixup)
=== RUN   TestRebaseCommands_moveFixupCommitDown/fixup_commit_is_separated_from_original_commit
=== RUN   TestRebaseCommands_moveFixupCommitDown/fixup_commit_is_separated_from_original_merge_commit
=== RUN   TestRebaseCommands_moveFixupCommitDown/More_original_hashes_than_expected
=== RUN   TestRebaseCommands_moveFixupCommitDown/More_fixup_hashes_than_expected
=== RUN   TestRebaseCommands_moveFixupCommitDown/No_fixup_hashes_found
=== RUN   TestRebaseCommands_moveFixupCommitDown/No_original_hashes_found
--- PASS: TestRebaseCommands_moveFixupCommitDown (0.00s)
    --- PASS: TestRebaseCommands_moveFixupCommitDown/fixup_commit_is_the_last_commit_(change_to_fixup) (0.00s)
    --- PASS: TestRebaseCommands_moveFixupCommitDown/fixup_commit_is_the_last_commit_(don't_change_to_fixup) (0.00s)
    --- PASS: TestRebaseCommands_moveFixupCommitDown/fixup_commit_is_separated_from_original_commit (0.00s)
    --- PASS: TestRebaseCommands_moveFixupCommitDown/fixup_commit_is_separated_from_original_merge_commit (0.00s)
    --- PASS: TestRebaseCommands_moveFixupCommitDown/More_original_hashes_than_expected (0.00s)
    --- PASS: TestRebaseCommands_moveFixupCommitDown/More_fixup_hashes_than_expected (0.00s)
    --- PASS: TestRebaseCommands_moveFixupCommitDown/No_fixup_hashes_found (0.00s)
    --- PASS: TestRebaseCommands_moveFixupCommitDown/No_original_hashes_found (0.00s)
=== RUN   TestRebaseCommands_deleteTodos
=== RUN   TestRebaseCommands_deleteTodos/success
=== RUN   TestRebaseCommands_deleteTodos/failure
--- PASS: TestRebaseCommands_deleteTodos (0.00s)
    --- PASS: TestRebaseCommands_deleteTodos/success (0.00s)
    --- PASS: TestRebaseCommands_deleteTodos/failure (0.00s)
=== RUN   Test_equalHash
=== RUN   Test_equalHash/''_vs._''
=== RUN   Test_equalHash/''_vs._'123'
=== RUN   Test_equalHash/'123'_vs._''
=== RUN   Test_equalHash/'123'_vs._'123'
=== RUN   Test_equalHash/'123'_vs._'123abc'
=== RUN   Test_equalHash/'123abc'_vs._'123'
=== RUN   Test_equalHash/'123'_vs._'a'
=== RUN   Test_equalHash/'1'_vs._'abc'
--- PASS: Test_equalHash (0.00s)
    --- PASS: Test_equalHash/''_vs._'' (0.00s)
    --- PASS: Test_equalHash/''_vs._'123' (0.00s)
    --- PASS: Test_equalHash/'123'_vs._'' (0.00s)
    --- PASS: Test_equalHash/'123'_vs._'123' (0.00s)
    --- PASS: Test_equalHash/'123'_vs._'123abc' (0.00s)
    --- PASS: Test_equalHash/'123abc'_vs._'123' (0.00s)
    --- PASS: Test_equalHash/'123'_vs._'a' (0.00s)
    --- PASS: Test_equalHash/'1'_vs._'abc' (0.00s)
=== RUN   TestFindNamedMatches
--- PASS: TestFindNamedMatches (0.00s)
=== RUN   TestFilterStrings
--- PASS: TestFilterStrings (0.00s)
=== RUN   TestCaseInsensitiveContains
--- PASS: TestCaseInsensitiveContains (0.00s)
=== RUN   TestNextIndex
=== RUN   TestNextIndex/no_elements
=== RUN   TestNextIndex/one_element
=== RUN   TestNextIndex/two_elements
=== RUN   TestNextIndex/two_elements,_giving_second_one
=== RUN   TestNextIndex/three_elements,_giving_second_one
--- PASS: TestNextIndex (0.00s)
    --- PASS: TestNextIndex/no_elements (0.00s)
    --- PASS: TestNextIndex/one_element (0.00s)
    --- PASS: TestNextIndex/two_elements (0.00s)
    --- PASS: TestNextIndex/two_elements,_giving_second_one (0.00s)
    --- PASS: TestNextIndex/three_elements,_giving_second_one (0.00s)
=== RUN   TestPrevIndex
=== RUN   TestPrevIndex/no_elements
=== RUN   TestPrevIndex/one_element
=== RUN   TestPrevIndex/two_elements
=== RUN   TestPrevIndex/three_elements,_giving_second_one
--- PASS: TestPrevIndex (0.00s)
    --- PASS: TestPrevIndex/no_elements (0.00s)
    --- PASS: TestPrevIndex/one_element (0.00s)
    --- PASS: TestPrevIndex/two_elements (0.00s)
    --- PASS: TestPrevIndex/three_elements,_giving_second_one (0.00s)
=== RUN   TestEscapeSpecialChars
=== RUN   TestEscapeSpecialChars/normal_string
=== RUN   TestEscapeSpecialChars/string_with_a_special_char
=== RUN   TestEscapeSpecialChars/multiple_special_chars
--- PASS: TestEscapeSpecialChars (0.00s)
    --- PASS: TestEscapeSpecialChars/normal_string (0.00s)
    --- PASS: TestEscapeSpecialChars/string_with_a_special_char (0.00s)
    --- PASS: TestEscapeSpecialChars/multiple_special_chars (0.00s)
=== RUN   TestLimit
--- PASS: TestLimit (0.00s)
=== RUN   TestLimitStr
--- PASS: TestLimitStr (0.00s)
=== RUN   TestMoveElement
=== RUN   TestMoveElement/no_elements
=== RUN   TestMoveElement/one_element
=== RUN   TestMoveElement/two_elements,_moving_first_to_second
=== RUN   TestMoveElement/two_elements,_moving_second_to_first
=== RUN   TestMoveElement/three_elements,_moving_first_to_second
=== RUN   TestMoveElement/three_elements,_moving_second_to_first
=== RUN   TestMoveElement/three_elements,_moving_second_to_third
=== RUN   TestMoveElement/three_elements,_moving_third_to_second
=== RUN   TestMoveElement/from_out_of_bounds
--- PASS: TestMoveElement (0.00s)
    --- PASS: TestMoveElement/no_elements (0.00s)
    --- PASS: TestMoveElement/one_element (0.00s)
    --- PASS: TestMoveElement/two_elements,_moving_first_to_second (0.00s)
    --- PASS: TestMoveElement/two_elements,_moving_second_to_first (0.00s)
    --- PASS: TestMoveElement/three_elements,_moving_first_to_second (0.00s)
    --- PASS: TestMoveElement/three_elements,_moving_second_to_first (0.00s)
    --- PASS: TestMoveElement/three_elements,_moving_second_to_third (0.00s)
    --- PASS: TestMoveElement/three_elements,_moving_third_to_second (0.00s)
    --- PASS: TestMoveElement/from_out_of_bounds (0.00s)
=== RUN   TestResolvePlaceholderString
--- PASS: TestResolvePlaceholderString (0.00s)
=== RUN   TestThreadSafeMap
--- PASS: TestThreadSafeMap (0.00s)
=== RUN   TestThreadSafeMapConcurrentReadWrite
--- PASS: TestThreadSafeMapConcurrentReadWrite (0.00s)
=== RUN   TestAsJson
--- PASS: TestAsJson (0.00s)
=== RUN   TestSafeTruncate
--- PASS: TestSafeTruncate (0.00s)
=== RUN   TestModuloWithWrap
--- PASS: TestModuloWithWrap (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/utils	0.011s
=== RUN   TestRenameYamlKey
=== RUN   TestRenameYamlKey/rename_key
=== RUN   TestRenameYamlKey/rename_key,_nested
=== RUN   TestRenameYamlKey/rename_non-scalar_key
=== RUN   TestRenameYamlKey/don't_rewrite_file_if_value_didn't_change
=== RUN   TestRenameYamlKey/existing_document_is_not_a_dictionary
=== RUN   TestRenameYamlKey/not_all_path_elements_are_dictionaries
=== RUN   TestRenameYamlKey/new_key_exists
--- PASS: TestRenameYamlKey (0.00s)
    --- PASS: TestRenameYamlKey/rename_key (0.00s)
    --- PASS: TestRenameYamlKey/rename_key,_nested (0.00s)
    --- PASS: TestRenameYamlKey/rename_non-scalar_key (0.00s)
    --- PASS: TestRenameYamlKey/don't_rewrite_file_if_value_didn't_change (0.00s)
    --- PASS: TestRenameYamlKey/existing_document_is_not_a_dictionary (0.00s)
    --- PASS: TestRenameYamlKey/not_all_path_elements_are_dictionaries (0.00s)
    --- PASS: TestRenameYamlKey/new_key_exists (0.00s)
=== RUN   TestWalk_paths
=== RUN   TestWalk_paths/empty_document
=== RUN   TestWalk_paths/scalar
=== RUN   TestWalk_paths/nested
=== RUN   TestWalk_paths/deeply_nested
=== RUN   TestWalk_paths/array
=== RUN   TestWalk_paths/nested_arrays
--- PASS: TestWalk_paths (0.00s)
    --- PASS: TestWalk_paths/empty_document (0.00s)
    --- PASS: TestWalk_paths/scalar (0.00s)
    --- PASS: TestWalk_paths/nested (0.00s)
    --- PASS: TestWalk_paths/deeply_nested (0.00s)
    --- PASS: TestWalk_paths/array (0.00s)
    --- PASS: TestWalk_paths/nested_arrays (0.00s)
=== RUN   TestWalk_inPlaceChanges
=== RUN   TestWalk_inPlaceChanges/no_change
=== RUN   TestWalk_inPlaceChanges/change_value
=== RUN   TestWalk_inPlaceChanges/change_nested_value
=== RUN   TestWalk_inPlaceChanges/change_array_value
--- PASS: TestWalk_inPlaceChanges (0.00s)
    --- PASS: TestWalk_inPlaceChanges/no_change (0.00s)
    --- PASS: TestWalk_inPlaceChanges/change_value (0.00s)
    --- PASS: TestWalk_inPlaceChanges/change_nested_value (0.00s)
    --- PASS: TestWalk_inPlaceChanges/change_array_value (0.00s)
=== RUN   TestTransformNode
=== RUN   TestTransformNode/Path_not_present
=== RUN   TestTransformNode/Part_of_path_present
=== RUN   TestTransformNode/Successfully_Transforms_to_string
=== RUN   TestTransformNode/Does_nothing_when_already_transformed
--- PASS: TestTransformNode (0.00s)
    --- PASS: TestTransformNode/Path_not_present (0.00s)
    --- PASS: TestTransformNode/Part_of_path_present (0.00s)
    --- PASS: TestTransformNode/Successfully_Transforms_to_string (0.00s)
    --- PASS: TestTransformNode/Does_nothing_when_already_transformed (0.00s)
=== RUN   TestRemoveKey
=== RUN   TestRemoveKey/Key_not_present
=== RUN   TestRemoveKey/Key_present
--- PASS: TestRemoveKey (0.00s)
    --- PASS: TestRemoveKey/Key_not_present (0.00s)
    --- PASS: TestRemoveKey/Key_present (0.00s)
PASS
ok  	github.com/jesseduffield/lazygit/pkg/utils/yaml_utils	0.004s
