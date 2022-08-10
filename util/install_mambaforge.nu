def main [
    _?: string
    --dry-run: bool = false
] { 
    let tmp = if $nu.os-info.name == "windows" {
        $env.TEMP
    } else {
        $env.TEMPDIR
    }

    let url = "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Windows-x86_64.exe"

    let filename = ($url | parse --regex '.+(/\w.+\.exe)$' | str trim -l -c '/' | first 1 | get Capture1)

    let full_path = ([$tmp, $filename] | path join)

    print $"Downloading (ansi red_bold)($filename)(ansi reset) from (ansi dark_gray_bold)($url)(ansi reset) to (ansi yellow_bold)($tmp)(ansi reset)"

    if $dry-run {
        print "\n...Download..."
    } else {
        fetch $url --bin | save --raw $full_path
    }

    print $"\Installing (ansi blue_bold)($full_path)(ansi reset)"

    # execute installer
    if $dry-run {
        print "\n...Installing..."
    } else {
        do { ^start /wait $full_path }
    }

    print $"\nDeleting (ansi red_bold)($filename)(ansi reset) from (ansi yellow_bold)($tmp)(ansi reset)"

    if $dry-run {
        print "\n...Deleting..."
    } else {
        rm -t $full_path
    }
}