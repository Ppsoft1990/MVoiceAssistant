.class Lavb$1;
.super Ljava/lang/Object;
.source "ScheduleMediaManager.java"

# interfaces
.implements Lauz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lavb;


# direct methods
.method constructor <init>(Lavb;)V
    .locals 0
    .param p1, "this$0"    # Lavb;

    .prologue
    .line 54
    iput-object p1, p0, Lavb$1;->a:Lavb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lavb$1;->a:Lavb;

    invoke-static {v0}, Lavb;->b(Lavb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lavb$1;->a:Lavb;

    invoke-static {v0}, Lavb;->a(Lavb;)V

    .line 59
    return-void
.end method
