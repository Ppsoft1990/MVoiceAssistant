.class public abstract Lwo;
.super Ljava/lang/Object;
.source "AbsBlcOpLogHelper.java"


# instance fields
.field public a:Landroid/content/Context;

.field private b:Lwq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lwo;->a:Landroid/content/Context;

    .line 22
    new-instance v0, Lwq;

    iget-object v1, p0, Lwo;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lwq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lwo;->b:Lwq;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "opCode"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p5, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lwo;->b:Lwq;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lwo;->b:Lwq;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lwq;->appendOpLog(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 35
    :cond_0
    return-void
.end method
