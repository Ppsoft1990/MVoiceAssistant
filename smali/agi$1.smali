.class Lagi$1;
.super Ljava/lang/Object;
.source "DownloadListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagi;->a(Lagi$a;Lcom/iflytek/common/download/entities/DownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/common/download/entities/DownloadInfo;

.field final synthetic b:Lagi;


# direct methods
.method constructor <init>(Lagi;Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 0
    .param p1, "this$0"    # Lagi;

    .prologue
    .line 275
    iput-object p1, p0, Lagi$1;->b:Lagi;

    iput-object p2, p0, Lagi$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 278
    iget-object v1, p0, Lagi$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lagi$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v0

    .line 280
    .local v0, "status":I
    const-string/jumbo v1, "DownloadListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick, status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    packed-switch v0, :pswitch_data_0

    .line 307
    .end local v0    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 284
    .restart local v0    # "status":I
    :pswitch_0
    const-string/jumbo v1, "DownloadListAdapter"

    const-string/jumbo v2, "onClick || STATUS_FINISHED OR STATUS_PENDDING"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :pswitch_1
    iget-object v1, p0, Lagi$1;->b:Lagi;

    invoke-static {v1}, Lagi;->a(Lagi;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v1

    iget-object v2, p0, Lagi$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lno;->e(Ljava/lang/String;)V

    .line 289
    const-string/jumbo v1, "DownloadListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick || STATUS_RUNNING || url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lagi$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v3}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lagi$1;->b:Lagi;

    const-string/jumbo v2, "FD22006"

    iget-object v3, p0, Lagi$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-static {v1, v2, v3}, Lagi;->a(Lagi;Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto :goto_0

    .line 293
    :pswitch_2
    iget-object v1, p0, Lagi$1;->b:Lagi;

    iget-object v2, p0, Lagi$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-static {v1, v2}, Lagi;->a(Lagi;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 294
    const-string/jumbo v1, "DownloadListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick || STATUS_STOPPED || url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lagi$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v3}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Lagi$1;->b:Lagi;

    const-string/jumbo v2, "FD22007"

    iget-object v3, p0, Lagi$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-static {v1, v2, v3}, Lagi;->a(Lagi;Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto :goto_0

    .line 298
    :pswitch_3
    iget-object v1, p0, Lagi$1;->b:Lagi;

    invoke-static {v1}, Lagi;->a(Lagi;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v1

    iget-object v2, p0, Lagi$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lno;->a(Ljava/lang/String;Z)V

    .line 299
    iget-object v1, p0, Lagi$1;->b:Lagi;

    iget-object v2, p0, Lagi$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-static {v1, v2}, Lagi;->a(Lagi;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 300
    const-string/jumbo v1, "DownloadListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick || STATUS_ERROR || url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lagi$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v3}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v1, p0, Lagi$1;->b:Lagi;

    const-string/jumbo v2, "FD22002"

    iget-object v3, p0, Lagi$1;->a:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-static {v1, v2, v3}, Lagi;->a(Lagi;Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto/16 :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
