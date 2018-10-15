.class Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;
.super Ljava/lang/Object;
.source "TranslatePicActivity.java"

# interfaces
.implements Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->l(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    const-string/jumbo v0, "CameraUtil"

    const-string/jumbo v1, "you click so fast "

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :goto_0
    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->m(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 8
    .param p1, "isClick"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 711
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->l(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 712
    const-string/jumbo v3, "CameraUtil"

    const-string/jumbo v4, "you translate so fast "

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->n(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->getRecognizeResult()Ljava/util/List;

    move-result-object v2

    .line 716
    .local v2, "recognizeResults":Ljava/util/List;, "Ljava/util/List<Laxs;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 719
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v3, v7}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;Z)Z

    .line 720
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v3, ""

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 721
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laxs;

    .line 722
    .local v1, "recognizeResult":Laxs;
    invoke-virtual {v1}, Laxs;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 724
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Laxs;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 726
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v4, v6}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;Z)Z

    goto :goto_1

    .line 729
    .end local v1    # "recognizeResult":Laxs;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 730
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    const-string/jumbo v4, "\u672a\u9009\u4e2d\u7ffb\u8bd1\u5185\u5bb9"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 735
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->o(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->o(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 736
    :cond_5
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->p(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->b(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;I)I

    .line 737
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->i(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 738
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Layv;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Layv;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 739
    if-eqz p1, :cond_6

    .line 740
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v3}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v3

    const-string/jumbo v4, "translateAll"

    invoke-virtual {v3, v4}, Lxq;->i(Ljava/lang/String;)V

    .line 744
    :goto_2
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 745
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v3, v7}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->b(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;Z)Z

    goto/16 :goto_0

    .line 742
    :cond_6
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v3}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v3

    const-string/jumbo v4, "translate"

    invoke-virtual {v3, v4}, Lxq;->i(Ljava/lang/String;)V

    goto :goto_2

    .line 748
    :cond_7
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->r(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->b(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;I)I

    .line 749
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->i(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
