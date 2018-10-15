.class public Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;
.super Ljava/lang/Object;
.source "TrafficRequestTimeStrategy.java"


# instance fields
.field private final BEGIN_HOUR:B

.field private final DAY_OF_OFFSET:B

.field private final DAY_SIZE:B

.field private final DELAY_TIME:I

.field private final END_HOUR:B

.field private final TAG:Ljava/lang/String;

.field private ramDate:J

.field private splitArr:[[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->DAY_SIZE:B

    .line 20
    iput-byte v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->DAY_OF_OFFSET:B

    .line 22
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->BEGIN_HOUR:B

    .line 24
    iput-byte v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->END_HOUR:B

    .line 26
    const v0, 0x493e0

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->DELAY_TIME:I

    .line 28
    const-class v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method private calOffsets()V
    .locals 11

    .prologue
    .line 87
    const/4 v4, 0x4

    .line 88
    .local v4, "size":B
    div-int/lit8 v5, v4, 0x4

    .line 89
    .local v5, "split":I
    const/16 v7, 0xc

    const/4 v8, 0x2

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    iput-object v7, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->splitArr:[[I

    .line 90
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    const/4 v7, 0x3

    if-ge v2, v7, :cond_3

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v3, 0x0

    .local v3, "m":I
    :goto_1
    const/4 v7, 0x4

    if-ge v0, v7, :cond_2

    .line 92
    move v1, v0

    .local v1, "j":I
    const/4 v6, 0x0

    .local v6, "t":I
    :goto_2
    add-int/lit8 v7, v0, 0x2

    if-ge v1, v7, :cond_1

    .line 93
    iget-object v7, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->splitArr:[[I

    add-int v8, v2, v0

    mul-int/lit8 v9, v2, 0x3

    add-int/2addr v8, v9

    aget-object v7, v7, v8

    aput v3, v7, v6

    .line 94
    iget-object v7, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int v9, v2, v0

    mul-int/lit8 v10, v2, 0x3

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    add-int/lit8 v7, v0, 0x1

    if-ne v1, v7, :cond_0

    .line 96
    add-int/lit8 v3, v3, -0x1

    .line 92
    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 91
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    .end local v1    # "j":I
    .end local v6    # "t":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "i":I
    .end local v3    # "m":I
    :cond_3
    return-void
.end method

.method private findCurHourIndex(I)I
    .locals 8
    .param p1, "curHour"    # I

    .prologue
    const/4 v7, 0x4

    .line 69
    const/4 v1, -0x1

    .line 70
    .local v1, "index":I
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "curHour: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-ltz p1, :cond_0

    if-gt p1, v7, :cond_0

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 73
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->splitArr:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget v2, v4, v5

    .line 74
    .local v2, "one":I
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->splitArr:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget v3, v4, v5

    .line 75
    .local v3, "two":I
    if-lt p1, v2, :cond_1

    if-gt p1, v3, :cond_1

    .line 76
    move v1, v0

    .line 83
    .end local v0    # "i":I
    .end local v2    # "one":I
    .end local v3    # "two":I
    :cond_0
    return v1

    .line 72
    .restart local v0    # "i":I
    .restart local v2    # "one":I
    .restart local v3    # "two":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getRamDate()J
    .locals 24

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->calOffsets()V

    .line 32
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    .line 33
    .local v7, "gregorianCalendar":Ljava/util/GregorianCalendar;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 34
    .local v4, "curDate":Ljava/util/Date;
    invoke-virtual {v7, v4}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 35
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 36
    .local v5, "curDays":I
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    .line 37
    .local v6, "curHour":I
    const/16 v18, 0x3

    move/from16 v0, v18

    if-le v5, v0, :cond_1

    .line 38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "curDays > DAY_SIZE  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/32 v20, 0x493e0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->ramDate:J

    .line 65
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->ramDate:J

    move-wide/from16 v18, v0

    return-wide v18

    .line 41
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "curDays <= DAY_SIZE  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->findCurHourIndex(I)I

    move-result v8

    .line 43
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "index: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_0

    .line 45
    new-instance v14, Ljava/util/Random;

    invoke-direct {v14}, Ljava/util/Random;-><init>()V

    .line 46
    .local v14, "random":Ljava/util/Random;
    rsub-int/lit8 v18, v5, 0x3

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v18

    add-int v18, v18, v5

    add-int/lit8 v12, v18, -0x1

    .line 47
    .local v12, "ramDaysIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "ramDaysIndex: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    rsub-int/lit8 v18, v8, 0x4

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v18

    add-int v13, v8, v18

    .line 49
    .local v13, "ramOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "ramOffset: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->splitArr:[[I

    move-object/from16 v18, v0

    mul-int/lit8 v19, v12, 0x4

    add-int v19, v19, v13

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget v9, v18, v19

    .line 51
    .local v9, "oneHour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "oneHour: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->splitArr:[[I

    move-object/from16 v18, v0

    mul-int/lit8 v19, v12, 0x4

    add-int v19, v19, v13

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aget v15, v18, v19

    .line 53
    .local v15, "twoHour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "twoHour: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/16 v18, 0x5

    add-int/lit8 v19, v12, 0x1

    sub-int v19, v19, v5

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/util/GregorianCalendar;->add(II)V

    .line 55
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v7, v0, v9}, Ljava/util/GregorianCalendar;->set(II)V

    .line 56
    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 57
    .local v10, "oneTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "oneTime: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/util/Date;

    move-object/from16 v0, v20

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v7, v0, v15}, Ljava/util/GregorianCalendar;->set(II)V

    .line 59
    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    .line 60
    .local v16, "twoTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "twoTime: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/util/Date;

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    long-to-double v0, v10

    move-wide/from16 v18, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v20

    sub-long v22, v16, v10

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->ramDate:J

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "ramDate: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->ramDate:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficRequestTimeStrategy;->ramDate:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
