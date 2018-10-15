.class public final enum Lcom/iflytek/viafly/ad/business/ADBehaviorType;
.super Ljava/lang/Enum;
.source "ADBehaviorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/ad/business/ADBehaviorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/ad/business/ADBehaviorType;

.field public static final enum adclick:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

.field public static final enum adshowed:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

.field public static final enum dealreach:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

.field public static final enum downloadcomplete:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

.field public static final enum otherunknow:Lcom/iflytek/viafly/ad/business/ADBehaviorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    const-string/jumbo v1, "adshowed"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/ad/business/ADBehaviorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->adshowed:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    .line 15
    new-instance v0, Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    const-string/jumbo v1, "adclick"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/ad/business/ADBehaviorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->adclick:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    .line 20
    new-instance v0, Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    const-string/jumbo v1, "dealreach"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/ad/business/ADBehaviorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->dealreach:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    .line 25
    new-instance v0, Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    const-string/jumbo v1, "downloadcomplete"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/ad/business/ADBehaviorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->downloadcomplete:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    .line 30
    new-instance v0, Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    const-string/jumbo v1, "otherunknow"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/ad/business/ADBehaviorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->otherunknow:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    sget-object v1, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->adshowed:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->adclick:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->dealreach:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->downloadcomplete:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->otherunknow:Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->$VALUES:[Lcom/iflytek/viafly/ad/business/ADBehaviorType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/ad/business/ADBehaviorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/ad/business/ADBehaviorType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/iflytek/viafly/ad/business/ADBehaviorType;->$VALUES:[Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/ad/business/ADBehaviorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/ad/business/ADBehaviorType;

    return-object v0
.end method
