.class public final enum Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
.super Ljava/lang/Enum;
.source "SimOperatorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/common/cmccauth/entities/SimOperatorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

.field public static final enum CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

.field public static final enum CHINA_TELECOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

.field public static final enum CHINA_UNICOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

.field public static final enum UNKOWN:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    const-string/jumbo v1, "CHINA_MOBILE"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 12
    new-instance v0, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    const-string/jumbo v1, "CHINA_UNICOM"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_UNICOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 14
    new-instance v0, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    const-string/jumbo v1, "CHINA_TELECOM"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_TELECOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 16
    new-instance v0, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    const-string/jumbo v1, "UNKOWN"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->UNKOWN:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    sget-object v1, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_MOBILE:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_UNICOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->CHINA_TELECOM:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->UNKOWN:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->$VALUES:[Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->$VALUES:[Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    invoke-virtual {v0}, [Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    return-object v0
.end method
