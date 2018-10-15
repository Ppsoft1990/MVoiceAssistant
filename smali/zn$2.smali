.class Lzn$2;
.super Ljava/util/TimerTask;
.source "CAFNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzn;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzn;


# direct methods
.method constructor <init>(Lzn;)V
    .locals 0
    .param p1, "this$0"    # Lzn;

    .prologue
    .line 393
    iput-object p1, p0, Lzn$2;->a:Lzn;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 396
    iget-object v0, p0, Lzn$2;->a:Lzn;

    invoke-static {v0}, Lzn;->b(Lzn;)Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x7f0b04b2

    const-string/jumbo v2, "\u6b63\u5728\u66f4\u65b0"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lzn$2;->a:Lzn;

    invoke-static {v0}, Lzn;->b(Lzn;)Landroid/widget/RemoteViews;

    move-result-object v1

    const v2, 0x7f0b04b1

    iget-object v3, p0, Lzn$2;->a:Lzn;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ic_notificationbar_loading_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lzn$2;->a:Lzn;

    invoke-static {v0}, Lzn;->c(Lzn;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "white"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lzn$2;->a:Lzn;

    invoke-static {v4}, Lzn;->d(Lzn;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lzn;->a(Lzn;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 398
    iget-object v0, p0, Lzn$2;->a:Lzn;

    invoke-static {v0}, Lzn;->e(Lzn;)V

    .line 399
    iget-object v0, p0, Lzn$2;->a:Lzn;

    invoke-static {v0}, Lzn;->f(Lzn;)I

    .line 400
    iget-object v0, p0, Lzn$2;->a:Lzn;

    invoke-static {v0}, Lzn;->d(Lzn;)I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lzn$2;->a:Lzn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lzn;->a(Lzn;I)I

    .line 403
    :cond_0
    return-void

    .line 397
    :cond_1
    const-string/jumbo v0, "dark"

    goto :goto_0
.end method
