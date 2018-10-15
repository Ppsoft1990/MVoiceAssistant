.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;
.super Landroid/os/Handler;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    .prologue
    .line 893
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 895
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 896
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 897
    .local v0, "currY":I
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->i(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)I

    move-result v2

    sub-int v1, v2, v0

    .line 898
    .local v1, "delta":I
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v2, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;I)I

    .line 899
    if-eqz v1, :cond_0

    .line 900
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v2, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;I)V

    .line 905
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 906
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    .line 907
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 909
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 910
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->j(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 916
    :goto_0
    return-void

    .line 911
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_3

    .line 912
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->k(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;)V

    goto :goto_0

    .line 914
    :cond_3
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/WheelView;->c()V

    goto :goto_0
.end method
