.class public Lcom/iflytek/viafly/ui/dialog/WaitingBodyView;
.super Landroid/widget/LinearLayout;
.source "WaitingBodyView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/WaitingBodyView;->initView(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/dialog/WaitingBodyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/dialog/WaitingBodyView;->setGravity(I)V

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030150

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 22
    .local v0, "progressBarView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/WaitingBodyView;->addView(Landroid/view/View;)V

    .line 23
    return-void
.end method
