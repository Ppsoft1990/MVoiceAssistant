.class public Lcom/iflytek/viafly/smartschedule/ScheduleView;
.super Landroid/widget/LinearLayout;
.source "ScheduleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/ScheduleView$OnTipItemClick;
    }
.end annotation


# instance fields
.field private onTipItemClick:Lcom/iflytek/viafly/smartschedule/ScheduleView$OnTipItemClick;

.field private status:Z

.field private type:I

.field private viewBack:Landroid/widget/ImageView;

.field private viewButton:Landroid/widget/TextView;

.field private viewLogo:Lcom/iflytek/base/skin/customView/XImageView;

.field private viewRoot:Landroid/widget/RelativeLayout;

.field private viewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/iflytek/viafly/smartschedule/ScheduleView$OnTipItemClick;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "onTipItemClick"    # Lcom/iflytek/viafly/smartschedule/ScheduleView$OnTipItemClick;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p3, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->onTipItemClick:Lcom/iflytek/viafly/smartschedule/ScheduleView$OnTipItemClick;

    .line 41
    iput p2, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->type:I

    .line 42
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->initView()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/ScheduleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/ScheduleView;

    .prologue
    .line 21
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->type:I

    return v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/smartschedule/ScheduleView;)Lcom/iflytek/viafly/smartschedule/ScheduleView$OnTipItemClick;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/ScheduleView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->onTipItemClick:Lcom/iflytek/viafly/smartschedule/ScheduleView$OnTipItemClick;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030113

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    const v0, 0x7f0b0645

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->viewRoot:Landroid/widget/RelativeLayout;

    .line 48
    const v0, 0x7f0b0646

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->viewBack:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f0b0648

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->viewLogo:Lcom/iflytek/base/skin/customView/XImageView;

    .line 50
    const v0, 0x7f0b0649

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->viewTitle:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0b064a

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->viewButton:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->viewRoot:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/iflytek/viafly/smartschedule/ScheduleView$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/smartschedule/ScheduleView$1;-><init>(Lcom/iflytek/viafly/smartschedule/ScheduleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->viewButton:Landroid/widget/TextView;

    new-instance v1, Lcom/iflytek/viafly/smartschedule/ScheduleView$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/smartschedule/ScheduleView$2;-><init>(Lcom/iflytek/viafly/smartschedule/ScheduleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/ScheduleView;->removeAllViews()V

    .line 100
    return-void
.end method

.method public getStatus()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->status:Z

    return v0
.end method

.method public setBack(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->viewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 76
    return-void
.end method

.method public setButtonStatue(Z)V
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->status:Z

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->viewButton:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5df2\u6dfb\u52a0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->viewButton:Landroid/widget/TextView;

    const v1, 0x7f0201ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->viewButton:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6dfb\u52a0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->viewButton:Landroid/widget/TextView;

    const v1, 0x7f0201ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 3
    .param p1, "imageRes"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->viewLogo:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, p1, v2}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ScheduleView;->viewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    return-void
.end method
