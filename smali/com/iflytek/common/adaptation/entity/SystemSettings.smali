.class public final enum Lcom/iflytek/common/adaptation/entity/SystemSettings;
.super Ljava/lang/Enum;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/common/adaptation/entity/SystemSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/common/adaptation/entity/SystemSettings;

.field public static final enum alwaysAsk:Lcom/iflytek/common/adaptation/entity/SystemSettings;

.field public static final enum auto:Lcom/iflytek/common/adaptation/entity/SystemSettings;

.field public static final enum first:Lcom/iflytek/common/adaptation/entity/SystemSettings;

.field public static final enum second:Lcom/iflytek/common/adaptation/entity/SystemSettings;

.field public static final enum unknown:Lcom/iflytek/common/adaptation/entity/SystemSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;

    const-string/jumbo v1, "first"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/adaptation/entity/SystemSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;->first:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    .line 10
    new-instance v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;

    const-string/jumbo v1, "second"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/common/adaptation/entity/SystemSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;->second:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    .line 11
    new-instance v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;

    const-string/jumbo v1, "alwaysAsk"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/common/adaptation/entity/SystemSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;->alwaysAsk:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    .line 12
    new-instance v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;

    const-string/jumbo v1, "auto"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/common/adaptation/entity/SystemSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;->auto:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    .line 13
    new-instance v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;

    const-string/jumbo v1, "unknown"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/common/adaptation/entity/SystemSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;->unknown:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/common/adaptation/entity/SystemSettings;

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SystemSettings;->first:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SystemSettings;->second:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SystemSettings;->alwaysAsk:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SystemSettings;->auto:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SystemSettings;->unknown:Lcom/iflytek/common/adaptation/entity/SystemSettings;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;->$VALUES:[Lcom/iflytek/common/adaptation/entity/SystemSettings;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SystemSettings;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/common/adaptation/entity/SystemSettings;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/common/adaptation/entity/SystemSettings;->$VALUES:[Lcom/iflytek/common/adaptation/entity/SystemSettings;

    invoke-virtual {v0}, [Lcom/iflytek/common/adaptation/entity/SystemSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/common/adaptation/entity/SystemSettings;

    return-object v0
.end method
