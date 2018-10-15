.class public abstract Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "ScheduleEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;,
        Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;
    }
.end annotation


# instance fields
.field protected a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field protected b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

.field protected c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->c:Z

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    const-string/jumbo v0, "GoChannelWhenFinishFlag"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->c:Z

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string/jumbo v0, "ScheduleEditActivity"

    const-string/jumbo v1, "showToastTip()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 130
    return-void
.end method

.method protected a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z
    .locals 5
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "ret":Z
    if-eqz p1, :cond_1

    .line 158
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .line 159
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->getRepeatType()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    move-result-object v1

    .line 161
    .local v1, "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    if-ne v2, v1, :cond_1

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->b:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->isLegal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    const/4 v0, 0x1

    .line 168
    .end local v1    # "type":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    :cond_1
    const-string/jumbo v2, "ScheduleEditActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "------>> checkDateTimeInfor() | return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 140
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.schedule.SCHEDULE_ADD_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "addSuccessIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    const-string/jumbo v1, "ScheduleEditActivity"

    const-string/jumbo v2, "-------->> send add success brodcast!"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->c:Z

    if-eqz v1, :cond_0

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_ENTER_SCHEDULE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->finish()V

    .line 98
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 110
    const-string/jumbo v1, "ScheduleEditActivity"

    const-string/jumbo v2, "onActivityResult()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/16 v1, 0x6e

    if-ne p1, v1, :cond_0

    .line 112
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 113
    const-string/jumbo v1, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 114
    .local v0, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 116
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->a()V

    .line 121
    .end local v0    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->a(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->a(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method
