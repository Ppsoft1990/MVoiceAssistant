.class public Lcom/iflytek/viafly/news/NewsRemindView;
.super Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;
.source "NewsRemindView.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p1, p0, Lcom/iflytek/viafly/news/NewsRemindView;->a:Landroid/content/Context;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 24
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0300e9

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorTipID"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/iflytek/viafly/news/NewsRemindView;->a:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 31
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0300ec

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/news/NewsRemindView;->setErrorTip(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    return-object v0
.end method

.method public setErrorTip(I)V
    .locals 2
    .param p1, "tipID"    # I

    .prologue
    .line 57
    const v1, 0x7f0b0587

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/news/NewsRemindView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    .line 58
    .local v0, "errorTip":Lcom/iflytek/base/skin/customView/XTextView;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(I)V

    .line 61
    :cond_0
    return-void
.end method

.method public setErrorTip(Ljava/lang/String;)V
    .locals 2
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 45
    const v1, 0x7f0b0587

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/news/NewsRemindView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    .line 46
    .local v0, "errorTip":Lcom/iflytek/base/skin/customView/XTextView;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_0
    return-void
.end method
