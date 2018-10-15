.class public Lapo;
.super Ljava/lang/Object;
.source "MusicBaseResult.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCode"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lapo;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 14
    const-string/jumbo v0, "0000"

    iget-object v1, p0, Lapo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "00000000"

    iget-object v1, p0, Lapo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 17
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lapo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "mInfo"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lapo;->b:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lapo;->b:Ljava/lang/String;

    return-object v0
.end method
