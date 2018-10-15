.class public Lxi;
.super Lwo;
.source "NovelOpLogHelper.java"


# static fields
.field private static b:Lxi;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;)Lxi;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    sget-object v0, Lxi;->b:Lxi;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lxi;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lxi;-><init>(Landroid/content/Context;)V

    sput-object v0, Lxi;->b:Lxi;

    .line 21
    :cond_0
    sget-object v0, Lxi;->b:Lxi;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "1"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string/jumbo v0, "NovelOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordNovelOpLog() key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string/jumbo v1, "FD09001"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    invoke-direct {p0, p1}, Lxi;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxi;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 31
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .prologue
    .line 34
    const-string/jumbo v0, "NovelOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordNovelOpLog() key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string/jumbo v1, "FD09001"

    const-string/jumbo v4, "success"

    invoke-direct {p0, p1}, Lxi;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lxi;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 36
    return-void
.end method
