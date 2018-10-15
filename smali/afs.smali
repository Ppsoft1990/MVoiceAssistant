.class public Lafs;
.super Ljava/lang/Object;
.source "ScheduleItemViewDelegate.java"

# interfaces
.implements Ladv;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ladv",
        "<",
        "Laee;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Laur;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f03006a

    return v0
.end method

.method public a(Lady;Laee;I)V
    .locals 6
    .param p1, "viewHolder"    # Lady;
    .param p2, "message"    # Laee;
    .param p3, "position"    # I

    .prologue
    .line 43
    invoke-virtual {p1}, Lady;->a()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lafs;->b:Landroid/content/Context;

    .line 44
    instance-of v4, p2, Laft;

    if-eqz v4, :cond_0

    move-object v0, p2

    .line 45
    check-cast v0, Laft;

    .line 46
    .local v0, "searchListMessage":Laft;
    iget-object v4, v0, Laft;->a:Laur;

    iput-object v4, p0, Lafs;->a:Laur;

    .line 47
    iget-object v4, p0, Lafs;->a:Laur;

    if-nez v4, :cond_1

    .line 65
    .end local v0    # "searchListMessage":Laft;
    :cond_0
    :goto_0
    return-void

    .line 50
    .restart local v0    # "searchListMessage":Laft;
    :cond_1
    iget-object v4, p0, Lafs;->a:Laur;

    invoke-virtual {v4}, Laur;->a()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 53
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0323

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    .local v3, "titleView":Landroid/widget/TextView;
    iget-object v4, p0, Lafs;->a:Laur;

    invoke-virtual {v4}, Laur;->a()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    const-string/jumbo v2, "\u751f\u6d3b\u63d0\u9192"

    .line 58
    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0324

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    .local v1, "timeView":Landroid/widget/TextView;
    iget-object v4, p0, Lafs;->b:Landroid/content/Context;

    iget-object v5, p0, Lafs;->a:Laur;

    invoke-virtual {v5}, Laur;->a()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v5

    invoke-static {v4, v5}, Lawh;->c(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0322

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p1}, Lady;->b()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0325

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lady;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 27
    check-cast p2, Laee;

    invoke-virtual {p0, p1, p2, p3}, Lafs;->a(Lady;Laee;I)V

    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 70
    return-void
.end method

.method public a(Laee;)Z
    .locals 1
    .param p1, "item"    # Laee;

    .prologue
    .line 38
    instance-of v0, p1, Laft;

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 27
    check-cast p1, Laee;

    invoke-virtual {p0, p1}, Lafs;->a(Laee;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 94
    :goto_0
    :pswitch_0
    return-void

    .line 77
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafs;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    const-string/jumbo v1, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    iget-object v2, p0, Lafs;->a:Laur;

    invoke-virtual {v2}, Laur;->a()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v1, "operation_type"

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->modify:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string/jumbo v1, "jump_from"

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;->dialogmode:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string/jumbo v1, "jump_from_view"

    const-string/jumbo v2, "fromNewRemindView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lafs;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafs;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleHomePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lafs;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    iget-object v1, p0, Lafs;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    const-string/jumbo v2, "mic"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0322
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
