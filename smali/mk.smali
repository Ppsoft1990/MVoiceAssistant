.class public final Lmk;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    sput-object v0, Lmk;->a:Ljava/util/Locale;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lml;->c:[Ljava/lang/String;

    sget-object v1, Lmk;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lmm;->c:[Ljava/lang/String;

    :cond_0
    :goto_0
    if-lez p0, :cond_2

    array-length v1, v0

    if-ge p0, v1, :cond_2

    aget-object v0, v0, p0

    :goto_1
    return-object v0

    :cond_1
    sget-object v1, Lmk;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lmn;->c:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lmk;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static b(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lml;->d:[Ljava/lang/String;

    sget-object v1, Lmk;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lmm;->d:[Ljava/lang/String;

    :cond_0
    :goto_0
    if-ltz p0, :cond_2

    array-length v1, v0

    if-ge p0, v1, :cond_2

    aget-object v0, v0, p0

    :goto_1
    return-object v0

    :cond_1
    sget-object v1, Lmk;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lmn;->d:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method
