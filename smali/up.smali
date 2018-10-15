.class Lup;
.super Ljava/lang/Object;
.source "PostDownloadManager.java"

# interfaces
.implements Luy;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lur;

.field private d:Lwu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lur;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appEntityDao"    # Lur;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "PostDownloadManager"

    iput-object v0, p0, Lup;->a:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lup;->b:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lup;->c:Lur;

    .line 37
    invoke-static {p1}, Lwu;->a(Landroid/content/Context;)Lwu;

    move-result-object v0

    iput-object v0, p0, Lup;->d:Lwu;

    .line 38
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Luu;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "iconpath"    # Ljava/lang/String;
    .param p4, "filepath"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v0, Luu;

    invoke-direct {v0}, Luu;-><init>()V

    .line 158
    .local v0, "appEntity":Luu;
    invoke-virtual {v0, p1}, Luu;->a(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p2}, Luu;->b(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, p3}, Luu;->d(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, p4}, Luu;->c(Ljava/lang/String;)V

    .line 162
    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lup;->b:Landroid/content/Context;

    invoke-static {v0}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgq;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Luu;)Z
    .locals 5
    .param p1, "appEntity"    # Luu;

    .prologue
    const/4 v2, 0x0

    .line 59
    if-nez p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v2

    .line 63
    :cond_1
    invoke-virtual {p1}, Luu;->h()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p1}, Luu;->i()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "iconPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    :cond_2
    const-string/jumbo v3, "PostDownloadManager"

    const-string/jumbo v4, "isApkExisted | app or icon file path is empty"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_3
    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    return-object p1
.end method

.method private d(Luu;)V
    .locals 3
    .param p1, "appEntity"    # Luu;

    .prologue
    .line 185
    const-string/jumbo v0, "PostDownloadManager"

    const-string/jumbo v1, "onAppInstalled"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-nez p1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string/jumbo v0, "PostDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppInstalled | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Luu;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": auto = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Luu;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p1}, Luu;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const-string/jumbo v0, "PostDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppInstalled | auto open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Luu;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lup;->b:Landroid/content/Context;

    invoke-static {v0}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v0

    invoke-virtual {p1}, Luu;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1
    invoke-virtual {p0, p1}, Lup;->b(Luu;)V

    goto :goto_0
.end method

.method private e(Luu;)V
    .locals 5
    .param p1, "appEntity"    # Luu;

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p1}, Luu;->h()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p1}, Luu;->i()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "iconPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    :cond_1
    const-string/jumbo v2, "PostDownloadManager"

    const-string/jumbo v3, "isApkExisted | app or icon file path is empty"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_2
    const-string/jumbo v2, "PostDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isApkExisted | delete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 212
    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f(Luu;)V
    .locals 0
    .param p1, "appEntity"    # Luu;

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lup;->b(Luu;)V

    .line 231
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 41
    iget-object v2, p0, Lup;->c:Lur;

    invoke-interface {v2}, Lur;->find()Ljava/util/List;

    move-result-object v1

    .line 42
    .local v1, "appEntities":Ljava/util/List;, "Ljava/util/List<Luu;>;"
    invoke-static {v1}, Lazz;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    :cond_0
    return-void

    .line 46
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luu;

    .line 47
    .local v0, "app":Luu;
    invoke-virtual {v0}, Luu;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lup;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    const-string/jumbo v3, "PostDownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "init | app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Luu;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " has intalled out of watch!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0, v0}, Lup;->d(Luu;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string/jumbo v5, "extra_auto_download_pkgname"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "pkgName":Ljava/lang/String;
    const-string/jumbo v5, "extra_auto_download_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "title":Ljava/lang/String;
    const-string/jumbo v5, "extra_auto_download_filepath"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "filepath":Ljava/lang/String;
    const-string/jumbo v5, "extra_auto_download_iconpath"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "iconpath":Ljava/lang/String;
    const-string/jumbo v5, "PostDownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onShortcutClicked | pkgName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {v3}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    const-string/jumbo v5, "PostDownloadManager"

    const-string/jumbo v6, "onShortcutClicked | pkgName is null"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_1
    iget-object v5, p0, Lup;->c:Lur;

    invoke-interface {v5, v3}, Lur;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    .line 134
    .local v0, "appEntity":Luu;
    if-nez v0, :cond_2

    .line 135
    const-string/jumbo v5, "PostDownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onShortcutClicked | it cannot find AppEntity by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", build a new"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0, v4, v3, v2, v1}, Lup;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Luu;

    move-result-object v0

    .line 140
    :cond_2
    iget-object v5, p0, Lup;->d:Lwu;

    invoke-virtual {v5, v3}, Lwu;->b(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Luu;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lup;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 143
    const-string/jumbo v5, "PostDownloadManager"

    const-string/jumbo v6, "onDownloadSuccess | app has installed!"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0, v0}, Lup;->b(Luu;)V

    goto/16 :goto_0

    .line 147
    :cond_3
    invoke-direct {p0, v0}, Lup;->c(Luu;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 148
    const-string/jumbo v5, "PostDownloadManager"

    const-string/jumbo v6, "onShortcutClicked | apk is not existed!!!!!!!!!!"

    invoke-static {v5, v6}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 152
    :cond_4
    iget-object v5, p0, Lup;->b:Landroid/content/Context;

    invoke-static {v5}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v5

    invoke-virtual {v0}, Luu;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lns;->a(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v5, "PostDownloadManager"

    const-string/jumbo v6, "onShortcutClicked | goto installed"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string/jumbo v1, "PostDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAppInstalled | pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v1, p0, Lup;->c:Lur;

    invoke-interface {v1, p1}, Lur;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    .line 177
    .local v0, "appEntity":Luu;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0, v0}, Lup;->b(Luu;)V

    .line 180
    iget-object v1, p0, Lup;->d:Lwu;

    invoke-virtual {v0}, Luu;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwu;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Luu;)V
    .locals 5
    .param p1, "appEntity"    # Luu;

    .prologue
    .line 94
    const-string/jumbo v0, "PostDownloadManager"

    const-string/jumbo v1, "onDownloadSuccess"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Luu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lup;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string/jumbo v0, "PostDownloadManager"

    const-string/jumbo v1, "onDownloadSuccess | app has installed!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0, p1}, Lup;->b(Luu;)V

    .line 113
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-direct {p0, p1}, Lup;->c(Luu;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const-string/jumbo v0, "PostDownloadManager"

    const-string/jumbo v1, "onDownloadSuccess | isApkExisted = false"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0, p1}, Lup;->b(Luu;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lup;->b:Landroid/content/Context;

    invoke-virtual {p1}, Luu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lup;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Luu;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Luu;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Luu;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lva;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Luu;->a(I)V

    .line 109
    iget-object v0, p0, Lup;->c:Lur;

    invoke-interface {v0, p1}, Lur;->update(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lup;->d:Lwu;

    invoke-virtual {p1}, Luu;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwu;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string/jumbo v0, "PostDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppRemove | pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lup;->c:Lur;

    invoke-interface {v0, p1}, Lur;->a(Ljava/lang/String;)Luu;

    move-result-object v0

    invoke-direct {p0, v0}, Lup;->f(Luu;)V

    goto :goto_0
.end method

.method public b(Luu;)V
    .locals 2
    .param p1, "appEntity"    # Luu;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string/jumbo v0, "PostDownloadManager"

    const-string/jumbo v1, "onAppInstalled | delete shortcut icon"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lup;->b:Landroid/content/Context;

    invoke-virtual {p1}, Luu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lup;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lva;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "PostDownloadManager"

    const-string/jumbo v1, "deleteAppEntity | delete db record"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lup;->c:Lur;

    invoke-interface {v0, p1}, Lur;->a(Luu;)V

    .line 84
    const-string/jumbo v0, "PostDownloadManager"

    const-string/jumbo v1, "deleteAppEntity | delete apk file and icon"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0, p1}, Lup;->e(Luu;)V

    goto :goto_0
.end method
