.class public Lcom/iflytek/greenplug/common/utils/OSUtils;
.super Ljava/lang/Object;
.source "OSUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/common/utils/OSUtils$OS;
    }
.end annotation


# static fields
.field private static mManufacturer:Ljava/lang/String;

.field private static mOSUtils:Lcom/iflytek/greenplug/common/utils/OSUtils;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils;->mManufacturer:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/iflytek/greenplug/common/utils/OSUtils;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils;->mOSUtils:Lcom/iflytek/greenplug/common/utils/OSUtils;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/iflytek/greenplug/common/utils/OSUtils;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils;->mOSUtils:Lcom/iflytek/greenplug/common/utils/OSUtils;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/iflytek/greenplug/common/utils/OSUtils;

    invoke-direct {v0}, Lcom/iflytek/greenplug/common/utils/OSUtils;-><init>()V

    sput-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils;->mOSUtils:Lcom/iflytek/greenplug/common/utils/OSUtils;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils;->mOSUtils:Lcom/iflytek/greenplug/common/utils/OSUtils;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getOS()Lcom/iflytek/greenplug/common/utils/OSUtils$OS;
    .locals 4

    .prologue
    .line 44
    sget-object v2, Lcom/iflytek/greenplug/common/utils/OSUtils;->mManufacturer:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 61
    sget-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->UNKNOWN:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    .line 63
    .local v0, "retOS":Lcom/iflytek/greenplug/common/utils/OSUtils$OS;
    :goto_1
    return-object v0

    .line 44
    .end local v0    # "retOS":Lcom/iflytek/greenplug/common/utils/OSUtils$OS;
    :sswitch_0
    const-string/jumbo v3, "huawei"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "xiaomi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "meizu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "smartisan"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "samsung"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    .line 46
    :pswitch_0
    sget-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->EMUI:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    .line 47
    .restart local v0    # "retOS":Lcom/iflytek/greenplug/common/utils/OSUtils$OS;
    goto :goto_1

    .line 49
    .end local v0    # "retOS":Lcom/iflytek/greenplug/common/utils/OSUtils$OS;
    :pswitch_1
    sget-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->MIUI:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    .line 50
    .restart local v0    # "retOS":Lcom/iflytek/greenplug/common/utils/OSUtils$OS;
    goto :goto_1

    .line 52
    .end local v0    # "retOS":Lcom/iflytek/greenplug/common/utils/OSUtils$OS;
    :pswitch_2
    sget-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->FLYME:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    .line 53
    .restart local v0    # "retOS":Lcom/iflytek/greenplug/common/utils/OSUtils$OS;
    goto :goto_1

    .line 55
    .end local v0    # "retOS":Lcom/iflytek/greenplug/common/utils/OSUtils$OS;
    :pswitch_3
    sget-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->SMARTISAN_OS:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    .line 56
    .restart local v0    # "retOS":Lcom/iflytek/greenplug/common/utils/OSUtils$OS;
    goto :goto_1

    .line 58
    .end local v0    # "retOS":Lcom/iflytek/greenplug/common/utils/OSUtils$OS;
    :pswitch_4
    sget-object v0, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->SAMSUNG_OS:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    .line 59
    .restart local v0    # "retOS":Lcom/iflytek/greenplug/common/utils/OSUtils$OS;
    goto :goto_1

    .line 44
    :sswitch_data_0
    .sparse-switch
        -0x5608ffe0 -> :sswitch_3
        -0x47e95e19 -> :sswitch_0
        -0x2d450b45 -> :sswitch_1
        0x62f84cc -> :sswitch_2
        0x6f28bffa -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
