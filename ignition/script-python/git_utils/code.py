def triggerGitPush():
    try:
        system.net.httpGet("http://localhost:8090/gitpush/")
        system.gui.messageBox("Git push triggered successfully")
    except Exception as e:
        system.gui.messageBox("Git push failed:\n" + str(e))