.class public Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;
.super Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;
.source "ScheduleCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final o:Ljava/lang/String;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Laln;

.field private t:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laic;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "homeCardItem"    # Laic;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/homepage/base/AbsHomeCardView;-><init>(Landroid/content/Context;Laic;)V

    .line 38
    const-string/jumbo v0, "ScheduleCardView"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->o:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->g()V

    .line 53
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Laln;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Laln;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->s:Laln;

    .line 74
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 138
    const-string/jumbo v0, "ScheduleCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-nez p1, :cond_0

    .line 158
    :goto_0
    :pswitch_0
    return-void

    .line 142
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView$1;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 146
    :pswitch_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->e()V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 5

    .prologue
    .line 57
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 58
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03009c

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 59
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->a(Landroid/widget/LinearLayout;)V

    .line 60
    const v2, 0x7f0b0402

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->p:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f0b0403

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->q:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f0b0404

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->r:Landroid/widget/TextView;

    .line 63
    const v2, 0x7f0b0401

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v2, 0x7f0b0405

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->a()V

    .line 66
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public e()V
    .locals 6

    .prologue
    .line 78
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->a:Landroid/content/Context;

    invoke-static {v1}, Lauu;->a(Landroid/content/Context;)Lauu;

    move-result-object v1

    invoke-virtual {v1}, Lauu;->a()V

    .line 79
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->a:Landroid/content/Context;

    invoke-static {v1}, Lauu;->a(Landroid/content/Context;)Lauu;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lauu;->e(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->t:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 80
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->t:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-nez v1, :cond_0

    .line 81
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->setVisibility(I)V

    .line 94
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->setVisibility(I)V

    .line 85
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->getDefaultParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->t:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lbaa;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->t:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v2, v3}, Lawh;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->t:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const-string/jumbo v0, "\u751f\u6d3b\u63d0\u9192"

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    const-string/jumbo v1, "content"

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->d(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 111
    :sswitch_0
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->t:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-eqz v1, :cond_0

    .line 114
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->a:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    const-string/jumbo v1, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->t:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 119
    const-string/jumbo v1, "operation_type"

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->modify:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string/jumbo v1, "jump_from"

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;->dialogmode:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string/jumbo v1, "jump_from_view"

    const-string/jumbo v2, "fromNewRemindView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 125
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->a:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    const-string/jumbo v2, "card"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0401 -> :sswitch_0
        0x7f0b0405 -> :sswitch_1
    .end sparse-switch
.end method

.method public setHomeResultCallback(Lail;)V
    .locals 1
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/schedule/ScheduleCardView;->s:Laln;

    invoke-virtual {v0, p1}, Laln;->a(Lail;)V

    .line 103
    return-void
.end method
