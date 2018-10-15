.class public final enum Lcom/iflytek/viafly/translate/TranslateMode;
.super Ljava/lang/Enum;
.source "TranslateMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/translate/TranslateMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/translate/TranslateMode;

.field public static final enum Auto:Lcom/iflytek/viafly/translate/TranslateMode;

.field public static final enum CnToEn:Lcom/iflytek/viafly/translate/TranslateMode;

.field public static final enum CnToEs:Lcom/iflytek/viafly/translate/TranslateMode;

.field public static final enum CnToFr:Lcom/iflytek/viafly/translate/TranslateMode;

.field public static final enum CnToJp:Lcom/iflytek/viafly/translate/TranslateMode;

.field public static final enum CnToKr:Lcom/iflytek/viafly/translate/TranslateMode;

.field public static final enum EnToCn:Lcom/iflytek/viafly/translate/TranslateMode;

.field public static final enum EsToCn:Lcom/iflytek/viafly/translate/TranslateMode;

.field public static final enum FrToCn:Lcom/iflytek/viafly/translate/TranslateMode;

.field public static final enum JpToCn:Lcom/iflytek/viafly/translate/TranslateMode;

.field public static final enum KrToCn:Lcom/iflytek/viafly/translate/TranslateMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateMode;

    const-string/jumbo v1, "CnToEn"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/translate/TranslateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEn:Lcom/iflytek/viafly/translate/TranslateMode;

    .line 12
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateMode;

    const-string/jumbo v1, "EnToCn"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/translate/TranslateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->EnToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    .line 14
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateMode;

    const-string/jumbo v1, "CnToJp"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/translate/TranslateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->CnToJp:Lcom/iflytek/viafly/translate/TranslateMode;

    .line 16
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateMode;

    const-string/jumbo v1, "JpToCn"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/translate/TranslateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->JpToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    .line 18
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateMode;

    const-string/jumbo v1, "CnToKr"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/viafly/translate/TranslateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->CnToKr:Lcom/iflytek/viafly/translate/TranslateMode;

    .line 20
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateMode;

    const-string/jumbo v1, "KrToCn"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/translate/TranslateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->KrToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    .line 22
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateMode;

    const-string/jumbo v1, "CnToFr"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/translate/TranslateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->CnToFr:Lcom/iflytek/viafly/translate/TranslateMode;

    .line 24
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateMode;

    const-string/jumbo v1, "FrToCn"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/translate/TranslateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->FrToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    .line 26
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateMode;

    const-string/jumbo v1, "CnToEs"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/translate/TranslateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEs:Lcom/iflytek/viafly/translate/TranslateMode;

    .line 28
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateMode;

    const-string/jumbo v1, "EsToCn"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/translate/TranslateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->EsToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    .line 30
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateMode;

    const-string/jumbo v1, "Auto"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/translate/TranslateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->Auto:Lcom/iflytek/viafly/translate/TranslateMode;

    .line 8
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/iflytek/viafly/translate/TranslateMode;

    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEn:Lcom/iflytek/viafly/translate/TranslateMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->EnToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->CnToJp:Lcom/iflytek/viafly/translate/TranslateMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->JpToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->CnToKr:Lcom/iflytek/viafly/translate/TranslateMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/translate/TranslateMode;->KrToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/viafly/translate/TranslateMode;->CnToFr:Lcom/iflytek/viafly/translate/TranslateMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/viafly/translate/TranslateMode;->FrToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEs:Lcom/iflytek/viafly/translate/TranslateMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/iflytek/viafly/translate/TranslateMode;->EsToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/iflytek/viafly/translate/TranslateMode;->Auto:Lcom/iflytek/viafly/translate/TranslateMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->$VALUES:[Lcom/iflytek/viafly/translate/TranslateMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/translate/TranslateMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/TranslateMode;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/translate/TranslateMode;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->$VALUES:[Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/translate/TranslateMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/translate/TranslateMode;

    return-object v0
.end method
