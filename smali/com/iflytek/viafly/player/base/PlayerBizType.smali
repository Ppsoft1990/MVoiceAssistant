.class public final enum Lcom/iflytek/viafly/player/base/PlayerBizType;
.super Ljava/lang/Enum;
.source "PlayerBizType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/player/base/PlayerBizType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/player/base/PlayerBizType;

.field public static final enum BIZ_AUDIO_RESOURCE:Lcom/iflytek/viafly/player/base/PlayerBizType;

.field public static final enum BIZ_BOOK:Lcom/iflytek/viafly/player/base/PlayerBizType;

.field public static final enum BIZ_DEFAULT:Lcom/iflytek/viafly/player/base/PlayerBizType;

.field public static final enum BIZ_MUSIC:Lcom/iflytek/viafly/player/base/PlayerBizType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/iflytek/viafly/player/base/PlayerBizType;

    const-string/jumbo v1, "BIZ_DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/player/base/PlayerBizType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_DEFAULT:Lcom/iflytek/viafly/player/base/PlayerBizType;

    .line 14
    new-instance v0, Lcom/iflytek/viafly/player/base/PlayerBizType;

    const-string/jumbo v1, "BIZ_BOOK"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/player/base/PlayerBizType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_BOOK:Lcom/iflytek/viafly/player/base/PlayerBizType;

    .line 16
    new-instance v0, Lcom/iflytek/viafly/player/base/PlayerBizType;

    const-string/jumbo v1, "BIZ_AUDIO_RESOURCE"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/player/base/PlayerBizType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_AUDIO_RESOURCE:Lcom/iflytek/viafly/player/base/PlayerBizType;

    .line 18
    new-instance v0, Lcom/iflytek/viafly/player/base/PlayerBizType;

    const-string/jumbo v1, "BIZ_MUSIC"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/player/base/PlayerBizType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_MUSIC:Lcom/iflytek/viafly/player/base/PlayerBizType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/viafly/player/base/PlayerBizType;

    sget-object v1, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_DEFAULT:Lcom/iflytek/viafly/player/base/PlayerBizType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_BOOK:Lcom/iflytek/viafly/player/base/PlayerBizType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_AUDIO_RESOURCE:Lcom/iflytek/viafly/player/base/PlayerBizType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_MUSIC:Lcom/iflytek/viafly/player/base/PlayerBizType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/player/base/PlayerBizType;->$VALUES:[Lcom/iflytek/viafly/player/base/PlayerBizType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/player/base/PlayerBizType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/viafly/player/base/PlayerBizType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/player/base/PlayerBizType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/player/base/PlayerBizType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/viafly/player/base/PlayerBizType;->$VALUES:[Lcom/iflytek/viafly/player/base/PlayerBizType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/player/base/PlayerBizType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/player/base/PlayerBizType;

    return-object v0
.end method
