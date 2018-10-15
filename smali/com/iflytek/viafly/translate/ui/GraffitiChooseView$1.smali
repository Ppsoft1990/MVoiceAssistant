.class Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;
.super Ljava/lang/Object;
.source "GraffitiChooseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v3, 0x0

    .line 626
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    .line 627
    :cond_0
    const-string/jumbo v0, "Runnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAutoCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v2}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->d(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)I

    .line 630
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->a(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->e(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)F

    move-result v1

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->f(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)F

    move-result v1

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->e(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->f(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-virtual {v0, v3, v3}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c(FF)V

    .line 635
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->g(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 641
    :goto_1
    return-void

    .line 633
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->e(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)F

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v2}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->e(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)F

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v2}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->f(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)F

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->f(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)F

    move-result v3

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v4}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c(FF)V

    goto :goto_0

    .line 637
    :cond_4
    const-string/jumbo v0, "Runnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEditable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-static {v2}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string/jumbo v0, "Runnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEditable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$1;->a:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->setEditable(Z)V

    goto :goto_1
.end method
