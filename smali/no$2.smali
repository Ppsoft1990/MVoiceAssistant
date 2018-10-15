.class Lno$2;
.super Ljava/lang/Object;
.source "DownloadController.java"

# interfaces
.implements Lns$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno;->a(Lcom/iflytek/common/download/entities/DownloadInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/common/download/entities/DownloadInfo;

.field final synthetic b:Lno;


# direct methods
.method constructor <init>(Lno;Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 0
    .param p1, "this$0"    # Lno;

    .prologue
    .line 570
    iput-object p1, p0, Lno$2;->b:Lno;

    iput-object p2, p0, Lno$2;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnx;)V
    .locals 3
    .param p1, "result"    # Lnx;

    .prologue
    .line 574
    const-string/jumbo v0, "DownloadController"

    const-string/jumbo v1, "installResult"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    if-eqz p1, :cond_0

    .line 576
    iget-object v0, p0, Lno$2;->b:Lno;

    iget-object v1, p0, Lno$2;->b:Lno;

    iget-object v2, p0, Lno$2;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-static {v1, v2, p1}, Lno;->a(Lno;Lcom/iflytek/common/download/entities/DownloadInfo;Lnx;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lno;->a(Landroid/content/Intent;)V

    .line 578
    :cond_0
    return-void
.end method
