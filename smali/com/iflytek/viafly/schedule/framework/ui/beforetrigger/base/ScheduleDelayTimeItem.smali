.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "ScheduleDelayTimeItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/base/skin/customView/XImageView;

.field private b:Lcom/iflytek/base/skin/customView/XTextView;

.field private c:I

.field private d:Z

.field private e:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem$a;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem$a;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "min"    # I
    .param p3, "onCheckedChangeListener"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem$a;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput p2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->c:I

    .line 30
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->e:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem$a;

    .line 31
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->setView(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private setView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0300fc

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    const v1, 0x7f0b05ef

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->a:Lcom/iflytek/base/skin/customView/XImageView;

    .line 39
    const v1, 0x7f0b05f0

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->b:Lcom/iflytek/base/skin/customView/XTextView;

    .line 40
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->b:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u5206\u949f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v1, 0x7f0b05f1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->f:Landroid/view/View;

    .line 43
    invoke-virtual {p0, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->a:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v1, "image.remind_manage_checkbox_selected_new"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->d:Z

    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->e:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem$a;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->e:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem$a;

    iget-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->d:Z

    invoke-interface {v0, p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem$a;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;Z)V

    .line 52
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->a:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v1, "image.remind_manage_checkbox_unselected"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->d:Z

    .line 57
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->e:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem$a;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->e:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem$a;

    iget-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->d:Z

    invoke-interface {v0, p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem$a;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;Z)V

    .line 60
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->d:Z

    if-eqz v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->d:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 72
    .local v0, "isSelect":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->a()V

    goto :goto_0

    .line 71
    .end local v0    # "isSelect":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 75
    .restart local v0    # "isSelect":Z
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->b()V

    goto :goto_0
.end method

.method public setLongLine(Z)V
    .locals 6
    .param p1, "isLongTime"    # Z

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->f:Landroid/view/View;

    if-nez v2, :cond_0

    .line 97
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_1

    .line 89
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 90
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 96
    :goto_1
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->f:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleDelayTimeItem;->getContext()Landroid/content/Context;

    move-result-object v2

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {v2, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    .line 93
    .local v0, "marginPx":I
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 94
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method
