(function () {
  var terminal = new Terminal({
    screenKeys: true,
    useStyle: true,
    cursorBlink: true,
    fullscreenWin: true,
    maximizeWin: true,
    screenReaderMode: true,
    cols: 128,
  });
  terminal.open(document.getElementById("terminal"));
  var protocol = (location.protocol === "https:") ? "wss://" : "ws://";
  var url = protocol + location.host + "/xterm.js"
  var ws = new WebSocket(url);
  var attachAddon = new AttachAddon.AttachAddon(ws);
  var fitAddon = new FitAddon.FitAddon();
  terminal.loadAddon(fitAddon);
  var webLinksAddon = new WebLinksAddon.WebLinksAddon();
  terminal.loadAddon(webLinksAddon);
  var unicode11Addon = new Unicode11Addon.Unicode11Addon();
  terminal.loadAddon(unicode11Addon);
  var serializeAddon = new SerializeAddon.SerializeAddon();
  terminal.loadAddon(serializeAddon);
  ws.onclose = function (event) {
    console.log(event);
    terminal.write('\r\n\n服务端终端已断开 (请重新开启应用或刷新页面)\n')
  };
  window.onload = function () {
    fitAddon.fit();
  };

  window.onresize = function () {
    fitAddon.fit();
  };
  ws.onopen = function () {
    terminal.loadAddon(attachAddon);
    terminal._initialized = true;
    terminal.focus();
    setTimeout(function () { fitAddon.fit() });
    terminal.onResize(function (event) {
      var rows = event.rows;
      var cols = event.cols;
      var size = JSON.stringify({ cols: cols, rows: rows + 1 });
      var send = new TextEncoder().encode("\x01" + size);
      console.log('resizing to', size);
      ws.send(send);
    });
    terminal.onTitleChange(function (event) {
      console.log(event);
    });
    window.onresize = function () {
      fitAddon.fit();
    };
  };
  document.getElementById('refreshBtn').addEventListener('click', () => {
    window.location.reload(true)
  });
  document.getElementById('sendCtrlC').addEventListener('click', () => {
    if (ws.readyState === WebSocket.OPEN) {
      const ctrlC = new TextEncoder().encode('\x03');
      ws.send(ctrlC);
    } else {
      console.error("WebSocket 未连接");
    }
  });
  document.getElementById('saveSettings').addEventListener('click', () => {
    const fontSize = parseInt(document.getElementById('fontSizeSlider').value, 10);
    terminal.setOption('fontSize', fontSize);
    const modal = bootstrap.Modal.getInstance(document.getElementById('settingsModal'));
    modal.hide();
    fitAddon.fit();
  });
})();
