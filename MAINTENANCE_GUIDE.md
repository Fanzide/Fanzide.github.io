# 个人学术主页维护指南

> 本文档详细说明了如何维护和更新你的 al-folio 学术主页。
> 仓库地址：`Fanzide/Fanzide.github.io`
> 网站地址：`https://Fanzide.github.io`

---

## 目录

1. [首次部署到 GitHub](#1-首次部署到-github)
2. [添加新论文](#2-添加新论文)
3. [更新个人信息](#3-更新个人信息)
4. [添加新闻动态](#4-添加新闻动态)
5. [添加研究项目](#5-添加研究项目)
6. [更新 CV / 简历](#6-更新-cv--简历)
7. [添加个人照片](#7-添加个人照片)
8. [修改主题颜色](#8-修改主题颜色)
9. [本地运行调试](#9-本地运行调试)
10. [常见问题](#10-常见问题)

---

## 1. 首次部署到 GitHub

### 步骤 1：创建仓库

1. 登录 GitHub（用户名：Fanzide）
2. 点击右上角 **+** → **New repository**
3. 仓库名称填写：**`Fanzide.github.io`**（必须完全一致）
4. 选择 **Public**
5. 勾选 **Add a README file**
6. 点击 **Create repository**

### 步骤 2：上传项目文件

将 `al-folio-site/` 目录下的所有文件上传到仓库。有两种方式：

**方式 A：通过 GitHub 网页上传**

1. 在仓库页面点击 **Add file** → **Upload files**
2. 将 `al-folio-site/` 目录下的所有文件和文件夹拖入
3. 提交信息填写：`Initial site setup`
4. 点击 **Commit changes**

**方式 B：通过 Git 命令行上传**

```bash
# 克隆仓库
git clone https://github.com/Fanzide/Fanzide.github.io.git

# 将 al-folio-site/ 下的所有文件复制到克隆的仓库目录中
# 然后提交并推送
cd Fanzide.github.io
git add .
git commit -m "Initial site setup"
git push origin main
```

### 步骤 3：配置 GitHub Actions 权限

1. 进入仓库 **Settings** → **Actions** → **General**
2. 在 **Workflow permissions** 下选择 **Read and write permissions**
3. 点击 **Save**

### 步骤 4：配置 GitHub Pages

1. 等待 GitHub Action 完成（约 4 分钟，可在 **Actions** 标签页查看进度）
2. 进入 **Settings** → **Pages**
3. **Source** 选择 **Deploy from a branch**
4. **Branch** 选择 **gh-pages**（不是 main）
5. 点击 **Save**

### 步骤 5：访问网站

等待部署完成后，访问 **https://Fanzide.github.io** 即可看到你的学术主页。

> 后续每次推送到 main 分支，网站会自动重新构建和部署。

---

## 2. 添加新论文

**文件位置：** `_bibliography/papers.bib`

### 添加一篇期刊论文

在 `papers.bib` 文件末尾添加如下格式的条目：

```bibtex
@article{fan2026newpaper,
  abbr        = {TGRS},                          # 期刊缩写（显示在标题前）
  bibtex_show = {true},                          # 是否显示完整 BibTeX
  title       = {Your Paper Title Here},           # 论文标题
  author      = {Fan, Zide and Li, Xiaohe and ...},# 作者列表
  journal     = {IEEE Transactions on ...},        # 期刊全名
  year        = {2026},                            # 发表年份
  volume      = {62},                              # 卷号（可选）
  number      = {1},                               # 期号（可选）
  pages       = {1--10},                           # 页码（可选）
  doi         = {10.1109/xxx.2026.xxx},            # DOI（可选）
  html        = {https://doi.org/10.1109/...},     # 论文链接（可选）
  pdf         = {your_paper.pdf},                  # PDF文件名（放在 assets/pdf/）
  arxiv       = {https://arxiv.org/abs/2401.xxx},  # arXiv链接（可选）
  code        = {https://github.com/...},          # 代码链接（可选）
  abstract    = {This is the abstract.},           # 摘要（可选）
  selected    = {true}                             # 标记为精选论文（显示在首页）
}
```

### 常用字段说明

| 字段 | 说明 |
|------|------|
| `abbr` | 期刊/会议缩写，显示在标题前 |
| `selected` | 设为 `{true}` 则在首页"精选论文"区域显示 |
| `doi` | DOI 编号，会自动生成链接 |
| `html` | 论文网页链接 |
| `pdf` | PDF 文件名（需放在 `assets/pdf/` 目录） |
| `arxiv` | arXiv 预印本链接 |
| `code` | 代码仓库链接 |
| `abstract` | 论文摘要 |
| `bibtex_show` | 设为 `{true}` 显示完整 BibTeX 引用 |

### 添加会议论文

```bibtex
@inproceedings{fan2026conference,
  abbr      = {CVPR},
  title     = {Your Conference Paper Title},
  author    = {Fan, Zide and ...},
  booktitle = {Proceedings of the IEEE/CVF Conference ...},
  year      = {2026},
  pages     = {1--10},
  selected  = {true}
}
```

### 添加专著

```bibtex
@book{fan2026book,
  bibtex_show = {true},
  title       = {Book Title},
  author      = {Fan, Zide and ...},
  year        = {2026},
  publisher   = {Publisher Name},
  address     = {Beijing, China}
}
```

> **提示：** 你的名字 `Fan` 在作者列表中会自动加下划线高亮显示。

---

## 3. 更新个人信息

**文件位置：** `_config.yml`

### 修改姓名和简介

```yaml
first_name: Zide
last_name: Fan
description: >
  Associate Professor at the Aerospace Information Research Institute...
```

### 修改联系方式

**文件位置：** `_data/socials.yml`

```yaml
email: fanzd@aircas.ac.cn
scholar_userid: tj4-qoEAAAAJ     # Google Scholar ID
```

### 修改关于页面

**文件位置：** `_pages/about.md`

在此文件中编辑你的个人简介、研究方向、联系方式等信息。

---

## 4. 添加新闻动态

**文件位置：** `_news/` 目录

创建新的 Markdown 文件，文件名格式：`news_YYYY_MM_description.md`

```markdown
---
date: 2026-08-15
title: 你的新闻标题
---
新闻的详细内容写在这里。支持 Markdown 格式。
```

**示例：**

```markdown
---
date: 2026-08-01
title: New paper accepted by IEEE TGRS
---
Our paper "Title of the Paper" has been accepted by IEEE Transactions on Geoscience and Remote Sensing.
```

> 新闻会自动按日期倒序显示在首页。

---

## 5. 添加研究项目

**文件位置：** `_projects/` 目录

创建新的 Markdown 文件：

```markdown
---
title: Project Name
category: research                # 或 application
description: Brief description
img: /assets/img/project_img.jpg  # 项目图片（放在 assets/img/ 目录）
importance: 1                     # 数字越小越靠前
---
项目的详细描述。支持 Markdown 格式。
```

> 项目会按 `importance` 排序显示在 Projects 页面。

---

## 6. 更新 CV / 简历

有两个位置可以更新 CV：

### 方式 1：JSON 格式（推荐）

**文件位置：** `assets/json/resume.json`

遵循 [JSON Resume](https://jsonresume.org/) 标准。编辑对应的 section 即可。

### 方式 2：YAML 格式（备选）

**文件位置：** `_data/cv.yml`

如果删除了 `resume.json`，系统会自动使用 `cv.yml`。

### 添加 PDF 版 CV

1. 将 PDF 文件放在 `assets/pdf/` 目录
2. 在 `_data/socials.yml` 中设置：
   ```yaml
   cv_pdf: /assets/pdf/your_cv.pdf
   ```

---

## 7. 添加个人照片

1. 将照片命名为 `prof_pic.jpg`
2. 放在 `assets/img/` 目录
3. 照片会自动显示在首页右侧

**修改照片设置：** 编辑 `_pages/about.md`

```yaml
profile:
  align: right           # right 或 left
  image: prof_pic.jpg   # 文件名
  image_circular: false # true 为圆形头像
```

---

## 8. 修改主题颜色

**文件位置：** `_config.yml` 中的 `icon` 字段

```yaml
icon: 🛰️  # 修改为你喜欢的 emoji 作为网站图标
```

> 高级颜色定制需要修改 al-folio 的 SASS 变量（通过 gem 配置）。
> 对于大多数用户，默认的紫色主题已经很好看。

---

## 9. 本地运行调试

### 方式 1：使用 Docker（推荐）

```bash
# 进入项目目录
cd Fanzide.github.io

# 启动 Docker 容器
docker compose up

# 访问 http://localhost:8080
```

### 方式 2：本地安装

需要安装：Ruby 3.3.5、Python 3、Node.js 20

```bash
# 安装 Ruby 依赖
bundle install

# 安装 Python 依赖
pip install nbconvert

# 安装 Node 依赖
npm ci

# 启动本地服务器
bundle exec jekyll serve

# 访问 http://localhost:4000
```

---

## 10. 常见问题

### Q: 网站没有更新？

GitHub Actions 需要约 4-5 分钟构建。检查 **Actions** 标签页是否有错误。

### Q: 论文没有显示？

检查 `papers.bib` 中的 BibTeX 格式是否正确，特别是：
- 每个条目以 `@` 开头
- 大括号匹配
- 字段值用大括号或引号包裹
- 条目之间用逗号分隔

### Q: 如何修改导航栏顺序？

在每个 `_pages/*.md` 文件的 frontmatter 中修改：

```yaml
nav: true        # 是否在导航栏显示
nav_order: 2    # 数字越小越靠前
```

### Q: 如何添加新页面？

1. 在 `_pages/` 目录创建新的 `.md` 文件
2. 添加 frontmatter：
   ```yaml
   ---
   layout: page
   permalink: /your-page/
   title: Page Title
   nav: true
   nav_order: 6
   ---
   ```
3. 写入页面内容

### Q: 如何删除不需要的页面？

直接删除 `_pages/` 下对应的 `.md` 文件即可。

### Q: 如何启用评论功能？

在 `_config.yml` 中配置 Giscus：

```yaml
giscus:
  repo: Fanzide/Fanzide.github.io
  repo_id: # 从 https://giscus.app 获取
  category: Comments
  category_id: # 从 https://giscus.app 获取
```

### Q: 照片/图片不显示？

确保图片放在 `assets/img/` 目录，且路径正确：
- `_pages/about.md` 中引用为 `prof_pic.jpg`（不带路径前缀）
- `_projects/*.md` 中引用为 `/assets/img/xxx.jpg`（带完整路径）

---

## 文件结构速查

```
Fanzide.github.io/
├── _bibliography/
│   └── papers.bib          ← 添加论文的地方
├── _data/
│   ├── cv.yml              ← CV 数据（YAML 格式）
│   ├── socials.yml         ← 社交链接和邮箱
│   ├── coauthors.yml       ← 合作者信息
│   ├── venues.yml          ← 期刊缩写映射
│   └── repositories.yml    ← GitHub 仓库展示
├── _news/                  ← 新闻动态
├── _pages/
│   ├── about.md            ← 关于页面（首页）
│   ├── publications.md     ← 论文页面
│   ├── cv.md               ← CV 页面
│   ├── projects.md         ← 项目页面
│   └── teaching.md         ← 教学页面
├── _projects/              ← 研究项目
├── assets/
│   ├── json/
│   │   └── resume.json     ← CV 数据（JSON 格式，推荐）
│   ├── img/                ← 图片目录
│   │   └── prof_pic.jpg    ← 个人照片
│   └── pdf/                ← PDF 文件目录
├── _config.yml             ← 主配置文件
├── Gemfile                 ← Ruby 依赖
├── package.json            ← Node 依赖
└── .github/workflows/
    └── deploy.yml          ← 自动部署工作流
```

---

> 更多帮助请参考 al-folio 官方文档：
> - [安装指南](https://github.com/alshedivat/al-folio/blob/master/INSTALL.md)
> - [自定义指南](https://github.com/alshedivat/al-folio/blob/master/CUSTOMIZE.md)
> - [常见问题](https://github.com/alshedivat/al-folio/blob/master/FAQ.md)
