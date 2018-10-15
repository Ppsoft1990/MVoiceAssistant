.class public Lwr;
.super Ljava/lang/Object;
.source "BlcStatLogHelper.java"


# static fields
.field private static b:Lwr;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lwr;->a:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;)Lwr;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v0, Lwr;->b:Lwr;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lwr;

    invoke-direct {v0, p0}, Lwr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lwr;->b:Lwr;

    .line 37
    :cond_0
    sget-object v0, Lwr;->b:Lwr;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 101
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AISOUND_RECORD"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    .line 103
    .local v0, "firstRecord":Z
    if-nez v0, :cond_0

    .line 105
    iget-object v1, p0, Lwr;->a:Landroid/content/Context;

    invoke-static {v1}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v1

    const-string/jumbo v2, "1047"

    invoke-virtual {v1, v2, v3}, Lvr;->a(Ljava/lang/String;I)V

    .line 107
    iget-object v1, p0, Lwr;->a:Landroid/content/Context;

    invoke-static {v1}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v1

    invoke-virtual {v1}, Lvr;->c()V

    .line 108
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AISOUND_RECORD"

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Z)V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lwr;->a:Landroid/content/Context;

    invoke-static {v1}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v1

    const-string/jumbo v2, "1047"

    invoke-virtual {v1, v2, v3}, Lvr;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "statCode"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lwr;->a:Landroid/content/Context;

    invoke-static {v0}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lvr;->a(Ljava/lang/String;I)V

    .line 98
    return-void
.end method
