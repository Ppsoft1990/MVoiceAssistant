.class Laxn$2$1;
.super Ljava/lang/Object;
.source "TrafficStatsHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxn$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laxn$2;


# direct methods
.method constructor <init>(Laxn$2;)V
    .locals 0
    .param p1, "this$1"    # Laxn$2;

    .prologue
    .line 245
    iput-object p1, p0, Laxn$2$1;->a:Laxn$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Laxn$2$1;->a:Laxn$2;

    iget-object v0, v0, Laxn$2;->a:Laxn;

    invoke-static {v0}, Laxn;->c(Laxn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Laxn$2$1;->a:Laxn$2;

    iget-object v0, v0, Laxn$2;->a:Laxn;

    invoke-static {v0}, Laxn;->d(Laxn;)V

    .line 251
    iget-object v0, p0, Laxn$2$1;->a:Laxn$2;

    iget-object v0, v0, Laxn$2;->a:Laxn;

    invoke-static {v0}, Laxn;->e(Laxn;)V

    .line 253
    :cond_0
    return-void
.end method
