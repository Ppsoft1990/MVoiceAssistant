.class public abstract Latf;
.super Ljava/lang/Object;
.source "PushDataManager.java"

# interfaces
.implements Lano;
.implements Late;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lano;",
        "Late",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    .local p0, "this":Latf;, "Latf<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Latf;->a:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public static b(Landroid/content/Context;)Latf;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Latf",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    sget-boolean v0, Lnj;->b:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p0}, Latc;->a(Landroid/content/Context;)Latc;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Latd;

    invoke-direct {v0, p0}, Latd;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
