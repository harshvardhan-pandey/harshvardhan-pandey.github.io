"""
    {{ addcomments }}

Add a comment widget, managed by utterances <https://utteranc.es>.
"""
function hfun_addcomments()
    html_str = """
        <script src="https://utteranc.es/client.js"
                repo="harshvardhan-pandey/harshvardhan-pandey.github.io"
                issue-term="title"
                label="Comment"
                theme="github-light"
                crossorigin="anonymous"
                async>
        </script>
    """
    return html_str
end