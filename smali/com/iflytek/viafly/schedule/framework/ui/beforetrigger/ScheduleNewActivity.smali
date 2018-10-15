.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;
.super Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;
.source "ScheduleNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Lcom/iflytek/base/skin/customView/XTextView;

.field private B:Landroid/view/View;

.field private C:Landroid/view/View;

.field private D:Landroid/view/ViewGroup;

.field private E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

.field private F:J

.field d:Lcom/iflytek/base/skin/customView/XButton;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

.field private j:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

.field private k:Ljava/lang/String;

.field private l:Lcom/iflytek/base/skin/customView/XImageView;

.field private m:Z

.field private n:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private p:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

.field private q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

.field private r:Landroid/widget/LinearLayout;

.field private s:Z

.field private t:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

.field private u:I

.field private v:Lcom/iflytek/base/skin/customView/XTextView;

.field private w:I

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Lcom/iflytek/base/skin/customView/XTextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;-><init>()V

    .line 67
    const-string/jumbo v0, "\u65b0\u5efa\u63d0\u9192\u6210\u529f"

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->e:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->m:Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->s:Z

    .line 218
    const v0, -0xa17b1b

    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->w:I

    .line 425
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->F:J

    return-void
.end method

.method private a(Landroid/content/Context;Z)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSelcet"    # Z

    .prologue
    .line 303
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 305
    .local v0, "selectparams":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 307
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 308
    .local v1, "seletedView":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    if-eqz p2, :cond_0

    .line 310
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->w:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 312
    :cond_0
    return-object v1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/base/skin/customView/XTextView;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleText"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v2, -0x2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 290
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 292
    .local v0, "halfTitleTextParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 293
    new-instance v1, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v1, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 294
    .local v1, "text":Lcom/iflytek/base/skin/customView/XTextView;
    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    .line 296
    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    .line 295
    invoke-virtual {v1, v6, v2, v6, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setPadding(IIII)V

    .line 297
    invoke-virtual {v1, p2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    const-string/jumbo v2, "style_reminder_edit_title_bar_right"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 299
    return-object v1
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->m()V

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 341
    const-string/jumbo v3, "ScheduleNewActivity"

    const-string/jumbo v6, "initIntent()"

    invoke-static {v3, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    if-nez p1, :cond_0

    .line 343
    const-string/jumbo v3, "ScheduleNewActivity"

    const-string/jumbo v5, "------->> intent=null -> return false"

    invoke-static {v3, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 398
    :goto_0
    return v3

    .line 347
    :cond_0
    const-string/jumbo v3, "is_from_main_schedule_view"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->m:Z

    .line 350
    const-string/jumbo v3, "common_datetime_infor"

    .line 351
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->p:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .line 352
    const-string/jumbo v3, "content"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->k:Ljava/lang/String;

    .line 354
    const-string/jumbo v3, "push_notice_id "

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->f:Ljava/lang/String;

    .line 355
    const-string/jumbo v3, "ad_pic_url"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->h:Ljava/lang/String;

    .line 356
    const-string/jumbo v3, "ad_text"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->g:Ljava/lang/String;

    .line 357
    const-string/jumbo v3, "from"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "fromString":Ljava/lang/String;
    const-string/jumbo v3, "schedule_type"

    .line 359
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "scheduleTypeValue":Ljava/lang/String;
    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->valueOfValue(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->j:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    .line 361
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->j:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    .line 362
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    if-nez v3, :cond_1

    .line 363
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    .line 365
    :cond_1
    const-string/jumbo v3, "is_need_show_type_title"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->s:Z

    .line 366
    const-string/jumbo v3, "need_cover"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 367
    .local v1, "needCover":Z
    if-eqz v1, :cond_4

    .line 368
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->l:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 372
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 373
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->i:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    .line 375
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->i:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    if-nez v3, :cond_3

    .line 376
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->local:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->i:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    :cond_3
    move v3, v5

    .line 398
    goto/16 :goto_0

    .line 370
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->l:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 2
    .param p1, "remind"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 563
    .line 564
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->manualAddSchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I

    move-result v0

    if-gez v0, :cond_0

    .line 565
    const-string/jumbo v0, "ScheduleNewActivity"

    const-string/jumbo v1, "updateDb() | insert new remind error"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    const-string/jumbo v0, "ScheduleNewActivity"

    const-string/jumbo v1, "updateDb normal schedule , save ringtone"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v0}, Laut;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 576
    :goto_0
    return-void

    .line 573
    :cond_1
    const-string/jumbo v0, "ScheduleNewActivity"

    const-string/jumbo v1, "updateDb weather schedule , no need save ringtone"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->l()V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;

    .prologue
    .line 61
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->u:I

    return v0
.end method

.method private e()V
    .locals 10

    .prologue
    .line 137
    new-instance v6, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;-><init>()V

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 138
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 140
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.IFLY_COMMON_CLOCK_LAST_RINGTYPE"

    sget-object v8, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "lastModifiedScheduleRingType":Ljava/lang/String;
    invoke-static {v4}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->valueToType(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v5

    .line 143
    .local v5, "ringtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v6, v5, :cond_0

    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v6, v5, :cond_0

    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v6, v5, :cond_0

    .line 144
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 146
    :cond_0
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v6, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 148
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setScheduleType(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;)V

    .line 149
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.IFLY_COMMON_CLOCK_LAST_MODIFY_RING_PATH"

    invoke-virtual {v6, v7}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "lastModifiedSchedulePath":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.IFLY_COMMON_CLOCK_LAST_MODIFY_RING_NAME"

    invoke-virtual {v6, v7}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "lastModefiedScheduleName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 156
    :cond_1
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    const-string/jumbo v7, "android_asset://ringtone/notice.mp3"

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 157
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v7, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v8, "\u55d2\u94c3\u58f0"

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 168
    :goto_0
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 169
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->p:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    if-nez v6, :cond_2

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterOnce(J)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->p:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    .line 172
    :cond_2
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->k:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 173
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->k:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 175
    :cond_3
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->p:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 176
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v7, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_ID:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->f:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 177
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v7, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_PIC_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->h:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 178
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v7, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_DESC:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->g:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 179
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->i:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setFrom(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;)V

    .line 181
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->t:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .line 182
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v6

    iput v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->u:I

    .line 185
    new-instance v6, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;-><init>()V

    iput-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->n:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 187
    :try_start_0
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->p:Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;->clone()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    .line 188
    .local v0, "baseTimeDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->n:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v6, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 189
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->n:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 190
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->n:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v7, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 191
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->n:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getFrom()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setFrom(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v0    # "baseTimeDatetimeInfor":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    :goto_1
    return-void

    .line 160
    :cond_4
    invoke-static {p0}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v6

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Laxa;->a(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 161
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v6, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 162
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v7, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v6, v7, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_5
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    const-string/jumbo v7, "android_asset://ringtone/notice.mp3"

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 165
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v7, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v8, "\u55d2\u94c3\u58f0"

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    const-string/jumbo v6, "ScheduleNewActivity"

    const-string/jumbo v7, "\u4fdd\u5b58\u63d0\u9192\u4e34\u65f6\u65f6\u95f4\u4fe1\u606f\u51fa\u9519"

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private f()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 227
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 228
    .local v1, "layout":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 230
    .local v4, "rootParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 233
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 235
    .local v5, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 236
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->r:Landroid/widget/LinearLayout;

    .line 237
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 239
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 241
    new-instance v6, Landroid/widget/ImageButton;

    invoke-direct {v6, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 242
    .local v6, "titleSeperator":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x2

    invoke-direct {v3, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 243
    .local v3, "paramsS":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    invoke-virtual {v6, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 246
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v9, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 248
    .local v0, "halfTitleParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 250
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->x:Landroid/widget/LinearLayout;

    .line 251
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 252
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    const-string/jumbo v7, "\u7f16\u8f91\u95f9\u949f"

    invoke-direct {p0, p0, v7}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v7

    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->z:Lcom/iflytek/base/skin/customView/XTextView;

    .line 255
    invoke-direct {p0, p0, v10}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->B:Landroid/view/View;

    .line 257
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->x:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->z:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->x:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->B:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->y:Landroid/widget/LinearLayout;

    .line 261
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 262
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    const-string/jumbo v7, "\u7f16\u8f91\u95f9\u949f"

    invoke-direct {p0, p0, v7}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v7

    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->A:Lcom/iflytek/base/skin/customView/XTextView;

    .line 265
    invoke-direct {p0, p0, v12}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->C:Landroid/view/View;

    .line 267
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->y:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->A:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->y:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->C:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->D:Landroid/view/ViewGroup;

    .line 275
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 277
    .local v2, "pageParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->D:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 280
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->D:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    const v7, 0x7f0b0599

    invoke-virtual {p0, v7}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 286
    invoke-virtual {v7, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 287
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 319
    const-string/jumbo v0, "ScheduleNewActivity"

    const-string/jumbo v1, "initView()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->b()V

    .line 323
    const v0, 0x7f0b0237

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->v:Lcom/iflytek/base/skin/customView/XTextView;

    .line 326
    const v0, 0x7f0b05ae

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->l:Lcom/iflytek/base/skin/customView/XImageView;

    .line 327
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->l:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    const v0, 0x7f0b059c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->d:Lcom/iflytek/base/skin/customView/XButton;

    .line 329
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->d:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->f()V

    .line 332
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 462
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    .line 463
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 464
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    if-nez v0, :cond_1

    .line 465
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->add:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-direct {v0, p0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;-><init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    .line 467
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->D:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 471
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->z:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "style_reminder_edit_title_bar_right"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 472
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 473
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->A:Lcom/iflytek/base/skin/customView/XTextView;

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->w:I

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 474
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->C:Landroid/view/View;

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->w:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 475
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->v:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->v:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "\u751f\u6d3b\u63d0\u9192"

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    :cond_0
    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 484
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    .line 485
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e()V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->A:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "style_reminder_edit_title_bar_right"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 490
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->C:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 491
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->z:Lcom/iflytek/base/skin/customView/XTextView;

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->w:I

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 492
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->B:Landroid/view/View;

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->w:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 494
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    .line 495
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->v:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->v:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "\u65b0\u5efa\u95f9\u949f"

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :cond_1
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 504
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    if-ne v0, v1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e()V

    .line 511
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->l()V

    goto :goto_0

    .line 513
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->k()V

    goto :goto_0
.end method

.method private k()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 519
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 520
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    const-string/jumbo v1, "\u662f\u5426\u6dfb\u52a0\u5230\u6211\u7684\u63d0\u9192\uff1f"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity$2;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity$2;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;)V

    .line 521
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u6dfb\u52a0"

    sget-object v3, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v4, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity$1;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity$1;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;)V

    .line 532
    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 538
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/16 v2, 0x11

    .line 539
    invoke-virtual {v1, v2, v5, v5}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 540
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->delete(Ljava/lang/Integer;)V

    .line 766
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->finish()V

    .line 767
    return-void
.end method

.method private m()V
    .locals 6

    .prologue
    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, "scheduleManageView":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    if-ne v3, v4, :cond_2

    .line 773
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->h()Z

    move-result v3

    if-nez v3, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    iput-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 777
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    .line 780
    :cond_2
    invoke-static {p0}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v2

    .line 781
    .local v2, "scheduleTriggerHandler":Lave;
    if-eqz v2, :cond_3

    .line 782
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v3

    invoke-interface {v2, v3}, Lave;->b(I)V

    .line 785
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 788
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    .line 789
    .local v1, "scheduleRingtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {v3, v4, v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 799
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 800
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isRelatedWithGuide()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 801
    invoke-static {}, Lawm;->a()V

    .line 808
    :cond_4
    const-string/jumbo v3, "ScheduleNewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "New Schedule end | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-string/jumbo v3, "\u5df2\u6dfb\u52a0\u5230\u6211\u7684\u63d0\u9192"

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->c()V

    .line 813
    if-eqz v0, :cond_5

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->push:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getFrom()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 814
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->n()V

    .line 816
    :cond_5
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->setResult(I)V

    .line 817
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 405
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isSpecialAddDesc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    const-string/jumbo v1, "\u6dfb\u52a0\u63d0\u9192\u6210\u529f"

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->e:Ljava/lang/String;

    .line 409
    :cond_0
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    if-ne v1, v2, :cond_1

    .line 410
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->h()V

    .line 421
    :goto_0
    return-void

    .line 411
    :cond_1
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    if-ne v1, v2, :cond_2

    .line 412
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->i()V

    goto :goto_0

    .line 414
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_IS_ALARM_CLOCK_SCHEDULE_NEWED"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 415
    .local v0, "isAlarmClockScheduleNewed":Z
    if-eqz v0, :cond_3

    .line 416
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->h()V

    goto :goto_0

    .line 418
    :cond_3
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->i()V

    goto :goto_0
.end method

.method protected d()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 828
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getNextTime()J

    move-result-wide v0

    .line 829
    .local v0, "nextTime":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    .line 830
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a(Ljava/lang/String;)V

    .line 831
    const-string/jumbo v2, "ScheduleNewActivity"

    const-string/jumbo v3, "checkDataLegal() | datetime is dated -> return false"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v2, 0x0

    .line 840
    :goto_0
    return v2

    .line 835
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3, v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 838
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 839
    const-string/jumbo v3, "ScheduleNewActivity"

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
    .line 857
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->g()V

    .line 860
    :cond_0
    invoke-super {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->finish()V

    .line 861
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 14
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 580
    invoke-super/range {p0 .. p3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 581
    const/4 v11, 0x1

    if-ne p1, v11, :cond_0

    .line 582
    const/16 v11, 0x64

    move/from16 v0, p2

    if-ne v0, v11, :cond_3

    .line 583
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->m()V

    .line 620
    :cond_0
    :goto_0
    const/16 v11, 0x6e

    if-ne p1, v11, :cond_8

    .line 621
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_8

    .line 622
    const-string/jumbo v11, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    .line 623
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 624
    .local v8, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v8, :cond_8

    invoke-virtual {p0, v8}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 625
    sget-object v11, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    if-ne v11, v12, :cond_1

    .line 626
    iput-object v8, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 627
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "content":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 629
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 630
    .local v10, "title":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 631
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 633
    .end local v1    # "content":Ljava/lang/String;
    .end local v10    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a()V

    .line 761
    .end local v8    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_2
    :goto_1
    return-void

    .line 584
    :cond_3
    const/16 v11, 0x65

    move/from16 v0, p2

    if-ne v0, v11, :cond_4

    .line 585
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->l()V

    .line 586
    sget-object v11, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v12

    if-ne v11, v12, :cond_0

    .line 587
    iget v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->u:I

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v12

    if-eq v11, v12, :cond_0

    .line 588
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->o:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->delete(Ljava/lang/Integer;)V

    goto :goto_0

    .line 591
    :cond_4
    const/16 v11, 0x3ea

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 592
    const-string/jumbo v11, "CURRENT_SELECT_RINGTONE_TYPE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 593
    .local v9, "scheduleRingtoneType":Ljava/lang/String;
    sget-object v11, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 594
    const-string/jumbo v11, "CURRENT_SELECT_RINGTONE_DATA"

    .line 595
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/tone/ListDataItem;

    .line 596
    .local v3, "item":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 597
    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->b()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 598
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 599
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 601
    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v13

    .line 600
    invoke-virtual {v11, v12, v13}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 602
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->b()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 603
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    goto/16 :goto_0

    .line 606
    .end local v3    # "item":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    :cond_5
    if-eqz v9, :cond_0

    .line 607
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v9}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->valueToType(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 608
    sget-object v11, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 609
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    goto/16 :goto_0

    .line 610
    :cond_6
    sget-object v11, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 611
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    goto/16 :goto_0

    .line 613
    :cond_7
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    goto/16 :goto_0

    .line 640
    .end local v9    # "scheduleRingtoneType":Ljava/lang/String;
    :cond_8
    const/4 v11, 0x2

    if-ne p1, v11, :cond_f

    .line 641
    const/16 v11, 0x3ea

    move/from16 v0, p2

    if-ne v0, v11, :cond_f

    .line 642
    if-eqz p3, :cond_f

    .line 643
    const-string/jumbo v11, "CURRENT_SELECT_RINGTONE_TYPE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 644
    .restart local v9    # "scheduleRingtoneType":Ljava/lang/String;
    sget-object v11, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 645
    const-string/jumbo v11, "CURRENT_SELECT_RINGTONE_DATA"

    .line 646
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/tone/ListDataItem;

    .line 647
    .restart local v3    # "item":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 648
    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->b()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 649
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 651
    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v13

    .line 649
    invoke-virtual {v11, v12, v13}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 652
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->b()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 653
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 654
    sget-object v11, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    if-ne v11, v12, :cond_9

    .line 655
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 657
    :cond_9
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 658
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a()V

    goto/16 :goto_1

    .line 662
    .end local v3    # "item":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    :cond_a
    if-eqz v9, :cond_f

    .line 663
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v9}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->valueToType(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 664
    sget-object v11, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 665
    const-string/jumbo v11, "CURRENT_SELECT_RINGTONE_DATA"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/tone/ListDataItem;

    .line 666
    .restart local v3    # "item":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->b()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 667
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 668
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;->b()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 671
    .end local v3    # "item":Lcom/iflytek/viafly/schedule/tone/ListDataItem;
    :cond_b
    sget-object v11, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 672
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 678
    :goto_2
    sget-object v11, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    if-ne v11, v12, :cond_c

    .line 679
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 681
    :cond_c
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a()V

    goto/16 :goto_1

    .line 673
    :cond_d
    sget-object v11, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 674
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    goto :goto_2

    .line 676
    :cond_e
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    goto :goto_2

    .line 690
    .end local v9    # "scheduleRingtoneType":Ljava/lang/String;
    :cond_f
    const/16 v11, 0x12c

    if-ne p1, v11, :cond_11

    .line 691
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_11

    if-eqz p3, :cond_11

    .line 692
    const-string/jumbo v11, "EXTRA_SELECTED_PERSONALIZED_RING_DATA"

    .line 693
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    .line 695
    .local v2, "entity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    invoke-static {v2}, Laww;->a(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 697
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v5

    .line 699
    .local v5, "orginRingtoneId":I
    sget-object v11, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v12

    if-ne v11, v12, :cond_10

    .line 700
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->getItem(Ljava/lang/Integer;)Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    move-result-object v4

    .line 701
    .local v4, "orginRingtoneEntity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    if-eqz v4, :cond_10

    .line 702
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 703
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getRole()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getRole()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 704
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getWording()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getWording()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 709
    .end local v4    # "orginRingtoneEntity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    :cond_10
    invoke-static {v2, p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->addItem(Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;Landroid/content/Context;)I

    move-result v7

    .line 710
    .local v7, "personlizeRingtoneId":I
    const/4 v11, -0x1

    if-ne v11, v7, :cond_15

    .line 711
    const-string/jumbo v11, "\u573a\u666f\u8bed\u97f3\u4fdd\u5b58\u5931\u8d25"

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 735
    .end local v2    # "entity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .end local v5    # "orginRingtoneId":I
    .end local v7    # "personlizeRingtoneId":I
    :cond_11
    :goto_3
    const/16 v11, 0x190

    if-ne p1, v11, :cond_13

    .line 736
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_13

    if-eqz p3, :cond_13

    .line 737
    sget-object v11, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    if-ne v11, v12, :cond_12

    .line 738
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 740
    :cond_12
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 741
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a()V

    .line 745
    :cond_13
    const/16 v11, 0x78

    if-ne p1, v11, :cond_2

    .line 746
    const-string/jumbo v11, "ScheduleNewActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "EDIT_SCHEDULE_DELAY_RESULT"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_2

    .line 748
    const-string/jumbo v11, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    .line 749
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 750
    .restart local v8    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v8, :cond_2

    .line 751
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDelaySetting()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelaySetting(I)V

    .line 752
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getAutoDelayFlag()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAutoDelayFlag(I)V

    .line 753
    sget-object v11, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    if-ne v11, v12, :cond_14

    .line 754
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 756
    :cond_14
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a()V

    goto/16 :goto_1

    .line 713
    .end local v8    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .restart local v2    # "entity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .restart local v5    # "orginRingtoneId":I
    .restart local v7    # "personlizeRingtoneId":I
    :cond_15
    if-lez v5, :cond_16

    .line 714
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->delete(Ljava/lang/Integer;)V

    .line 716
    :cond_16
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 717
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setPersonalRingtoneId(I)V

    .line 718
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->getItem(Ljava/lang/Integer;)Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    move-result-object v6

    .line 719
    .local v6, "personalizedRingtoneEntity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    if-eqz v6, :cond_17

    .line 720
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v6}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getAudioPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 722
    :cond_17
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 723
    .restart local v1    # "content":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 724
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v11}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 725
    .restart local v10    # "title":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 726
    sget-object v11, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    if-ne v11, v12, :cond_18

    .line 727
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    iget-object v12, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 729
    :cond_18
    iget-object v11, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 730
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a()V

    goto/16 :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 429
    const-string/jumbo v0, "ScheduleNewActivity"

    const-string/jumbo v1, "-------------------->>> onClick"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->F:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 431
    const-string/jumbo v0, "ScheduleNewActivity"

    const-string/jumbo v1, "-------------------->>> Click too much!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->F:J

    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 451
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->x:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    .line 452
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->i()V

    goto :goto_0

    .line 438
    :sswitch_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->j()V

    goto :goto_1

    .line 441
    :sswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->m()V

    goto :goto_1

    .line 445
    :sswitch_2
    invoke-static {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->j()V

    .line 446
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->m()V

    goto :goto_1

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->y:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    .line 454
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->h()V

    goto :goto_0

    .line 436
    :sswitch_data_0
    .sparse-switch
        0x7f0b0237 -> :sswitch_0
        0x7f0b059c -> :sswitch_2
        0x7f0b05ae -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    const-string/jumbo v0, "ScheduleNewActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-super {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v0, 0x7f0300f3

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->setContentView(I)V

    .line 122
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->g()V

    .line 123
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->r:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->r:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->e()V

    .line 128
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a()V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->finish()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 845
    const-string/jumbo v0, "ScheduleNewActivity"

    const-string/jumbo v1, "--------------->> onKeyDown()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 848
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->j()V

    .line 849
    const/4 v0, 0x1

    .line 852
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 865
    invoke-super {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->onResume()V

    .line 868
    :try_start_0
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->q:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    if-ne v1, v2, :cond_0

    .line 869
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 871
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 872
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    :goto_0
    return-void

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ScheduleNewActivity"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 548
    invoke-super {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;->onStop()V

    .line 549
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleNewActivity;->E:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e()V

    .line 552
    :cond_0
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 544
    return-void
.end method
