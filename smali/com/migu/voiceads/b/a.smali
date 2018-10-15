.class public Lcom/migu/voiceads/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/migu/voiceads/b/a;->a:Ljava/util/Locale;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/migu/voiceads/b/b;->a:[Ljava/lang/String;

    sget-object v1, Lcom/migu/voiceads/b/a;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/migu/voiceads/b/c;->a:[Ljava/lang/String;

    :cond_0
    if-lez p0, :cond_1

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/migu/voiceads/b/a;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/migu/voiceads/b/b;->b:[Ljava/lang/String;

    sget-object v1, Lcom/migu/voiceads/b/a;->a:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/migu/voiceads/b/c;->b:[Ljava/lang/String;

    :cond_0
    if-ltz p0, :cond_1

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method
