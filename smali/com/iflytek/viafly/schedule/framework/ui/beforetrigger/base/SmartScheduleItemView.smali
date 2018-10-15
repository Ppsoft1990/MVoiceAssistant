.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "SmartScheduleItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

.field private f:I

.field private g:Lavx;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILavx;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scheduleId"    # I
    .param p3, "onDeleteGuideShow"    # Lavx;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const-string/jumbo v0, "SmartScheduleItemView"

    const-string/jumbo v1, "ScheduleTodoItem:ScheduleCategory.SMARTSCHEDULE"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->a:Landroid/content/Context;

    .line 46
    iput p2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->f:I

    .line 47
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SMARTSCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->e:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    .line 48
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->g:Lavx;

    .line 49
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->setView(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method private setView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 97
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03010d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 98
    const v1, 0x7f0b0625

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->b:Landroid/widget/LinearLayout;

    .line 99
    const v1, 0x7f0b0626

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->c:Landroid/widget/ImageView;

    .line 100
    const v1, 0x7f0b0627

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->d:Landroid/widget/TextView;

    .line 101
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 54
    const-string/jumbo v2, "SmartScheduleItemView"

    const-string/jumbo v3, "onClick()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 57
    :pswitch_0
    const-string/jumbo v2, "SmartScheduleItemView"

    const-string/jumbo v3, "item onClick()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->e:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SMARTSCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    if-ne v2, v3, :cond_0

    .line 59
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->f:I

    if-ne v6, v2, :cond_2

    .line 60
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->startScheduleDetailActivity(I)V

    .line 70
    :cond_1
    :goto_1
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->f:I

    invoke-static {v2}, Lawh;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "smartType":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v2

    const-string/jumbo v3, "scheduleList"

    invoke-virtual {v2, v1, v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v1    # "smartType":Ljava/lang/String;
    :cond_2
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->f:I

    if-ne v5, v2, :cond_3

    .line 62
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->startScheduleDetailActivity(I)V

    goto :goto_1

    .line 63
    :cond_3
    const/4 v2, 0x1

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->f:I

    if-ne v2, v3, :cond_4

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->a:Landroid/content/Context;

    const-class v3, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x30000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 67
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->f:I

    if-ne v4, v2, :cond_1

    .line 68
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->getInstance()Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleSwitchManager;->startScheduleDetailActivity(I)V

    goto :goto_1

    .line 55
    :pswitch_data_0
    .packed-switch 0x7f0b0625
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    const-string/jumbo v0, "SmartScheduleItemView"

    const-string/jumbo v1, "onLongClick()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->g:Lavx;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->g:Lavx;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->e:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->f:I

    invoke-interface {v0, v1, v2}, Lavx;->b(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;I)V

    .line 85
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 3
    .param p1, "imageRes"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->c:Landroid/widget/ImageView;

    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, p1, v2}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/SmartScheduleItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    return-void
.end method
