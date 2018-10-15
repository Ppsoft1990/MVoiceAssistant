.class public Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTitleView;
.super Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;
.source "ScheduleTitleView.java"


# instance fields
.field private a:Lcom/iflytek/base/skin/customView/XTextView;

.field private b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p3, "position"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogTitleView;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTitleView;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;I)V

    .line 36
    iput-object p2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTitleView;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTitleView;->setBackgroundColor(I)V

    .line 38
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p3, "position"    # I

    .prologue
    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 45
    .local v2, "inflater":Landroid/view/LayoutInflater;
    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v0

    .line 47
    .local v0, "businessType":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getFrom()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    move-result-object v1

    .line 136
    .local v1, "from":Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;
    const v3, 0x7f0300f0

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 141
    .end local v0    # "businessType":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .end local v1    # "from":Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;
    :cond_0
    const v3, 0x7f0b0597

    .line 142
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTitleView;->a:Lcom/iflytek/base/skin/customView/XTextView;

    .line 166
    return-void
.end method


# virtual methods
.method public getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTitleView;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTitleView;->b:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
