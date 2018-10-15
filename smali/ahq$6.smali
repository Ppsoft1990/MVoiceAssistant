.class Lahq$6;
.super Ljava/lang/Object;
.source "HomeSplashScreenHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahq;


# direct methods
.method constructor <init>(Lahq;)V
    .locals 0
    .param p1, "this$0"    # Lahq;

    .prologue
    .line 515
    iput-object p1, p0, Lahq$6;->a:Lahq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 518
    const-string/jumbo v0, "HomeSplashScreenHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lahq$6;->a:Lahq;

    invoke-static {v2}, Lahq;->u(Lahq;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u8df3\u8fc7\u5e7f\u544a |  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahq$6;->a:Lahq;

    invoke-static {v2}, Lahq;->u(Lahq;)J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lahq$6;->a:Lahq;

    invoke-static {v0}, Lahq;->t(Lahq;)Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lahq$6;->a:Lahq;

    invoke-static {v0}, Lahq;->t(Lahq;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 523
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lahq$6;->a:Lahq;

    invoke-static {v2}, Lahq;->u(Lahq;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 524
    iget-object v0, p0, Lahq$6;->a:Lahq;

    invoke-static {v0}, Lahq;->v(Lahq;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lahq$6;->a:Lahq;

    invoke-static {v0}, Lahq;->t(Lahq;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8df3\u8fc7\u5e7f\u544a |  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lahq$6;->a:Lahq;

    invoke-static {v2}, Lahq;->u(Lahq;)J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 531
    :goto_1
    iget-object v0, p0, Lahq$6;->a:Lahq;

    iget-object v1, p0, Lahq$6;->a:Lahq;

    invoke-static {v1}, Lahq;->u(Lahq;)J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lahq;->b(Lahq;J)J

    .line 532
    iget-object v0, p0, Lahq$6;->a:Lahq;

    invoke-virtual {v0}, Lahq;->q()Lahw;

    move-result-object v0

    iget-object v1, p0, Lahq$6;->a:Lahq;

    invoke-static {v1}, Lahq;->s(Lahq;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lahw;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 529
    :cond_1
    iget-object v0, p0, Lahq$6;->a:Lahq;

    invoke-static {v0}, Lahq;->t(Lahq;)Landroid/widget/Button;

    move-result-object v0

    const-string/jumbo v1, "\u8df3\u8fc7"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 534
    :cond_2
    iget-object v0, p0, Lahq$6;->a:Lahq;

    invoke-virtual {v0}, Lahq;->k()V

    goto :goto_0
.end method
