
# 移植细节记录

# 学习
https://learnku.com/docs/laravel/9.x/authentication/12239

# 开发
```bash
#后端开发
php artisan serve
#前端开发
yarn && yarn dev
```

## 账号对接
通过阅读了项目所使用框架的相关文档和登录流程相关的代码，了解到：项目前后端有所分离(登录过程由前端请求后获取返回的token,而后javascript通过api获取到的json返回进行一些数据组合后存入了localstorage)
所以以下方法虽然可以想办法强制登录，但不能被最终采纳：
```php
# /routes/web.base.php
Route::get('/', [AuthController::class, 'forceLogin'])->name('home');
# /app/Http/Controllers/API/AuthController.php
public function forceLogin()
{
    // $user = $this->userRepository->getFirstWhere('email', $request->email);
    //$user = $this->userRepository->getFirstWhere("email", "admin@admin");
    //$token = $this->tokenManager->createCompositionToken($user);
    //var_export([
    //    'token' => $token->apiToken,
    //    'audio-token' => $token->audioToken,
    //]);
}
```

决定如下：尊重项目本身登录流程，修改前端使自动发送登录请求，修改后端使自动返回登录token。
修改登录界面，使不显示登录表单，自动发送正确账号密码的登录请求
```diff
diff --git a/resources/assets/js/components/auth/LoginForm.vue b/resources/assets/js/components/auth/LoginForm.vue
index 9e523fd..9693d58 100644
--- a/resources/assets/js/components/auth/LoginForm.vue
+++ b/resources/assets/js/components/auth/LoginForm.vue
@@ -3,9 +3,9 @@
     <div class="logo">
       <img alt="Koel's logo" src="@/../img/logo.svg" width="156">
     </div>
-    <input v-model="email" autofocus placeholder="Email Address" required type="email">
-    <input v-model="password" placeholder="Password" required type="password">
-    <Btn type="submit">Log In</Btn>
+    <input v-show="!lazy_mode" v-model="email" autofocus placeholder="Email Address" required type="email">
+    <input v-show="!lazy_mode" v-model="password" placeholder="Password" required type="password">
+    <Btn v-show="!lazy_mode" type="submit">Log In</Btn>
   </form>
 </template>
 
@@ -22,8 +22,8 @@ const DEMO_ACCOUNT = {
 }
 
 const url = ref('')
-const email = ref(isDemo() ? DEMO_ACCOUNT.email : '')
-const password = ref(isDemo() ? DEMO_ACCOUNT.password : '')
+const email = ref(isDemo() ? DEMO_ACCOUNT.email : 'admin@admin')
+const password = ref(isDemo() ? DEMO_ACCOUNT.password : 'admin')
 const failed = ref(false)
 
 const emit = defineEmits<{ (e: 'loggedin'): void }>()
@@ -42,6 +42,10 @@ const login = async () => {
     window.setTimeout(() => (failed.value = false), 2000)
   }
 }
+const lazy_mode=true;
+if (lazy_mode) {
+  login()
+}
 </script>
 
 <style lang="scss" scoped>
```
执行 `yarn build`, 使生成 `/public/build` 资源文件
最终将此资源文件挂载到容器中即可

注意：
目前该解决方案仅能解决一个用户的自动授权登录问题
目前已经数据库使用 sqlite(随时可以切换回mysql), 且数据和实例完全隔离，一个用户的自动登录已经完全够用。

# 汉化
通过增加 `/resources/lang/zh-CN` 语言包(配合`config/app.php`中配置`'locale' => 'zh-CN'`) 并不管用，因为这只包含后端的部分表单提示。大量界面的显示文字都是前端定义的。

而目前前端的显示文字并没有做语言包，都是直接写入显示模板的，所以汉化的工作暂时在下一版本中推进，先发布一个可用的版本到商店中供体验使用。

# 问题反馈

## 右侧图像加载失败的问题

隐藏图片，直接替换为项目名(也是默认初始化用户名)。
隐藏用户管理，密码修改等表单和链接

# 更新日志（同步上游）

- 2024/8/29 [(base e948782b)](https://github.com/koel/koel/commit/e948782b8b4d7e807b024ef088120bf2eae19b12) [chore: adaptation lzcapp](./docs/0001-chore-adaptation-lzcapp.patch)
