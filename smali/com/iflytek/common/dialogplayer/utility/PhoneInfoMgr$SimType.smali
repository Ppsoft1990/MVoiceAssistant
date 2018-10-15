.class public final enum Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;
.super Ljava/lang/Enum;
.source "PhoneInfoMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

.field public static final enum China_Mobile:Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

.field public static final enum China_Telecom:Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

.field public static final enum China_Unicom:Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

.field public static final enum Unknown:Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    const-string/jumbo v1, "China_Mobile"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;->China_Mobile:Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    .line 10
    new-instance v0, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    const-string/jumbo v1, "China_Unicom"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;->China_Unicom:Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    .line 11
    new-instance v0, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    const-string/jumbo v1, "China_Telecom"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;->China_Telecom:Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    .line 12
    new-instance v0, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    const-string/jumbo v1, "Unknown"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;->Unknown:Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    sget-object v1, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;->China_Mobile:Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;->China_Unicom:Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;->China_Telecom:Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;->Unknown:Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;->$VALUES:[Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;->$VALUES:[Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    invoke-virtual {v0}, [Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/common/dialogplayer/utility/PhoneInfoMgr$SimType;

    return-object v0
.end method
