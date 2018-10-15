.class public Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;
.super Lwo;
.source "SheduleOpLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$TriggerType;
    }
.end annotation


# static fields
.field public static b:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

.field private static final f:[Ljava/lang/String;


# instance fields
.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 108
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.huawei.systemmanager"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.miui.securitycenter"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.qihoo360.mobilesafe"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.lbe.security"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "com.lenovo.safecenter"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "com.android.settings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "cn.opda.a.phonoalbumshoushou"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "com.tencent.qqpimsecure"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->f:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->e:Ljava/util/Map;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    sget-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->b:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->b:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    .line 62
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->b:Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)Ljava/lang/String;
    .locals 1
    .param p1, "business"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    .prologue
    .line 180
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    if-ne v0, p1, :cond_0

    .line 181
    const-string/jumbo v0, "normal"

    .line 187
    :goto_0
    return-object v0

    .line 182
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    if-ne v0, p1, :cond_1

    .line 183
    const-string/jumbo v0, "weather"

    goto :goto_0

    .line 184
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    if-ne v0, p1, :cond_2

    .line 185
    const-string/jumbo v0, "news"

    goto :goto_0

    .line 187
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/util/Map;

    .prologue
    .line 32
    invoke-virtual/range {p0 .. p5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;)J
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->c:J

    return-wide v0
.end method

.method static synthetic r()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->f:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "BlcOpLogHelper"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->c:J

    .line 86
    const-string/jumbo v0, "IC00001"

    iput-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->d:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 88
    return-void
.end method

.method public a(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 234
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_src"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v1, "FT53017"

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    .line 236
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 239
    const-string/jumbo v0, "BlcOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "news clicked type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->c:J

    .line 97
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V
    .locals 6
    .param p1, "scheduleType"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;
    .param p2, "scheduleRingtoneType"    # Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    .prologue
    .line 482
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 487
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_src"

    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    if-ne v0, p1, :cond_2

    .line 489
    const-string/jumbo v0, "BlcOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordScheduleRingChange :d_src:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 490
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string/jumbo v1, "FT53035"

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    .line 492
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 494
    :cond_2
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    if-ne v0, p1, :cond_0

    .line 495
    const-string/jumbo v0, "BlcOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordScheduleRingChange :d_src:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 496
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string/jumbo v1, "FT53036"

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    .line 498
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Z)V
    .locals 7
    .param p1, "business"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .param p2, "isRead"    # Z

    .prologue
    .line 198
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 199
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "schedule_type"

    invoke-direct {p0, p1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    if-eqz p2, :cond_0

    const-string/jumbo v6, "1"

    .line 201
    .local v6, "ret":Ljava/lang/String;
    :goto_0
    const-string/jumbo v0, "result"

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string/jumbo v1, "FD53006"

    iget-wide v2, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->c:J

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 207
    return-void

    .line 200
    .end local v6    # "ret":Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "0"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatonCode"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->d:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4
    .param p1, "operatonCode"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .prologue
    .line 74
    const-string/jumbo v0, "BlcOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepare(), operatonCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a()V

    .line 76
    invoke-virtual {p0, p2, p3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(J)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public a(Ljava/lang/String;JILjava/lang/String;)V
    .locals 6
    .param p1, "ringId"    # Ljava/lang/String;
    .param p2, "usedTime"    # J
    .param p4, "textSize"    # I
    .param p5, "mode"    # Ljava/lang/String;

    .prologue
    .line 618
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 619
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "i_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string/jumbo v0, "i_textsize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string/jumbo v0, "i_mode"

    invoke-virtual {v5, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string/jumbo v1, "FT53016"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 624
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 10
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 415
    invoke-virtual {p2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v7

    .line 416
    .local v7, "ringtoneType":Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p2, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v9

    .line 417
    .local v9, "subType":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 418
    .local v8, "scheduleType":Ljava/lang/String;
    const-string/jumbo v6, "voicePackage"

    .line 419
    .local v6, "ringType":Ljava/lang/String;
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v0, v7, :cond_1

    .line 420
    const-string/jumbo v8, "normal"

    .line 434
    :cond_0
    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 435
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string/jumbo v0, "d_ringType"

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string/jumbo v0, "d_operation"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string/jumbo v1, "FT89316"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 439
    return-void

    .line 421
    .end local v5    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-eq v0, v7, :cond_2

    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v0, v7, :cond_3

    .line 422
    :cond_2
    const-string/jumbo v8, "normal"

    .line 423
    const-string/jumbo v6, "music"

    goto :goto_0

    .line 424
    :cond_3
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v0, v7, :cond_5

    .line 425
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 426
    const-string/jumbo v8, "morning"

    goto :goto_0

    .line 427
    :cond_4
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const-string/jumbo v8, "night"

    goto :goto_0

    .line 430
    :cond_5
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    if-ne v0, v7, :cond_0

    .line 431
    const-string/jumbo v8, "weather"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string/jumbo v0, "BlcOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "append, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 282
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 283
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_src"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v1, "FT53024"

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    .line 284
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 287
    const-string/jumbo v0, "BlcOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordCreateSchedule type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6
    .param p1, "scheduleType"    # Ljava/lang/String;

    .prologue
    .line 345
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 346
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string/jumbo v1, "FT89305"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 348
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "smartName"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/lang/String;

    .prologue
    .line 307
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 308
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string/jumbo v0, "d_entry"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string/jumbo v1, "FT53027"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 311
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 118
    const-string/jumbo v0, "BlcOpLogHelper"

    const-string/jumbo v1, "record()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper$1;-><init>(Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 6

    .prologue
    .line 213
    const-string/jumbo v1, "FT53022"

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    const/4 v5, 0x0

    move-object v0, p0

    .line 213
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 216
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 6
    .param p1, "position"    # Ljava/lang/String;

    .prologue
    .line 352
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 353
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_position"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string/jumbo v1, "FT89307"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 355
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "scheduleType"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/lang/String;

    .prologue
    .line 315
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 316
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string/jumbo v0, "d_entry"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string/jumbo v1, "FT89306"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 319
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    .line 222
    const-string/jumbo v1, "FT53023"

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    const/4 v5, 0x0

    move-object v0, p0

    .line 222
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 225
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 6
    .param p1, "scheduleType"    # Ljava/lang/String;

    .prologue
    .line 381
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 382
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string/jumbo v1, "FT89311"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 384
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "scheduleType"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/String;

    .prologue
    .line 323
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 324
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string/jumbo v0, "d_operation"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string/jumbo v1, "FT89302"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 327
    return-void
.end method

.method public e()V
    .locals 6

    .prologue
    .line 273
    const-string/jumbo v1, "FT53021"

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    const/4 v5, 0x0

    move-object v0, p0

    .line 273
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 276
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 6
    .param p1, "scheduleType"    # Ljava/lang/String;

    .prologue
    .line 388
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 389
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string/jumbo v1, "FT89312"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 391
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "scheduleType"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/String;

    .prologue
    .line 331
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 332
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string/jumbo v0, "d_operation"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string/jumbo v1, "FT89303"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 335
    return-void
.end method

.method public f()V
    .locals 6

    .prologue
    .line 291
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 292
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "FT53025"

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    .line 292
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 295
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 6
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 544
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 545
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_src"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string/jumbo v1, "FT53008"

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    .line 547
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 550
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "scheduleType"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/String;

    .prologue
    .line 359
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 360
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string/jumbo v0, "d_operation"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v1, "FT89308"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 363
    return-void
.end method

.method public g()V
    .locals 6

    .prologue
    .line 339
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 340
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "FT89304"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 341
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 6
    .param p1, "ringId"    # Ljava/lang/String;

    .prologue
    .line 596
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 597
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_src"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string/jumbo v1, "FT53014"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 600
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "scheduleType"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/String;

    .prologue
    .line 373
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 374
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string/jumbo v0, "d_operation"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string/jumbo v1, "FT89310"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 377
    return-void
.end method

.method public h()V
    .locals 6

    .prologue
    .line 367
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "FT89309"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 369
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 6
    .param p1, "ringId"    # Ljava/lang/String;

    .prologue
    .line 606
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 607
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_src"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string/jumbo v1, "FT53015"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 610
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "scheduleType"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/String;

    .prologue
    .line 407
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 408
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string/jumbo v0, "d_operation"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string/jumbo v1, "FT89315"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 411
    return-void
.end method

.method public i()V
    .locals 6

    .prologue
    .line 395
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 396
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "FT89313"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 397
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 6
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 630
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 631
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_entry"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string/jumbo v1, "FT90205"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 633
    return-void
.end method

.method public j()V
    .locals 6

    .prologue
    .line 401
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 402
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "FT89314"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 403
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 639
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 640
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string/jumbo v1, "FT90207"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 642
    return-void
.end method

.method public k()V
    .locals 6

    .prologue
    .line 442
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 443
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "FT53031"

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    .line 443
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 446
    return-void
.end method

.method public l()V
    .locals 6

    .prologue
    .line 449
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 450
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "FT53032"

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    .line 450
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 453
    return-void
.end method

.method public m()V
    .locals 6

    .prologue
    .line 456
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 457
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "FT53033"

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    .line 457
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 460
    return-void
.end method

.method public n()V
    .locals 6

    .prologue
    .line 470
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 471
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "FT53034"

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    .line 471
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 474
    return-void
.end method

.method public o()V
    .locals 6

    .prologue
    .line 556
    const-string/jumbo v1, "FT53007"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 559
    return-void
.end method

.method public p()V
    .locals 6

    .prologue
    .line 578
    const-string/jumbo v1, "FT53009"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 581
    return-void
.end method

.method public q()V
    .locals 6

    .prologue
    .line 587
    const-string/jumbo v1, "FT53013"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 590
    return-void
.end method
