.class public Lcom/migu/a/d/k;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static DEBUG:Z = false

.field public static final bK:Ljava/lang/String; = "TIME_TEST"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/migu/a/d/k;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 58
    :cond_0
    return-object p0

    .line 54
    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v0, "0"

    .line 55
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v2, p2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    :goto_2
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 54
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    .line 56
    :cond_3
    aget-object v2, p2, v1

    goto :goto_2
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/migu/a/d/k;->a(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 32
    if-eqz p2, :cond_2

    .line 33
    if-eqz p1, :cond_1

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    :goto_1
    return-void

    .line 33
    :cond_1
    const-string/jumbo p1, "(null)"

    goto :goto_0

    .line 36
    :cond_2
    sget-boolean v0, Lcom/migu/a/d/k;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 37
    if-eqz p1, :cond_3

    :goto_2
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo p1, "(null)"

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/migu/a/d/k;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "MiguSDK"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/migu/a/d/k;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    return-void
.end method
