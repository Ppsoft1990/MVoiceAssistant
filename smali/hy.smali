.class public final Lhy;
.super Ljava/lang/Object;
.source "SimInfoHelper.java"


# static fields
.field private static volatile a:Lhy;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lhy;->b:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public static a()Lhy;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lhy;->a:Lhy;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lhy;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lhy;->a:Lhy;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lhy;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lhy;->a:Lhy;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lhy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lhy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lhy;->a:Lhy;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lhy;->a:Lhy;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private i(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 132
    const-string/jumbo v1, ""

    .line 134
    .local v1, "simOperator":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lhy;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getSimInfoAdapter()Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;->getSimOperator(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 139
    :goto_0
    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SimInfoHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 98
    const-string/jumbo v1, ""

    .line 99
    .local v1, "imsi":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 100
    sget-object p1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 103
    :cond_0
    :try_start_0
    iget-object v2, p0, Lhy;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getSimInfoAdapter()Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_1

    .line 105
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_LAST_IMSI"

    invoke-virtual {v2, v3, v1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_1
    :goto_0
    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SimInfoHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 118
    const-string/jumbo v1, ""

    .line 119
    .local v1, "hni":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 120
    sget-object p1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 124
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lhy;->i(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 128
    :goto_0
    return-object v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SimInfoHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lhy;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getSimInfoAdapter()Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;->isDoubleCard()Z

    move-result v0

    return v0
.end method

.method public c()Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lhy;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getSimInfoAdapter()Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;->getOpenDataSimCard()Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 5
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    const/4 v4, 0x5

    .line 162
    const-string/jumbo v2, ""

    .line 164
    .local v2, "mnc":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lhy;->b(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "hni":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_0

    .line 166
    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 171
    .end local v1    # "hni":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SimInfoHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public d(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimType;
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 178
    sget-object v1, Lcom/iflytek/yd/system/SimType;->Unknown:Lcom/iflytek/yd/system/SimType;

    .line 180
    .local v1, "simType":Lcom/iflytek/yd/system/SimType;
    invoke-virtual {p0, p1}, Lhy;->c(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "mnc":Ljava/lang/String;
    const-string/jumbo v2, "00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "02"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "07"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    :cond_0
    sget-object v1, Lcom/iflytek/yd/system/SimType;->China_Mobile:Lcom/iflytek/yd/system/SimType;

    .line 188
    :cond_1
    :goto_0
    return-object v1

    .line 183
    :cond_2
    const-string/jumbo v2, "01"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "06"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    :cond_3
    sget-object v1, Lcom/iflytek/yd/system/SimType;->China_Unicom:Lcom/iflytek/yd/system/SimType;

    goto :goto_0

    .line 185
    :cond_4
    const-string/jumbo v2, "03"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "05"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    :cond_5
    sget-object v1, Lcom/iflytek/yd/system/SimType;->China_Telecom:Lcom/iflytek/yd/system/SimType;

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    const-string/jumbo v1, ""

    .line 73
    .local v1, "imei":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lhy;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getSimInfoAdapter()Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    move-result-object v2

    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v2, v3}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;->getDeviceId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SimInfoHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lhy;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    iget-object v0, p0, Lhy;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhy;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_0
    :goto_0
    iget-object v0, p0, Lhy;->c:Ljava/lang/String;

    return-object v0

    .line 216
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 195
    const-string/jumbo v0, "\u672a\u77e5"

    .line 196
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lhy;->d(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimType;

    move-result-object v1

    .line 197
    .local v1, "simType":Lcom/iflytek/yd/system/SimType;
    sget-object v2, Lcom/iflytek/yd/system/SimType;->China_Mobile:Lcom/iflytek/yd/system/SimType;

    if-ne v1, v2, :cond_1

    .line 198
    const-string/jumbo v0, "\u4e2d\u56fd\u79fb\u52a8"

    .line 204
    :cond_0
    :goto_0
    return-object v0

    .line 199
    :cond_1
    sget-object v2, Lcom/iflytek/yd/system/SimType;->China_Unicom:Lcom/iflytek/yd/system/SimType;

    if-ne v1, v2, :cond_2

    .line 200
    const-string/jumbo v0, "\u4e2d\u56fd\u8054\u901a"

    goto :goto_0

    .line 201
    :cond_2
    sget-object v2, Lcom/iflytek/yd/system/SimType;->China_Telecom:Lcom/iflytek/yd/system/SimType;

    if-ne v1, v2, :cond_0

    .line 202
    const-string/jumbo v0, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_0
.end method

.method public f(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimState;
    .locals 5
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 253
    if-nez p1, :cond_1

    .line 254
    sget-object v1, Lcom/iflytek/yd/system/SimState;->UNKNOWN:Lcom/iflytek/yd/system/SimState;

    .line 275
    :cond_0
    :goto_0
    return-object v1

    .line 257
    :cond_1
    sget-object v1, Lcom/iflytek/yd/system/SimState;->UNKNOWN:Lcom/iflytek/yd/system/SimState;

    .line 262
    .local v1, "simState":Lcom/iflytek/yd/system/SimState;
    :try_start_0
    invoke-virtual {p0, p1}, Lhy;->g(Lcom/iflytek/common/adaptation/entity/SimCard;)I

    move-result v2

    .line 263
    .local v2, "state":I
    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 267
    :cond_2
    sget-object v1, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    goto :goto_0

    .line 268
    :cond_3
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    if-nez v2, :cond_0

    .line 270
    :cond_4
    sget-object v1, Lcom/iflytek/yd/system/SimState;->ABSENT:Lcom/iflytek/yd/system/SimState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    .end local v2    # "state":I
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SimInfoHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 223
    const-string/jumbo v0, ""

    .line 225
    .local v0, "cellLocation":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lhy;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getSimInfoAdapter()Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    move-result-object v2

    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 226
    invoke-virtual {v2, v3}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;->getCellLocation(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SimInfoHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method g(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 279
    const/4 v1, 0x1

    .line 281
    .local v1, "state":I
    :try_start_0
    iget-object v2, p0, Lhy;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getSimInfoAdapter()Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;->getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 285
    :goto_0
    return v1

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SimInfoHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lhy;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {p0, v0}, Lhy;->h(Lcom/iflytek/common/adaptation/entity/SimCard;)Z

    move-result v0

    .line 308
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {p0, v0}, Lhy;->h(Lcom/iflytek/common/adaptation/entity/SimCard;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {p0, v0}, Lhy;->h(Lcom/iflytek/common/adaptation/entity/SimCard;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/iflytek/common/adaptation/entity/SystemSettings;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lhy;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getSimInfoAdapter()Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;->getSystemSmsSetting()Lcom/iflytek/common/adaptation/entity/SystemSettings;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/iflytek/common/adaptation/entity/SimCard;)Z
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lhy;->f(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimState;

    move-result-object v0

    sget-object v1, Lcom/iflytek/yd/system/SimState;->ABSENT:Lcom/iflytek/yd/system/SimState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lhy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhy;->b:Landroid/content/Context;

    .line 339
    invoke-static {v0}, Lcom/iflytek/common/adaptation/detect/AdapterDetectorFactory;->getDetector(Landroid/content/Context;)Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->getSimInfoAdapter()Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;->isSameAsSystemSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 340
    invoke-virtual {p0, v0}, Lhy;->h(Lcom/iflytek/common/adaptation/entity/SimCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 341
    invoke-virtual {p0, v0}, Lhy;->h(Lcom/iflytek/common/adaptation/entity/SimCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Lhy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lhy;->i()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 351
    invoke-virtual {p0, v0}, Lhy;->h(Lcom/iflytek/common/adaptation/entity/SimCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 352
    invoke-virtual {p0, v0}, Lhy;->h(Lcom/iflytek/common/adaptation/entity/SimCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
