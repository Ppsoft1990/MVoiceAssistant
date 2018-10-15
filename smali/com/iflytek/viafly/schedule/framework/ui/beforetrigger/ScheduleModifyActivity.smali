.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;
.super Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;
.source "ScheduleModifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

.field e:Lcom/iflytek/base/skin/customView/XButton;

.field f:Lcom/iflytek/base/skin/customView/XButton;

.field private g:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

.field private h:Ljava/lang/String;

.field private i:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private j:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

.field private k:I

.field private l:Lcom/iflytek/base/skin/customView/XTextView;

.field private m:J

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;-><init>()V

    .line 166
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->m:J

    .line 650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 599
    const-string/jumbo v0, "ScheduleEditActivity"

    const-string/jumbo v2, "initIntent()"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    if-nez p1, :cond_0

    .line 601
    const-string/jumbo v0, "ScheduleEditActivity"

    const-string/jumbo v2, "------->> intent=null -> return false"

    invoke-static {v0, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 632
    :goto_0
    return v0

    .line 604
    :cond_0
    const-string/jumbo v0, "operation_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->g:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    .line 605
    const-string/jumbo v0, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 606
    const-string/jumbo v0, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->i:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 607
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->i:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-nez v0, :cond_1

    move v0, v1

    .line 608
    goto :goto_0

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->i:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->j:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 611
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->j:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-nez v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->i:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getScheduleType()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v0

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    if-ne v0, v2, :cond_4

    .line 613
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->i:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 614
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->j:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 620
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->i:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->k:I

    .line 621
    const-string/jumbo v0, "jump_from_view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->h:Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {p0, v0}, Lauu;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 624
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->add:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->g:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    .line 628
    :goto_2
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->g:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-nez v0, :cond_6

    :cond_3
    move v0, v1

    .line 629
    goto :goto_0

    .line 616
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->i:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v2, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 617
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->j:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    goto :goto_1

    .line 626
    :cond_5
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->modify:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->g:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    goto :goto_2

    .line 632
    :cond_6
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 2
    .param p1, "remind"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->g:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->modify:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->save:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->g:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    :cond_0
    const-string/jumbo v0, "ScheduleEditActivity"

    const-string/jumbo v1, "updateDb() | type=modify -> start update remind..."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelayTime(J)V

    .line 572
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v0

    .line 573
    invoke-interface {v0, p1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 584
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v0}, Laut;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 587
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getScheduleType()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 588
    const-string/jumbo v0, "ScheduleEditActivity"

    const-string/jumbo v1, "updateDb normal schedule , save ringtone"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v0}, Laut;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 593
    :goto_1
    return-void

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->g:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->add:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    const-string/jumbo v0, "ScheduleEditActivity"

    const-string/jumbo v1, "updateDb() | type=add -> start insert a remind..."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 577
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v0

    .line 578
    invoke-interface {v0, p1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->manualAddSchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I

    move-result v0

    if-gez v0, :cond_1

    .line 579
    const-string/jumbo v0, "ScheduleEditActivity"

    const-string/jumbo v1, "updateDb() | insert new remind error"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 591
    :cond_3
    const-string/jumbo v0, "ScheduleEditActivity"

    const-string/jumbo v1, "updateDb weather schedule , no need save ringtone"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->j()V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->k:I

    return v0
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 213
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 214
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    const-string/jumbo v1, "\u786e\u8ba4\u5220\u9664\u6b64\u63d0\u9192\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$2;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V

    .line 215
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u5220\u9664"

    sget-object v3, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v4, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$1;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$1;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;)V

    .line 221
    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 238
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/16 v2, 0x11

    .line 239
    invoke-virtual {v1, v2, v5, v5}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 240
    return-void
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 245
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {p0, v3}, Lauu;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    const-string/jumbo v1, "\u662f\u5426\u4fdd\u5b58\u4fee\u6539\uff1f"

    .line 247
    .local v1, "des":Ljava/lang/String;
    const-string/jumbo v2, "\u4fdd\u5b58"

    .line 252
    .local v2, "right":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "\u53d6\u6d88"

    new-instance v5, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$4;

    invoke-direct {v5, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$4;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;)V

    .line 254
    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v5, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$3;

    invoke-direct {v5, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$3;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;)V

    .line 268
    invoke-virtual {v3, v2, v4, v5}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 274
    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v3

    const/16 v4, 0x11

    .line 275
    invoke-virtual {v3, v4, v6, v6}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 277
    return-void

    .line 249
    .end local v0    # "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    .end local v1    # "des":Ljava/lang/String;
    .end local v2    # "right":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "\u662f\u5426\u6dfb\u52a0\u5230\u6211\u7684\u63d0\u9192\uff1f"

    .line 250
    .restart local v1    # "des":Ljava/lang/String;
    const-string/jumbo v2, "\u6dfb\u52a0"

    .restart local v2    # "right":Ljava/lang/String;
    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e()V

    .line 292
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 293
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->k:I

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->delete(Ljava/lang/Integer;)V

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->finish()V

    goto :goto_0

    .line 299
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->h()V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 497
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    invoke-static {p0}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 503
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lave;->b(I)V

    .line 505
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->k:I

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 510
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->delete(Ljava/lang/Integer;)V

    .line 513
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v0

    .line 514
    .local v0, "scheduleRingtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getScheduleType()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 516
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 517
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 519
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 520
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 524
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 527
    invoke-static {}, Laun;->c()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 528
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->i:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v1

    invoke-static {}, Laun;->c()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v2

    .line 529
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 530
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v1}, Laun;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 533
    :cond_5
    const-string/jumbo v1, "ScheduleEditActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Edit end | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->c()V

    .line 535
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->setResult(I)V

    .line 536
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 9

    .prologue
    const v8, 0x7f0b0598

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 119
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    if-nez v3, :cond_0

    .line 120
    const v3, 0x7f0b0599

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 121
    .local v0, "content":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v3, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->g:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-direct {v3, p0, v4, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;)V

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    .line 122
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 126
    .end local v0    # "content":Lcom/iflytek/base/skin/customView/XLinearLayout;
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 127
    const-string/jumbo v3, "alarmNewsSetting"

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->c()V

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->l:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v3, :cond_3

    .line 132
    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v4

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v4

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v4

    if-ne v3, v4, :cond_4

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->l:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v4, "\u751f\u6d3b\u63d0\u9192"

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->f:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->e:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "need_cover"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 145
    .local v2, "needCover":Z
    if-eqz v2, :cond_5

    .line 146
    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {p0, v3}, Lauu;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 151
    if-eqz v2, :cond_6

    .line 152
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v3, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->setEditable(Z)V

    .line 153
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->e:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 154
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->f:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 163
    :goto_2
    return-void

    .line 135
    .end local v2    # "needCover":Z
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->l:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 148
    .restart local v2    # "needCover":Z
    :cond_5
    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 156
    :cond_6
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->e:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 157
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->f:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    goto :goto_2

    .line 160
    :cond_7
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->e:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v7}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 161
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->f:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    goto :goto_2
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 106
    const-string/jumbo v0, "ScheduleEditActivity"

    const-string/jumbo v1, "initView()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->b()V

    .line 108
    const v0, 0x7f0b0237

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f0b0598

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->l:Lcom/iflytek/base/skin/customView/XTextView;

    .line 113
    const v0, 0x7f0b059b

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->e:Lcom/iflytek/base/skin/customView/XButton;

    .line 114
    const v0, 0x7f0b059c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->f:Lcom/iflytek/base/skin/customView/XButton;

    .line 115
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 540
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.schedule.ACTION_SCHEDULE_DELETE_FROM_LIST_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, "addSuccessIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 545
    const-string/jumbo v1, "ScheduleEditActivity"

    const-string/jumbo v2, "-------->> send add success no brodcast!"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method

.method protected f()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 702
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getNextTime()J

    move-result-wide v0

    .line 703
    .local v0, "nextTime":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a(Ljava/lang/String;)V

    .line 705
    const-string/jumbo v2, "ScheduleEditActivity"

    const-string/jumbo v3, "checkDataLegal() | datetime is dated -> return false"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v2, 0x0

    .line 714
    :goto_0
    return v2

    .line 709
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3, v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 712
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 713
    const-string/jumbo v3, "ScheduleEditActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkDataLegal() | return true | nextTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->g()V

    .line 563
    :cond_0
    invoke-super {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->finish()V

    .line 564
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 14
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 313
    const/4 v11, 0x2

    if-ne p1, v11, :cond_0

    .line 314
    const/16 v11, 0x64

    move/from16 v0, p2

    if-ne v0, v11, :cond_2

    .line 315
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->j()V

    .line 386
    :cond_0
    :goto_0
    const/16 v11, 0x6e

    if-ne p1, v11, :cond_d

    .line 387
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_d

    .line 388
    const-string/jumbo v11, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    .line 389
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 390
    .local v7, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v7, :cond_d

    invoke-virtual {p0, v7}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 391
    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 392
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "content":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 394
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 395
    .local v10, "title":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a()V

    .line 493
    .end local v1    # "content":Ljava/lang/String;
    .end local v7    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .end local v10    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 316
    :cond_2
    const/16 v11, 0x65

    move/from16 v0, p2

    if-ne v0, v11, :cond_5

    .line 318
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    if-eqz v11, :cond_3

    .line 319
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e()V

    .line 321
    :cond_3
    sget-object v11, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v12

    if-ne v11, v12, :cond_4

    .line 322
    iget v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->k:I

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v12

    if-eq v11, v12, :cond_4

    .line 323
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->delete(Ljava/lang/Integer;)V

    .line 326
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->finish()V

    goto :goto_0

    .line 327
    :cond_5
    const/16 v11, 0x67

    move/from16 v0, p2

    if-eq v0, v11, :cond_0

    .line 329
    const/16 v11, 0x66

    move/from16 v0, p2

    if-ne v0, v11, :cond_8

    .line 330
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    if-eqz v11, :cond_6

    .line 331
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e()V

    .line 333
    :cond_6
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v11

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 334
    invoke-virtual {v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v12

    .line 333
    invoke-interface {v11, v12}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->deleteSchedule(I)V

    .line 336
    const-string/jumbo v11, "fromNewRemindView"

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->h:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 337
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->c()V

    .line 341
    :goto_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->finish()V

    goto/16 :goto_0

    .line 339
    :cond_7
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->e()V

    goto :goto_2

    .line 342
    :cond_8
    const/16 v11, 0x3ea

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 343
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 344
    .restart local v1    # "content":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 345
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 346
    .restart local v10    # "title":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 347
    if-eqz p3, :cond_0

    .line 348
    const-string/jumbo v11, "CURRENT_SELECT_RINGTONE_TYPE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 349
    .local v8, "scheduleRingtoneType":Ljava/lang/String;
    sget-object v11, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 350
    const-string/jumbo v11, "CURRENT_SELECT_RINGTONE_DATA"

    .line 351
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/tone/ListDataItem;

    .line 352
    .local v3, "item":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 353
    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->b()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 354
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 356
    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v13

    .line 354
    invoke-virtual {v11, v12, v13}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 357
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->b()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 358
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 359
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 360
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto/16 :goto_0

    .line 363
    .end local v3    # "item":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    :cond_9
    if-eqz v8, :cond_0

    .line 364
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v8}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->valueToType(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 365
    sget-object v11, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 366
    const-string/jumbo v11, "CURRENT_SELECT_RINGTONE_DATA"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/tone/ListDataItem;

    .line 367
    .restart local v3    # "item":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->b()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 368
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 369
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->b()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 372
    .end local v3    # "item":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    :cond_a
    sget-object v11, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 373
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 379
    :goto_3
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto/16 :goto_0

    .line 374
    :cond_b
    sget-object v11, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 375
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    goto :goto_3

    .line 377
    :cond_c
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    goto :goto_3

    .line 401
    .end local v1    # "content":Ljava/lang/String;
    .end local v8    # "scheduleRingtoneType":Ljava/lang/String;
    .end local v10    # "title":Ljava/lang/String;
    :cond_d
    const/16 v11, 0x12c

    if-ne p1, v11, :cond_f

    .line 402
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_f

    if-eqz p3, :cond_f

    .line 403
    const-string/jumbo v11, "EXTRA_SELECTED_PERSONALIZED_RING_DATA"

    .line 404
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 405
    .local v2, "entity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    invoke-static {v2}, Laww;->a(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 407
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v5

    .line 408
    .local v5, "orginRingtoneId":I
    sget-object v11, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v12

    if-ne v11, v12, :cond_e

    .line 409
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->getItem(Ljava/lang/Integer;)Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    move-result-object v4

    .line 410
    .local v4, "orginRingtoneEntity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    if-eqz v4, :cond_e

    .line 411
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 412
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getRole()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getRole()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 413
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getWording()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getWording()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 418
    .end local v4    # "orginRingtoneEntity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    :cond_e
    invoke-static {v2, p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->addItem(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;Landroid/content/Context;)I

    move-result v6

    .line 419
    .local v6, "personlizeRingtoneId":I
    const/4 v11, -0x1

    if-ne v11, v6, :cond_11

    .line 420
    const-string/jumbo v11, "\u573a\u666f\u8bed\u97f3\u4fdd\u5b58\u5931\u8d25"

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 438
    .end local v2    # "entity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .end local v5    # "orginRingtoneId":I
    .end local v6    # "personlizeRingtoneId":I
    :cond_f
    :goto_4
    const/16 v11, 0x190

    if-ne p1, v11, :cond_10

    .line 439
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_10

    if-eqz p3, :cond_10

    .line 470
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 471
    .restart local v1    # "content":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 472
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 473
    .restart local v10    # "title":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 474
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 475
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 476
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a()V

    .line 479
    .end local v1    # "content":Ljava/lang/String;
    .end local v10    # "title":Ljava/lang/String;
    :cond_10
    const/16 v11, 0x78

    if-ne p1, v11, :cond_14

    .line 480
    const-string/jumbo v11, "ScheduleEditActivity"

    const-string/jumbo v12, "EDIT_SCHEDULE_DELAY_RESULT"

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_14

    .line 482
    const-string/jumbo v11, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    .line 483
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 484
    .restart local v7    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v7, :cond_14

    .line 485
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDelaySetting()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelaySetting(I)V

    .line 486
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getAutoDelayFlag()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAutoDelayFlag(I)V

    .line 487
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a()V

    goto/16 :goto_1

    .line 422
    .end local v7    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .restart local v2    # "entity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .restart local v5    # "orginRingtoneId":I
    .restart local v6    # "personlizeRingtoneId":I
    :cond_11
    if-lez v5, :cond_12

    iget v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->k:I

    if-eq v5, v11, :cond_12

    .line 423
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->delete(Ljava/lang/Integer;)V

    .line 425
    :cond_12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->getItem(Ljava/lang/Integer;)Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    move-result-object v9

    .line 426
    .local v9, "tempEntity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 427
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setPersonalRingtoneId(I)V

    .line 428
    if-eqz v9, :cond_13

    .line 429
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v9}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getAudioPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 431
    :cond_13
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 432
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a()V

    goto/16 :goto_4

    .line 492
    .end local v2    # "entity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .end local v5    # "orginRingtoneId":I
    .end local v6    # "personlizeRingtoneId":I
    .end local v9    # "tempEntity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    :cond_14
    invoke-super/range {p0 .. p3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v1}, Lawh;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "ScheduleEditActivity"

    const-string/jumbo v2, "-------------------->>> onClick"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->m:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 176
    const-string/jumbo v1, "ScheduleEditActivity"

    const-string/jumbo v2, "-------------------->>> Click too much!"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->m:J

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 183
    :sswitch_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->i()V

    goto :goto_0

    .line 187
    :sswitch_1
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    const-string/jumbo v2, "save"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e()V

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->j()V

    goto :goto_0

    .line 195
    :sswitch_2
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    const-string/jumbo v2, "delete"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->g()V

    goto :goto_0

    .line 200
    :sswitch_3
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    const-string/jumbo v2, "add"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e()V

    .line 205
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->j()V

    goto :goto_0

    .line 181
    :sswitch_data_0
    .sparse-switch
        0x7f0b0237 -> :sswitch_0
        0x7f0b0598 -> :sswitch_1
        0x7f0b059b -> :sswitch_2
        0x7f0b059c -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const-string/jumbo v1, "ScheduleEditActivity"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-super {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v1, 0x7f0300f1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d()V

    .line 79
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a()V

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_ENTER_SCHEDULE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->finish()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 661
    const-string/jumbo v1, "ScheduleEditActivity"

    const-string/jumbo v2, "--------------->> onKeyDown()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->n:Z

    if-nez v1, :cond_0

    .line 681
    :goto_0
    return v0

    .line 667
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->n:Z

    .line 669
    const/16 v1, 0x52

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 671
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    if-eqz v1, :cond_2

    .line 672
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e()V

    .line 676
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 677
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->i()V

    goto :goto_0

    .line 681
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 654
    const-string/jumbo v0, "ScheduleEditActivity"

    const-string/jumbo v1, "--------------->> onKeyUp()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->n:Z

    .line 656
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    const-string/jumbo v0, "ScheduleEditActivity"

    const-string/jumbo v1, "onNewIntent()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-super {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->a()V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->finish()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 643
    const-string/jumbo v0, "ScheduleEditActivity"

    const-string/jumbo v1, "onStop()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-super {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->onStop()V

    .line 645
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->d:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e()V

    .line 648
    :cond_0
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 639
    return-void
.end method
