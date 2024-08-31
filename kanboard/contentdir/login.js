window.addEventListener('load', function() {
  // 等待页面完全加载后执行以下代码
  // 检查必须是登录页面才执行
  if (location.pathname == "/login") {
    // 查找第一个 form 元素
    const form = document.querySelector('form');
    
    // 如果 form 存在，则查找第一个和第二个 input 元素
    if (form) {
      const input1 = form.querySelector('input[name="username"]');
      const input2 = form.querySelector('input[name="password"]');
    
      // 如果两个 input 元素都存在，则填充值并提交表单
      if (input1 && input2) {
        input1.value = 'admin';
        input2.value = 'admin';
        form.submit();
      }
    }
  }
});