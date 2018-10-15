.class Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity$1;
.super Landroid/widget/RelativeLayout;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity$1;->this$0:Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 51
    const-string/jumbo v2, "onGlobalLayout()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "base.onSizeChanged begin, h is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,oh is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-lez p4, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity$1;->getContext()Landroid/content/Context;

    move-result-object v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v2, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    .line 55
    .local v1, "minHeight":I
    const/16 v2, 0xc8

    if-ge v1, v2, :cond_0

    .line 56
    const/16 v1, 0xc8

    .line 58
    :cond_0
    sub-int v0, p2, p4

    .line 59
    .local v0, "dalta":I
    const-string/jumbo v2, "onGlobalLayout()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dalta= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,minHeight= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    neg-int v2, v1

    if-gt v0, v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity$1;->this$0:Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onSoftInputMethodChange(Z)V

    .line 67
    .end local v0    # "dalta":I
    .end local v1    # "minHeight":I
    :cond_1
    :goto_0
    return-void

    .line 63
    .restart local v0    # "dalta":I
    .restart local v1    # "minHeight":I
    :cond_2
    if-lt v0, v1, :cond_1

    .line 64
    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity$1;->this$0:Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onSoftInputMethodChange(Z)V

    goto :goto_0
.end method
