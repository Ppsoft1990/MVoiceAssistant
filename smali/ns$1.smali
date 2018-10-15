.class Lns$1;
.super Ljava/lang/Object;
.source "InstallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lns;->a(Lcom/iflytek/common/download/entities/DownloadInfo;Ljava/lang/String;Lns$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/common/download/entities/DownloadInfo;

.field final synthetic b:Lns$a;

.field final synthetic c:Lns;


# direct methods
.method constructor <init>(Lns;Lcom/iflytek/common/download/entities/DownloadInfo;Lns$a;)V
    .locals 0
    .param p1, "this$0"    # Lns;

    .prologue
    .line 111
    iput-object p1, p0, Lns$1;->c:Lns;

    iput-object p2, p0, Lns$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    iput-object p3, p0, Lns$1;->b:Lns$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 115
    new-instance v1, Lnx;

    invoke-direct {v1}, Lnx;-><init>()V

    .line 116
    .local v1, "result":Lnx;
    iget-object v4, p0, Lns$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v4

    iput v4, v1, Lnx;->a:I

    .line 117
    invoke-static {}, Lns;->b()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lns$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v5}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/base/skin/ThemeUtils;->installSkinNewVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, "code":I
    const/4 v2, 0x0

    .line 119
    .local v2, "themeDir":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 120
    const/4 v4, 0x0

    iput v4, v1, Lnx;->b:I

    .line 121
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v4

    iget-object v5, p0, Lns$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v5}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getThemeInfoFromSkinPackage(Ljava/lang/String;)Lcom/iflytek/base/skin/ThemeInfo;

    move-result-object v3

    .line 122
    .local v3, "tmp_info":Lcom/iflytek/base/skin/ThemeInfo;
    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {v3}, Lcom/iflytek/base/skin/ThemeInfo;->getThemeDir()Ljava/lang/String;

    move-result-object v2

    .line 125
    :cond_0
    iput-object v2, v1, Lnx;->c:Ljava/lang/String;

    .line 131
    .end local v3    # "tmp_info":Lcom/iflytek/base/skin/ThemeInfo;
    :goto_0
    iget-object v4, p0, Lns$1;->b:Lns$a;

    if-eqz v4, :cond_1

    .line 132
    iget-object v4, p0, Lns$1;->b:Lns$a;

    invoke-interface {v4, v1}, Lns$a;->a(Lnx;)V

    .line 134
    :cond_1
    return-void

    .line 129
    :cond_2
    const/4 v4, 0x1

    iput v4, v1, Lnx;->b:I

    goto :goto_0
.end method
