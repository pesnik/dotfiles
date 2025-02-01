require('kommentary.config').use_extended_mappings()
require('kommentary.config').configure_language("rust", {
    single_line_comment_string = "//",
    multi_line_comment_strings = {"/*", "*/"},
})
