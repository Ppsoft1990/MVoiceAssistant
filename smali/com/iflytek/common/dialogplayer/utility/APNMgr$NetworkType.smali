.class public final enum Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;
.super Ljava/lang/Enum;
.source "APNMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/dialogplayer/utility/APNMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

.field public static final enum NET:Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

.field public static final enum WAP:Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

.field public static final enum WIFI:Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

.field public static final enum _3GWAP:Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    const-string/jumbo v1, "NET"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;->NET:Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    new-instance v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    const-string/jumbo v1, "WAP"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;->WAP:Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    new-instance v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    const-string/jumbo v1, "_3GWAP"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;->_3GWAP:Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    new-instance v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    const-string/jumbo v1, "WIFI"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;->WIFI:Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    sget-object v1, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;->NET:Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;->WAP:Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;->_3GWAP:Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;->WIFI:Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;->$VALUES:[Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;->$VALUES:[Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    invoke-virtual {v0}, [Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/common/dialogplayer/utility/APNMgr$NetworkType;

    return-object v0
.end method
