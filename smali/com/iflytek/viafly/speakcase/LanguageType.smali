.class public final enum Lcom/iflytek/viafly/speakcase/LanguageType;
.super Ljava/lang/Enum;
.source "LanguageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/speakcase/LanguageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/speakcase/LanguageType;

.field public static final enum prc:Lcom/iflytek/viafly/speakcase/LanguageType;

.field public static final enum yue:Lcom/iflytek/viafly/speakcase/LanguageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/iflytek/viafly/speakcase/LanguageType;

    const-string/jumbo v1, "prc"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/speakcase/LanguageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/speakcase/LanguageType;->prc:Lcom/iflytek/viafly/speakcase/LanguageType;

    .line 11
    new-instance v0, Lcom/iflytek/viafly/speakcase/LanguageType;

    const-string/jumbo v1, "yue"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/speakcase/LanguageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/speakcase/LanguageType;->yue:Lcom/iflytek/viafly/speakcase/LanguageType;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/viafly/speakcase/LanguageType;

    sget-object v1, Lcom/iflytek/viafly/speakcase/LanguageType;->prc:Lcom/iflytek/viafly/speakcase/LanguageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/speakcase/LanguageType;->yue:Lcom/iflytek/viafly/speakcase/LanguageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/viafly/speakcase/LanguageType;->$VALUES:[Lcom/iflytek/viafly/speakcase/LanguageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/speakcase/LanguageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/iflytek/viafly/speakcase/LanguageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/speakcase/LanguageType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/speakcase/LanguageType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/iflytek/viafly/speakcase/LanguageType;->$VALUES:[Lcom/iflytek/viafly/speakcase/LanguageType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/speakcase/LanguageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/speakcase/LanguageType;

    return-object v0
.end method
