.class public final enum Lcom/iflytek/viafly/translate/TranslateLanguageType;
.super Ljava/lang/Enum;
.source "TranslateLanguageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/translate/TranslateLanguageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/translate/TranslateLanguageType;

.field public static final enum Auto:Lcom/iflytek/viafly/translate/TranslateLanguageType;

.field public static final enum Cn:Lcom/iflytek/viafly/translate/TranslateLanguageType;

.field public static final enum En:Lcom/iflytek/viafly/translate/TranslateLanguageType;

.field public static final enum Es:Lcom/iflytek/viafly/translate/TranslateLanguageType;

.field public static final enum Fr:Lcom/iflytek/viafly/translate/TranslateLanguageType;

.field public static final enum Jp:Lcom/iflytek/viafly/translate/TranslateLanguageType;

.field public static final enum Kr:Lcom/iflytek/viafly/translate/TranslateLanguageType;


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
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;

    const-string/jumbo v1, "Auto"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/translate/TranslateLanguageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Auto:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 12
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;

    const-string/jumbo v1, "Cn"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/translate/TranslateLanguageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Cn:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 14
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;

    const-string/jumbo v1, "En"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/translate/TranslateLanguageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->En:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 16
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;

    const-string/jumbo v1, "Jp"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/translate/TranslateLanguageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Jp:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 18
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;

    const-string/jumbo v1, "Kr"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/viafly/translate/TranslateLanguageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Kr:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 20
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;

    const-string/jumbo v1, "Fr"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/translate/TranslateLanguageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Fr:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 22
    new-instance v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;

    const-string/jumbo v1, "Es"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/translate/TranslateLanguageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Es:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sget-object v1, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Auto:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Cn:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/translate/TranslateLanguageType;->En:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Jp:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Kr:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Fr:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Es:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->$VALUES:[Lcom/iflytek/viafly/translate/TranslateLanguageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/translate/TranslateLanguageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/translate/TranslateLanguageType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->$VALUES:[Lcom/iflytek/viafly/translate/TranslateLanguageType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/translate/TranslateLanguageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/translate/TranslateLanguageType;

    return-object v0
.end method
