.class public Lanm;
.super Ljava/lang/Object;
.source "DownResOperationImpl.java"

# interfaces
.implements Lano;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lanm;->a:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 3
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-wide/16 v0, -0x1

    .line 37
    :goto_0
    return-wide v0

    .line 35
    :cond_0
    const-string/jumbo v0, "DownResOperationImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteCacheItem | OldResDataDAO.deleteRes -- url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lanm;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lann;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
