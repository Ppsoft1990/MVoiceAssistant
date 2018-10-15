.class final enum Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;
.super Ljava/lang/Enum;
.source "WeatherSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SettingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

.field public static final enum AirPollution:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

.field public static final enum TempChange:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

.field public static final enum WeatherAbnormal:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

.field public static final enum WeatherNearby:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

.field public static final enum WeatherRemind:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    const-string/jumbo v1, "WeatherNearby"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->WeatherNearby:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    .line 40
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    const-string/jumbo v1, "WeatherRemind"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->WeatherRemind:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    .line 41
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    const-string/jumbo v1, "WeatherAbnormal"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->WeatherAbnormal:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    .line 42
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    const-string/jumbo v1, "AirPollution"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->AirPollution:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    .line 43
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    const-string/jumbo v1, "TempChange"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->TempChange:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    sget-object v1, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->WeatherNearby:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->WeatherRemind:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->WeatherAbnormal:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->AirPollution:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->TempChange:Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->$VALUES:[Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->$VALUES:[Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/homepage/cityweather/WeatherSettingFragment$SettingType;

    return-object v0
.end method
