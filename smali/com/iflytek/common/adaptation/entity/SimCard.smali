.class public final enum Lcom/iflytek/common/adaptation/entity/SimCard;
.super Ljava/lang/Enum;
.source "SimCard.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/common/adaptation/entity/SimCard;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/common/adaptation/entity/SimCard;

.field public static final enum auto:Lcom/iflytek/common/adaptation/entity/SimCard;

.field public static final enum first:Lcom/iflytek/common/adaptation/entity/SimCard;

.field public static final enum second:Lcom/iflytek/common/adaptation/entity/SimCard;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/iflytek/common/adaptation/entity/SimCard;

    const-string/jumbo v1, "first"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/adaptation/entity/SimCard;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 11
    new-instance v0, Lcom/iflytek/common/adaptation/entity/SimCard;

    const-string/jumbo v1, "second"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/common/adaptation/entity/SimCard;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 13
    new-instance v0, Lcom/iflytek/common/adaptation/entity/SimCard;

    const-string/jumbo v1, "auto"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/common/adaptation/entity/SimCard;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/common/adaptation/entity/SimCard;

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->$VALUES:[Lcom/iflytek/common/adaptation/entity/SimCard;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/adaptation/entity/SimCard;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SimCard;->$VALUES:[Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v0}, [Lcom/iflytek/common/adaptation/entity/SimCard;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/common/adaptation/entity/SimCard;

    return-object v0
.end method
