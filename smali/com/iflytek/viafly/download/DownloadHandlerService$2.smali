.class Lcom/iflytek/viafly/download/DownloadHandlerService$2;
.super Ljava/lang/Object;
.source "DownloadHandlerService.java"

# interfaces
.implements Lns$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/download/DownloadHandlerService;->c(Lcom/iflytek/common/download/entities/DownloadInfo;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/common/download/entities/DownloadInfo;

.field final synthetic b:Lcom/iflytek/viafly/download/DownloadHandlerService;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/download/DownloadHandlerService;Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/download/DownloadHandlerService;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$2;->b:Lcom/iflytek/viafly/download/DownloadHandlerService;

    iput-object p2, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$2;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnx;)V
    .locals 3
    .param p1, "result"    # Lnx;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$2;->b:Lcom/iflytek/viafly/download/DownloadHandlerService;

    iget-object v1, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$2;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    iget v2, p1, Lnx;->b:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/viafly/download/DownloadHandlerService;->b(Lcom/iflytek/viafly/download/DownloadHandlerService;Lcom/iflytek/common/download/entities/DownloadInfo;I)V

    .line 151
    return-void
.end method
