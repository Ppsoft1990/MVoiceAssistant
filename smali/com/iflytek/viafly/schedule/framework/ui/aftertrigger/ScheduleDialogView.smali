.class public Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;
.super Landroid/widget/LinearLayout;
.source "ScheduleDialogView.java"


# instance fields
.field protected a:Landroid/widget/LinearLayout;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/LinearLayout;

.field protected e:Landroid/widget/LinearLayout;

.field protected f:Lcom/iflytek/base/skin/customView/XButton;

.field protected g:Landroid/widget/Button;

.field protected h:Lcom/iflytek/base/skin/customView/XButton;

.field protected i:Landroid/widget/Button;

.field protected j:Landroid/widget/Button;

.field protected k:Landroid/widget/LinearLayout;

.field protected l:Landroid/widget/LinearLayout;

.field m:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->a(Landroid/content/Context;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-string/jumbo v1, "DialogView"

    const-string/jumbo v2, "-------------->> initView()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->setBackgroundColor(I)V

    .line 60
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->setGravity(I)V

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030100

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->m:Landroid/widget/LinearLayout;

    .line 65
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->m:Landroid/widget/LinearLayout;

    const v2, 0x7f0b03a8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->a:Landroid/widget/LinearLayout;

    .line 66
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->m:Landroid/widget/LinearLayout;

    const v2, 0x7f0b03a9

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->b:Landroid/widget/TextView;

    .line 67
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->m:Landroid/widget/LinearLayout;

    const v2, 0x7f0b03aa

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->c:Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->m:Landroid/widget/LinearLayout;

    const v2, 0x7f0b05f7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->i:Landroid/widget/Button;

    .line 69
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->m:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00ab

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->d:Landroid/widget/LinearLayout;

    .line 70
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->m:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00ae

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->e:Landroid/widget/LinearLayout;

    .line 71
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->m:Landroid/widget/LinearLayout;

    const v2, 0x7f0b03ac

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->j:Landroid/widget/Button;

    .line 72
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->m:Landroid/widget/LinearLayout;

    const v2, 0x7f0b03ad

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->k:Landroid/widget/LinearLayout;

    .line 73
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->m:Landroid/widget/LinearLayout;

    const v2, 0x7f0b03ae

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->f:Lcom/iflytek/base/skin/customView/XButton;

    .line 74
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->m:Landroid/widget/LinearLayout;

    const v2, 0x7f0b03b0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->g:Landroid/widget/Button;

    .line 75
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->m:Landroid/widget/LinearLayout;

    const v2, 0x7f0b03af

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->h:Lcom/iflytek/base/skin/customView/XButton;

    .line 76
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->m:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00aa

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->l:Landroid/widget/LinearLayout;

    .line 77
    return-void
.end method

.method public getBody()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getExitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->i:Landroid/widget/Button;

    return-object v0
.end method

.method public getFootBar()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getFootBarLevel2()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLeftButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->f:Lcom/iflytek/base/skin/customView/XButton;

    return-object v0
.end method

.method public getMainTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMiddleButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->g:Landroid/widget/Button;

    return-object v0
.end method

.method public getRightButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->h:Lcom/iflytek/base/skin/customView/XButton;

    return-object v0
.end method

.method public bridge synthetic getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->getRootView()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->m:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSecondryTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSingleCancelButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->j:Landroid/widget/Button;

    return-object v0
.end method

.method public getTitleBar()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    :try_start_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    const-string/jumbo v1, "DialogView"

    const-string/jumbo v2, "onDetachedFromWindow()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->removeAllViews()V

    .line 144
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->a:Landroid/widget/LinearLayout;

    .line 145
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->b:Landroid/widget/TextView;

    .line 146
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->c:Landroid/widget/TextView;

    .line 147
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->i:Landroid/widget/Button;

    .line 148
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->d:Landroid/widget/LinearLayout;

    .line 149
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->e:Landroid/widget/LinearLayout;

    .line 150
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->j:Landroid/widget/Button;

    .line 151
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->k:Landroid/widget/LinearLayout;

    .line 152
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->f:Lcom/iflytek/base/skin/customView/XButton;

    .line 153
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->g:Landroid/widget/Button;

    .line 154
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->h:Lcom/iflytek/base/skin/customView/XButton;

    .line 155
    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleDialogView;->l:Landroid/widget/LinearLayout;

    .line 156
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DialogView"

    const-string/jumbo v2, "ScheduleDialogView super.onDetachedFromWindow\u51fa\u9519"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
