.class synthetic Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$3;
.super Ljava/lang/Object;
.source "HomeWeatherCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 161
    invoke-static {}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->values()[Lcom/iflytek/viafly/homepage/base/HomeEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$3;->a:[I

    :try_start_0
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$3;->a:[I

    sget-object v1, Lcom/iflytek/viafly/homepage/base/HomeEvent;->load_net_data:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$3;->a:[I

    sget-object v1, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_resume:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$3;->a:[I

    sget-object v1, Lcom/iflytek/viafly/homepage/base/HomeEvent;->pull_to_refresh:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$3;->a:[I

    sget-object v1, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_show:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$3;->a:[I

    sget-object v1, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_network_changed:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$3;->a:[I

    sget-object v1, Lcom/iflytek/viafly/homepage/base/HomeEvent;->on_page_dismiss:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$3;->a:[I

    sget-object v1, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_pause:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$3;->a:[I

    sget-object v1, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_stop:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/HomeWeatherCardView$3;->a:[I

    sget-object v1, Lcom/iflytek/viafly/homepage/base/HomeEvent;->activity_destory:Lcom/iflytek/viafly/homepage/base/HomeEvent;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/base/HomeEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
