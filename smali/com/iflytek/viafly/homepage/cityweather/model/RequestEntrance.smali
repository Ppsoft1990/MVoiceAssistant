.class public final enum Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;
.super Ljava/lang/Enum;
.source "RequestEntrance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

.field public static final enum detail:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

.field public static final enum home:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    const-string/jumbo v1, "home"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->home:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    .line 18
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    const-string/jumbo v1, "detail"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->detail:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    sget-object v1, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->home:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->detail:Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->$VALUES:[Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->$VALUES:[Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/homepage/cityweather/model/RequestEntrance;

    return-object v0
.end method
