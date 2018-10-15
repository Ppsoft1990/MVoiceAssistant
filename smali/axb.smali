.class public final Laxb;
.super Lauz;
.source "WeatherMediaHandler.java"


# instance fields
.field private a:Lauz$a;

.field private b:Lawj;

.field private c:Lava;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:J

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lju;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lauz;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lava;

    invoke-direct {v0}, Lava;-><init>()V

    iput-object v0, p0, Laxb;->c:Lava;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laxb;->d:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Laxb;->f:Z

    .line 302
    new-instance v0, Laxb$2;

    invoke-direct {v0, p0}, Laxb$2;-><init>(Laxb;)V

    iput-object v0, p0, Laxb;->i:Lju;

    .line 64
    new-instance v0, Lawj;

    invoke-direct {v0, p1}, Lawj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laxb;->b:Lawj;

    .line 65
    return-void
.end method

.method static synthetic a(Laxb;Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Laxb;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Laxb;->b(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;
    .locals 3
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v0, "ttsBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Laxc;->c()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/weather/WeatherOneDay;

    .line 541
    .local v1, "weather":Lcom/iflytek/viafly/weather/WeatherOneDay;
    if-eqz v1, :cond_0

    .line 542
    const/4 v2, 0x1

    iput-boolean v2, p0, Laxb;->f:Z

    .line 543
    invoke-virtual {v1}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getSpeechText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const-string/jumbo v2, "[p300]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 546
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Laxb;->f:Z

    .line 547
    iget-object v2, p0, Laxb;->e:Landroid/content/Context;

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 548
    const-string/jumbo v2, "\u7f51\u7edc\u672a\u6253\u5f00\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const-string/jumbo v2, "[p300]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 551
    :cond_1
    const-string/jumbo v2, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string/jumbo v2, "[p300]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic a(Laxb;)V
    .locals 0
    .param p0, "x0"    # Laxb;

    .prologue
    .line 38
    invoke-direct {p0}, Laxb;->e()V

    return-void
.end method

.method private a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)Z
    .locals 7
    .param p1, "type"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "schedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const/4 v1, 0x0

    .line 110
    invoke-static {p2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    const-string/jumbo v3, "WeatherMediaHandler"

    const-string/jumbo v4, "startTts() | schedules=null -> start ring tone"

    invoke-static {v3, v4}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    return v1

    .line 114
    :cond_0
    iget-object v3, p0, Laxb;->b:Lawj;

    invoke-virtual {v3}, Lawj;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    iget-object v3, p0, Laxb;->b:Lawj;

    invoke-virtual {v3}, Lawj;->d()Z

    move-result v3

    if-nez v3, :cond_3

    .line 116
    const/4 v2, 0x0

    .line 118
    .local v2, "speechContentPart1":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 119
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 124
    .local v0, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-direct {p0, v0}, Laxb;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .end local v0    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_1
    iget-boolean v1, p0, Laxb;->f:Z

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Laxb;->e:Landroid/content/Context;

    const-string/jumbo v3, "ringtone/morning.mp3"

    invoke-static {v1, v3}, Lawd;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    const-string/jumbo v1, "WeatherMediaHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startTts() | start to tts..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v6, "params":Landroid/os/Bundle;
    const-string/jumbo v1, "stream"

    const/4 v3, 0x4

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string/jumbo v1, "speed"

    const/16 v3, 0x2d

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    iget-object v1, p0, Laxb;->b:Lawj;

    iget-object v3, p0, Laxb;->i:Lju;

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v1 .. v6}, Lawj;->a(Ljava/lang/String;Lju;JLandroid/os/Bundle;)V

    .line 156
    .end local v2    # "speechContentPart1":Ljava/lang/String;
    .end local v6    # "params":Landroid/os/Bundle;
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 145
    .restart local v2    # "speechContentPart1":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Laxb;->b:Lawj;

    iget-object v3, p0, Laxb;->i:Lju;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v3, v4, v5}, Lawj;->a(Ljava/lang/String;Lju;J)V

    goto :goto_1

    .line 153
    .end local v2    # "speechContentPart1":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "WeatherMediaHandler"

    const-string/jumbo v3, "startTts() | not call idle state or is recording -> add to speechList cach"

    invoke-static {v1, v3}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Laxb;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 159
    :cond_4
    const-string/jumbo v3, "WeatherMediaHandler"

    const-string/jumbo v4, "startTts() | speech service is not init ok! -> add to speechList cach & start playing ring tone..."

    invoke-static {v3, v4}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v3, p0, Laxb;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method static synthetic b(Laxb;)Lava;
    .locals 1
    .param p0, "x0"    # Laxb;

    .prologue
    .line 38
    iget-object v0, p0, Laxb;->c:Lava;

    return-object v0
.end method

.method private b(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 18
    .param p1, "type"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 386
    .local p2, "speechList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    if-nez p2, :cond_0

    .line 387
    const-string/jumbo v13, ""

    .line 522
    :goto_0
    return-object v13

    .line 389
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Laxb;->e:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 391
    .local v9, "res":Landroid/content/res/Resources;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v12, "ttsBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_NOTIFY_REMIND_PATTERN"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lil;->b(Ljava/lang/String;I)I

    move-result v10

    .line 393
    .local v10, "schedulePattern":I
    invoke-static {}, Lil;->a()Lil;

    move-result-object v13

    const-string/jumbo v14, "com.iflytek.cmccIFLY_NOTIFY_REMIND_TIMES"

    invoke-virtual {v13, v14}, Lil;->d(Ljava/lang/String;)I

    move-result v11

    .line 394
    .local v11, "scheduleTimes":I
    const-string/jumbo v13, "WeatherMediaHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getReadContent() start | patttern="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ",times="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    sget-object v13, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->dated:Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 398
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 399
    .local v6, "length":I
    packed-switch v10, :pswitch_data_0

    .line 521
    .end local v6    # "length":I
    :goto_1
    const-string/jumbo v13, "WeatherMediaHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getReadContent() end | tts="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 401
    .restart local v6    # "length":I
    :pswitch_0
    const v13, 0x7f0c012d

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    const v13, 0x7f0c012e

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string/jumbo v13, "[p300]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 408
    :pswitch_1
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v13}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "content":Ljava/lang/String;
    const/4 v13, 0x1

    if-ne v6, v13, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 410
    const v13, 0x7f0c012f

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v13}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string/jumbo v13, "[p300]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 414
    :cond_1
    const v13, 0x7f0c012d

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    const v13, 0x7f0c012e

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string/jumbo v13, "[p300]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 427
    .end local v2    # "content":Ljava/lang/String;
    .end local v6    # "length":I
    :cond_2
    packed-switch v10, :pswitch_data_1

    .line 492
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 493
    .local v5, "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 494
    .restart local v2    # "content":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 495
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string/jumbo v14, "[p300]"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Laxb;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 429
    .end local v2    # "content":Ljava/lang/String;
    .end local v5    # "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :pswitch_2
    const v13, 0x7f0c0131

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string/jumbo v13, "[p300]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 435
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Laxb;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_4
    packed-switch v11, :pswitch_data_2

    goto/16 :goto_1

    .line 506
    :pswitch_3
    const-string/jumbo v13, "[p300]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v12, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 440
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 441
    .restart local v5    # "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRawtext()Ljava/lang/String;

    move-result-object v7

    .line 442
    .local v7, "rawtext":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 444
    .restart local v2    # "content":Ljava/lang/String;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_7

    const-string/jumbo v14, "null"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 445
    const v14, 0x7f0c0132

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    move-object/from16 v0, p0

    iget-object v14, v0, Laxb;->e:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lbaa;->g(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-static {v2}, Lawh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, "contentNoSymbol":Ljava/lang/String;
    invoke-static {v2}, Lawh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "contentNoEndSymbol":Ljava/lang/String;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_6

    if-eqz v3, :cond_6

    .line 459
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_6

    .line 461
    if-eqz v4, :cond_5

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_5

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 463
    const v14, 0x7f0c0135

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :goto_4
    const-string/jumbo v14, "[p300]"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .end local v3    # "contentNoEndSymbol":Ljava/lang/String;
    .end local v4    # "contentNoSymbol":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Laxb;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 468
    .restart local v3    # "contentNoEndSymbol":Ljava/lang/String;
    .restart local v4    # "contentNoSymbol":Ljava/lang/String;
    :cond_5
    const v14, 0x7f0c0133

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const v14, 0x7f0c0134

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 476
    :cond_6
    const v14, 0x7f0c0131

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string/jumbo v14, "[p300]"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 481
    .end local v3    # "contentNoEndSymbol":Ljava/lang/String;
    .end local v4    # "contentNoSymbol":Ljava/lang/String;
    :cond_7
    const v14, 0x7f0c0131

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string/jumbo v14, "[p300]"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 510
    .end local v2    # "content":Ljava/lang/String;
    .end local v5    # "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .end local v7    # "rawtext":Ljava/lang/String;
    :pswitch_5
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v12}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    .line 511
    .local v8, "repeatContent":Ljava/lang/String;
    const-string/jumbo v13, "[p300]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string/jumbo v13, "[p300]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 427
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 504
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic c(Laxb;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Laxb;

    .prologue
    .line 38
    iget-object v0, p0, Laxb;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Laxb;)Lju;
    .locals 1
    .param p0, "x0"    # Laxb;

    .prologue
    .line 38
    iget-object v0, p0, Laxb;->i:Lju;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Laxb;->a:Lauz$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laxb;->a:Lauz$a;

    invoke-interface {v0}, Lauz$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {p0}, Laxb;->a()V

    .line 264
    iget-object v0, p0, Laxb;->a:Lauz$a;

    invoke-interface {v0}, Lauz$a;->b()V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-boolean v0, p0, Laxb;->f:Z

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Laxb;->e:Landroid/content/Context;

    invoke-static {v0}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v0

    invoke-virtual {v0}, Ltd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Laxb;->e:Landroid/content/Context;

    const-string/jumbo v1, "ringtone/notice.mp3"

    invoke-static {v0, v1}, Lawd;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Laxb;)Lawj;
    .locals 1
    .param p0, "x0"    # Laxb;

    .prologue
    .line 38
    iget-object v0, p0, Laxb;->b:Lawj;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Laxb;->a()V

    .line 297
    iget-object v0, p0, Laxb;->a:Lauz$a;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Laxb;->a:Lauz$a;

    invoke-interface {v0}, Lauz$a;->b()V

    .line 300
    :cond_0
    return-void
.end method

.method static synthetic f(Laxb;)V
    .locals 0
    .param p0, "x0"    # Laxb;

    .prologue
    .line 38
    invoke-direct {p0}, Laxb;->d()V

    return-void
.end method

.method static synthetic g(Laxb;)Lauz$a;
    .locals 1
    .param p0, "x0"    # Laxb;

    .prologue
    .line 38
    iget-object v0, p0, Laxb;->a:Lauz$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Laxb;->b:Lawj;

    invoke-virtual {v0}, Lawj;->a()V

    .line 278
    iget-object v0, p0, Laxb;->e:Landroid/content/Context;

    invoke-static {v0}, Lawd;->a(Landroid/content/Context;)V

    .line 279
    iget-object v0, p0, Laxb;->e:Landroid/content/Context;

    invoke-static {v0}, Lawk;->a(Landroid/content/Context;)V

    .line 280
    iget-object v0, p0, Laxb;->c:Lava;

    invoke-virtual {v0}, Lava;->a()V

    .line 281
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;Lauz$a;)V
    .locals 6
    .param p1, "type"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;
    .param p3, "listener"    # Lauz$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;",
            "Lauz$a;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "schedules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const/4 v5, 0x0

    .line 69
    iput-object p3, p0, Laxb;->a:Lauz$a;

    .line 70
    iget-object v1, p0, Laxb;->c:Lava;

    const-wide/32 v2, 0x13880

    new-instance v4, Laxb$1;

    invoke-direct {v4, p0}, Laxb$1;-><init>(Laxb;)V

    invoke-virtual {v1, v2, v3, v4}, Lava;->a(JLava$a;)V

    .line 77
    iget-object v1, p0, Laxb;->e:Landroid/content/Context;

    invoke-static {v1}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v1

    invoke-virtual {v1}, Ltd;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 79
    const-string/jumbo v1, "WeatherMediaHandler"

    const-string/jumbo v2, "startMedia()"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 81
    :cond_0
    const-string/jumbo v1, "WeatherMediaHandler"

    const-string/jumbo v2, "startSound() | speechList=null -> start ring tone"

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lawd;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    invoke-direct {p0}, Laxb;->d()V

    .line 107
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    invoke-direct {p0, p1, p2}, Laxb;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService$HandleType;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 89
    invoke-direct {p0}, Laxb;->d()V

    .line 96
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 97
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 98
    .local v0, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getShakeFlag()I

    move-result v1

    if-lez v1, :cond_4

    .line 103
    .end local v0    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_4
    iget-object v1, p0, Laxb;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_5

    .line 104
    iput-object p2, p0, Laxb;->h:Ljava/util/ArrayList;

    .line 106
    :cond_5
    iget-object v1, p0, Laxb;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Laxb;->g:J

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Laxb;->b:Lawj;

    invoke-virtual {v0}, Lawj;->b()V

    .line 286
    return-void
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 290
    iget-object v1, p0, Laxb;->b:Lawj;

    invoke-virtual {v1}, Lawj;->e()Z

    move-result v0

    .line 291
    .local v0, "ret":Z
    const-string/jumbo v1, "WeatherMediaHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBusy(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return v0
.end method
