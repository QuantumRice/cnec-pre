# CNEC Pre 备考网站（本地视频版）

这个目录是"本地视频 + 中文字幕"版，所有教学视频已从 YouTube 下载、压缩并配好中文字幕，打开网页即可直接播放，无需跳转 YouTube。

## 目录结构

```
cnec-pre-local/
├── index.html          # 主页面（双击即可用，视频为相对路径）
├── videos/             # 压缩后的视频 + 中文字幕
│   ├── *.mp4           # H.264 视频（浏览器通吃）
│   └── *.zh.vtt        # 中文字幕（WebVTT 软字幕）
├── 启动本地网站.command  # （可选）局域网一键访问
└── README.md
```

## 视频说明

- **压缩**：所有视频重编码为 H.264 + AAC，短视频 720p、长视频 480p，总体积大幅下降，且任何设备浏览器都能播放。
- **剪辑**：自动去掉了片头/片尾的静音空白（无声死区）。口语化的片头欢迎词因与讲解衔接紧密、且已很短，为免误删讲解内容予以保留。
- **字幕**：每段视频都带中文字幕（软字幕，浏览器直接显示，可开关）。

## 部署方案（让手机/平板/其他电脑也能看）

### 方案 A：局域网（免费、最简单、不限容量）

1. 保持本目录不变；
2. 双击 `启动本地网站.command`（或在本目录运行 `python3 -m http.server 8000`）；
3. 同一 WiFi 下的设备浏览器打开脚本里显示的 `http://<本机IP>:8000/` 即可。

### 方案 B：免费静态托管（任何网络都能访问）

任选其一，把**整个目录**（尤其 `index.html` 和 `videos/`）上传即可，视频走 HTTP 播放。

#### 1. Cloudflare Pages（推荐，不限流量）
- 登录 <https://dash.cloudflare.com> → Workers & Pages → Create → Pages → Upload assets；
- 把整个目录拖进去上传，发布即可得到 `https://xxx.pages.dev`。
- 注意：单文件上限 25MB，若个别视频超过 25MB，见下方"体积说明"。

#### 2. GitHub Pages
- 新建仓库，把目录内容 push 到仓库根目录；
- Settings → Pages → 选 main 分支根目录 → 保存，得到 `https://用户名.github.io/仓库名/`。
- 注意：单仓库约 1GB、单文件建议 < 100MB。

#### 3. Netlify
- 登录 <https://app.netlify.com> → Add new site → Deploy manually；
- 把整个目录拖入即可，得到 `https://xxx.netlify.app`。
- 注意：单文件上限 100MB。

### 上传后

托管成功后，本目录（含 `videos/`）即可从电脑上删除——视频已托管在云端。

## 其他说明

- 视频版权归原作者（Jacob Clifford / ReviewEcon / Khan Academy / EconplusDal 等），仅供个人学习使用，请勿公开分发。
- 视频的 AP/A-Level 内容可能超出 CNEC Pre 初级站范围，请按《知识地图》学习。
- 学习进度保存在浏览器本地（localStorage），换设备不会同步。
