.class Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;
.super Ljava/lang/Object;
.source "BookPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1280
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v3

    invoke-virtual {v3}, Lamp;->E()I

    move-result v0

    .line 1282
    .local v0, "duration":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 1283
    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1302
    .end local v0    # "duration":I
    :cond_0
    :goto_0
    return-void

    .line 1287
    .restart local v0    # "duration":I
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .line 1288
    invoke-static {v4}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v4

    invoke-virtual {v4}, Lamp;->D()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 1290
    .local v2, "progress":I
    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v3

    invoke-virtual {v3}, Lamp;->D()I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v4

    invoke-virtual {v4}, Lamp;->E()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1291
    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v4

    invoke-virtual {v4}, Lamp;->D()I

    move-result v4

    invoke-static {v3, v4}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;I)V

    .line 1295
    :goto_1
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/base/skin/customView/XSeekBar;->getMax()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 1296
    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->j(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/base/skin/customView/XSeekBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iflytek/base/skin/customView/XSeekBar;->setProgress(I)V

    .line 1297
    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1299
    .end local v0    # "duration":I
    .end local v2    # "progress":I
    :catch_0
    move-exception v1

    .line 1300
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BookPlayerActivity"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1293
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "duration":I
    .restart local v2    # "progress":I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    iget-object v4, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$3;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v4

    invoke-virtual {v4}, Lamp;->E()I

    move-result v4

    invoke-static {v3, v4}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
