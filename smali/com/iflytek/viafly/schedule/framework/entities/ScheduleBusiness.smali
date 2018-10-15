.class public final enum Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
.super Ljava/lang/Enum;
.source "ScheduleBusiness.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

.field public static final enum Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

.field public static final enum News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

.field public static final enum Pure_Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

.field public static final enum TV:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

.field public static final enum Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    const-string/jumbo v1, "Common"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    .line 9
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    const-string/jumbo v1, "Weather"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    .line 10
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    const-string/jumbo v1, "TV"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->TV:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    .line 11
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    const-string/jumbo v1, "News"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    .line 12
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    const-string/jumbo v1, "Pure_Weather"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Pure_Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->TV:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Pure_Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    return-object v0
.end method
