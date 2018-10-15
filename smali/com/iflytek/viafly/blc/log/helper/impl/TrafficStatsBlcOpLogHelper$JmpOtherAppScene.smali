.class public final enum Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;
.super Ljava/lang/Enum;
.source "TrafficStatsBlcOpLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JmpOtherAppScene"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

.field public static final enum browser:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

.field public static final enum launch:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

.field public static final enum map:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    const-string/jumbo v1, "launch"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;->launch:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    .line 46
    new-instance v0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    const-string/jumbo v1, "map"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;->map:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    .line 47
    new-instance v0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    const-string/jumbo v1, "browser"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;->browser:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    sget-object v1, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;->launch:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;->map:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;->browser:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;->$VALUES:[Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;->$VALUES:[Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    return-object v0
.end method
