.class public final enum Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;
.super Ljava/lang/Enum;
.source "MusicBizManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/music/manager/MusicBizManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MusicPlayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

.field public static final enum PLAY_TYPE_CARD:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

.field public static final enum PLAY_TYPE_FAVORITE:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

.field public static final enum PLAY_TYPE_HISTORY:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

.field public static final enum PLAY_TYPE_RECOGNITION:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 431
    new-instance v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    const-string/jumbo v1, "PLAY_TYPE_HISTORY"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_HISTORY:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    .line 433
    new-instance v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    const-string/jumbo v1, "PLAY_TYPE_FAVORITE"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_FAVORITE:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    .line 435
    new-instance v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    const-string/jumbo v1, "PLAY_TYPE_RECOGNITION"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_RECOGNITION:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    .line 437
    new-instance v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    const-string/jumbo v1, "PLAY_TYPE_CARD"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_CARD:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    .line 429
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    sget-object v1, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_HISTORY:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_FAVORITE:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_RECOGNITION:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_CARD:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->$VALUES:[Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

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
    .line 429
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 429
    const-class v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;
    .locals 1

    .prologue
    .line 429
    sget-object v0, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->$VALUES:[Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    return-object v0
.end method
