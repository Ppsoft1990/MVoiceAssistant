.class public Laqr;
.super Ljava/lang/Object;
.source "SohuNewsDetailItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Laqr;->a:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Laqr;->b:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Laqr;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitle"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Laqr;->a:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "mContent"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Laqr;->b:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHtmlContent"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Laqr;->c:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v0, "sBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Laqr;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 63
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :goto_0
    iget-object v1, p0, Laqr;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 68
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 65
    :cond_0
    iget-object v1, p0, Laqr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Laqr;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
