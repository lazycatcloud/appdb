const afterReady = (f) => {
  let triggered = false;
  const listener = () => {
    if (triggered) return;
    triggered = true;
    window.removeEventListener("DOMContentLoaded", listener);
    window.removeEventListener("load", listener);
    f();
  };
  if (
    document.readyState === "interactive" ||
    document.readyState === "complete"
  ) {
    listener();
    return;
  }
  window.addEventListener("DOMContentLoaded", listener);
  window.addEventListener("load", listener);
};

afterReady(function () {
  // 查找页面中的所有 form 标签
  const forms = document.getElementsByTagName("form");

  // 如果没有找到 form，则打印提示信息并退出函数
  if (forms.length === 0) {
    console.log("No form found on the page");
    return;
  }

  // 如果找到多个 form，则打印出 form 的数量
  if (forms.length > 1) {
    console.log(`Found ${forms.length} forms on the page`);
  }

  // 找到第一个 form
  const form = forms[0];

  if (location.pathname == "/register") {
    // 查找 form 中的 email、password 和 password_confirmation input 标签
    const emailInput = form.querySelector('input[name="email"]');
    const passwordInput = form.querySelector('input[name="password"]');
    const passwordConfirmationInput = form.querySelector(
      'input[name="password_confirmation"]'
    );
    // 如果找不到任意一个 input，则打印提示信息并退出函数
    if (!emailInput || !passwordInput || !passwordConfirmationInput) {
      console.log("Cannot find required input fields in the form");
      return;
    }
    emailInput.value = "fireflyiii@heiyu.space";
    passwordInput.value = "lanmaoyundezuiqiangmimashishenme";
    passwordConfirmationInput.value = "lanmaoyundezuiqiangmimashishenme";
    // 提交 form
    form.submit();
  }
  if (location.pathname == "/login") {
    // 查找 form 中的 input 和 checkbox 元素
    const emailInput = form.querySelector("input#focus");
    const passwordInput = form.querySelector('input[name="password"]');
    const rememberCheckbox = form.querySelector('input[name="remember"]');

    // 如果找不到任何一个元素，则打印提示信息并退出函数
    if (!emailInput || !passwordInput || !rememberCheckbox) {
      console.log("Cannot find required elements in the form");
      return;
    }

    // 填充 input 和 checkbox 的值
    emailInput.value = "fireflyiii@heiyu.space";
    passwordInput.value = "lanmaoyundezuiqiangmimashishenme";
    rememberCheckbox.checked = true;

    // 提交 form
    form.submit();
  }
  // 查找用户名和密码输入框
  // const usernameInput = document.querySelector('#user_login');
  // const passwordInput = document.querySelector('#user_pass');

  // // 如果两个输入框都存在，则填充值并提交表单
  // if (usernameInput && passwordInput) {
  //   usernameInput.value = 'admin';
  //   passwordInput.value = 'admin';
  //   document.querySelector('#wp-submit').click();
  // }
});
