.class synthetic Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;
.super Ljava/lang/Object;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1388
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->values()[Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->c:[I

    :try_start_0
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->c:[I

    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->NORMAL:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->c:[I

    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->SMALL:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->c:[I

    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->LARGE:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$IconType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    .line 1207
    :goto_2
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->values()[Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->b:[I

    :try_start_3
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->b:[I

    sget-object v1, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->EMUI:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->b:[I

    sget-object v1, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->FLYME:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->b:[I

    sget-object v1, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->MIUI:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->b:[I

    sget-object v1, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->SMARTISAN_OS:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->b:[I

    sget-object v1, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->SAMSUNG_OS:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->b:[I

    sget-object v1, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->UNKNOWN:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    .line 1145
    :goto_8
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;->values()[Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->a:[I

    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;->TICKER_VIEW:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->a:[I

    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;->HEAD_UP_CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->a:[I

    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;->CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;->a:[I

    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;->BIG_CONTENT_VIEW:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground$RemoteViewsType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    return-void

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_9

    .line 1207
    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v0

    goto :goto_3

    .line 1388
    :catch_a
    move-exception v0

    goto/16 :goto_2

    :catch_b
    move-exception v0

    goto/16 :goto_1

    :catch_c
    move-exception v0

    goto/16 :goto_0
.end method
