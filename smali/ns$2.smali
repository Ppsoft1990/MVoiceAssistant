.class Lns$2;
.super Ljava/lang/Object;
.source "InstallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lns;->b(Lcom/iflytek/common/download/entities/DownloadInfo;Ljava/lang/String;Lns$a;)V
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
    .line 149
    iput-object p1, p0, Lns$2;->c:Lns;

    iput-object p2, p0, Lns$2;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    iput-object p3, p0, Lns$2;->b:Lns$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 153
    iget-object v3, p0, Lns$2;->c:Lns;

    iget-object v4, p0, Lns$2;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lns;->a(I)Z

    move-result v1

    .line 154
    .local v1, "isSuccess":Z
    const/4 v0, 0x0

    .line 155
    .local v0, "errorCode":I
    if-nez v1, :cond_0

    .line 156
    const/16 v0, 0xf

    .line 158
    :cond_0
    new-instance v2, Lnx;

    invoke-direct {v2}, Lnx;-><init>()V

    .line 159
    .local v2, "result":Lnx;
    iput v0, v2, Lnx;->b:I

    .line 160
    iget-object v3, p0, Lns$2;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v3}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v3

    iput v3, v2, Lnx;->a:I

    .line 161
    iget-object v3, p0, Lns$2;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v3}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lnx;->c:Ljava/lang/String;

    .line 162
    iget-object v3, p0, Lns$2;->b:Lns$a;

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Lns$2;->b:Lns$a;

    invoke-interface {v3, v2}, Lns$a;->a(Lnx;)V

    .line 165
    :cond_1
    return-void
.end method
