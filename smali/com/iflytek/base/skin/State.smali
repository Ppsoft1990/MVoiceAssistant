.class public final enum Lcom/iflytek/base/skin/State;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/base/skin/State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/base/skin/State;

.field public static final enum DISABLED:Lcom/iflytek/base/skin/State;

.field public static final enum DISABLED_AND_CHECKED:Lcom/iflytek/base/skin/State;

.field public static final enum DISABLED_AND_UNCHECKED:Lcom/iflytek/base/skin/State;

.field public static final enum ENABLED_AND_CHECKED:Lcom/iflytek/base/skin/State;

.field public static final enum ENABLED_AND_UNCHECKED:Lcom/iflytek/base/skin/State;

.field public static final enum FOCUSED:Lcom/iflytek/base/skin/State;

.field public static final enum NORMAL:Lcom/iflytek/base/skin/State;

.field public static final enum PRESSED:Lcom/iflytek/base/skin/State;

.field private static final TAG:Ljava/lang/String; = "skin_State"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/iflytek/base/skin/State;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/base/skin/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/skin/State;->NORMAL:Lcom/iflytek/base/skin/State;

    .line 17
    new-instance v0, Lcom/iflytek/base/skin/State;

    const-string/jumbo v1, "FOCUSED"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/base/skin/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/skin/State;->FOCUSED:Lcom/iflytek/base/skin/State;

    .line 18
    new-instance v0, Lcom/iflytek/base/skin/State;

    const-string/jumbo v1, "PRESSED"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/base/skin/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/skin/State;->PRESSED:Lcom/iflytek/base/skin/State;

    .line 19
    new-instance v0, Lcom/iflytek/base/skin/State;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/base/skin/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/skin/State;->DISABLED:Lcom/iflytek/base/skin/State;

    .line 20
    new-instance v0, Lcom/iflytek/base/skin/State;

    const-string/jumbo v1, "ENABLED_AND_CHECKED"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/base/skin/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/skin/State;->ENABLED_AND_CHECKED:Lcom/iflytek/base/skin/State;

    .line 21
    new-instance v0, Lcom/iflytek/base/skin/State;

    const-string/jumbo v1, "ENABLED_AND_UNCHECKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/base/skin/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/skin/State;->ENABLED_AND_UNCHECKED:Lcom/iflytek/base/skin/State;

    .line 22
    new-instance v0, Lcom/iflytek/base/skin/State;

    const-string/jumbo v1, "DISABLED_AND_CHECKED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/base/skin/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/skin/State;->DISABLED_AND_CHECKED:Lcom/iflytek/base/skin/State;

    .line 23
    new-instance v0, Lcom/iflytek/base/skin/State;

    const-string/jumbo v1, "DISABLED_AND_UNCHECKED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iflytek/base/skin/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/base/skin/State;->DISABLED_AND_UNCHECKED:Lcom/iflytek/base/skin/State;

    .line 15
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/iflytek/base/skin/State;

    sget-object v1, Lcom/iflytek/base/skin/State;->NORMAL:Lcom/iflytek/base/skin/State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/base/skin/State;->FOCUSED:Lcom/iflytek/base/skin/State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/base/skin/State;->PRESSED:Lcom/iflytek/base/skin/State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/base/skin/State;->DISABLED:Lcom/iflytek/base/skin/State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/base/skin/State;->ENABLED_AND_CHECKED:Lcom/iflytek/base/skin/State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/base/skin/State;->ENABLED_AND_UNCHECKED:Lcom/iflytek/base/skin/State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/base/skin/State;->DISABLED_AND_CHECKED:Lcom/iflytek/base/skin/State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/base/skin/State;->DISABLED_AND_UNCHECKED:Lcom/iflytek/base/skin/State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/base/skin/State;->$VALUES:[Lcom/iflytek/base/skin/State;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static get(Ljava/lang/String;)Ljava/util/EnumMap;
    .locals 12
    .param p0, "stateConfig"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/iflytek/base/skin/State;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 61
    :cond_0
    return-object v3

    .line 32
    :cond_1
    const-string/jumbo v7, "\\|"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "strings":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 37
    new-instance v3, Ljava/util/EnumMap;

    const-class v7, Lcom/iflytek/base/skin/State;

    invoke-direct {v3, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 39
    .local v3, "stateMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/iflytek/base/skin/State;Ljava/lang/String;>;"
    const-string/jumbo v2, ""

    .line 40
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 42
    .local v6, "value":Ljava/lang/String;
    array-length v9, v5

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v4, v5, v7

    .line 43
    .local v4, "string":Ljava/lang/String;
    const/16 v10, 0x3d

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 46
    .local v1, "index":I
    const/4 v10, -0x1

    if-le v1, v10, :cond_2

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_3

    .line 42
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 51
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 55
    :try_start_0
    invoke-static {v2}, Lcom/iflytek/base/skin/State;->valueOf(Ljava/lang/String;)Lcom/iflytek/base/skin/State;

    move-result-object v10

    invoke-virtual {v3, v10, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "skin_State"

    invoke-static {v10, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/base/skin/State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/iflytek/base/skin/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/State;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/base/skin/State;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/iflytek/base/skin/State;->$VALUES:[Lcom/iflytek/base/skin/State;

    invoke-virtual {v0}, [Lcom/iflytek/base/skin/State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/base/skin/State;

    return-object v0
.end method
