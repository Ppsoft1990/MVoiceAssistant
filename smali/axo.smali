.class public Laxo;
.super Ljava/lang/Object;
.source "TranslateSupportMode.java"


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "cn_en"

    aput-object v2, v0, v1

    sput-object v0, Laxo;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 6
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "isSupport":Z
    sget-object v3, Laxo;->a:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 17
    .local v1, "supportMode":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    .end local v1    # "supportMode":Ljava/lang/String;
    :cond_1
    return v0
.end method
